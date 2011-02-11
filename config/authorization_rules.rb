authorization do
  role :admin do
    has_permission_on :locations, :to => [:index]
  end
end

# index show new create edit update destroy
