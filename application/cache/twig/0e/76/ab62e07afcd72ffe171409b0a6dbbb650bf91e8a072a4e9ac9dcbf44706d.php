<?php

/* list-inbox.html */
class __TwigTemplate_0e76ab62e07afcd72ffe171409b0a6dbbb650bf91e8a072a4e9ac9dcbf44706d extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = $this->env->loadTemplate("layout-private.html");

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doGetParent(array $context)
    {
        return "layout-private.html";
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        $this->parent->display($context, array_merge($this->blocks, $blocks));
    }

    // line 3
    public function block_title($context, array $blocks = array())
    {
        // line 4
        echo "Pesan - ";
        $this->displayParentBlock("title", $context, $blocks);
        echo "
";
    }

    // line 7
    public function block_content($context, array $blocks = array())
    {
        // line 8
        echo "<div class=\"module message\">
    <div class=\"module-head\">
        <h3>Pesan</h3>
    </div>
    <div class=\"module-body\">
        <div class=\"module-option clearfix\">
            ";
        // line 14
        echo get_flashdata("msg");
        echo "

            <div class=\"pull-right\">
                <form class=\"form-search\" method=\"get\" action=\"";
        // line 17
        echo twig_escape_filter($this->env, site_url("message/index/"), "html", null, true);
        echo "\">
                    <div class=\"input-append\">
                        <input type=\"text\" class=\"span3 search-query\" placeholder=\"cari pesan...\" name=\"q\" value=\"";
        // line 19
        echo twig_escape_filter($this->env, (isset($context["keyword"]) ? $context["keyword"] : null), "html", null, true);
        echo "\">
                        <button type=\"submit\" class=\"btn\"><i class=\"icon-search\"></i></button>
                    </div>
                </form>
            </div>
            <div class=\"pull-left\">
                <a href=\"";
        // line 25
        echo twig_escape_filter($this->env, site_url("message/create/"), "html", null, true);
        echo "\" class=\"btn btn-primary\"><i class=\"icon-pencil\"></i> Tulis pesan</a>
            </div>
        </div>
        <div class=\"module-body table\">
            <table class=\"table table-message\">
                <tbody>
                    ";
        // line 31
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["inbox"]) ? $context["inbox"] : null));
        foreach ($context['_seq'] as $context["_key"] => $context["d"]) {
            // line 32
            echo "                    <tr class=\"";
            echo ((($this->getAttribute((isset($context["d"]) ? $context["d"] : null), "opened") == 0)) ? ("unread") : (""));
            echo " clickable-row\" data-href=\"";
            echo twig_escape_filter($this->env, site_url(((("message/detail/" . $this->getAttribute((isset($context["d"]) ? $context["d"] : null), "id")) . "#msg-") . $this->getAttribute((isset($context["d"]) ? $context["d"] : null), "id"))), "html", null, true);
            echo "\">
                        <td class=\"cell-author\">
                            <img style=\"height:30px;width:30px; margin-right: 10px;\" class=\"img-polaroid img-circle pull-left\" src=\"";
            // line 34
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["d"]) ? $context["d"] : null), "profil"), "link_image"), "html", null, true);
            echo "\">
                            <a href=\"";
            // line 35
            echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["d"]) ? $context["d"] : null), "profil"), "link_profil"), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, character_limiter($this->getAttribute($this->getAttribute((isset($context["d"]) ? $context["d"] : null), "profil"), "nama"), 23, "..."), "html", null, true);
            echo "</a>
                            <br>
                            ";
            // line 37
            if ((!twig_test_empty($this->getAttribute((isset($context["d"]) ? $context["d"] : null), "timeago")))) {
                // line 38
                echo "                                <time class=\"timeago\" datetime=\"";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["d"]) ? $context["d"] : null), "timeago"), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["d"]) ? $context["d"] : null), "date"), "html", null, true);
                echo "</time>
                            ";
            } else {
                // line 40
                echo "                                <small>";
                echo twig_escape_filter($this->env, $this->getAttribute((isset($context["d"]) ? $context["d"] : null), "date"), "html", null, true);
                echo "</small>
                            ";
            }
            // line 42
            echo "                        </td>
                        <td class=\"cell-title hidden-phone hidden-tablet\">
                            <a class=\"pull-right\" style=\"margin-left:10px;\" href=\"";
            // line 44
            echo twig_escape_filter($this->env, site_url((("message/detail/" . $this->getAttribute((isset($context["d"]) ? $context["d"] : null), "id")) . "/?confirm=1#confirm")), "html", null, true);
            echo "\"><i class=\"icon-trash\"></i></a>
                            ";
            // line 45
            if ((!twig_test_empty($this->getAttribute((isset($context["d"]) ? $context["d"] : null), "receiver")))) {
                // line 46
                echo "                            <div>To <a href=\"";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["d"]) ? $context["d"] : null), "receiver"), "link_profil"), "html", null, true);
                echo "\">";
                echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["d"]) ? $context["d"] : null), "receiver"), "nama"), "html", null, true);
                echo "</a></div>
                            ";
            }
            // line 48
            echo "                            ";
            echo character_limiter(strip_tags($this->getAttribute((isset($context["d"]) ? $context["d"] : null), "content")), 80, "...");
            echo "
                        </td>
                    </tr>
                    ";
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['d'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 52
        echo "
                </tbody>
            </table>
        </div>
        <div class=\"module-foot\">
            ";
        // line 57
        echo (isset($context["pagination"]) ? $context["pagination"] : null);
        echo "
        </div>

    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "list-inbox.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  154 => 57,  147 => 52,  136 => 48,  128 => 46,  126 => 45,  122 => 44,  118 => 42,  112 => 40,  104 => 38,  102 => 37,  95 => 35,  91 => 34,  83 => 32,  79 => 31,  70 => 25,  61 => 19,  56 => 17,  50 => 14,  42 => 8,  39 => 7,  32 => 4,  29 => 3,);
    }
}
