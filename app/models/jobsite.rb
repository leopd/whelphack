class Jobsite < ActiveRecord::Base
    has_many :reviews

    def avg_actual_wage
        if self.reviews.empty? then
            return nil
        end
        all = self.reviews.map {|r| r.actual_wage}
        all = all.select(&:present?)
        if all then
            return all.reduce(:+) / all.size.to_f
        else
            return nil
        end
    end

    def avg_fair_wage
        if self.reviews.empty? then
            return nil
        end
        all = self.reviews.map {|r| r.fair_wage}
        return all.reduce(:+) / all.size.to_f
    end

end
