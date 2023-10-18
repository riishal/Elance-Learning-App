import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ShortVideos extends StatefulWidget {
  const ShortVideos({super.key, required this.index});
  final int index;

  @override
  State<ShortVideos> createState() => _ShortVideosState();
}

class _ShortVideosState extends State<ShortVideos> {
  ChewieController? chewieController;
  VideoPlayerController? videoPlayerController;
  Future<void>? initializeVideoPlayerFuture;

  static List videoList = [
    "assets/videos/elance-video.mp4",
    "assets/videos/elance-video.mp4",
    "assets/videos/elance-video.mp4"
  ];

  @override
  void initState() {
    initPlayer(videoList.first);

    super.initState();
  }

  initPlayer(
    url,
  ) {
    videoPlayerController?.dispose();
    chewieController?.dispose();

    videoPlayerController = VideoPlayerController.asset(url);
    initializeVideoPlayerFuture =
        videoPlayerController?.initialize().then((value) {});
    chewieController = ChewieController(
        videoPlayerController: videoPlayerController!,
        autoInitialize: false,
        autoPlay: true,
        fullScreenByDefault: true,
        showControls: false,
        looping: true,
        aspectRatio: 16 / 25);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0, title: Text("Short Videos")),
        body: PageView.builder(
            controller: PageController(initialPage: 0, viewportFraction: 1),
            itemCount: 4,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => Stack(
                  children: [
                    Chewie(controller: chewieController!),
                    GestureDetector(
                      onTap: () {
                        videoPlayerController?.play();
                      },
                      child: videoPlayerController!.value.isLooping
                          ? Container()
                          : Center(
                              child: Icon(Icons.play_arrow),
                            ),
                    ),
                  ],
                )));
  }
}
