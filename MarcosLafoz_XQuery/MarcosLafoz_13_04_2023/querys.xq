(: for $v in //video
where $v/year = 1995
return $v/title :)

(: let $total := //video
return $total :)

(: let $total := //video
for $t in $total
order by $t/year ascending
return $t/year :)

(: for $genre in //genre/choice
let $genreVideos := //video[genre = $genre]
return concat($genre, ": " , count($genreVideos)) :)