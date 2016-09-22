class ListSerializer < ActiveModel::Serializer


      attributes :id, :created_at, :task, :user_id

      # Delegate the practical definition of `full_name` to
      # the User model, where it belongs, rather than
      # (re)defining it here.
      def full_name
        object.full_list
      end

      def created_at
        object.created_at.strftime('%B %d, %Y')
      end


end
