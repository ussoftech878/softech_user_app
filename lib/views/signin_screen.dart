import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:softech_user_app/route_generator.dart';
import 'package:softech_user_app/utils/images.dart';
import 'package:softech_user_app/viewmodels/auth_viewmodel.dart';
import 'package:softech_user_app/widgets/user_form_fields_widget.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class SignInScreen extends StatelessWidget {
  static const routeName = 'SignInScreen';

  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthViewmodel controller = context.read<AuthViewmodel>();
    return KeyboardVisibilityBuilder(
      builder: (context, isKeyboardVisible) {
        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Scaffold(
            resizeToAvoidBottomInset: true,

            body: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(PngAssests.background),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 24.w,
                    right: 24.w,
                    bottom: 30.h,
                  ),
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 150.h),
                        Text(
                          'Sign In',
                          style: Theme.of(context).textTheme.displaySmall!
                              .copyWith(
                                //color: AppColors.kPrimaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 32.sp,
                              ),
                        ),
                        SizedBox(height: 16.h),
                        Text(
                          textAlign: TextAlign.center,
                          'Enter your credentials to access your account.',
                          style: Theme.of(
                            context,
                          ).textTheme.bodyLarge!.copyWith(fontSize: 14.sp),
                        ),
                        SizedBox(height: 28.h),
                        EmailFieldWidget(),
                        SizedBox(height: 16.h),
                        PasswordFieldWidget(hint: 'enter your password'),

                        SizedBox(height: 12.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: GestureDetector(
                              onTap: () {
                                controller.clearfields();
                                Navigator.pushNamed(
                                  context,
                                  forgetPasswordRoute,
                                );
                              },
                              child: Text('Forgot Password?'),
                            ),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        Visibility(
                          visible: !isKeyboardVisible,
                          child: Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (controller.signInValidation()) {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        navHomeRoute,
                                      );
                                      // controller.signin().then((value) {
                                      //   if (value) {
                                      //     ColoredPrint.green('hello');
                                      //     Get.offAllNamed(BotNavBar.routeName);
                                      //   }
                                      // });
                                    }
                                  },
                                  child:
                                      //  controller.isLoading.value
                                      //     ? CircularProgressIndicator(
                                      //         color: Colors.white,
                                      //       )
                                      //     :
                                      Text('Sign In'),
                                ),
                              ),
                              SizedBox(height: 20.h),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
