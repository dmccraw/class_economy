class StudentsController < ApplicationController
  before_filter :get_group

  # GET /students
  # GET /students.json
  def index
    @students = @group.users.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @students }
    end
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @students = @group.users.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @students }
    end
  end

  # GET /students/new
  # GET /students/new.json
  def new
    @student = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @Student }
    end
  end

  # GET /students/1/edit
  def edit
    @students = User.find(params[:id])
  end

  # POST /students
  # POST /students.json
  def create
    @student = User.new(params[:student])

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render json: @student, status: :created, location: @student }
      else
        format.html { render action: "new" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /students/1
  # PUT /students/1.json
  def update
    @student = User.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = User.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end

  def get_group
    @group = Group.find(params[:group_id])
  end

end
