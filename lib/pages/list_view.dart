import 'package:flutter/material.dart';
import 'package:hotel_application/main.dart';
import 'package:hotel_application/models/attraction_list.dart';
import 'package:hotel_application/widgets/bottom_bar.dart';
import 'package:hotel_application/widgets/list_view.dart';

// This will represent the list page where we'll display the
// app's content as a list.
class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Icon(
          Icons.pool,
          color: Colors.white,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(
              Icons.notifications,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: mainThemeColor,
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: attractionsList.length,
                    itemBuilder: (context, index) {
                      Attraction attr = attractionsList[index];

                      return AttractionCard(attraction: attr);
                    }),
              ),
              const BottomBar()
            ],
          ),
        ),
      ),
    );
  }
}
