ActiveAdmin.register Hint do
  permit_params :answer_id, :title, :description, :order, :group_id
end
