import 'package:cocrico_user_app/%20constants/assets.dart';
import 'package:cocrico_user_app/%20constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class PlayingScreen extends StatefulWidget {
  @override
  _PlayingScreenState createState() => _PlayingScreenState();
}

class _PlayingScreenState extends State<PlayingScreen> {
  VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(AppImages.downArrow),
              SizedBox(height: 15,),
              Center(child: Text("Squid Game",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.normal),)),
              SizedBox(height: 15,),
              Center(
                child: _controller.value.isInitialized
                    ? AspectRatio(
                  aspectRatio: _controller.value.aspectRatio/2.2,
                  child: VideoPlayer(_controller),
                )
                    : Container(),
              ),
              // Image.asset(AppImages.img2),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImages.commentImg),
                  SizedBox(width: 40,),
                  Image.asset(AppImages.soundImg),
                  SizedBox(width: 40,),
                  Image.asset(AppImages.hd),


                ],
              ),
              SizedBox(height: 30,),
              VideoProgressIndicator(
                _controller,
                allowScrubbing: true,
                colors: VideoProgressColors(
                    backgroundColor:ColorConstants.grey,
                    bufferedColor: Colors.black,
                    playedColor: Colors.blueAccent),
              ),
              Row(
                children: [


                  Spacer(),
                  Text("1:49:56",style: TextStyle(color: ColorConstants.grey,fontSize: 15,fontWeight: FontWeight.normal),)
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: (){
                      _controller.seekTo(Duration(
                          seconds: _controller.value.position.inSeconds - 10));
                    },
                      child: Image.asset(AppImages.backwardImg)),
                 InkWell(
                   onTap: (){
                     _controller.seekTo(Duration(
                         seconds: _controller.value.position.inSeconds + 10));
                   },
                     child: Image.asset(AppImages.forwardImg)),
                  InkWell(
                    onTap: (){
                      setState(() {
                        _controller.value.isPlaying
                            ? _controller.pause()
                            : _controller.play();
                      });
                    },
                      child: Image.asset(AppImages.playImg)),
                 InkWell(
                   onTap: (){
                     setState(() {
                       _controller.pause();
                     });
                   },
                     child: Image.asset(AppImages.rectImg)),
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
