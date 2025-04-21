// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';

// class SendEmail {
//   static sendMail({
//     required String name,
//     required String email,
//     required String subject,
//     required String message,
//   }) async {
//     try {
//       var endPointUrl = 'https://api.emailjs.com/api/v1.0/email/send';
//       Dio dio = Dio();

//       var response = await dio.post(endPointUrl,
//           data: {
//             'service_id': 'service_oubz4u6',
//             'template_id': 'template_uwm3tqj',
//             'user_id': 'FGPG3_GbUYpgGqANe',
//             'template_params': {
//               'name': name,
//               'email': email,
//               'title': subject,
//               'message': message,
//             }
//           },
//           options: Options(headers: {'Content-type': 'application/json'}));

//       if (response.statusCode == 200) {
//         print('Success: ${response.statusCode}');
//         print('Response data: ${response.data}');
//       } else {
//         print('Error: ${response.statusCode}');
//         print('Error message: ${response.statusMessage}');
//       }
//     } catch (error) {
//       print(error.toString());
//     }
//   }
// }
