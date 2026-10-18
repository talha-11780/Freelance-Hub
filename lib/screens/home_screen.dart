import 'package:flutter/material.dart';
import '../widgets/gig_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FreelanceHub',
    style: TextStyle(fontFamily: 'Pacifico', fontSize: 24)),
        actions: const [Icon(Icons.search), SizedBox(width: 12)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
  height: 200,
  width: double.infinity,
  child: Image.asset('assets/images/banner.jpeg', fit: BoxFit.cover),
),
       
            const Padding(
              padding: EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Popular Gigs',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),
            const GigCard(title: 'Logo Design', seller: 'Ali Khan',
    image: 'assets/images/gig1.jpeg', price: 25, rating: 4.8),
const GigCard(title: 'Flutter App Development', seller: 'Sara Ahmed',
    image: 'assets/images/gig4.jpeg', price: 150, rating: 4.9),
const GigCard(title: 'Content Writing', seller: 'Usman Ali',
    image: 'assets/images/gig2.jpeg', price: 15, rating: 4.5),
const GigCard(title: 'Video Editing', seller: 'Hina Malik',
    image: 'assets/images/gig3.jpeg', price: 40, rating: 4.7),
          ],
        ),
      ),
    );
  }
}