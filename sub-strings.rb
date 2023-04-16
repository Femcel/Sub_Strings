def substrings (string, dictionary) 
  result = Hash.new
  string = string.downcase

  dictionary.each do |word|
    value = string.scan(word).length
    if value != 0 
      result[word] = value
    end
  end
  puts result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit", "a"]

substrings("Below?", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)

poema_hilda_hilst = %w(Se te pareço noturna e imperfeita Olha-me de novo.
 Porque esta noite Olhei-me a mim, como se tu me olhasses. E era como
 se a água desejasse. Escapar de sua casa que é o rio E deslizando
 apenas, nem tocar a margem. Te olhei. E há um tempo.Entendo que sou
 terra. Há tanto tempo Espero Que o teu corpo de água mais fraterno
 Se estenda sobre o meu. Pastor e nauta Olha-me de novo. Com menos altivez.
 E mais atento.).join(" ")
puts poema_hilda_hilst

substrings(poema_hilda_hilst, dictionary)