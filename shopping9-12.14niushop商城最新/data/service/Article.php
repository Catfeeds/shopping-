<?php
namespace data\service;
use data\service\BaseService as BaseService;
use data\api\IArticle;
use data\model\NcCmsArticleModel;
use data\model\NcCmsArticleClassModel;
use data\model\NcCmsArticleViewModel;
use data\model\NcCmsCommentModel;
use data\model\NcCmsCommentViewModel;
use data\model\NcCmsTopicModel;
use think\Model;
use think\Cache;
use think\Log;


/**
 * 文章服务层
 * @author Administrator
 *
 */
class Article extends BaseService implements IArticle
{
	/* (non-PHPdoc)
     * @see \data\api\cms\IArticle::getArticleList()
     */
    public function getArticleList($page_index = 1, $page_size = 0, $condition = '', $order = '')
    {
        $data = array($page_index, $page_size, $condition, $order);
        $data = json_encode($data);
        
        $cache = Cache::tag("article")->get("getArticleList".$data);
        if(empty($cache))
        {
            $articleview = new NcCmsArticleViewModel();
            //查询该分类以及子分类下的文章列表
            if(!empty($condition['nca.class_id'])){
                $article_class = new NcCmsArticleClassModel();
                $article_class_array = $article_class -> getQuery([
                    "class_id|pid" => $condition['nca.class_id']
                ], "class_id", ""); 
                $new_article_class_array = array();
                foreach ($article_class_array as $v){
                    $new_article_class_array[] = $v["class_id"];
                }
                $condition["nca.class_id"] = array("in", $new_article_class_array);
            }
            $list = $articleview->getViewList($page_index, $page_size, $condition, $order);
            Cache::tag("article")->set("getArticleList".$data, $list);
            return $list;
        }else{
            return $cache;
        }
       
        // TODO Auto-generated method stub
        
    }

	/* (non-PHPdoc)
     * @see \data\api\cms\IArticle::getArticleDetail()
     */
    public function getArticleDetail($article_id)
    {
        $cache = Cache::tag("article")->get("getArticleDetail".$article_id);
        if(empty($cache))
        {
            $article = new NcCmsArticleModel();
            $data = $article->get($article_id);
            Cache::tag("article")->set("getArticleDetail".$article_id, $data);
            return $data;
        }else{
            return $cache;
        }
      
        // TODO Auto-generated method stub
        
    }

	/* (non-PHPdoc)
     * @see \data\api\cms\IArticle::getArticleClass()
     */
    public function getArticleClass($page_index = 1, $page_size = 0, $condition = '', $order = '')
    {
        $data = array($page_index, $page_size, $condition, $order);
        $data = json_encode($data);
        $cache = Cache::tag("article")->get("getArticleClass".$data);
        if(empty($cache))
        {
            $article_class = new NcCmsArticleClassModel();
            $list = $article_class->pageQuery($page_index, $page_size, $condition, $order, '*');
            Cache::tag("article")->set("getArticleClass".$data, $list);
            return $list;
        }else{
            return $cache;
        }
       
        // TODO Auto-generated method stub
        
    }
    
	/* (non-PHPdoc)
     * @see \data\api\cms\IArticle::getArticleClassDetail()
     */
    public function getArticleClassDetail($class_id)
    {
        $cache = Cache::tag("article")->get("getArticleClassDetail".$class_id);
        if(empty($cache))
        {
            $article_class = new NcCmsArticleClassModel();
            $list = $article_class->get($class_id);
            Cache::tag("article")->set("getArticleClassDetail".$class_id, $list);
            return $list;
        }else{
            return $cache;
        }
        
        // TODO Auto-generated method stub
        
    }

	/* (non-PHPdoc)
     * @see \data\api\cms\IArticle::addArticle()
     */
    public function addArticle($title, $class_id, $short_title, $source, $url, $author, $summary, $content, $image, $keyword, $article_id_array, $click, $sort, $commend_flag, $comment_flag, $status, $attachment_path, $tag, $comment_count, $share_count)
    {
        Cache::tag("article")->clear();
        $member = new Member();
        $user_info = $member -> getUserInfoDetail($this->uid);
        $article = new NcCmsArticleModel();
        $data = array(
            'title'         => $title,
            'class_id'      => $class_id,
            'short_title'   => $short_title,
            'source'        => $source,
            'url'           => $url,
            'author'        => $author,
            'summary'       => $summary,
            'content'       => $content,
            'image'         => $image,
            'keyword'       => $keyword,
            'article_id_array'   => $article_id_array,
            'click'         => $click,
            'sort'          => $sort,
            'commend_flag'  => $commend_flag,
            'comment_flag'  => $comment_flag,
            'status'        => $status,
            'attachment_path'=> $attachment_path,
            'tag'           => $tag,
            'comment_count' => $comment_count,
            'share_count'   => $share_count,
            'publisher_name'=> $user_info["user_name"],
            'uid'           => $this->uid,
            'public_time'   => time(),
            'create_time'   => time()
        );
        $article->save($data);
        $data['article_id'] = $article->article_id;
        hook("articleSaveSuccess", $data);
        $retval =$article->article_id;
        return $retval;
        // TODO Auto-generated method stub
        
    }

	/* (non-PHPdoc)
     * @see \data\api\cms\IArticle::updateArticle()
     */
    public function updateArticle($article_id, $title, $class_id, $short_title, $source, $url, $author, $summary, $content, $image, $keyword, $article_id_array, $click, $sort, $commend_flag, $comment_flag, $status, $attachment_path, $tag, $comment_count, $share_count)
    {
        Cache::tag("article")->clear();
        $member = new Member();
        $user_info = $member -> getUserInfoDetail($this->uid);
        $article = new NcCmsArticleModel();
        $data = array(
            'title'         => $title,
            'class_id'      => $class_id,
            'short_title'   => $short_title,
            'source'        => $source,
            'url'           => $url,
            'author'        => $author,
            'summary'       => $summary,
            'content'       => $content,
            'image'         => $image,
            'keyword'       => $keyword,
            'article_id_array'   => $article_id_array,
            'click'         => $click,
            'sort'          => $sort,
            'commend_flag'  => $commend_flag,
            'comment_flag'  => $comment_flag,
            'status'        => $status,
            'attachment_path'=> $attachment_path,
            'tag'           => $tag,
            'comment_count' => $comment_count,
            'share_count'   => $share_count,
            'publisher_name'=> $user_info["user_name"],
            'uid'           => $this->uid,
            'modify_time'   => time()
        );
        $retval = $article->save($data, ['article_id' => $article_id]);
        $data['article_id'] = $article_id;
        hook("articleSaveSuccess", $data);
        return $retval;
        // TODO Auto-generated method stub
        
    }

	/* (non-PHPdoc)
     * @see \data\api\cms\IArticle::addAritcleClass()
     */
    public function addAritcleClass($name, $sort, $pid)
    {
        Cache::tag("article")->clear();
        $article_class = new NcCmsArticleClassModel();
        $data = array(
            'name' => $name,
            'pid' => $pid,
            'sort' => $sort
        );
        $retval = $article_class->save($data);
        return $retval;
        // TODO Auto-generated method stub
        
    }

	/* (non-PHPdoc)
     * @see \data\api\cms\IArticle::updateArticleClass()
     */
    public function updateArticleClass($class_id, $name, $sort, $pid)
    {
        Cache::tag("article")->clear();
        $article_class = new NcCmsArticleClassModel();
        $data = array(
            'name' => $name,
            'pid' => $pid,
            'sort' => $sort
        );
        $retval = $article_class->save($data, ['class_id' => $class_id]);
        return $retval;
        // TODO Auto-generated method stub
        
    }

	/* (non-PHPdoc)
     * @see \data\api\cms\IArticle::modifyArticleSort()
     */
    public function modifyArticleSort($article_id, $sort)
    {
        Cache::tag("article")->clear();
        $article = new NcCmsArticleModel();
        $data = array(
            'sort' => $sort
        );
        $retval = $article->save($data, ['article_id' => $article_id]);
        return $retval;
        // TODO Auto-generated method stub
        
    }

	/* (non-PHPdoc)
     * @see \data\api\cms\IArticle::modifyArticleClassSort()
     */
    public function modifyArticleClassSort($class_id, $sort)
    {
        Cache::tag("article")->clear();
        $article_class = new NcCmsArticleClassModel();
        $data = array(
            'sort' => $sort
        );
        $retval = $article_class->save($data, ['class_id' => $class_id]);
        return $retval;
        // TODO Auto-generated method stub
        
    }
    
   /* (non-PHPdoc)
     * @see \data\api\cms\IArticle::deleteArticleClass()
     */
    public function deleteArticleClass($class_id){
        Cache::tag("article")->clear();
        $article_class = new NcCmsArticleClassModel();
        $retval=$article_class->destroy($class_id);
        return $retval; 
    }
    /* (non-PHPdoc)
     * @see \data\api\cms\IArticle::deleteArticle()
     */
    public function deleteArticle($article_id){
        Cache::tag("article")->clear();
        $article=new NcCmsArticleModel();
        $condition['article_id'] = ['in',$article_id];
        $retval=$article->destroy($condition);
        return $retval;
    }
    
    /* (non-PHPdoc)
     * @see \data\api\cms\IArticle::articleClassUseCount()
     */
    public function articleClassUseCount($class_id){
        $article=new NcCmsArticleModel();
        $is_class_count=$article->viewCount($article,['class_id' => $class_id]);
        return $is_class_count;
    }

    /* (non-PHPdoc)
     * @see \data\api\cms\IArticle::getCommentList()
     */
    public function getCommentList($page_index = 1, $page_size = 0, $condition = '', $order = '')
    {
        $commentview = new NcCmsCommentViewModel();
        $list = $commentview->getViewList($page_index, $page_size, $condition, $order);
        return $list;
        // TODO Auto-generated method stub
    
    }
    /* (non-PHPdoc)
     * @see \data\api\cms\IArticle::getCommentDetail()
     */
    public function getCommentDetail($comment_id)
    {
        $comment = new NcCmsCommentModel();
        $data = $comment->get($comment_id);
        return $data;
        // TODO Auto-generated method stub
    
    }
    
    /* (non-PHPdoc)
     * @see \data\api\cms\IArticle::deleteComment()
     */
    public function deleteComment($comment_id){
        $comment = new NcCmsCommentModel();
        $retval=$comment->destroy($comment_id);
        return $retval;
    }
    /**
     * (non-PHPdoc)
     * @see \data\api\IArticle::getArticleClassQuery()
     */
    public function getArticleClassQuery(){
        $cache = Cache::tag("article")->get("getArticleClassQuery");
        if(empty($cache))
        {
            $list = array();
            $list = $this->getArticleClass(1,0,'pid=0','sort');
            foreach ($list["data"] as $k => $v)
            {
                $second_list = $this->getArticleClass(1,0,'pid='.$v['class_id'],'sort');
                $list["data"][$k]['child_list'] = $second_list['data'];
            }
            Cache::tag("article")->set("getArticleClassQuery", $list);
            return $list;
        }else{
            return $cache;
        }
      
    }
    
    /**
     * 添加专题
     * @param unknown $instance_id
     * @param unknown $title
     * @param unknown $image
     * @param unknown $content
     */
     public function addTopic($instance_id,$title,$image,$content,$status){
        $topic = new NcCmsTopicModel();
        $data = array(
            'instance_id' => $instance_id,
            'title' => $title,
            'image' => $image,
            'content'=>$content,
            'status'=>$status,
            'create_time'   => time()
        );
        $retval = $topic->save($data);
        return $retval;
     }
     /**
      * 专题列表
      * (non-PHPdoc)
      * @see \data\api\IArticle::getTopicList()
      */
     public function getTopicList($page_index = 1, $page_size = 0, $condition = '', $order = '',$field= '*')
     {
         $topic = new NcCmsTopicModel();
         $list = $topic->pageQuery($page_index, $page_size, $condition, $order, $field);
         return $list;
         // TODO Auto-generated method stub
     
     }
     /**
      * 获取详情
      * (non-PHPdoc)
      * @see \data\api\IArticle::getTopicDetail()
      */
     public function getTopicDetail($topic_id){
         $topic = new NcCmsTopicModel();
         $list = $topic->get($topic_id);
         return $list;
     }
     /**
      * 修改专题
      * @param unknown $instance_id
      * @param unknown $topic_id
      * @param unknown $title
      * @param unknown $image
      * @param unknown $content
      * @param unknown $status
      */
     public function  updateTopic($instance_id,$topic_id,$title,$image,$content,$status)
     {
         $topic = new NcCmsTopicModel();
         $data = array(
             'instance_id' => $instance_id,
             'title' => $title,
             'image' => $image,
             'content'=>$content,
             'status'=>$status,
             'modify_time'  => time()
         );
         $retval = $topic->save($data,['topic_id'=>$topic_id]);
         return $retval;
     }
     /**
      * 删除专题
      * @param unknown $instance_id
      * @param unknown $topic_id
      */
     public function  deleteTopic($topic_id)
     {
        $topic = new NcCmsTopicModel();
        $retval=$topic->destroy($topic_id);
        return $retval;
     }
     /**
      * 文章分类修改单个字符
      * (non-PHPdoc)
      * @see \data\api\IArticle::cmsfyField()
      */
     public function cmsField($class_id, $sort, $name){
         Cache::tag("article")->clear();
         $article_class = new NcCmsArticleClassModel();
         $data = array(
             $sort => $name,
         );
         $retval = $article_class->save($data, ['class_id' => $class_id]);
         return $retval;
         // TODO Auto-generated method stub
     }
}