import 'package:flutter/material.dart';
import 'package:latihan_kuis/home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(backgroundColor: const Color.fromARGB(255, 7, 31, 113),
        centerTitle: true,
        title: const Text('Rental Mobil', style: TextStyle(color: Color.fromARGB(255, 249, 250, 250)), ),
      ),

      body: Padding(padding: const EdgeInsets.only(top: 40),
        child: SizedBox(
          height:600,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(image: const AssetImage('assets/wheels.png')),
        
          
        
                TextField(
                  onChanged: (value) {
                    setState(() {
                      username = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
                    hintText: 'Username',
                    ),
                ),
                TextField(
                   onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
                    hintText: 'Password',
                    ),
                ),
        
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 7, 31, 113)),
                      foregroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 253, 251, 251)),
                    ),
                    onPressed: (){
                      if (username=='epann' && password=='1234' ) {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Berhasil!'),backgroundColor: Color.fromARGB(255, 162, 224, 164),));
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> HomePage(username: username,)));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Login Gagal!'),backgroundColor: Color.fromARGB(255, 231, 129, 122),));
                        
                      }
                    }, 
                    child: const Text('Login', style: TextStyle(fontSize: 20),)))
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}