import 'dart:convert';
import "package:http/http.dart" as http;
import 'dart:async';
import 'package:auna_app/model/post_model.dart';

Post postFromJson(String str) {
    final jsonData = json.decode(str);
    return Post.fromJson(jsonData);
}

String url = 'https://jsonplaceholder.typicode.com/posts';

Future<Post> getPost() async{
  final response = await http.get('$url/2');
  return postFromJson(response.body);
}