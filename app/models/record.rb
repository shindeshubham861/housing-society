class Record < ApplicationRecord
has_attached_file :image, styles: { large: "600X600>", medium:"300X300>", thumb:"150x150#" }
validates_attachment_content_type :image, content_type: /\Aphoto\/.*\Z/
end
