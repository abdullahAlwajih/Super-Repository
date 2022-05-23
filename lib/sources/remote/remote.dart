import 'dart:developer';

import 'package:dio/dio.dart';
// import 'package:super_repository/sources/remote/response_format.dart';
import 'package:super_repository/super_repository.dart';

import '../../errors/exceptions.dart';
import '../../errors/mapping_errors.helper.dart';
import 'methods.enums.dart';

class Remote {
  static Remote? _instance;

  static Remote get instance {
    if (_instance == null) init();

    return _instance!;
  }

  Dio? dio;

  static void init() {
    _instance ??= Remote();

    var options = BaseOptions(
      // baseUrl: AppUrls.baseURL,
      // connectTimeout: 5000,
      // connectTimeout: 5000,
      // receiveTimeout: 3000,
      sendTimeout: 300000,
    );

    _instance!.dio = Dio(options);
  }



  dynamic statusCode = 0;
  double sendingRemaining = 0.0;
  double receiveRemaining = 0.0;

  bool get success =>
      statusCode == 200 || statusCode == 201 || statusCode == 202;

  Future<dynamic> send({
    required Request request,
    required HttpMethod method,
  }) async {

    dynamic response;
    try {

      response = await dio!.request(
        request.url,
        queryParameters: request.query,
        data: request.body,
        options: Options(method: method.name, headers: request.header!),
        onSendProgress: (sent, total) {
          sendingRemaining = (total - sent) / total * 100;
        },
        onReceiveProgress: (received, total) {
          receiveRemaining = (total - received) / total * 100;
        },

      );
      // .timeout(
      //
      //   Duration(milliseconds: dio!.options.sendTimeout),
      //   onTimeout: () {
      //     log(' dio!.options.sendTimeout');
      //     throw Exceptions.fromEnumeration(ExceptionTypes.timeout);
      //   },
      // );

      statusCode = response.statusCode!;

      if (!success) {
        log('Server response with status code $statusCode',
            name: 'Wings Remote');
        throw Exceptions.fromStatusCode(statusCode);
      }

      _checkInvalidResponse(response.data);


      if (response.data['data'] != null) return response.data['data'];
      return response.data;


    } on DioError catch(error){
      statusCode = error.response!.statusCode!;
      final message = error.response!.data['message'] ?? error.response!.data['error']['message'];
      if (!success) {
        log('Server response with status code $statusCode',
            name: 'Wings Remote');
        throw Exceptions.fromStatusCode(statusCode, message);
      }
    } catch (exception) {
      SuperRepository.provider.error = mapExceptionToMessage(exception);
    }
  }

  void _checkInvalidResponse(response) {
    if (response.toString().isEmpty) {
      log('Empty Response from the Server', name: 'Wings Remote');
      throw Exceptions.fromStatusCode(404);
    }

    // if (!WingsResponseFormat.validatedResponse(response.toString())) {
    //   log('Invalid Response from the Server', name: 'Wings Remote');
    //   throw Exceptions.fromStatusCode(0);
    // }
  }
}
