import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class OTTController extends ChangeNotifier {
  final CarouselController _carouselController = CarouselController();
  int _current = 0;

  final List _platforms = [
    'https://www.hotstar.com/in/home',
    'https://www.netflix.com/in/',
    'https://www.primevideo.com/offers/nonprimehomepage/ref=atv_hm_pri_c_9zZ8D2_hm_hom',
    'https://www.zee5.com/?utm_source=GoogleSearch&utm_medium=Mark_CPA&utm_campaign=Search_SVOD_ZEE5-Brand-ZEE5-Only-Ex-Performance&utm_term=zee5&utm_content=Brand-ZEE5-Only-Ex&&&gclid=CjwKCAjw3oqoBhAjEiwA_UaLtuUoFg2wXl4oSohPtN6tezvidJN2AnDs-p__b65nnKJwCfj6i3PbMBoC_30QAvD_BwE&gclsrc=aw.ds',
    'https://www.sonyliv.com/',
    'https://www.jiocinema.com/tv-shows',
  ];

  final List _images = [
    'https://i.pinimg.com/564x/4c/92/b4/4c92b4b28c0b3f2d3bd038b81e9cc556.jpg',
    'https://i.pinimg.com/564x/94/00/10/940010831c9010d9bea0f40aff4c5fdb.jpg',
    'https://i.pinimg.com/564x/f1/f0/e9/f1f0e95881aa181064cbcd19d5cb4348.jpg',
    'https://i.pinimg.com/564x/61/cd/f0/61cdf065655f712bd6212c321bb8fff6.jpg',
    'https://images.justwatch.com/poster/300823336/s332/maharani-2021',
    'https://i.pinimg.com/564x/6a/f2/91/6af291430283e943f298838649a2df4e.jpg'
  ];

  final List _name = [
    'HotStar',
    'Netflix',
    'Amazone Prime',
    'Zee 5',
    'SonyLive',
    'Jio Cinema',
  ];

  get getPlatform {
    return _platforms;
  }

  get getName {
    return _name;
  }

  get getImages {
    return _images;
  }

  get getController {
    return _carouselController;
  }

  get getPlatforms {
    return _platforms;
  }

  setCurrentIndex(int index) {
    _current = index;
    notifyListeners();
  }

  get getCurrentIndex {
    return _current;
  }
}
