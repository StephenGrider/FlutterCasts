import 'dart:io';
import 'package:image/image.dart';

String convertImage(FileSystemEntity selectedFile, String format) {
  final rawImage = (selectedFile as File).readAsBytesSync();
  final image = decodeImage(rawImage);

  var newImage;
  if (format == 'jpg') {
    newImage = encodeJpg(image);
  } else if (format == 'png') {
    newImage = encodePng(image);
  } else {
    print('Unsupported file type');
  }
  final newPath = replaceExtension(selectedFile.path, format);
  new File(newPath).writeAsBytesSync(newImage);

  return newPath;
}

String replaceExtension(String path, String newExtension) {
  return path.replaceAll(new RegExp(r'(png|jpg|jpeg)'), newExtension);
}
