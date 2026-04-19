import 'package:flutter/material.dart';


class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
    final TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return  Scaffold(
        appBar: AppBar(
            leading: IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: Icon(Icons.arrow_back)),
            // title: Text("Forget Password"),
            centerTitle: true,
        ),
      body: Padding(
        
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start, 
            children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text("Forget Password", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                         SizedBox(height: height * 0.01,),
                        Text("Enter your email address to reset password.", style: TextStyle(fontSize: 24, color: Colors.grey),)
                    ],
                ),
                    SizedBox(height: height * 0.04,),
                   TextField(
                    controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16)
                        ),
                        // helper: Text("data"),
                        hintText: "Enter your email",
                        hintStyle: TextStyle(color: Colors.blue),
                        prefixIcon: Icon(Icons.email),
                        // suffixIcon: Icon(Icons.lock),
                        label: Text("Email Address")
                      ),
                    //   maxLength: 20,
                    ),
                     SizedBox(height: height * 0.04,),
                     SizedBox(
                        width: double.infinity,
                         height: height * 0.06,  
                       child: ElevatedButton(onPressed: () {
                        // Handle forget password logic here
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResetEmailScreen()));
                        print( "Email: ${emailController.text}");
                             },
                            style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.blue, 
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                            )   
                        ), child: Text("Reset Password", style: TextStyle(fontSize: 16, color: Colors.white),) ,
                     ),
            )],
        ),
      ),
    );
  }
}


// Reset Email sent Screen
class ResetEmailScreen extends StatefulWidget {
  const ResetEmailScreen({super.key});

  @override
  State<ResetEmailScreen> createState() => _ResetEmailScreenState();
}

class _ResetEmailScreenState extends State<ResetEmailScreen> {
  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height;
     double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
            leading: IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: Icon(Icons.arrow_back)),
            // title: Text("Forget Password"),
            centerTitle: true,
        ),
      body: Padding(
        
        padding: EdgeInsetsGeometry.all(16),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start, 
            children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text("Reset email sent", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),),
                         SizedBox(height: height * 0.01,),
                        Text("We have sent all required instructions details to your email.", style: TextStyle(fontSize: 24, color: Colors.grey),)
                    ],
                ),
                    SizedBox(height: height * 0.6,),
                     SizedBox(
                        width: double.infinity,
                         height: height * 0.06,  
                       child: ElevatedButton(onPressed: () {
                        // Handle forget password logic here
                             },
                            style: ElevatedButton.styleFrom(
                             backgroundColor: Colors.white, 
                            shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                            side: BorderSide(color: Colors.grey, width: width * 0.001)
                            )   
                        ), child: Row(  
                             mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Go to Login page", style: TextStyle(fontSize: 16, color: Colors.black),),
                            SizedBox(width: width * 0.01,),
                            Icon(Icons.arrow_forward, color: Colors.black,)
                          ],
                        ) ,
                     ),
            )],
        ),
      ),
    );
  }
}



