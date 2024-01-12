import 'package:flutter/material.dart';
import 'package:mommypulse/core/app_export.dart';
import 'package:mommypulse/widgets/custom_elevated_button.dart';
import 'package:mommypulse/widgets/custom_text_form_field.dart';

class Iphone1415ProMaxSixScreen extends StatelessWidget {
  Iphone1415ProMaxSixScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController valueController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.1, 1),
              colors: [
                theme.colorScheme.primaryContainer,
                appTheme.indigo300,
              ],
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Form(
                key: _formKey,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 31.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Log In",
                          style: theme.textTheme.headlineSmall,
                        ),
                      ),
                      SizedBox(height: 23.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Masukkan email dan password",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 21.v),
                      Container(
                        height: 20.v,
                        width: 119.h,
                        margin: EdgeInsets.only(left: 8.h),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Nomor Telepon",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Nomor Telepon",
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.v),
                      _buildValue(context),
                      SizedBox(height: 14.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Email",
                          style: theme.textTheme.bodyLarge,
                        ),
                      ),
                      SizedBox(height: 20.v),
                      _buildEmail(context),
                      SizedBox(height: 33.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "Password",
                          style: CustomTextStyles.bodyLargeWhiteA700,
                        ),
                      ),
                      SizedBox(height: 19.v),
                      _buildPassword(context),
                      SizedBox(height: 20.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 8.h),
                          child: Text(
                            "Lupa Password?",
                            style: CustomTextStyles.bodyMediumInter,
                          ),
                        ),
                      ),
                      SizedBox(height: 27.v),
                      _buildLogInButton(context),
                      SizedBox(height: 39.v),
                      Padding(
                        padding: EdgeInsets.only(left: 80.h),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Belum punya akun? ",
                                style: CustomTextStyles.bodyMediumInterffffffff,
                              ),
                              TextSpan(
                                text: "Signup",
                                style: CustomTextStyles.bodyMediumInterff602287,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      SizedBox(height: 1.v),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildValue(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 2.h,
        right: 5.h,
      ),
      child: CustomTextFormField(
        controller: valueController,
        hintText: "+62",
        prefix: Container(
          margin: EdgeInsets.only(
            right: 3.h,
            bottom: 16.v,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgIndonesianFlag,
            height: 28.v,
            width: 35.h,
          ),
        ),
        prefixConstraints: BoxConstraints(
          maxHeight: 44.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "lindayestha80@gmail.com",
        textInputType: TextInputType.emailAddress,
        borderDecoration: TextFormFieldStyleHelper.underLineGray,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.h),
      child: CustomTextFormField(
        controller: passwordController,
        textInputAction: TextInputAction.done,
        suffix: SizedBox(
          child: CustomImageView(
            imagePath: ImageConstant.imgEye,
            height: 18.v,
            width: 19.h,
          ),
        ),
        suffixConstraints: BoxConstraints(
          maxHeight: 34.v,
        ),
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildLogInButton(BuildContext context) {
    return CustomElevatedButton(
      text: "Log In",
      margin: EdgeInsets.symmetric(horizontal: 35.h),
      alignment: Alignment.center,
    );
  }
}
