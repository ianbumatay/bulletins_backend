class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :bulletin_id
end
