module StaticPagesHelper

  def heading_detail(heading)
    base_heading = "Fake Redmart"

    if heading != ''
      base_heading = heading + ' | ' + base_heading
    else
      base_heading
    end
  end

  def btn_active(link_path)
   current_page?(link_path) ? "active" : ""
  end

end
