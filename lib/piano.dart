import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:piano/components/key.dart';

class Piano extends StatelessWidget {
  const Piano({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 40,
        ),
        PianoKey(
          isWhiteKey: true,
          noteSoundAsset: 'do.mp3',
        ),
        // PianoKey(isWhiteKey: false),
        PianoKey(
          isWhiteKey: true,
          noteSoundAsset: 're.mp3',
        ),
        PianoKey(
          isWhiteKey: true,
          noteSoundAsset: 'mi.mp3',
        ),
        // // PianoKey(isWhiteKey: false),
        PianoKey(
          isWhiteKey: true,
          noteSoundAsset: 'fa.mp3',
        ),
        // // PianoKey(isWhiteKey: false),
        PianoKey(
          isWhiteKey: true,
          noteSoundAsset: 'sol.mp3',
        ),
        PianoKey(
          isWhiteKey: true,
          noteSoundAsset: 'la.mp3',
        ),
        PianoKey(
          isWhiteKey: true,
          noteSoundAsset: 'si.mp3',
        ),
      ],
    );
  }
}
