import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

class HlsPlayer extends StatelessWidget {
  const HlsPlayer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: BetterPlayer.network(
                "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8",
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
