
install:
	rbenv install -s
	- gem install bundler -v 2.2.33 && rbenv rehash
	bundle install --jobs 1

run:
	bundle exec puma

