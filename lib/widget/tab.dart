import 'package:flutter/material.dart';
import 'package:the_responsive_builder/the_responsive_builder.dart';

class Tab1 extends StatefulWidget {
  const Tab1({super.key, this.tabController});
  final TabController? tabController;

  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
 

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5.5.h,
              width: double.infinity,
      padding: EdgeInsets.symmetric( vertical: 2),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(30),
              ),
      child: TabBar(
        controller: widget.tabController,
        dividerColor: Colors.transparent,
                  labelStyle: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                 indicatorSize: TabBarIndicatorSize.tab,
                 
                  indicator: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                      color: Colors.black,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  tabs:  [
                   Tab(
                      text: 'Active',
                      
                    ),
                    Tab(
                      text: 'Pending',
                      
                    ),
                    Tab(
                      text: 'Finished',
                      
                    ),
                 
                  ],
                ),
    );
  }
}