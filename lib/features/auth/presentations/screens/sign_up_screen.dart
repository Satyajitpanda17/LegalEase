import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:legalease/core/constants/app_dimensions.dart';
import 'package:legalease/core/constants/app_strings.dart';
import 'package:legalease/core/widgets/custom_button.dart';
import 'package:legalease/core/widgets/custom_text_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
   final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = Dimensions.screenHeight(context);
    double width = Dimensions.screenWidth(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(AppStrings.register,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
              SizedBox(height: height*0.02,),
              CustomTextFormField(label: 'Name', hintText: 'Enter Full Name'),
              SizedBox(height: height/100,),
              CustomTextFormField(label: 'Mobile Number', hintText: '+91'),
              SizedBox(height: height/100,),
              CustomTextFormField(label: 'Address', hintText: 'Enter full address'),
              SizedBox(height: height/100,),
              CustomTextFormField(label: AppStrings.email, hintText: AppStrings.email),
              SizedBox(height: height/100,),
              CustomTextFormField(label: AppStrings.password, hintText: AppStrings.password,isPassword: true,),
              SizedBox(height: height/100,),
              CustomTextFormField(label: 'Confirm Password', hintText: 'Re-enter Password',isPassword: true,),
              SizedBox(height: height/20,),
              CustomButton(text: AppStrings.register, onPressed: (){})
            ],
          ),
        ),
      )
    );
  }
}