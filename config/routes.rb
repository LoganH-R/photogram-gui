Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show" })
  get("/delete_user/:path_username", { :controller => "users", :action => "delete" })
  post("/add_user", { :controller => "users", :action => "create" })
  post("/update_user/:modify_id", { :controller => "users", :action => "update" })

  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  get("/delete_photo/:path_id", { :controller => "photos", :action => "delete" })
  post("/insert_photo_record", { :controller => "photos", :action => "create" })
  post("/update_photo/:modify_id", { :controller => "photos", :action => "update" })
  post("/add_comment", { :controller => "photos", :action => "new_comment" })


end
