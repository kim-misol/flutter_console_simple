import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
// import 'package:html/dom.dart' hide Text;

dynamic main() {
  printTitle();
}

void printTitle() async{
    var response = await http.get('https://example.com/');
    // If the http request is successful the statusCode will be 200
    if (response.statusCode == 200){
      var document = parse(response.body);
      
      document.getElementsByTagName('title').forEach((child) {
        var title = child.innerHtml;
        print (title);
      });
    }
}
