class AuthorizeGoogleRequest

    def initialize(headers = {})
        @headers = headers
    end

    def user
        payload = decode(auth_token)
        if payload
            User.find_or_create_from_google(payload)
        end
    end

    private

    attr_reader :headers

    def decode(token)
        validator = GoogleIDToken::Validator.new
        validator.check(token, "135252788395-ptt0b0lusfle7fqsfcfqnhoolf2co370.apps.googleusercontent.com")
    rescue
        nil
    end

    def auth_token
        headers['Authorization'].split.last if headers['Authorization']
    end

end