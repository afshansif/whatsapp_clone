import 'package:flutter/material.dart';
import 'package:whatsapp_clone/data/colors.dart';

class BottomSendMessageBar extends StatefulWidget {
  const BottomSendMessageBar({super.key});

  @override
  State<BottomSendMessageBar> createState() => _BottomSendMessageBarState();
}

class _BottomSendMessageBarState extends State<BottomSendMessageBar> {
  final FocusNode _focusNode = FocusNode();

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _focusNode.requestFocus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            
            // focusNode: _focusNode,
            autofocus: false,
            style: const TextStyle(decoration: TextDecoration.none),
            cursorColor: Colors.grey,
            decoration: InputDecoration(
              prefixIcon: const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.emoji_emotions_rounded,
                    color: Colors.grey,
                  ),
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: Wrap(
                  runAlignment: WrapAlignment.center,
                  children: [
                    Transform.rotate(
                      angle: 56.0,
                      child: const Icon(
                        Icons.attach_file,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Icon(
                      Icons.camera_alt_rounded,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                  color: Colors.grey,
                ),
              ),
              focusColor: Colors.grey,
              labelText: "Enter a message",
              hintText: "Enter a message",
              hintStyle: const TextStyle(color: Colors.grey),
              labelStyle: const TextStyle(color: Colors.grey),
              floatingLabelBehavior: FloatingLabelBehavior.never,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 5),
          child: FloatingActionButton(
            shape: const CircleBorder(),
            backgroundColor: kTabColor,
            onPressed: () {},
            child: const Icon(
              Icons.mic,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
