import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class PianoKey extends StatefulWidget {
  final bool isWhiteKey;
  final String noteSoundAsset;
  PianoKey({
    required this.isWhiteKey,
    required this.noteSoundAsset,
  });

  @override
  State<PianoKey> createState() => _PianoKeyState();
}

class _PianoKeyState extends State<PianoKey> {
  bool _isPressed = false;
  // string note =
  AudioPlayer _audioPlayer = AudioPlayer();
  Future<void> _playNoteSound() async {
    await _audioPlayer.play(AssetSource(widget.noteSoundAsset))
        // position: Duration(seconds: 2))
        ;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTapDown: (_) {
          setState(() {
            _isPressed = true;
          });
          _playNoteSound();
        },
        onTapUp: (_) {
          setState(() {
            _isPressed = false;
          });
        },
        child: Container(
          width: widget.isWhiteKey ? 40.0 : 30.0,
          height: 120.0,
          decoration: BoxDecoration(
            color: widget.isWhiteKey
                ? _isPressed
                    ? Colors.grey[400]
                    : Colors.white
                : _isPressed
                    ? Colors.black54
                    : Colors.black,
            border: Border.all(),
          ),
        ));
  }
}
