class Jobsite < ActiveRecord::Base
    has_many :reviews

    def avg_actual_wage
        if self.reviews then
            return nil
        end
        all = self.reviews.map {|r| r.actual_wage}
        return all.reduce(:+) / all.size.to_f
    end

    def avg_fair_wage
        if self.reviews then
            return nil
        end
        all = self.reviews.map {|r| r.fair_wage}
        return all.reduce(:+) / all.size.to_f
    end

end
