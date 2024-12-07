import 'package:flutter/material.dart';
import 'package:exhibition_management_frontend/Models/ExhibitionCardDTO.dart';
import 'package:exhibition_management_frontend/View/HomePage/ExhibitionCard.dart'; // Adjust the path as needed

import 'package:exhibition_management_frontend/View/HomePage/Header/Header.dart'; // Import your Header widget

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize the TextEditingController for the search bar
    final TextEditingController searchController = TextEditingController();

    // Sample data (List of ExhibitionCardDTO models)
    final List<ExhibitionCardDTO> exhibitionList = [
      ExhibitionCardDTO(
        imageUrl: 'assets/Banner_Images/Banner_Image-1.jpeg',
        venue: 'Expo Center, Hall 5',
        startDate: 'December 15, 2024',
        endDate: 'December 16, 2024',
        eventStatus: 'Ongoing',
      ),
      ExhibitionCardDTO(
        imageUrl: 'assets/Banner_Images/Banner_Image-2.png',
        venue: 'Convention Center, Main Hall',
        startDate: 'January 10, 2025',
        endDate: 'January 10, 2025',
        eventStatus: 'Expired',
      ),
      ExhibitionCardDTO(
        imageUrl: 'assets/Banner_Images/Banner_Image-1.jpeg',
        venue: 'Grand Arena, East Wing',
        startDate: 'February 20, 2025',
        endDate: 'February 20, 2025',
        eventStatus: 'Expired',
        
      ),
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100), // Customize height as needed
        child: SafeArea(
            child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align content to the left
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Header(searchController: searchController),
            ),
          ],
        )),
      ),
      body: ListView.builder(
        itemCount: exhibitionList.length, // Count the number of items
        itemBuilder: (context, index) {
          return ExhibitionDisplayCard(
            model: exhibitionList[index],
          );
        },
      ),
    );
  }
}
