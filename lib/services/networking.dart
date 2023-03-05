import 'package:http/http.dart' as http;
import 'dart:convert' as json;

class Networkhelper{

  Networkhelper(this.url);

  String? url;

  Future getData() async{
    http.Response response = await http.get(url);

    if (response.statusCode==200){
      String data = response.body;

      return json.jsonDecode(data);
    }else{
      print(response.statusCode);
    }
  }
}