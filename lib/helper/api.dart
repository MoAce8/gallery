import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url, String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }

    http.Response response = await http.get(Uri.parse(url), headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('error ${response.statusCode}');
    }
  }

  Future<dynamic> post(
      {required String url, dynamic body, String? token}) async {
    Map<String, String> headers = {};

    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }

    http.Response response =
        await http.post(Uri.parse(url), body: body, headers: headers);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('error ${response.statusCode}');
    }
  }

  Future<dynamic> put(
      {required String url, @required dynamic body, String? token}) async {
    Map<String, String> headers = {};
    headers.addAll({'Content-Type': 'application/x-www-form-urlencoded'});

    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }
    print('/////////////////////////////////////');
    http.Response response =
        await http.put(Uri.parse(url), body: body, headers: headers);
    print('testestetsetsetstestestetstetetstetsetstetsettsetstetset');
    if (response.statusCode == 200) {
      print(response.statusCode);
      print(response.body);
      return jsonDecode(response.body);
    } else {
      print('jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj');
      throw Exception('error ${response.statusCode}');
    }
  }

  Future<dynamic> uploadFile({required String url, String? token, required Uint8List file}) async {
    var request = http.MultipartRequest('Post', Uri.parse(url));
    Map<String, String> headers = {
      'Content-Type': 'multipart/form-data'
    };

    if (token != null) {
      headers.addAll({
        'Authorization': 'Bearer $token',
      });
    }

    final pic = http.MultipartFile.fromBytes('image', file);
    request.files.add(pic);
    request.headers.addAll(headers);

    var response = await request.send();
    final responseData = await response.stream.toBytes();
    var result = String.fromCharCodes(responseData);
    print(result);
    print(response.statusCode);
    return result;
  }
}
