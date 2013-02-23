class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    #return true if RUBYMOTION_ENV == 'test'

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible

    @window.rootViewController = self.setup_nav_bar
    true
  end

  def setup_nav_bar
    todo_controller = TodoController.new
    todo_controller.title = "My Tasks"

    about_controller = UIViewController.new
    about_controller.title = "About"

    nav_controller = UITabBarController.new
    nav_controller.viewControllers = [todo_controller, about_controller]

    nav_controller
  end
end
