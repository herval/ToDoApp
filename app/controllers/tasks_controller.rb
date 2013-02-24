class TasksController < UITableViewController
  def viewDidLoad
    @table_view = UITableView.alloc.initWithFrame(UIScreen.mainScreen.applicationFrame, style: UITableViewStylePlain)
    @table_view.delegate = self
    @table_view.dataSource = self
    self.view = @table_view

    @tasks = Task.all
  end

  def tableView(tableView, cellForRowAtIndexPath: indexPath)
    @reuseIdentifier ||= "TASK_CELL"
    cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier: @reuseIdentifier)
    end

    cell.textLabel.text = @tasks[indexPath.row].name
    cell
  end

  def tableView(tableView, numberOfRowsInSection: section)
    Task.count
  end

  #def newTask
  #  newTaskController = NewTaskController.new
  #  self.addChildViewController(newTaskController)
  #  self.presentViewController(newTaskController, animated: true, completion: nil);
  #end

  #def tableView(tableView, didSelectRowAtIndexPath:indexPath)
  #  tableView.deselectRowAtIndexPath(indexPath, animated: true)
  #
  #  alert = UIAlertView.alloc.init
  #  alert.message = "#{@data[indexPath.row]} tapped!"
  #  alert.addButtonWithTitle "OK"
  #  alert.show
  #end

end