import 'package:flutter/material.dart';
import 'package:portfolio_5499126/pages/summary_page.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _currentSliderValue = 50.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Interactive Slider',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),

            Text(
              'Current Value: ${_currentSliderValue.round()}',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 20),

            Slider(
              value: _currentSliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            const SizedBox(height: 30),

            Column(
              children: [
                const Text(
                  'Progress Indicator:',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                LinearProgressIndicator(
                  value: _currentSliderValue / 100,
                  backgroundColor: Colors.grey[300],
                  valueColor: AlwaysStoppedAnimation<Color>(
                    _getColorFromValue(_currentSliderValue),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),

            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: _getColorFromValue(_currentSliderValue),
                borderRadius: BorderRadius.circular(_currentSliderValue * 2),
                boxShadow: [
                  BoxShadow(
                    color: _getColorFromValue(
                      _currentSliderValue,
                    ).withAlpha((0.3 * 255).toInt()),
                    blurRadius: _currentSliderValue / 5,
                    spreadRadius: _currentSliderValue / 10,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  '${_currentSliderValue.round()}%',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) =>
                            SummaryPage(sliderValue: _currentSliderValue),
                  ),
                );
              },
              child: const Text('Go to Summary'),
            ),
          ],
        ),
      ),
    );
  }

  Color _getColorFromValue(double value) {
    if (value <= 25)
      return Colors.red;
    else if (value <= 50)
      return Colors.orange;
    else if (value <= 75)
      return Colors.yellow;
    else
      return Colors.green;
  }
}
