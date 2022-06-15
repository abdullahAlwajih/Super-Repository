library super_repository;

import 'package:flutter/cupertino.dart';

import 'app/models/base_model.dart';
import 'errors/error_model.dart';
import 'errors/exceptions.dart';
import 'errors/exceptions_enum.dart';
import 'sources/main.provider.dart';
import 'sources/remote/request.dart';

export 'app_store.dart';
export 'errors/error_model.dart';
export 'languages/translations/super_localizations.dart';
export 'sources/local/local.dart';
export 'sources/main.provider.dart';
export 'sources/remote/remote.dart';
export 'sources/remote/request.dart';

class SuperRepository {
  static SuperRepository? _instance;

  late Map<String, dynamic> headers;
  static bool isDarkMode = false;
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static SuperRepository get instance {
    if (_instance == null) init();
    return _instance!;
  }

  /// This is the initialization of the main class of Wings framework
  /// and it should be called before runApp() is called
  static Future<void> init(
      {Function? snackBar, Map<String, dynamic>? headers}) async {
    _instance ??= SuperRepository();
    _instance?.headers = headers ?? {};
    await DataProvider.init();
  }

  static DataProvider get provider => DataProvider.instance;

  /// The model that the API data came to

  // Type get type => model.runtimeType;

  /// This variable will contain the response data so it can be called from WingsView
  // late dynamic data;

  // dynamic get child => this;

  Future<dynamic> getData(
      {required Request request,
      BaseModel? model,
      bool shouldCache = true}) async {
    var response =
        await provider.get(request: request, shouldCache: shouldCache);

    if (provider.error.message.isNotEmpty) {
      throw provider.error.exception.runtimeType ==
              Exceptions.fromEnumeration(ExceptionTypes.empty).runtimeType
          ? (emptyException ?? provider.error)
          : provider.error;
    }

    // if (response['data'] == null || response['data'].isEmpty) {
    //   if (response['status'] ?? true) {
    //     return response["message"];
    //   } else {
    //     throw response["message"];
    //   }
    // } else {

    response = response['data'];

    if (model != null) {
      if (response is List) {
        return model.fromJsonList(response);
      } else if (response is Map<String, dynamic>) {
        return model.fromJson(response);
      } else {
        return response;
      }
    } else {
      return response;
    }
    // }

    // Future.delayed(const Duration(milliseconds: 1000),
    //     () => currentState.value = WingsState.success());
  }

  Future<dynamic> sendData(
      {required Request request,
      required BaseModel? model,
      List? toList,
      bool shouldCache = false,
      bool showFlushBar = false,
      String? flushBarMessage}) async {
    try {
      var response =
          await provider.insert(request: request, shouldCache: shouldCache);
      dynamic temp;
      if (!(response['status'] ?? true)) throw response["message"];

      if (response['data'] == null || response['data'].isEmpty) {
        if (response['status'] ?? true) {
          return response["message"];
        } else {
          throw response["message"];
        }
      } else {
        response = response['data'];
        if (model != null) {
          if (response is List) {
            return model.fromJsonList(response);
          } else if (response is Map<String, dynamic>) {
            temp = model.fromJson(response);

            if (toList != null) {
              toList.add(temp);
            }
          } else {
            temp = response;
          }
        } else {
          temp = response;
        }

        return temp;
      }
    } catch (e) {
      rethrow;
    }
  }

  ErrorModel? emptyException;

  void customEmptyException(
      {required String message, String? image, String? icon}) {
    emptyException = ErrorModel(message: message, image: image!, icon: icon!);
  }

  Future<dynamic> updateData(
      {required Request request,
      BaseModel? model,
      bool shouldCache = false}) async {
    return await provider.update(request: request, shouldCache: shouldCache);

    // var response =
    // await provider.update(request: request, shouldCache: shouldCache);

    // if (provider.error.message.isNotEmpty) {
    //   throw provider.error.exception.runtimeType ==
    //       Exceptions.fromEnumeration(ExceptionTypes.empty).runtimeType
    //       ? (emptyException ?? provider.error)
    //       : provider.error;
    // }
    //
    // if (model != null) {
    //   if (response is List) {
    //     return model.fromJsonList(response);
    //   } else if (response is Map<String, dynamic>) {
    //     return model.fromJson(response);
    //   } else {
    //     return response;
    //   }
    // } else {
    //   return response;
    // }

    // Future.delayed(const Duration(milliseconds: 1000),
    //     () => currentState.value = WingsState.success());
  }
}
