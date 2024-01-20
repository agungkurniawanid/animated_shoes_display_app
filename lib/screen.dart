import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> with TickerProviderStateMixin {
  late AnimationController waveController;
  double waveAmplitude = 10.0;

  @override
  void initState() {
    super.initState();
    waveController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    waveController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(color: Colors.white),
      child: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Transform.rotate(
              angle: 1.5,
              child: Opacity(
                opacity: 0.1,
                child: Text(
                  "NIKE",
                  style: GoogleFonts.poppins(
                    fontSize: 170,
                    letterSpacing: 10,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            AnimatedBuilder(
              animation: waveController,
              builder: (context, child) {
                double waveOffset = waveController.value * 2 * waveAmplitude;
                return Transform.translate(
                  offset: Offset(0.0, waveOffset),
                  child: child,
                );
              },
              child: const Image(
                width: 340,
                image: NetworkImage(
                  "https://i.imgur.com/kCACt3k.png",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
