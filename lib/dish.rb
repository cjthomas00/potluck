class Dish
    attr_reader :name
    
    def initialize(name, category)
        @name = name
        @category = :category
    end

    def category
        if :appetizer
            :appetizer
        elsif :entre
            :entree
        elsif :dessert
            :dessert
        end
    end
end