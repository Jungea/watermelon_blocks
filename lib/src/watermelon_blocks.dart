import 'dart:async';
import 'dart:math' as math;

import 'package:flame/components.dart';
import 'package:flame/game.dart';

import 'components/components.dart';
import 'config.dart';

class WatermelonBlocks extends FlameGame {
  final rand = math.Random();

  WatermelonBlocks()
      : super(
          camera: CameraComponent.withFixedResolution(
              width: gameWidth, height: gameHeight),
        );

  double get width => size.x;

  double get height => size.y;

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();

    camera.viewfinder.anchor = Anchor.topLeft;

    world.add(PlayArea());

    world.add(Ball(
      position: Vector2(size.x / 2, 100),
      size: Vector2.all(ballRadius),
      sprite: await Sprite.load('1.png'),
    ));

    debugMode = true;
  }
}
