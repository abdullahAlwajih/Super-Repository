// import 'package:flutter/cupertino.dart';
import 'package:super_repository/super_repository.dart';

class Request {
  String url;
  Map<String, dynamic>? header;
  Map<String, dynamic> query;
  dynamic body;
  bool nullable;

  Request({
    required this.url,
    this.nullable = false,
    this.query = const {},
    this.body = const {},
    this.header,
  }) {
    header ??= SuperRepository.instance.headers;
  }

  String get urlQuery => url + query.toString();

  // String _queryFormat() {
  //   String _query = '';
  //     debugPrint(query.toString());
  //   if (query.isNotEmpty) {
  //     _query = '?';
  //
  //     query.forEach((key, value) {
  //       _query += '$key=$value&';
  //     });
  //
  //     _query = _query.substring(0, query.length - 1);
  //   }
  //
  //   return _query;
  // }
}


