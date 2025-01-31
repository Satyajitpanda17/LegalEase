import 'package:flutter/material.dart';
import 'package:legalease/core/constants/app_dimensions.dart';
import 'package:legalease/core/constants/app_strings.dart';
import 'package:legalease/core/widgets/custom_button.dart';
import 'package:legalease/core/widgets/custom_text_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});
   final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
        double height = Dimensions.screenHeight(context);
    double width = Dimensions.screenWidth(context);
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: height*0.02,),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(AppStrings.welcome,style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),)),
              CustomTextFormField(label:AppStrings.email,hintText: AppStrings.email,controller: emailController,),
              SizedBox(height: height*0.01,),
              CustomTextFormField(label:AppStrings.password,hintText: AppStrings.password,isPassword: true,controller: passwordController,),
              SizedBox(height: height*0.02,),
              CustomButton(text: AppStrings.signup, onPressed: (){}),
              SizedBox(height: height*0.01,),
              TextButton(onPressed: (){}, child: Text(AppStrings.forgotPassword,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),)),
              SizedBox(height: height*0.04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(AppStrings.noAccount,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                  SizedBox(width: width/100,),
                  TextButton(onPressed: (){}, child:Text(AppStrings.register,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),), ),
                ],
              ),
              SizedBox(height: height*0.01,),
              CustomButton(text: AppStrings.register, onPressed: (){}),
          ],
        ),
      )
    );
  }
}