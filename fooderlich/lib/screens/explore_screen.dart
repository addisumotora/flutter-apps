import 'package:flutter/material.dart';
import 'package:fooderlich/api/mock_yummy_service.dart';

class ExploreScreen extends StatelessWidget{
  final mockYummyService = MockYummyService();
  ExploreScreen({super.key});

  @override
  Widget build(BuildContext context){
    return const Center(
      child:  Text('explore screen'),
    );
  }
}