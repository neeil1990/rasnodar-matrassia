<?php

/**
 * Simpla CMS
 *
 * @copyright	2011 Denis Pikusov
 * @link		http://simplacms.ru
 * @author		Denis Pikusov
 *
 */

require_once('api/Simpla.php');

class OfferAdmin extends Simpla
{
    public function fetch()
    {
        // Обработка действий
        if($this->request->method('post'))
        {
            // Действия с выбранными
            $ids = $this->request->post('check');
            if(is_array($ids))
                switch($this->request->post('action'))
                {
                    case 'disable':
                    {
                        $this->offer->update_post($ids, array('visible'=>0));
                        break;
                    }
                    case 'enable':
                    {
                        $this->offer->update_post($ids, array('visible'=>1));
                        break;
                    }
                    case 'delete':
                    {
                        foreach($ids as $id)
                            $this->offer->delete_post($id);
                        break;
                    }
                }
        }

        $filter = array();
        $filter['page'] = max(1, $this->request->get('page', 'integer'));
        $filter['limit'] = 20;

        // Поиск
        $keyword = $this->request->get('keyword', 'string');
        if(!empty($keyword))
        {
            $filter['keyword'] = $keyword;
            $this->design->assign('keyword', $keyword);
        }

        $posts_count = $this->offer->count_posts($filter);
        // Показать все страницы сразу
        if($this->request->get('page') == 'all')
            $filter['limit'] = $posts_count;

        $posts = $this->offer->get_posts($filter);
        $this->design->assign('posts_count', $posts_count);

        $this->design->assign('pages_count', ceil($posts_count/$filter['limit']));
        $this->design->assign('current_page', $filter['page']);

        $this->design->assign('posts', $posts);
        return $this->design->fetch('offer.tpl');
    }
}
