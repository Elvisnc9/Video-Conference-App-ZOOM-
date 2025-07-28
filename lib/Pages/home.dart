import 'package:flutter/material.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';
import 'package:zoom_app/widget/edge-to-edge.dart';
import 'package:zoom_app/widget/tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>with SingleTickerProviderStateMixin {
    late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return EdgeToEdgeWrapperWidget(
      child:  Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h ),
              child: Column(
                children: [
                        
                        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sessions',
                        style: TextStyle(
                          fontSize: 3.5.h,
                          fontWeight: FontWeight.bold
                        ),
                      ),

                      CircleAvatar(
                        radius: 3.h,
                        backgroundImage: AssetImage('assets/Images/profilez.jpeg'),
                      )
                    ],
                  ),

                  SizedBox(height: 2.h,),

                  Tab1(
                    tabController: _tabController,
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}