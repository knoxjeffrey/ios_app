class CustomColorController < UIViewController 
  
  def viewDidLoad
    super
    
    self.view.backgroundColor = UIColor.purpleColor
    self.title = "Custom Color"
    self.edgesForExtendedLayout = UIRectEdgeNone
    
    rightButton = UIBarButtonItem.alloc.initWithTitle("Change",
      style: UIBarButtonItemStyleBordered,
      target:self,
      action:'change_color')
    self.navigationItem.rightBarButtonItem = rightButton
  end
  
  def initWithNibName(name, bundle: bundle) 
    super
    self.tabBarItem = UITabBarItem.alloc.initWithTitle("Custom Color", image: nil, tag: 2)
    self
  end
  
  def change_color
    controller = ChangeColorController.alloc.initWithNibName(nil, bundle:nil) 
    controller.color_detail_controller = self
    self.presentViewController(
      UINavigationController.alloc.initWithRootViewController(controller),
      animated:true,
      completion: lambda {})
  end
  
end