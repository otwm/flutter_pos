import 'dart:convert';

import 'package:flutter_pos/envirment.dart';
import 'package:flutter_pos/models/menu_model.dart';
import 'package:http/http.dart' as http;

/// 메뉴 리스트
Future<List<MenuModel>> listMenu() async {
  final res = await http.get(Uri.parse('${Environment.apiDomain}/api/menus'));

  if (res.statusCode != 200) throw Exception('fail to load menu');
  List<dynamic> body = json.decode(utf8.decode(res.bodyBytes));
  return body.map((item) => MenuModel.fromJson(item)).toList();
}
