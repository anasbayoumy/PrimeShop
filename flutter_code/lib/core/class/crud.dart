import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:primeshop/core/class/statusrequest.dart';
import 'package:http/http.dart' as http;

class Crud {
  // Method to handle POST requests
  Future<Either<StatusRequest, Map<String, dynamic>>> postRequest(
      String url, Map<String, dynamic> data) async {
    try {
      // Perform POST request
      var response = await http.post(
        Uri.parse(url),
        body: jsonEncode(data),
        headers: {"Content-Type": "application/json"},
      );

      print("Response Status Code: ${response.statusCode}");
      print("Response Body: ${response.body}");

      if (response.statusCode == 200 || response.statusCode == 201) {
        // Decode the response body
        Map<String, dynamic> responsebody = jsonDecode(response.body);
        print("Decoded Response: $responsebody");
        return right(responsebody);
      } else {
        print("Server returned an error: ${response.statusCode}");
        return left(StatusRequest.serverfailure);
      }
    } catch (e) {
      print("Exception caught: $e");
      return left(StatusRequest.serverfailure);
    }
  }
}


//  try {
//       if (await checkInternet()) {
//         var response = await http.post(Uri.parse(linkurl), body: data);
//         print("Response Status Code: ${response.statusCode}");
//         print("Response Body: ${response.body}");

//         if (response.statusCode == 200 || response.statusCode == 201) {
//           Map responsebody = jsonDecode(response.body);
//           print("Decoded Response: $responsebody");
//           return right(responsebody);
//         } else {
//           print("Server returned an error: ${response.statusCode}");
//           return left(StatusRequest.serverfailure);
//         }
//       } else {
//         print("No internet connection");
//         return left(StatusRequest.offlinefailure);
//       }
//     } catch (e) {
//       print("Exception caught: $e");
//       return left(StatusRequest.serverfailure);
//     }
