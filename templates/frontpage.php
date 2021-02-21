<?php
require 'inc/header.php';?>



      <div class="jumbotron">
        <h3 style="text-align: left;"> Search for a job</h3>
        <form action="index.php" method="GET" class="input-group">
          <select name="category" class="form-control" id="">
                <option value="">Choose a category: ...</option>
                <?php foreach($categories as $category) { ?>
                <option value="<?php echo $category->id; ?>"><?php echo $category->name; ?></option>
                <?php }?>
            </select>
            <br>
            <button type="submit" class = "btn btn-primary">Go</button>
        </form>
      </div>

      <?php foreach($jobs as $job) { ?>
        <div class="row marketing">
          <div class="col-md-10">
            <h4><?php echo $job->job_title ?></h4>
            <p><?php echo $job->description ?></p>
          </div>
          <div class ="col-md-2">
          <a class="btn btn-primary" href="#">View</a> 
          </div>
        </div>
      <?php } ?>



    
<?php require 'inc/footer.php'
?>