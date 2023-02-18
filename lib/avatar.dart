import 'package:flutter/material.dart';

const imageUrl =
    'https://sun9-44.userapi.com/impg/3oU7-7m2nWf_ez-gTb9JnuSqv4gv1eve1m5eeA/OVsSaCQ0uTA.jpg?size=1620x2160&quality=95&sign=0a104ea29083ee3aec0a0472872ebd4e&type=album';

enum LoadingState { load, loaded, error }

class Avatar extends StatefulWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  late LoadingState state;

  @override
  void initState() {
    super.initState();

    state = LoadingState.load;

    _load();
  }

  @override
  Widget build(BuildContext context) {
    Widget child = const CircularProgressIndicator();

    ImageProvider? imageProvider;
    if (state == LoadingState.loaded) {
      imageProvider = const NetworkImage(imageUrl);
    }

    return CircleAvatar(
      radius: 100,
      backgroundColor: Colors.grey,
      foregroundImage: imageProvider,
      child: child,
    );
  }

  void _load() async {
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      state = LoadingState.loaded;
    });
  }
}
