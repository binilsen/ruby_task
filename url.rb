
def domain url
   url.gsub(/(\/[a-z]*)|(https:\/\/)|(www.)|(.com)|(.in)|(.net)/,'')
end
puts domain 'https://github.com/user'
puts domain 'https://www.google.com/search'
puts domain 'https://www.google-new.com/search'