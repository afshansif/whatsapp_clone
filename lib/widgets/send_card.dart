import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/pointer_painter.dart';

import '../data/colors.dart';

class SendCard extends StatelessWidget {
  const SendCard({
    super.key,
    required this.text,
    required this.timeStamp,
    required this.isRead,
  });

  final String text;
  final String timeStamp;
  final bool isRead;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.75, // Limit max width
        ),
        child: Container(
          decoration: BoxDecoration(
            color: messageBarColor,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              // Pointer at the top-right corner
              Positioned(
                top: 0,
                right: 0,
                child: CustomPaint(
                  size: const Size(10, 10),
                  painter: PointerPainter(),
                ),
              ),
              // Message content
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      text,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          timeStamp,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white70,
                          ),
                        ),
                        const SizedBox(width: 5),
                        Icon(
                          Icons.done_all,
                          size: 16,
                          color: isRead ? Colors.lightBlue : Colors.white70,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
