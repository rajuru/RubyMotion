class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    controller = SmartContactsController.alloc.initWithNibName(nil, bundle: nil)
    nav_controller = UINavigationController.alloc.initWithRootViewController(controller)

    top_controller = ContactDetailController.alloc.initWithColor(UIColor.purpleColor)
    top_controller.title = "Top Color"
    top_nav_controller = UINavigationController.alloc.initWithRootViewController(top_controller)

    tab_controller = UITabBarController.alloc.initWithNibName(nil, bundle: nil)
    tab_controller.viewControllers = [nav_controller, top_nav_controller]

    @window.rootViewController = tab_controller
    true

  end

  def initWithNibName(name, bundle: bundle)
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTitle(
      "Colors",
      image: nil,
      tag: 1
    )
    self
  end
end
