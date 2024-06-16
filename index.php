<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Blog DB</title>
</head>
<body>
    <?php
        // Creating Connection to the DB
        require('./db/connection.php');
        include('./utils/dateUtils.php');

        $query = "SELECT * FROM users as u JOIN posts as p ON u.user_id = p.user_id";
        $blogData = mysqli_query($conn, $query);
    ?>

    <h1 class="my-5 text-center">Blog Data</h1>

    <div class="container">
        <div class="row gy-5">
            <?php 
                foreach($blogData as $blog){
                    echo '
                        <div class="col-md-6 d-flex align-items-stretch">
                            <div class="card border border-2">
                                <div class="card-header text-center text-white bg-warning">
                                    <h5 class="card-title">' . $blog['title'] . '</h5>
                                    <span>' . formatDate($blog['publish_date']) . '</span>
                                </div>
                                <div class="card-body">
                                    <p class="card-text">' . $blog['content'] . '</p>
                                </div>
                                <div class="card-footer text-end text-white bg-info">
                                    <h6>' . $blog['username'] . '</h6>
                                    <span class="fs-6">' . $blog['email'] . '</span>
                                </div>
                            </div>
                        </div>
                    ';
                }
            ?>
        </div>
    </div>

    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.min.js"></script>
</body>
</html>
