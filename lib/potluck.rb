class Potluck
    attr_reader :date, :dishes
    def initialize(date)
        @date = date
        @dishes = []
    end

    def add_dish(dish)
        @dishes << dish
    end

    def get_all_from_category(category)
        dishes.find_all do |dish|
            dish.category == category
        end
    end

    def menu 
        app_names_array = get_all_from_category(:appetizer).map do |dish|
            dish.name
          end.sort
          entre_names_array = get_all_from_category(:entre).map do |dish|
            dish.name
          end.sort
          dessert_names_array = get_all_from_category(:dessert).map do |dish|
            dish.name
          end.sort
      
          # entres_name_array = get_all_from_category(:entre).map { |dish| dish.name}.sort
      
          {
            appetizers: app_names_array,
            entres: entre_names_array,
            desserts: dessert_names_array
            # desserts: get_all_from_category(:desert).map(&:name).sort
          }
    end

    def ratio(category)
        ((get_all_from_category(category).count.to_f) / @dishes.size) * 100
    end
end
