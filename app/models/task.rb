class Task
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter

  columns name: :string,
          dueDate: :date
end