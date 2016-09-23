class ItemSerializer < ActiveModel::Serializer


        attributes :id, :created_at, :taskitem, :list_id

        def created_at
          object.created_at.strftime('%B %d, %Y')
        end



end
