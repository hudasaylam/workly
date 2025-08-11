import 'package:flutter/material.dart';
import 'package:workly/constans.dart';
import 'package:workly/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding * 3,
        vertical: kDefaultPadding * 2,
      ),
      child:
          Responsive.isMobileLarge(context)
              ? Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: buildiconinfo(
                          context: context,
                          icon: Icons.supervisor_account,
                          text: '500+',
                          label: 'Clients',
                        ),
                      ),
                      Expanded(
                        child: buildiconinfo(
                          context: context,
                          icon: Icons.work,
                          text: '5000+',
                          label: 'Jobs',
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: kDefaultFontSize * 3),
                  Row(
                    children: [
                      Expanded(
                        child: buildiconinfo(
                          context: context,
                          icon: Icons.location_city,
                          text: '14',
                          label: 'governorates of Syria',
                        ),
                      ),
                      Expanded(
                        child: buildiconinfo(
                          context: context,
                          icon: Icons.star,
                          text: '15k+',
                          label: 'Stars',
                        ),
                      ),
                    ],
                  ),
                ],
              )
              : Row(
                // خلي الكل Expanded عشان المسافات تتوحّد
                children: [
                  Expanded(
                    child: buildiconinfo(
                      context: context,
                      icon: Icons.supervisor_account,
                      text: '500+',
                      label: 'Clients',
                    ),
                  ),
                  Expanded(
                    child: buildiconinfo(
                      context: context,
                      icon: Icons.work,
                      text: '5000+',
                      label: 'Jobs',
                    ),
                  ),
                  Expanded(
                    child: buildiconinfo(
                      context: context,
                      icon: Icons.location_city,
                      text: '14',
                      label: 'governorates of Syria',
                    ),
                  ),
                  Expanded(
                    child: buildiconinfo(
                      context: context,
                      icon: Icons.star,
                      text: '15k+',
                      label: 'Stars',
                    ),
                  ),
                ],
              ),
    );
  }

  Column buildiconinfo({
    required BuildContext context,
    required IconData icon,
    required String text,
    required String label,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, size: 50.0, color: Colors.white),
        const SizedBox(height: 10.0),
        Text(
          text,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
            color: kPrimaryColor,
            fontSize: 30,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          textAlign: TextAlign.center, // توحيد المحاذاة
          maxLines: 2, // ما يزيد عن سطرين
          overflow: TextOverflow.ellipsis, // منع كسر التصميم
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ],
    );
  }
}
