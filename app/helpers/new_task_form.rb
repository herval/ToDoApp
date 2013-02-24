class NewTaskForm
  attr_reader :controller, :root

  def initialize
    @root = root = QRootElement.new
    root.title = "New Task"
    root.grouped = true

    section = QSection.new
    label = QEntryElement.new
    label.title = "Description"
    label.value = ""
    section.addElement(label)

    dueDate = QDateTimeElement.new
    dueDate.title = "Due date"
    dueDate.mode = UIDatePickerModeDate
    section.addElement(dueDate)

    saveButton = QButtonElement.new
    saveButton.title = "Save"
    section.addElement(saveButton)

    root.addSection(section)

    @controller = QuickDialogController.controllerWithNavigationForRoot(root)
  end

end