class NewTaskController < QuickDialogController

  def saveButtonPressed(btn)
    fields = self.root.sections[0].elements
    data = {
        name: fields[0].textValue,
        dueDate: fields[1].dateValue
    }
    Task.create(data)
    Task.serialize_to_file('tasks.dat')
    self.close
  end

  def close
    self.dismissViewControllerAnimated(true, completion: nil)
  end
end