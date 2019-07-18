module PinsHelper
    def pin_author(pin)
        user_signed_in? && current_user.id == pin.user_id
    end
end
