CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',                                       # required
      :aws_access_key_id      => 'AKIAIE5UOYJEURAMD2PA',                      # required
      :aws_secret_access_key  => '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',  # required
      :region                 => 'us-east-1'                                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'ciistacna'                             # required
  config.fog_public     = true                                    # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
  #config.asset_host     = 'https://s3.amazonaws.com'
  #config.fog_host       = 'https://moises.s3.amazonaws.com'
end