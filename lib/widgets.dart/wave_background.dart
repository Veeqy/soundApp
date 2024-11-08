// import 'package:flutter/material.dart';
// import 'dart:math';

// class WaveBackground extends StatefulWidget {
//   const WaveBackground({super.key});

//   @override
//   _WaveBackgroundState createState() => _WaveBackgroundState();
// }

// class _WaveBackgroundState extends State<WaveBackground> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // ignore: sized_box_for_whitespace
//       body: Container(
//         height: double.infinity,
//         width: double.infinity,
//         child: CustomPaint(
//           painter: WavePainter(),
//         ),
//       ),
//     );
//   }
// }

// class WavePainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()..style = PaintingStyle.fill;

//     Path path1 = Path();
//     path1.moveTo(0, size.height / 2);

//     for (double i = 0; i < size.width; i++) {
//       double y = size.height / 2 + sin(i / 100 + 100) * 50;
//       path1.lineTo(i, y);
//     }

//     path1.lineTo(size.width, size.height);
//     path1.lineTo(0, size.height);
//     path1.close();

//     LinearGradient gradient1 = const LinearGradient(
//       colors: [
//         Color.fromARGB(255, 120, 253, 11),
//         Color.fromARGB(255, 19, 48, 1),
//       ],
//     );

//     paint.shader =
//         gradient1.createShader(Rect.fromLTWH(0, 0, size.width, size.height));
//     canvas.drawPath(path1, paint);

//     Path path2 = Path();
//     path2.moveTo(0, size.height / 2 + 100);

//     for (double i = 0; i < size.width; i++) {
//       double y = size.height / 2 + 100 + sin(i / 100 + 150) * 50;
//       path2.lineTo(i, y);
//     }

//     path2.lineTo(size.width, size.height);
//     path2.lineTo(0, size.height);
//     path2.close();

//     LinearGradient gradient2 = const LinearGradient(
//       colors: [
//         Colors.black12,
//         Colors.black,
//       ],
//     );

//     paint.shader = gradient2.createShader(Rect.fromLTWH(0, 0,
//     size.width, size.height));
//     canvas.drawPath(path2, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
