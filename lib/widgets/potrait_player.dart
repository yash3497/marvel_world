import 'package:flutter/material.dart';
import 'package:marvel_world/widgets/vedio_player_full_screen.dart';
import 'package:video_player/video_player.dart';

class PotraitPlayerWidget extends StatefulWidget {
  const PotraitPlayerWidget({Key? key}) : super(key: key);

  @override
  _PotraitPlayerWidgetState createState() => _PotraitPlayerWidgetState();
}

class _PotraitPlayerWidgetState extends State<PotraitPlayerWidget> {
  late VideoPlayerController controller;
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    controller = VideoPlayerController.asset("assets/files/intro_vedio.mp4");
    controller.addListener(() {
      setState(() {});
    });
    controller.setLooping(true);
    controller.initialize().then((value) => controller.play());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return VideoPlayerFullscreenWidget(controller: controller);
  }
}
