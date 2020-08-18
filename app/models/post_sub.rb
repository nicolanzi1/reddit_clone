class PostSub < ApplicationRecord
    belogns_to :post
    belogns_to :sub
end
