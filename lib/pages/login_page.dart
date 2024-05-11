import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/home.dart';
import 'package:flutter_application_1/pages/register.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
            const Text(
              'Mhs 1:  [2005202, Muhammad Febriansyah Firdaus]',
            ),
            const Text(
              'Mhs 2:  [2001408, Trian Tisna]',
            ),
            Icon(
              Icons.coffee,
              size: 100,
            ),

            const SizedBox(height: 50),

            Text(
              'Selamat Datang Kembali!',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25,),

            //username
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: usernameController,
                obscureText: false,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: false,
                  hintText: 'Username',
                  hintStyle: TextStyle(color: Colors.grey[500 ])
                ),
              ),
            ),

          const SizedBox(height: 25),

            //pw
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade400),
                  ),
                  fillColor: Colors.grey.shade200,
                  filled: false,
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Colors.grey[500])
                ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'Lupa Password?',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ),

            const SizedBox(height: 10,),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton(
                
                onPressed: () {
                  // Replace "TargetScreen" with the actual screen you want to navigate to
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyHome()),
                  );
                },
                
                child: const Center(
                  
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(25),
                  backgroundColor: Colors.red, // Set background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Maintain rounded corners
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton(
                
                onPressed: () {
                  // Replace "TargetScreen" with the actual screen you want to navigate to
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => Register()),
                  );
                },
                
                child: const Center(
                  
                  child: Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(25),
                  backgroundColor: Colors.black, // Set background color
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Maintain rounded corners
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 25),

          ],),
        ),
      )
    );
      
  }
}