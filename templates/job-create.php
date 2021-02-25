<?php require 'inc/header.php';?>

    <h2 >Create a new job</h2>
    <br>
    <form method="post" action ="create.php">
        <div class="form-group">
            <label class="form-label">Company</label>
            <input  class="form-control" name="company">
        </div>
        <div class="form-group">
            <label  class="form-label">Category</label>
            <select name="category" class="form-control">
                <option value="0">Choose Category</option>
                <?php foreach($categories as $category) { ?>
                <option value="<?php echo $category->id?>"><?php echo $category->name; ?></option>
                <?php } ?>
            </select>    
        </div>
        <div class="form-group">
			<label>Job Title</label>
			<input type="text" class="form-control" name="job_title">
		</div>
		<div class="form-group">
			<label>Description</label>
			<textarea class="form-control" name="description"></textarea>
		</div>
		<div class="form-group">
			<label>Location</label>
			<input type="text" class="form-control" name="location">
		</div>
		<div class="form-group">
			<label>Salary</label>
			<input type="text" class="form-control" name="salary">
		</div>
		<div class="form-group">
			<label>Contact User</label>
			<input type="text" class="form-control" name="contact_user">
		</div>
		<div class="form-group">
			<label>Contact Email</label>
			<input type="text" class="form-control" name="contact_email">
		</div>
        <br>
		<input type="submit" class="btn btn-primary" value="Submit" name="submit">
    </form>
<?php require 'inc/footer.php'; ?>