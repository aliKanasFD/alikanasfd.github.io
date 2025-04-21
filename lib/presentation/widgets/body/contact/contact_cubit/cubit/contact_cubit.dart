import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactInitial());

  sendMail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    emit(ContactLoading());
    try {
      var endPointUrl = 'https://api.emailjs.com/api/v1.0/email/send';
      Dio dio = Dio();

      await Future.delayed(Duration(seconds: 3));
      var response = await dio.post(endPointUrl,
          data: {
            'service_id': 'service_oubz4u6',
            'template_id': 'template_uwm3tqj',
            'user_id': 'FGPG3_GbUYpgGqANe',
            'template_params': {
              'name': name,
              'email': email,
              'title': subject,
              'message': message,
            }
          },
          options: Options(headers: {'Content-type': 'application/json'}));

      if (response.statusCode == 200) {
        print('Success: ${response.statusCode}');
        print('Response data: ${response.data}');
      } else {
        print('Error: ${response.statusCode}');
        print('Error message: ${response.statusMessage}');
      }

      emit(ContactSuccess());
    } catch (error) {
      print(error.toString());
      emit(ContactFailed());
    }
  }
}
