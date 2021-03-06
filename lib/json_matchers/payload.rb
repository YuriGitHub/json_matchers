module JsonMatchers
  class Payload
    def initialize(payload)
      @payload = extract_json_string(payload)
    end

    def to_s
      payload
    end

    private

    attr_reader :payload

    def extract_json_string(payload)
      if payload.respond_to?(:body)
        payload.body
      else
        payload
      end
    end
  end
end
