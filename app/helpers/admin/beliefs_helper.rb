module Admin::BeliefsHelper
  def belief_action
    if @belief.id.present?
      "Update"
    else
      "Create"
    end
  end
end
