class AppDelegate
  
  def window
    @window ||= UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
  end
  
  def colors_controller
    @colors_controller ||= ColorsController.alloc.initWithNibName(nil, bundle: nil)
  end
  
  def custom_color_controller
    @custom_color_controller ||= CustomColorController.alloc.initWithNibName(nil, bundle: nil)
  end
  
  def colors_nav_controller
    @colors_nav_controller ||= UINavigationController.alloc.initWithRootViewController(colors_controller)
  end
  
  def custom_color_nav_controller
    @custom_color_nav_controller ||= UINavigationController.alloc.initWithRootViewController(custom_color_controller)
  end
  
  def tab_controller
    @tab_controller ||= UITabBarController.alloc.initWithNibName(nil, bundle: nil)
  end
  
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    window.makeKeyAndVisible
    
    custom_color_controller.title = "Custom Color"
    tab_controller.viewControllers = [colors_nav_controller, custom_color_nav_controller]
    window.rootViewController = tab_controller
    
    true
  end
end
