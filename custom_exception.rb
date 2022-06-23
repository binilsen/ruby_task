class Custom < StandardError
    def initialize msg='My new Exception',type=1
        super msg
        @type=type
    end
end


begin
    raise Custom
rescue Custom=>e
    p e.message
end
