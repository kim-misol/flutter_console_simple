import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;

void main() async {
  print(await getTitle());
}

Future<String> getTitle() async {
  final response = await http.get('https://example.com/');
  // If the http request is successful the statusCode will be 200
  if (response.statusCode == 200) {
    final document = parse(response.body);

    final title = document.querySelector('title');
    return title.text;
  }
  return '';
}
