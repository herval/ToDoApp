class NewTaskForm
  attr_reader :controller, :root

  def initialize
    @root = root = QRootElement.new
    root.controllerName = "NewTaskController"
    root.title = "New Task"
    root.grouped = true

    section = QSection.new
    label = QEntryElement.new
    label.title = "Description"
    label.key = "name"
    label.value = ""
    section.addElement(label)

    dueDate = QDateTimeElement.new
    dueDate.title = "Due date"
    label.key = "dueDate"
    dueDate.mode = UIDatePickerModeDate
    section.addElement(dueDate)

    saveButton = QButtonElement.new
    saveButton.title = "Save"
    saveButton.controllerAction = "saveButtonPressed:"
    section.addElement(saveButton)

    root.addSection(section)

    @controller = QuickDialogController.controllerWithNavigationForRoot(root)
    dialog = @controller.viewControllers[0]

    barButton = UIBarButtonItem.alloc.initWithTitle("Cancel", style: UIBarButtonItemStylePlain, target: dialog, action: 'close')
    @controller.navigationBar.topItem.leftBarButtonItem = barButton
  end

end