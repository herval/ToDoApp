class Task
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter

  columns name: :string,
          due_date: :date
end