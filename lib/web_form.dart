import 'package:flutter/material.dart';

class WebForm extends StatelessWidget {
  const WebForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                    'https://images.unsplash.com/photo-1749334927556-d9fae29d0637?q=80&w=875&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Padding(
                padding: EdgeInsetsGeometry.fromLTRB(48, 0, 48, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/_Logo.png',
                      height: 34, // optional
                      fit: BoxFit.contain, // optional
                    ),
                    const SizedBox(height: 48),
                    Column(
                      children: [
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Text('Sign in')],
                              ),
                            ),
                            SizedBox(
                              height: 40,
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsetsGeometry.all(8),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF007AFF),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/Other-Pay-Method.png',
                                        height: 20,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(width: 8),
                                      Text(
                                        'Or sign in with Google',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w700,
                                          fontFamily: 'Roboto',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(text: 'Dont have an account? '),
                              TextSpan(
                                text: 'Sign up now',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
