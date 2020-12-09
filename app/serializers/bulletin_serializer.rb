class BulletinSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :content
end
