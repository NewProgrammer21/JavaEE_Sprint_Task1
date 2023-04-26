<div class="container mt-5">
    <div class="row">
        <div class="col-6 mx-auto">
            <form action="/add-task" method="post">
                <div class="row">
                    <div class="col-12">
                        <label>NAME:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="text" class="form-control" name="task_name">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>DESCRIPTION:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <textarea name="task_description" class="form-control" rows="5"></textarea>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>DEADLINE:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <input type="date" class="form-control" name="task_deadline">
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <label>STATUS:</label>
                    </div>
                </div>
                <div class="row mt-2">
                    <div class="col-12">
                        <select class="form-select" name="task_status">
                            <option>Yes</option>
                            <option>No</option>
                        </select>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-12">
                        <button class="btn btn-success">ADD TASK</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

