class GalleryController < ApplicationController
    def index
        @gallery_imgs = GalleryImg.all.with_attached_image
    end
    
    def create
        gallery_img = GalleryImg.create!
        gallery_img.image.attach(params[:image])
        gallery_img.save
        redirect_to gallery_path
      end

    def destroy
        gallery_img = GalleryImg.find(params[:id])
        gallery_img.destroy
        redirect_to gallery_path
    end


    private

    def gallery_img_params
        params.require(:gallery).permit(:image)
    end
end
