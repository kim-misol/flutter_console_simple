import 'package:http/http.dart' as http;

Future<String> download(final url) async {
  final response = await http.get(url);
  
  // If the http request is successful the statusCode will be 200
  if (response.statusCode == 200) {
    final body = response.body;
    return body;
  }
  return '';
}

void main() async {
  print(await download('http://www.example.com'));
}
