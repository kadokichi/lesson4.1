class TasksController < ApplicationController
    def index
        @tasks = Task.all
    end

    def new
        @task = Task.new
    end

    def create
        @task = Task.new(params.require(:task).permit(:title,:description,:start_day,:end_day,:all_day))
        if @task.save
            redirect_to :tasks
            flash[:notice] = "#{@task.title}を新規登録しました"
        else
            render "new"
        end
    end

    def show
        @task = Task.find(params[:id])
    end

    def edit
        @task = Task.find(params[:id])
    end

    def update
       @task = Task.find(params[:id])
        if @task.update(params.require(:task).permit(:title,:description,:start_day,:end_day,:all_day))
            redirect_to :tasks
            flash[:notice] = "#{@task.title}を更新しました"
        else
            render "edit"
        end
    end

    def destroy
        @task = Task.find(params[:id])
        @task.destroy
        redirect_to :tasks
        flash[:notice] = "#{@task.title}を削除しました"
    end
    
end
