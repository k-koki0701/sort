a = [1,7,3,4,2,2,6,5,7,8,0,1,8]
b = [2,6,5,7,8,1,7,3,4,2,0,1,8,4,9,9,2,6,3]
c = [1,8,4,9,5,7,8,4,2,0]

def bucket_sort(arr)
  bucket = []
  sorted_bucket = []
  max_number = arr.max + 1

  max_number.times do
    bucket << []
  end

  arr.each do |i|
    bucket[i].push(i)
  end

  bucket.each do |e|
     sorted_bucket =  sorted_bucket + e
    #  p sorted_bucket
    #  eに代入されるのはindex内の配列が入ってくる
    #  例：1回目[0],2回目[1,1],３回目[2,2]
    #  sorted_bucket = eにすると、繰返しごとに上書きされるので最終的に[8,8]が出力される。
    end

  sorted_bucket

end
 p bucket_sort(a)
 p bucket_sort(b)
 p bucket_sort(c)
