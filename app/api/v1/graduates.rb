module API
	module V1
		class Gradutes <Grape::API
			include API::V1::Defaults
			resource :graduates do
				desc "return all Graduates"
				get " ", root: :graduates do
					Graduate.all
				end


				desc "Return a graduate"
				params do
					requires :id, type: String, desc: "ID of the graduate"

				end

				get ":id", root: "graduate" do
					Graduate.where(id: permitted_params[:id]).first!
				end
			end
		end
	end
end
