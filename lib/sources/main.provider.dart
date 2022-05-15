import 'dart:developer';

import '../errors/error_model.dart';
import '../errors/exceptions.dart';
import '../errors/exceptions_enum.dart';
import '../errors/mapping_errors.helper.dart';
import '../network/network.manager.dart';
import 'local/local.dart';
import 'remote/methods.enums.dart';
import 'remote/remote.dart';
import 'remote/request.dart';

class DataProvider {
  static DataProvider? _instance;

  static DataProvider get instance {
    if (_instance == null) init();
    return _instance!;
  }

  static Future<void> init() async {
    _instance ??= DataProvider();
    await NetworkManager.init();
    await Local.init();
  }

  Remote get remote => Remote.instance;

  Local get local => Local.instance;

  int get statusCode => remote.statusCode;

  ErrorModel error = ErrorModel(message: '');

  double get sendingRemaining => remote.sendingRemaining.value;

  double get receiveRemaining => remote.receiveRemaining.value;

  bool get remoteConnection => NetworkManager.instance.hasConnection;

  Future<dynamic> update(
      {required Request request, required bool shouldCache}) async {
    try {
      var response = remote.send(request: request, method: HttpMethod.put);

      if (response.toString().isEmpty) {
        throw Exceptions.fromEnumeration(ExceptionTypes.process);
      }

      return response;
    } catch (exception) {
      log('update has exception of type $exception');
      error = mapExceptionToMessage(exception);
    }
  }

  Future<dynamic> insert(
      {required Request request, required bool shouldCache}) async {
    try {
      if (remoteConnection) {
        var response =
            await remote.send(method: HttpMethod.post, request: request);

        if (response.toString().isEmpty) {
          throw Exceptions.fromEnumeration(ExceptionTypes.process);
        }
        if (shouldCache) {
          local.save(key: request.urlQuery, value: response);
        }

        return response;
      }
    } catch (exception) {
      log('insert has exception of type $exception');
      throw mapExceptionToMessage(exception);
    }
  }

  Future<void> delete(
      {required Request request, required bool shouldCache}) async {
    try {
      var response = remote.send(request: request, method: HttpMethod.delete);

      if (response.toString().isEmpty) {
        throw Exceptions.fromEnumeration(ExceptionTypes.process);
      }
    } catch (exception) {
      log('delete has exception of type $exception');
      error = mapExceptionToMessage(exception);
    }
  }

  Future<dynamic> get(
      {required Request request, required bool shouldCache}) async {
    try {
      error = ErrorModel(message: '');

      dynamic response;
      if (remoteConnection) {
        response = await remote.send(request: request, method: HttpMethod.get);

        if (response == null) {
          throw Exceptions.fromEnumeration(ExceptionTypes.connection);
        }

        if (shouldCache) {
          local.save(key: request.urlQuery, value: response);
        }
      } else if (shouldCache) {
        response = local.get(key: request.urlQuery);
        if (response == null) {
          throw Exceptions.fromEnumeration(ExceptionTypes.connection);
        }
      } else {
        throw Exceptions.fromEnumeration(ExceptionTypes.connection);
      }

      return response;
    } catch (exception) {
      log('get has exception of type $exception');
      error = mapExceptionToMessage(exception);
    }
  }
}
