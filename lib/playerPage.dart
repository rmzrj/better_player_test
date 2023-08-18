import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: BetterPlayer.network(
                "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
                betterPlayerConfiguration: const BetterPlayerConfiguration(
                  aspectRatio: 16 / 9,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
