<?php

include_once dirname(__FILE__)."/library.php";
include_once dirname(__FILE__)."/pagination/Pagination.php";

class action_page extends library{

	/*------ lấy thông tin chi tiết của Page Language từ URL ------*/

	public function getPageLangDetail_byUrl($urlFriendly,$lang){
	    global $conn_vn;
	    $table = $this->nameTable_pageLanguage;
	    $where = "where $this->nameColUrl_pageLanguage = '".$urlFriendly."' and $this->nameColType_pageLanguage = '".$lang."'";
	    $limit = "limit 1";
	    $sql = "SELECT * from $table $where $limit";        
	    $result = mysqli_query($conn_vn,$sql);
	    if (mysqli_num_rows($result) > 0){
	        $row = mysqli_fetch_assoc($result);
	        return $row;
	    } 

	}

	/*------ lấy thông tin chi tiết của Page tu Id ------*/

	public function getPageDetail_byId($idPage,$lang){
	    global $conn_vn;
	    $table = $this->nameTable_page;
	    $where = "where $this->nameColId_page = '".$idPage."'";
	    $limit = "limit 1";
	    $sql = "SELECT * from $table $where $limit";    	    
	    $result = mysqli_query($conn_vn,$sql);	  
	    if (mysqli_num_rows($result) > 0) {
	    	$row = mysqli_fetch_assoc($result);
	    	return $row;
	    }

	}

	public function listPage () {
		global $conn_vn;
		$sql = "SELECT * FROM page";
		$result = mysqli_query($conn_vn, $sql);
		$rows = array();
		$num = mysqli_num_rows($result);
		if ($num > 0) {
			while ($row = mysqli_fetch_assoc($result)) {
				$rows[] = $row;
			}
		}
		return $rows;
	}

}
