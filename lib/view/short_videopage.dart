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

  @override
  void initState() {
    initPlayer(
        "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4");

    super.initState();
  }

  initPlayer(
    url,
  ) {
    videoPlayerController?.dispose();
    chewieController?.dispose();

    videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(url));
    initializeVideoPlayerFuture =
        videoPlayerController?.initialize().then((value) {});
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController!,
      autoInitialize: false,
      autoPlay: true,
      looping: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(elevation: 0, title: Text("Short Videos")),
        body: ListView.separated(
            itemBuilder: (context, index) => FutureBuilder(
                  future: initializeVideoPlayerFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    return Chewie(controller: chewieController!);
                  },
                ),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10,
                ),
            itemCount: 4));
  }
}
