<?php
    class Db{
        protected $dsn;
        protected $pdo;
        protected $table;
        protected $links;
        function __construct($table){
            $this->dsn="mysql:host=localhost;chartset=utf8;dbname=taizan";
            $this->pdo=new PDO($this->dsn,'root','');
            $this->table=$table;
        }

        //function 

        function all(...$arg){
            $sql="select * from $this->table ";
            $sql=$this->sql_all($sql,...$arg);
           
            return $this->pdo->query($sql)->fetchAll(PDO::FETCH_ASSOC);
        }

        function find($arg){
            $sql="select * from $this->table";
            $sql=$this->sql_one($sql,$arg);
            return $this->pdo->query($sql)->fetch(PDO::FETCH_ASSOC);
        }

        function save($arg){
          
           
            if(isset($arg['id'])){
                 //update
                 $sql="update $this->table set";
                 $tmp=$this->a2s($arg);
                 $sql=$sql . join(',',$tmp) . " where `id`={$arg['id']}";
            }else{
                //insert 
                $sql = "insert into $this->table ";
                $keys=array_keys($arg);
                $sql = $sql .'(`'. join('`,`',$keys) ."`) value ('".join("','",$arg)."')";
            } 
            return $this->pdo->exec($sql);
        }

        function del($arg){
            $sql="delete from $this->table ";
            $sql=$this->sql_one($sql,$arg);
            return $this->pdo->exec($sql);
        }

        function count(...$arg){
            $sql="select count(*) from $this->table ";
            $sql=$this->sql_all($sql,...$arg);
            return $this->pdo->query($sql)->fetchColumn();
        }
        function sum($col,...$arg){
            return $this->math('sum',$col,...$arg);
        }
        function max($col,...$arg){
            return $this->math('max',$col,...$arg);
        }function min($col,...$arg){
            return $this->math('min',$col,...$arg);
        }function avg($col,...$arg){
            return $this->math('avg',$col,...$arg);
        }
        //tools
        protected function a2s($arg){
            
            foreach($arg as $key=>$value){
                if($key !='id'){

                    $tmp[]="`$key` = '$value'";
                }
            }
            return $tmp;
        }

        protected function sql_all($sql,...$arg){
            
            if(!empty($arg)){
                
                if(isset($arg[0])){
                    
                   

                    if(is_array($arg[0])){
                        $tmp=$this->a2s($arg[0]);
                       
                        $sql=$sql . ' where ' . join(',',$tmp);
                      
                    }else{
                        
                        $sql=$sql . $arg[0];
                    }
                }
                
                if(isset($arg[1])){
                    
                    
                    $sql=$sql . $arg[1];
                }
            }
           
            return $sql;
        }

        protected function sql_one($sql,$arg){
            if(is_array($arg)){
                $tmp=$this->a2s($arg);
                $sql=$sql . ' where '. join(',',$tmp);
            }else{
                $sql=$sql . " where `id`= '$arg'";
            }
            
            return $sql;
        }
        protected function math($math,$col,...$arg){
            $sql="select $math($col) from $this->table ";
            $sql=$this->sql_all($sql,...$arg);
            return $this->pdo->query($sql)->fetchColumn();
        }
        //view
        function view($path,$arg=[]){
            extract($arg);
            include "$path";
        }

        function paginate($num,$arg=null,$arg2=null){
           
            $total=$this->count($arg,$arg2);
            $pages=ceil($total/$num);
            $now=$_GET['p']??'1';
            $start=($now -1)*$num ;
            $this->links=[
                'total'=>$total,
                'pages'=>$pages,
                'now'=>$now,
                'start'=>$start,
                'num'=>$num,
            ];
            
            $rows=$this->all($arg,$arg2." limit $start,$num");
            
            return $rows;
        }

        function links(){
            $html='';
            if($this->links['now']-1 >= 1){
                $prev=$this->links['now']-1;
                $html .= "<a href='?do=$this->table&p=$prev'>&lt;</a>";
            }
            for($i=1;$i<=$this->links['pages'];$i++){
                $fontSize=($this->links['now']==$i)?'24px':'16px';
                $html .= "<a href='?do=$this->table&p=$i' style='font-size:$fontSize';>$i</a>";
            }
            if($this->links['now']+1 <= $this->links['pages']){
                $next=$this->links['now']+1;
                $html .= "<a href='?do=$this->table&p=$next'>&gt;</a>";


            }
            return $html;
        }
    }
