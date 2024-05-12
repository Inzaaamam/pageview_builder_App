
import 'package:flutter/material.dart';

class ProgresCalculate extends StatefulWidget {
  const ProgresCalculate({super.key});

  @override
  State<ProgresCalculate> createState() => _ProgresCalculateState();
}
double _progressValue = 0.0;
class _ProgresCalculateState extends State<ProgresCalculate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 70,
      color: Colors.amber,
      child: Row(
        children: [
           LinearProgressIndicator(
            
                value: _progressValue, // Current progress value (0.0 to 1.0)
                backgroundColor: Colors.grey[300], // Background color
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue), // Progress color
              ),
                    SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Simulating progress change
                    _progressValue += 0.1;
                    if (_progressValue > 1.0) {
                      _progressValue = 0.0;
                    }
                  });
                },
                child: const Text('Increase Progress'),
              ),
        ],
      ),
    );
  }
}