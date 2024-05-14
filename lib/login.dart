import 'package:flutter/material.dart';

void main() {
  runApp(const LoginSignupPage());
}

class LoginSignupPage extends StatelessWidget {
  const LoginSignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(' '),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Let\'s make your',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const Text(
                'account!',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF293A99)),
              ),
              const SizedBox(
                  height: 40), // Add padding between the title and Email field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Email ID'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email ID';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                  height: 20), // Add padding between Email and Password fields
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                  height:
                      70), // Add padding between Password field and Next button
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Handle form submission here.
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF293A99),
                        padding: const EdgeInsets.all(16.0),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                  height:
                      15), // Add padding between Next button and Sign Up using Google button
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: const Row(
                      mainAxisAlignment:
                          MainAxisAlignment.center, // Align text to center
                      children: [
                        Text(
                          'Already have an account? ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 15, // Change text color to black
                          ),
                        ),
                        Text(
                          'Sign In',
                          style: TextStyle(
                            color: Color(
                                0xFF293A99), // Change text color to purple
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // Choose your desired color
                      thickness: 1, // Adjust the thickness of the line
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Or',
                      style: TextStyle(
                        color: Colors.black, // Choose your desired color
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.grey, // Choose your desired color
                      thickness: 1, // Adjust the thickness of the line
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Center(
                child: SizedBox(
                  width: MediaQuery.of(context).size.width *
                      0.7, // Set width to 90% of screen width
                  child: TextButton(
                    onPressed: () {
                      // Handle button press here
                    },
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(const BorderSide(
                        color: Color(0xFF293A99), // Set the color of the border
                        width: 2, // Set the width of the border
                      )),
                    ),
                    child: const Text(
                      'Sign up using Google',
                      style: TextStyle(
                        color: Colors.black, // Choose your desired text color
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
