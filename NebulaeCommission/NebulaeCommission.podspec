
Pod::Spec.new do |spec|
  spec.name         = "NebulaeCommission"
  spec.version      = "1.0.5"
  spec.summary      = "NebulaeCommission framework is use for commissioning with ESP devices."
  spec.homepage     = "https://github.com/mayur1816/NebulaeCommission"
  spec.license      = "MIT"
  spec.author       = { "Mayur Patel" => "mayur.patel@slscorp.com" }
  spec.platform     = :ios, "11.0"
  spec.source       = { :git => "https://github.com/mayur1816/NebulaeCommission.git", :tag => "1.0.5" }
   spec.source_files  = "NebulaeCommission", "NebulaeCommission/**/*.{h,m,swift}"
   
  spec.subspec 'Core' do |cs|
      cs.dependency "SwiftProtobuf", "~> 1.5.0"
      cs.dependency "Curve25519", "~> 1.1.0"
  end
  spec.swift_versions = ['5.1', '5.2']
end
