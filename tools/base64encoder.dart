import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  var modifiedPath = arguments.first;
  if (arguments.isNotEmpty) {
    if (arguments.first[0] != '/') {
      modifiedPath = '/${arguments.first}';
    }
  }
  final fileToEncode =
      File.fromUri(Uri.parse('${Directory.current.path}$modifiedPath'));

  final base64String = base64Encode(fileToEncode.readAsBytesSync());
  print(base64String);
}
