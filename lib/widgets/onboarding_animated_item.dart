import 'package:flutter/material.dart';

class OnboardingAnimatedItem extends StatefulWidget {
  const OnboardingAnimatedItem({
    super.key,
    required this.index,
    required this.pageController,
    required this.child,
    this.delay = 0,
  });

  final int index;
  final PageController pageController;
  final Widget child;
  final int delay;

  @override
  State<OnboardingAnimatedItem> createState() => _OnboardingAnimatedItemState();
}

class _OnboardingAnimatedItemState extends State<OnboardingAnimatedItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<Offset> _slideAnimation;
  late final Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0.5, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOut,
    );

    widget.pageController.addListener(_handlePageChange);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;

      if ((widget.pageController.page ??
                  widget.pageController.initialPage.toDouble()) -
              widget.index ==
          0) {
        _playAnimation();
      }
    });
  }

  void _handlePageChange() {
    if (!widget.pageController.hasClients) return;

    final page =
        widget.pageController.page ??
        widget.pageController.initialPage.toDouble();

    if ((page - widget.index).abs() < 0.01) {
      _playAnimation();
    } else if (_controller.isAnimating || _controller.value > 0) {
      _controller.reset();
    }
  }

  Future<void> _playAnimation() async {
    _controller.reset();

    if (widget.delay > 0) {
      await Future<void>.delayed(Duration(milliseconds: widget.delay));
    }

    if (mounted) {
      _controller.forward();
    }
  }

  @override
  void dispose() {
    widget.pageController.removeListener(_handlePageChange);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _fadeAnimation,
      child: SlideTransition(position: _slideAnimation, child: widget.child),
    );
  }
}
