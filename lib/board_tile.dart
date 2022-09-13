import 'package:flutter/material.dart';
import 'package:tic_tac_toe/tile_state.dart';

class BoardTile extends StatelessWidget {
  const BoardTile(
      {Key? key,
      required this.dimension,
      required this.tileState,
      required this.onPressed})
      : super(key: key);
  final TileState tileState;
  final double dimension;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: dimension,
        height: dimension,
        child: MaterialButton(
          onPressed: onPressed,
          child: _widgetForTileState(),
        ));
  }

  Widget _widgetForTileState() {
    switch (tileState) {
      case TileState.EMPTY:
        return Container();
      case TileState.CROSS:
          return Image.asset('images/x.png');
      case TileState.CIRCLE:
          return Image.asset('images/o.png');
    }
  }
}
