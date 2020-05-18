import 'package:http/http.dart' as http;

void makeRequest() async{
    var response = await http.get('https://example.com/');
    // If the http request is successful the statusCode will be 200
    if (response.statusCode == 200){
      var htmlToParse = response.body;
      print(htmlToParse);
    }
}

dynamic main(){
  makeRequest();
}