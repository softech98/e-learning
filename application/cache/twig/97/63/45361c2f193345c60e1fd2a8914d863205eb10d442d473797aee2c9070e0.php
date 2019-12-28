<?php

/* detail-pesan-item.html */
class __TwigTemplate_976345361c2f193345c60e1fd2a8914d863205eb10d442d473797aee2c9070e0 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<tr id=\"msg-";
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item_msg"]) ? $context["item_msg"] : null), "id"), "html", null, true);
        echo "\">
    <td class=\"msg-user ";
        // line 2
        echo ((((isset($context["msg_flag_new"]) ? $context["msg_flag_new"] : null) == 1)) ? ("msg-flag-new") : (""));
        echo "\">
        <img class=\"img-msg-user img-polaroid img-circle pull-left\" src=\"";
        // line 3
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["item_msg"]) ? $context["item_msg"] : null), "profil"), "link_image"), "html", null, true);
        echo "\">
        <a href=\"";
        // line 4
        echo twig_escape_filter($this->env, $this->getAttribute($this->getAttribute((isset($context["item_msg"]) ? $context["item_msg"] : null), "profil"), "link_profil"), "html", null, true);
        echo "\">";
        echo twig_escape_filter($this->env, character_limiter($this->getAttribute($this->getAttribute((isset($context["item_msg"]) ? $context["item_msg"] : null), "profil"), "nama"), 23, "..."), "html", null, true);
        echo "</a>
        <br>
        ";
        // line 6
        if ((!twig_test_empty($this->getAttribute((isset($context["item_msg"]) ? $context["item_msg"] : null), "timeago")))) {
            // line 7
            echo "            <time class=\"timeago\" datetime=\"";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item_msg"]) ? $context["item_msg"] : null), "timeago"), "html", null, true);
            echo "\">";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item_msg"]) ? $context["item_msg"] : null), "date"), "html", null, true);
            echo "</time>
        ";
        } else {
            // line 9
            echo "            <small>";
            echo twig_escape_filter($this->env, $this->getAttribute((isset($context["item_msg"]) ? $context["item_msg"] : null), "date"), "html", null, true);
            echo "</small>
        ";
        }
        // line 11
        echo "    </td>
    <td class=\"msg-content\">
        <a class=\"pull-right\" style=\"margin-left:10px;\" href=\"";
        // line 13
        echo twig_escape_filter($this->env, site_url(((("message/del/" . $this->getAttribute((isset($context["item_msg"]) ? $context["item_msg"] : null), "id")) . "/") . (isset($context["active_msg_id"]) ? $context["active_msg_id"] : null))), "html", null, true);
        echo "\" onclick=\"return confirm('Anda yakin ingin menghapus?')\"><i class=\"icon-trash\"></i></a>
        ";
        // line 14
        echo $this->getAttribute((isset($context["item_msg"]) ? $context["item_msg"] : null), "content");
        echo "
    </td>
</tr>
";
    }

    public function getTemplateName()
    {
        return "detail-pesan-item.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  63 => 14,  59 => 13,  49 => 9,  41 => 7,  28 => 3,  24 => 2,  19 => 1,  209 => 61,  206 => 60,  198 => 55,  194 => 54,  189 => 51,  187 => 50,  184 => 49,  178 => 46,  172 => 43,  168 => 42,  164 => 41,  160 => 40,  155 => 37,  153 => 36,  146 => 31,  132 => 30,  129 => 29,  126 => 28,  109 => 27,  106 => 26,  103 => 25,  101 => 24,  98 => 23,  84 => 22,  81 => 21,  78 => 20,  61 => 19,  55 => 11,  53 => 14,  46 => 10,  42 => 8,  39 => 6,  32 => 4,  29 => 3,);
    }
}
