import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'utils/assets.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: _onVkButtonTap,
          icon: SvgPicture.asset(Assets.vk),
        ),
        const SizedBox(width: 15),
        IconButton(
          onPressed: _onTelegramButtonTap,
          icon: SvgPicture.asset(Assets.telegram),
        ),
      ],
    );
  }

  void _onVkButtonTap() async {
    const vkUrl = 'https://vk.com/way_of_anaconda';
    final canLaunch = await canLaunchUrlString(vkUrl);
    if (canLaunch) {
      await launchUrlString(vkUrl);
    }
  }

  void _onTelegramButtonTap() async {
    const telegramUrl = 'https://t.me/chashkovdaniil';
    final canLaunch = await canLaunchUrlString(telegramUrl);
    if (canLaunch) {
      await launchUrlString(telegramUrl);
    }
  }
}
