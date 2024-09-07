// import 'package:http/http.dart' as http;

// import 'dart:io';

// Future<bool> checkInternet() async {
//   try {
//     // Use a common website or your local server address for testing
//     var result = await InternetAddress.lookup('localhost');
//     return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
//   } on SocketException catch (_) {
//     return false;
//   }
// }



// import 'dart:io';

// checkInternet() async {
//   try {
//     var result = await InternetAddress.lookup("google.com");
//     if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
//       return true;
//     }
//   } on SocketException catch (_) {
//     return false;
//   }
// }
