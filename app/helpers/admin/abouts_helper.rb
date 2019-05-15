module Admin::AboutsHelper
  def frm_action
    if @about.id.present?
      "Update"
    else
      "Create"
    end
  end
end
