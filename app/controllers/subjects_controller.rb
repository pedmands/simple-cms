class SubjectsController < ApplicationController
	
	layout false
	
  def index
	  @subjects = Subject.sorted
  end

  def show
	  @subject = Subject.find(params[:id])
  end

  def new
	  @subject = Subject.new({:name => "Default"})
  end

	def create
		# Save the object
		@subject = Subject.new(subject_params)
		if @subject.save
			# If save succeeds, redirect to the index action
			redirect_to(:action => 'index')
		else
		# If save fails, redisplay the form so user can fix problems
		  render('new')
	  end
	end

  def edit
  end

  def delete
  end
  
  private
  
	  def subject_params
		  # Same as using "params[:subject", except that it:
		  # - raises an error if :subject is not present
		  # - allows listed attributes to be mass-assigned
		  params.require(:subject).permit(:name, :position, :visible)
	  end
  
end
