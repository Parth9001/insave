import 'package:flutter/material.dart';

class TransactionPage extends StatelessWidget {
  const TransactionPage({Key? key}) : super(key: key);

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
          const SizedBox(height: 10), // Adjust the spacing below the app bar
          Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            color: Colors.white, // Header background color
            child: const Text(
              'Transactions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF293A99), // Set text color to custom blue shade
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildMonthExpenses(
                    context,
                    'May 2024',
                    [
                      'Food  \$100',
                      'Entertainment  \$50',
                      'Travel  \$75',
                      'Investments  \$120',
                      'Subscription  \$80',
                    ],
                    const Color(0xFF293A99),
                    [
                      Colors.red.shade900,
                      Colors.yellow.shade900,
                      Colors.green.shade900,
                      Colors.orange.shade900,
                      Colors.blue.shade900,
                    ],
                  ),
                  _buildMonthExpenses(
                    context,
                    'April 2024',
                    [
                      'Food  \$90',
                      'Entertainment  \$45',
                      'Travel  \$70',
                      'Investments  \$110',
                      'Subscription  \$75',
                    ],
                    const Color(0xFF293A99),
                    [
                      Colors.red.shade900,
                      Colors.yellow.shade900,
                      Colors.green.shade900,
                      Colors.orange.shade900,
                      Colors.blue.shade900,
                    ],
                  ),
                  _buildMonthExpenses(
                    context,
                    'March 2024',
                    [
                      'Food  \$80',
                      'Entertainment  \$40',
                      'Travel  \$65',
                      'Investments  \$100',
                      'Subscription  \$70',
                    ],
                    const Color(0xFF293A99),
                    [
                      Colors.red.shade900,
                      Colors.yellow.shade900,
                      Colors.green.shade900,
                      Colors.orange.shade900,
                      Colors.blue.shade900,
                    ],
                  ),
                  _buildMonthExpenses(
                    context,
                    'February 2024',
                    [
                      'Food  \$70',
                      'Entertainment  \$35',
                      'Travel  \$60',
                      'Investments  \$90',
                      'Subscription  \$65',
                    ],
                    const Color(0xFF293A99),
                    [
                      Colors.red.shade900,
                      Colors.yellow.shade900,
                      Colors.green.shade900,
                      Colors.orange.shade900,
                      Colors.blue.shade900,
                    ],
                  ),
                ],
              ),
            ),
          ),
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

  Widget _buildMonthExpenses(
    BuildContext context,
    String month,
    List<String> transactions,
    Color headerColor,
    List<Color> transactionColors,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        border: Border.all(color: headerColor), // Set border color
        borderRadius: BorderRadius.circular(10), // Set rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: headerColor,
            child: Text(
              month,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Set text color to white
              ),
            ),
          ),
          const SizedBox(height: 8),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: transactions.asMap().entries.map((entry) {
              int index = entry.key;
              String transaction = entry.value;
              Color color = transactionColors[index % transactionColors.length]
                  .withOpacity(0.6); // Adjust opacity here
              // Extracting amount from transaction string
              String amount = transaction.substring(transaction.indexOf('\$'));
              // Removing the amount from the transaction string
              String transactionDescription =
                  transaction.replaceAll(amount, '').trim();
              return Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.symmetric(vertical: 4),
                color: color, // Set transaction background color
                width: double
                    .infinity, // Ensure each transaction box spans full width
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      transactionDescription,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black, // Set text color to black
                      ),
                    ),
                    Text(
                      amount,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black, // Set text color to black
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
