import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/presentation/widgets/body/contact/contact_cubit/cubit/contact_cubit.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_enums.dart';
import '../../../../core/utils/app_extensions.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/custom_button.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  late GlobalKey<FormState> _formKey;
  late TextEditingController _emailController;
  late TextEditingController _messageController;
  late TextEditingController _nameController;
  late TextEditingController _subjectController;

  @override
  void initState() {
    super.initState();
    _formKey = GlobalKey();
    _emailController = TextEditingController();
    _messageController = TextEditingController();
    _nameController = TextEditingController();
    _subjectController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    _nameController.dispose();
    _subjectController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactCubit(),
      child: Builder(builder: (context) {
        return SizedBox(
          width: _getFormWidth(context.width),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _nameController,
                  style: AppStyles.s14,
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Please enter your Name.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _emailController,
                  style: AppStyles.s14,
                  decoration: const InputDecoration(labelText: 'E-mail'),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Please enter your Email.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _subjectController,
                  style: AppStyles.s14,
                  decoration: const InputDecoration(labelText: 'Subject'),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Please enter your Subject.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 12),
                TextFormField(
                  controller: _messageController,
                  maxLines: 5,
                  style: AppStyles.s14,
                  decoration: const InputDecoration(
                    labelText: 'Type a message here...',
                    alignLabelWithHint: true,
                  ),
                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Please enter your Message.';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 16),
                BlocConsumer<ContactCubit, ContactState>(
                  builder: (context, state) {
                    return state is ContactLoading
                        ? Container(
                            width: _getFormWidth(context.width),
                            height: 48,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColor,
                                borderRadius: BorderRadius.circular(100)),
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ),
                          )
                        : CustomButton(
                            label: 'Submit',
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                await BlocProvider.of<ContactCubit>(context)
                                    .sendMail(
                                        name: _nameController.text,
                                        email: _emailController.text,
                                        subject: _subjectController.text,
                                        message: _messageController.text);
                              }
                            },
                            backgroundColor: AppColors.primaryColor,
                            width: _getFormWidth(context.width),
                          );
                  },
                  listener: (BuildContext context, ContactState state) {
                    // if (state is ContactInitial || state is ContactLoading) {
                    //   showDialog(
                    //     barrierDismissible: false,
                    //     useSafeArea: true,
                    //       context: context,
                    //       builder: (context) => Dialog(
                    //             child: CircularProgressIndicator(
                    //               color: AppColors.primaryColor,
                    //             ),
                    //           ));
                    // } else
                    if (state is ContactSuccess) {
                      clearTextEditors();

                      Flushbar(
                        title: "Success",
                        message: "Email sent Successfuly",
                        duration: Duration(seconds: 3),
                        backgroundColor: Colors.green,
                        forwardAnimationCurve: Curves.easeIn,
                        reverseAnimationCurve: Curves.easeOut,
                        maxWidth: 300,
                      ).show(context);
                    } else if (state is ContactFailed) {
                      clearTextEditors();

                      Flushbar(
                        title: "Failed",
                        message: "Some thing went wrong.",
                        duration: Duration(seconds: 3),
                        backgroundColor: Colors.red,
                        forwardAnimationCurve: Curves.easeIn,
                        reverseAnimationCurve: Curves.easeOut,
                        maxWidth: 300,
                      ).show(context);
                    }
                  },
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  void clearTextEditors() {
    _nameController.clear();
    _emailController.clear();
    _subjectController.clear();
    _messageController.clear();
  }

  double _getFormWidth(double deviceWidth) {
    if (deviceWidth < DeviceType.mobile.getMaxWidth()) {
      return deviceWidth;
    } else if (deviceWidth < DeviceType.ipad.getMaxWidth()) {
      return deviceWidth / 1.6;
    } else if (deviceWidth < DeviceType.smallScreenLaptop.getMaxWidth()) {
      return deviceWidth / 2;
    } else {
      return deviceWidth / 2.5;
    }
  }

  // sendEmail() async {
  //   final Email email = Email(
  //     body: 'Hello World',
  //     subject: 'Testing email on flutter',
  //     recipients: ['alikanas110@gmail.com'],

  //     // cc: ['cc@example.com'],
  //     // bcc: ['bcc@example.com'],
  //     //attachmentPaths: ['/path/to/attachment.zip'],
  //     isHTML: true,
  //   );
  // }
}
