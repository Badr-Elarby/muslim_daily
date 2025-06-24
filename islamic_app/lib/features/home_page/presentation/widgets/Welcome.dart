import 'package:flutter/widgets.dart';
import 'package:islamic_app/core/utils/app_styles.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),

      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Asslamualaikum", style: AppStyles.Grey18Medium),
              Text("Welcome", style: AppStyles.Black24SemiBold),
            ],
          ),
        ],
      ),
    );
  }
}
