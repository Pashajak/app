class Troubleshoot < ApplicationRecord
  belongs_to :model

  def self.root(model_id, code, root_id)
    params = { model_id: model_id, code: code, id: root_id }
      .select { |k, v| v.present? }

    Troubleshoot.find_by(**params) || Troubleshoot.find_by(**params.merge(model_id: nil))
  end

  def self.children(troubleshoot)
    Troubleshoot.where(root_id: troubleshoot.id)
  end
end
