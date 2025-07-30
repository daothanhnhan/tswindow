<?php include DIR_HEADER."MS_HEADER_TSWINDOW_0001.php";?>
<?php 
	function gallery ($trang, $limit) {
        global $conn_vn;
        $start = ($trang - 1) * $limit;
        $sql = "SELECT * FROM image";
        $result = mysqli_query($conn_vn, $sql);
        $count = mysqli_num_rows($result);

        $sql = "SELECT * FROM image LIMIT $start,$limit";
        $result = mysqli_query($conn_vn, $sql);
        $rows = array();
        $num = mysqli_num_rows($result);
        if ($num > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $rows[] = $row;
            }
        }
        $return = array(
                'data' => $rows,
                'count' => $count
            );
        return $return;
    }
?>