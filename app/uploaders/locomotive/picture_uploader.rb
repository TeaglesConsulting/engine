# encoding: utf-8

module Locomotive
  class PictureUploader < ::CarrierWave::Uploader::Base

    def extension_whitelist
      %w(jpg jpeg gif png)
    end

    def image?
      self.file.try(:exists?)
    end

    def store_dir
      self.build_store_dir('uploaded_assets', model.id)
    end

  end
end
