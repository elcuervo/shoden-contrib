Gem::Specification.new do |s|
  s.name              = "shoden-contrib"
  s.version           = "0.1.0"
  s.summary           = "Contrib helpers for shoden"
  s.description       = "Makes your life easier"
  s.authors           = ["elcuervo"]
  s.licenses          = ["MIT", "HUGWARE"]
  s.email             = ["yo@brunoaguirre.com"]
  s.homepage          = "http://github.com/elcuervo/shoden-contrib"
  s.files             = `git ls-files`.split("\n")
  s.test_files        = `git ls-files test`.split("\n")

  s.add_dependency("shoden", "~> 0.2.0")
  s.add_development_dependency("cutest", "~> 1.2.1")
end
