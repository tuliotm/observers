class ApplicationObserver < ActiveRecord::Observer
  def action?(object, actions = [])
    object.send(:transaction_include_any_action?, actions)
  end
end
