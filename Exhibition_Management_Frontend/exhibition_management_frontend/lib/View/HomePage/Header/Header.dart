import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final TextEditingController searchController;

  const Header({super.key, required this.searchController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Welcome to Star Exhibition",
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, // Space between elements
            children: [
              Expanded(
                child: TextField(
                  controller: searchController, // Bind the controller
                  decoration: InputDecoration(
                    hintText: "Search by Venue and Month...",
                    filled: true, // Enables background fill color
                    fillColor: Colors.white, // Sets background to white
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none, // Removes border lines
                    ),
                    prefixIcon:
                        const Icon(Icons.search), // Search icon as prefix
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10.0), // Adjust padding
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  // Handle settings button tap here
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Settings"),
                        content: const Text("Settings options go here."),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(); // Close the dialog
                            },
                            child: const Text("Close"),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
