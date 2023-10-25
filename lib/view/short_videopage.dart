import 'package:elance_app/view/components/text_widget.dart';
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

  static List videoList = [
    "assets/videos/elance-video.mp4",
    "assets/videos/elance-video2.mp4",
    "assets/videos/elance-video3.mp4",
    "assets/videos/elance-video3.mp4",
    "assets/videos/elance-video.mp4"
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0, viewportFraction: 1);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          title: Text(
            "Short Videos",
            style: TextWidget.textStyle1,
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 21,
              color: Colors.black,
            ),
          ),
          elevation: 0,
        ),
        body: PageView.builder(
            controller: _pageController,
            itemCount: videoList.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => VideoPlayerWidget(
                  url: videoList[index],
                )));
  }
}

class VideoPlayerWidget extends StatefulWidget {
  final String url;
  const VideoPlayerWidget({super.key, required this.url});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  VideoPlayerController? videoPlayerController;
  Future<void>? initializeVideoPlayerFuture;
  bool isPause = false;

  @override
  void initState() {
    initPlayer(widget.url);
    super.initState();
  }

  initPlayer(
    url,
  ) {
    videoPlayerController?.dispose();

    videoPlayerController = VideoPlayerController.asset(url);
    initializeVideoPlayerFuture =
        videoPlayerController?.initialize().then((value) {
      videoPlayerController?.play();
    });
  }

  @override
  void dispose() {
    videoPlayerController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return videoPlayerController!.value.isInitialized
                ? Stack(
                    children: [
                      SizedBox.expand(
                        child: GestureDetector(
                          onTap: () {
                            videoPlayerController?.pause();
                            setState(() {
                              isPause = true;
                            });
                          },
                          child: FittedBox(
                            fit: BoxFit.cover,
                            child: SizedBox(
                              width: videoPlayerController!.value.size.width,
                              height: videoPlayerController!.value.size.height,
                              child: VideoPlayer(videoPlayerController!),
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            videoPlayerController?.play();
                            setState(() {
                              isPause = false;
                            });
                          },
                          child: isPause
                              ? const CircleAvatar(
                                  backgroundColor: Colors.white30,
                                  radius: 30,
                                  child: Icon(
                                    Icons.play_arrow_rounded,
                                    size: 40,
                                    color: Colors.white,
                                  ),
                                )
                              : Container(),
                        ),
                      ),
                    ],
                  )
                : Container();
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
