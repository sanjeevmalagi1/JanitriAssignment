<div class="col-sm-12">
    
    <?php
        foreach ($news as $newsItem) {
    ?>
    <div class="panel col-md-6 col-sm-offset-2 animated wow fadeInLeft text-center">
        <img src="<?php echo $newsItem['ImageLink']; ?>" class="img-responsive">
        <div class="container-fluid">
            <h1><?php echo $newsItem['Heading']; ?></h1>
            <p><?php echo $newsItem['Body']; ?></p>
            <a href="<?php echo $newsItem['Link']; ?>" target="_blank" class="btn btn-primary fa fa-external-link"></a>
            
        </div>
    </div>
    <div class="clearfix"></div>
    <?php 
       }
    ?>
    <ul class="pager">
    <?php 
        if($page!=0){
    ?>
        <li><a href="<?php echo base_url(); ?>index.php/News/index/<?php echo ($page-1); ?>">Previous</a></li>
    <?php 
        }
        if((count($news)>0)&&(count($news)==10))
        {   
    ?>
     <li><a href="<?php echo base_url(); ?>index.php/News/index/<?php echo ($page+1); ?>">Next</a></li>
    <?php 
        }
    ?>
    </ul>
</div>
          
