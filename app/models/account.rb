<<-DOC 
C:\Users\Dell\Desktop\Ruby Practices\RailsApps\rails\activerecord\lib\active_record\associations.rb:
    class User < ActiveRecord::Base
         belongs_to :group
         has_one    :avatar
       end
    
       class Avatar < ActiveRecord::Base
         belongs_to :user
       end
    
       @group = Group.first
       @group.users.collect { |u| u.avatar }.compact  select all avatars for all users in the group
       @group.avatars                                 selects all avatars by going through the User join model.
    
     An important caveat with going through +has_one+ or +has_many+ associations on the
     join model is that these associations are *read-only*. For example, the following
     would not work following the previous example:
    
       @group.avatars << Avatar.new    this would work if User belonged_to Avatar rather than the other way around
       @group.avatars.delete(@group.avatars.last)   so would this
DOC

class Account < ActiveRecord::Base
  belongs_to :supplier
end
