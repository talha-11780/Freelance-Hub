import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF004D40), Colors.teal, Colors.greenAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const Spacer(flex: 3),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: const [
                    BoxShadow(color: Colors.black26, blurRadius: 20, offset: Offset(0, 8)),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset('assets/images/logo.jpeg', width: 130),
                ),
              ),
              const SizedBox(height: 24),
              const Text('FreelanceHub',
                  style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 38,
                      color: Colors.white)),
              const SizedBox(height: 8),
              const Text('Hire talent. Get work done.',
                  style: TextStyle(fontSize: 16, color: Colors.white70)),
              const Spacer(flex: 3),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.work_outline, color: Colors.white70, size: 18),
                  SizedBox(width: 6),
                  Text('Find. Hire. Succeed.',
                      style: TextStyle(color: Colors.white70)),
                ],
              ),
              const SizedBox(height: 16),
              const SizedBox(
                width: 28,
                height: 28,
                child: CircularProgressIndicator(
                    color: Colors.white, strokeWidth: 3),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}