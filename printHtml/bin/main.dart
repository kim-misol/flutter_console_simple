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
  // print(await download('http://www.example.com'));
  print(await download('https://creator.class101.net/creator/posts/klass?productId=5e2556a44ba7b950bbd46bb5'));
}
// 안토안한테 플러터로 user 정보 parameter 보내서 
// 댓글 정보 크롤링 해올 때 필요할 packages 물어보고
// 이게 구현 가능한지

// 가능하다면,
// 효율적인 방법 물어보기
// flutter or python or else..