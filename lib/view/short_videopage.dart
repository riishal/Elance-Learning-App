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
  late PageController _pageController = PageController();
  ChewieController? chewieController;
  VideoPlayerController? videoPlayerController;
  Future<void>? initializeVideoPlayerFuture;

  static List videoList = [
    "assets/videos/elance-video.mp4",
    "assets/videos/elance-video2.mp4",
    "assets/videos/elance-video3.mp4",
    "assets/videos/elance-video3.mp4",
    "assets/videos/elance-video.mp4"
  ];

  @override
  void initState() {
    initPlayer(videoList.first);
    _pageController = PageController(initialPage: 0, viewportFraction: 1);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
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
        showControls: true,
        looping: true,
        aspectRatio: 20 / 29);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(12, 84, 160, 0.13),
        appBar: AppBar(
            backgroundColor: const Color.fromRGBO(12, 84, 160, 0.13),
            elevation: 0,
            title: Text("Short Videos")),
        body: FutureBuilder(
          future: initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const AspectRatio(
                  aspectRatio: 16 / 25,
                  child: Center(child: CircularProgressIndicator()));
            }
            return PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  initPlayer(videoList[index]);
                });

                // videoPlayerController!.play();
              },
              controller: _pageController,
              itemCount: 5,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => Chewie(
                controller: chewieController!,
              ),
            );
          },
        ));
  }
}
