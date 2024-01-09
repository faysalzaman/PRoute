import 'dart:convert';

import 'package:http/http.dart';
import 'package:p_route/Constants/app_urls.dart';

class ApiManager {
  static Future<Response> getRequest(var url, {dynamic headers}) async {
    return await get(
      Uri.parse(url),
      headers: headers ??
          {
            'Content-Type': 'application/json',
            "Accept": "application/json",
            "Host": AppUrls.host,
          },
    );
  }

  static Future<Response> putRequest(var body, var url,
      {dynamic headers}) async {
    return await put(Uri.parse(url), body: body, headers: headers);
  }

  static Future<Response> postRequest(var body, var url,
      {dynamic headers}) async {
    return await post(
      Uri.parse(url),
      body: jsonEncode(body),
      headers: headers ??
          {
            'Content-Type': 'application/json',
          },
    );
  }
}
