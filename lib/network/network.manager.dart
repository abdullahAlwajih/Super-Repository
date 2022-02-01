import 'dart:async';
import 'dart:developer';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../errors/error.model.dart';
import '../errors/exceptions.enum.wings.dart';
import '../errors/exceptions.dart';
import '../errors/mapping_errors.helper.dart';
import '../super_repository.dart';

class NetworkManager {
  final _connectionChecker = InternetConnectionChecker();

  static NetworkManager? _instance;

  static NetworkManager get instance {
    if (_instance == null) init();
    return _instance!;
  }

  final Connectivity _connectivity = Connectivity();

  var _connectivityResult = ConnectivityResult.none;

  late StreamSubscription _streamSubscription;

  bool _hasConnection = false;

  bool get hasConnection => _hasConnection;

  static Future<void> init() async {
    _instance ??= NetworkManager();
    await _instance!.checkAndListen();
  }

  Future<void> checkAndListen() async {
    try {
      await getConnectionType();
      _streamSubscription = _connectivity.onConnectivityChanged.listen(
        _updateState,
      );

      _connectionChecker.onStatusChange.listen((event) {
        if (_connectivityResult == ConnectivityResult.none) return;

        SuperRepository.provider.error = ErrorModel(message: '');
        _hasConnection = event == InternetConnectionStatus.connected;

        if (!_hasConnection) {
          SuperRepository.provider.error = mapExceptionToMessage(
            Exceptions.fromEnumeration(ExceptionTypes.connection),
          );
        }

        log(_hasConnection.toString(), name: 'connection listener');
      });
    } catch (exception) {
      SuperRepository.provider.error = mapExceptionToMessage(exception);
    }
  }

  Future<void> getConnectionType() async {
    try {
      await _updateState(await _connectivity.checkConnectivity());
    } catch (exception) {
      log(exception.toString());
      _hasConnection = false;

      SuperRepository.provider.error = mapExceptionToMessage(
        Exceptions.fromEnumeration(ExceptionTypes.connection),
      );
    }
  }

  Future<void> _updateState(ConnectivityResult result) async {
    _connectivityResult = result;

    if (result != ConnectivityResult.none) {
      _hasConnection = await _connectionChecker.hasConnection;
    } else {
      _hasConnection = false;

      SuperRepository.provider.error = mapExceptionToMessage(
        Exceptions.fromEnumeration(ExceptionTypes.connection),
      );
    }

    if (!_hasConnection) {
      SuperRepository.provider.error = mapExceptionToMessage(
        Exceptions.fromEnumeration(ExceptionTypes.connection),
      );
    }
  }

  static void clear() {
    _instance!._streamSubscription.cancel();
  }
}
