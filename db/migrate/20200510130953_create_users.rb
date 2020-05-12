#ここの疑問点①（5.2か5.1はSyntaxErrorの原因にもなった）

# class CreateUsers < ActiveRecord::Migration[5.2]
#   def change
#     create_table :users do |t|
#       t.string :name
#       t.string :email

#       t.timestamps
#     end
#   end
# end


class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
