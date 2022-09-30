import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'dart:io';

class AdmobDemo extends StatefulWidget {
  const AdmobDemo({Key? key}) : super(key: key);

  @override
  State<AdmobDemo> createState() => _AdmobDemoState();
}

class _AdmobDemoState extends State<AdmobDemo> {
  BannerAd? banner;
  InterstitialAd? interstitialAd;
  RewardedAd? rewardedAd;
  NativeAd? nativeAd;
  bool isloaded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: banner!.size.height.toDouble(),
                  width: banner!.size.width.toDouble(),
                  child: AdWidget(
                    ad: banner!,
                  )),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    showinter();
                  },
                  child: Center(child: Text('Interstial Ad'))),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    showreward();
                  },
                  child: Center(child: Text('Reward Ad'))),
              SizedBox(
                height: 10,
              ),
              Center(child: Text('Nativ Ad')),
              Container(height: 300, width: 380, child: AdWidget(ad: nativeAd!))
            ],
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Showbanner();
    // showinter();
    // showreward();
    shownativad();
  }

  Showbanner() {
    String adunitid = Platform.isAndroid
        ? "ca-app-pub-3940256099942544/6300978111"
        : "ca-app-pub-3940256099942544/2934735716";
    BannerAdListener listener = BannerAdListener(onAdLoaded: (ad) {
      banner!.load();
      print("success");
    }, onAdFailedToLoad: (ad, error) {
      banner!.dispose();
      print('failed');
    });
    banner = BannerAd(
        size: AdSize.banner,
        adUnitId: adunitid,
        listener: listener,
        request: AdRequest());

    banner!.load();
  }

  showinter() {
    String unitid = Platform.isAndroid
        ? "ca-app-pub-3940256099942544/1033173712"
        : "ca-app-pub-3940256099942544/4411468910";
    InterstitialAd.load(
      adUnitId: unitid,
      request: AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          interstitialAd = ad;
          interstitialAd!.show();
          interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
            onAdShowedFullScreenContent: (ad) => print('add success full'),
            onAdFailedToShowFullScreenContent: (ad, error) =>
                print('failed ad full'),
          );
        },
        onAdFailedToLoad: (error) {
          print('failed');
        },
      ),
    );
  }

  showreward() {
    String unitid = Platform.isAndroid
        ? "ca-app-pub-3940256099942544/5224354917"
        : "ca-app-pub-3940256099942544/1712485313";
    RewardedAd.load(
        adUnitId: unitid,
        request: AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: ((ad) {
            rewardedAd = ad;
            rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
              onAdFailedToShowFullScreenContent: (ad, error) => print('Failed'),
              onAdShowedFullScreenContent: (ad) => print('successful'),
            );
            rewardedAd!.show(
              onUserEarnedReward: (ad, reward) {
                print('reward added');
              },
            );
          }),
          onAdFailedToLoad: (error) {
            print('failed');
          },
        ));
  }

  shownativad() {
    String unitid = Platform.isAndroid
        ? "ca-app-pub-3940256099942544/2247696110"
        : "ca-app-pub-3940256099942544/3986624511";
    NativeAdListener listener = NativeAdListener(
      onAdOpened: (ad) {
        nativeAd = ad as NativeAd?;
        nativeAd!.load();
        print('success');
      },
      onAdFailedToLoad: (ad, error) {
        print('load failed');
        setState(() {
          nativeAd!.load();
        });
      },
      onAdLoaded: (ad) {
        nativeAd!.load();
        print('successfully');
      },
    );
    nativeAd = NativeAd(
      adUnitId: unitid,
      factoryId: 'container',
      listener: listener,
      request: AdRequest(),
    );
    nativeAd!.load();
  }
}
