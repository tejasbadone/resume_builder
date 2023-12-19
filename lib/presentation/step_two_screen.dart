import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:resume_builder/presentation/home_screen.dart';
import 'package:resume_builder/presentation/widgets/custom_appbar.dart';
import 'package:resume_builder/presentation/widgets/custom_button.dart';
import 'package:resume_builder/presentation/widgets/white_custom_button.dart';

class StepTwoScreen extends StatelessWidget {
  const StepTwoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController collegeController = TextEditingController();
    final TextEditingController branchController = TextEditingController();
    final TextEditingController fromController = TextEditingController();
    final TextEditingController passingYearController = TextEditingController();
    return Scaffold(
      appBar: CustomAppBar.customAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12).copyWith(top: 16),
              child: Column(
                children: [
                  const Text(
                    'STEP 2',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Text(
                    'Education',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xffFBB53B),
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 12),
                  CustomTextFormWidget(
                      hintText: 'State University',
                      textEditingController: collegeController,
                      title: 'College/University Name'),
                  CustomTextFormWidget(
                      hintText: 'Computer Science',
                      textEditingController: branchController,
                      title: 'Branch'),
                  CustomTextFormWidget(
                      hintText: 'July 2019',
                      textEditingController: fromController,
                      title: 'From'),
                  CustomTextFormWidget(
                      hintText: 'Aug 2023',
                      textEditingController: passingYearController,
                      title: 'Passing year'),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: CustomButton(
                        buttonTitle: 'Add to resume',
                        icon: Icons.publish_rounded,
                        onPressed: () {}),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: WhiteCustomButton(
                            buttonTitle: 'Back',
                            icon: Icons.arrow_circle_left_outlined,
                            onPressed: () {
                              Navigator.pop(context);
                            }),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomButton(
                            buttonTitle: 'Next',
                            icon: Icons.arrow_circle_right_outlined,
                            onPressed: () {
                              context.pushNamed('step-three-screen');
                            }),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
