import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF293A99), // Set app bar color to blue
        title: const Text(
          'InSave',
          style: TextStyle(
            color: Colors.white, // Set text color to white
          ),
          textAlign: TextAlign.center, // Align title to center
        ),
        centerTitle: true, // Center the title horizontally
        actions: [
          IconButton(
            onPressed: () {
              // Handle account icon press here
            },
            icon: const Icon(
              Icons.account_circle,
              color: Colors.white, // Set icon color to white
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 25), // Adjust the spacing below the app bar
          Container(
            width: MediaQuery.of(context).size.width *
                0.8, // Set width to 80% of screen width
            height:
                160, // Set height to match the height of the Your Investments block
            decoration: BoxDecoration(
              color: const Color(0xFF293A99), // Set background color to blue
              borderRadius: BorderRadius.circular(10), // Set rounded corners
            ),
            padding: const EdgeInsets.all(16),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '\$29,482.92',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Set text color to white
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Your Investments',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Set text color to white
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.4 -
                    8, // Set width to half of screen width
                height:
                    160, // Set height to match the height of the Your Investments block
                decoration: BoxDecoration(
                  color:
                      const Color(0xFF293A99), // Set background color to blue
                  borderRadius:
                      BorderRadius.circular(10), // Set rounded corners
                ),
                padding: const EdgeInsets.all(16),
                child: const Center(
                  child: Text(
                    'Savings',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Container(
                width: MediaQuery.of(context).size.width * 0.4 -
                    8, // Set width to half of screen width
                height:
                    160, // Set height to match the height of the Your Investments block
                decoration: BoxDecoration(
                  color:
                      const Color(0xFF293A99), // Set background color to blue
                  borderRadius:
                      BorderRadius.circular(10), // Set rounded corners
                ),
                padding: const EdgeInsets.all(16),
                child: const Center(
                  child: Text(
                    'Transactions',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 80),
          SizedBox(
            height: 50, // Set the height of the slider menu
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  // Button 1
                  Container(
                    width: 110, // Adjust button width as needed
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color:
                          const Color(0xFF293A99), // Set button color to blue
                      borderRadius:
                          BorderRadius.circular(10), // Set rounded corners
                      border: Border.all(
                        color: Colors.white, // Set border color to white
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Transaction 1',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                    ),
                  ),
                  // Button 2
                  Container(
                    width: 110, // Adjust button width as needed
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color:
                          const Color(0xFF293A99), // Set button color to blue
                      borderRadius:
                          BorderRadius.circular(10), // Set rounded corners
                      border: Border.all(
                        color: Colors.white, // Set border color to white
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Transaction 2',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                    ),
                  ),
                  // Button 3
                  Container(
                    width: 110, // Adjust button width as needed
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color:
                          const Color(0xFF293A99), // Set button color to blue
                      borderRadius:
                          BorderRadius.circular(10), // Set rounded corners
                      border: Border.all(
                        color: Colors.white, // Set border color to white
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Transaction 3',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                    ),
                  ),
                  // Button 4
                  Container(
                    width: 110, // Adjust button width as needed
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      color:
                          const Color(0xFF293A99), // Set button color to blue
                      borderRadius:
                          BorderRadius.circular(10), // Set rounded corners
                      border: Border.all(
                        color: Colors.white, // Set border color to white
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        'Transaction 4',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white, // Set text color to white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 80),
          Container(
            width: MediaQuery.of(context).size.width *
                0.8, // Set width to 80% of screen width
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0xFF293A99), // Set background color to blue
              borderRadius: BorderRadius.circular(10), // Set rounded corners
            ),
            padding: const EdgeInsets.all(16),
            child: const Center(
              child: Text(
                'Ongoing Challenges',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Set text color to white
                ),
              ),
            ),
          ),
          const SizedBox(height: 7.2),
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            color: const Color(0xFF293A99), // Footer background color
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Home icon
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // Circular border
                    border: Border.all(
                      color: Colors.white, // Set border color to white
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Navigate to home screen
                    },
                    icon: const Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 32, // Increase icon size
                    ),
                  ),
                ),
                // Expenses icon
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // Circular border
                    border: Border.all(
                      color: Colors.white, // Set border color to white
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Navigate to expenses screen
                    },
                    icon: const Icon(
                      Icons.money_off,
                      color: Colors.white,
                      size: 32, // Increase icon size
                    ),
                  ),
                ),
                // Add icon
                SizedBox(
                  height: 60, // Adjust height to move it slightly higher
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(30), // Circular border
                      border: Border.all(
                        color: Colors.white, // Set border color to white
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Perform add action
                      },
                      icon: const Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 32, // Increase icon size
                      ),
                    ),
                  ),
                ),
                // Investments icon
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // Circular border
                    border: Border.all(
                      color: Colors.white, // Set border color to white
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Navigate to investments screen
                    },
                    icon: const Icon(
                      Icons.trending_up,
                      color: Colors.white,
                      size: 32, // Increase icon size
                    ),
                  ),
                ),
                // Savings icon
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), // Circular border
                    border: Border.all(
                      color: Colors.white, // Set border color to white
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {
                      // Navigate to savings screen
                    },
                    icon: const Icon(
                      Icons.account_balance,
                      color: Colors.white,
                      size: 32, // Increase icon size
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
