import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayDemo extends StatefulWidget {
  const VideoPlayDemo({Key? key}) : super(key: key);

  @override
  State<VideoPlayDemo> createState() => _VideoPlayDemoState();
}

class _VideoPlayDemoState extends State<VideoPlayDemo> {
  VideoPlayerController? controller;
  bool loop = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Center(
                  child: controller != null
                      ? AspectRatio(
                          aspectRatio: controller!.value.aspectRatio,
                          child: VideoPlayer(controller!),
                        )
                      : Container(
                          height: 100,
                          width: 100,
                          color: Colors.green,
                        ),
                ),
                Positioned(
                    top: 90,
                    left: 180,
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            controller!.value.isPlaying
                                ? controller!.pause()
                                : controller!.play();
                          });
                        },
                        child: Icon(
                          controller!.value.isPlaying
                              ? Icons.pause
                              : Icons.play_circle_outlined,
                          color: Colors.red,
                          size: 50,
                        ))),
                Positioned(bottom: 0,child: Container(width: 390,child: VideoProgressIndicator(controller!, allowScrubbing: true)))
              ],
            ),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     ElevatedButton(
            //         onPressed: () {
            //           controller!.play();
            //         }, child: Center(child: Text('Play'))),
            //     ElevatedButton(
            //         onPressed: () {
            //           controller!.pause();
            //         }, child: Center(child: Text('Pause')))
            //   ],
            // )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(
        'assets/videos/cat_feline_animal_pet_house_cat_427.mp4')
      ..initialize();
    controller!.setLooping(loop);
    controller!.setVolume(80);

  }

  @override
  void dispose() {
    super.dispose();
    controller!.dispose();
  }
}
