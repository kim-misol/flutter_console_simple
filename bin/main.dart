import 'package:http/http.dart' as http;

Future<String> download(final url) async {
  final response = await http.get(url);
  dynamic htmlToParse = '';
  // If the http request is successful the statusCode will be 200
  if (response.statusCode == 200) {
    htmlToParse = response.body;
  } 
  return htmlToParse;
}

void main() async {
  print(await download('http://www.example.com'));
}