import 'package:flame/components.dart';
import 'package:flutter/material.dart';
import 'package:watermelon_blocks/src/config.dart';

class Ball extends SpriteComponent {
  static const double gravity = 500.0;
  Vector2 velocity = Vector2.zero();

  Ball({
    required super.position,
    required super.size,
    required super.sprite,
  }) : super(
      anchor: Anchor.center,
  );

  @override
  void update(double dt) {
    super.update(dt);

    velocity.y += gravity * dt;
    position.add(velocity * dt);

    if (position.y + size.y >= gameHeight) {
      velocity.y = -velocity.y * 0.5;
      position.y = gameHeight - size.y - 1;
    }
  }
}
