import 'package:flame/game.dart';
import 'package:flutter/material.dart';

import 'src/watermelon_blocks.dart';

void main() {
  final game = WatermelonBlocks();
  runApp(GameWidget(game: game));
}
