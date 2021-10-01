import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class NetworkData{
NetworkData({@required this.url});
  String url;
  Future getData() async{
    http.Response response =await http.get(url);
    if (response.statusCode==200){
      String data =response.body;
      double price = jsonDecode(data)['rate'];
      return price ;
    }else{
      print('${response.statusCode} error');
    }
  }

}