import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class AddTransactionPage extends StatefulWidget {
  const AddTransactionPage({Key? key}) : super(key: key);

  @override
  _AddTransactionPageState createState() => _AddTransactionPageState();
}

class _AddTransactionPageState extends State<AddTransactionPage> {
  final _amountController = TextEditingController();
  final _descriptionController = TextEditingController();
  String? _selectedCategory;
  String? _selectedFrequency;
  DateTime? _selectedDate;
  bool _isRecurring = false;

  final List<String> _categories = [
    'Food',
    'Entertainment',
    'Travel',
    'Investments',
    'Subscription'
  ];
  final List<String> _frequencies = ['Daily', 'Weekly', 'Monthly', 'Yearly'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF293A99),
        title: const Text(
          'InSave',
          style: TextStyle(
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Handle account icon press here
            },
            icon: const Icon(
              Icons.account_circle,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Amount',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _amountController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter amount',
                ),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                value: _selectedCategory,
                items: _categories.map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedCategory = value;
                  });
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Select Category',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter description',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                readOnly: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: _selectedDate == null
                      ? 'Select date'
                      : DateFormat('yyyy-MM-dd').format(_selectedDate!),
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.calendar_today),
                    onPressed: () async {
                      DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2101),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          _selectedDate = pickedDate;
                        });
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Is this a recurring transaction?',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Radio<bool>(
                    value: false,
                    groupValue: _isRecurring,
                    onChanged: (value) {
                      setState(() {
                        _isRecurring = value!;
                      });
                    },
                  ),
                  const Text('No'),
                  Radio<bool>(
                    value: true,
                    groupValue: _isRecurring,
                    onChanged: (value) {
                      setState(() {
                        _isRecurring = value!;
                      });
                    },
                  ),
                  const Text('Yes'),
                ],
              ),
              if (_isRecurring) ...[
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  value: _selectedFrequency,
                  items: _frequencies.map((frequency) {
                    return DropdownMenuItem(
                      value: frequency,
                      child: Text(frequency),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _selectedFrequency = value;
                    });
                  },
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Select Frequency',
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
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
                    borderRadius: BorderRadius.circular(30), // Circular border
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
      ),
    );
  }
}
