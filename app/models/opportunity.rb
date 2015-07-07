class Opportunity < ActiveRecord::Base
      validates :opportunity, :presence => true, :length => {:maximum => 140, :minimum => 3}
      validates :exploit, :presence => true, :length => {:maximum => 140, :minimum => 3}
      validates :priority, :presence => true

      PRIORITIES = {
        'High' => 'High',
        'Medium' => 'Medium',
        'Low' => 'Low'
      }

      def humanized_priority
        PRIORITIES.invert[self.priority]
      end
end
