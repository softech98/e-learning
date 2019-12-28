<?php

/* detail-pesan.html */
class __TwigTemplate_4409d83e7bf14b54192c22f7dbfcdca4c07e33344cb30d5e515e720c695ac3be extends Twig_Template
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
        echo "Detail Percakapan - ";
        $this->displayParentBlock("title", $context, $blocks);
        echo "
";
    }

    // line 7
    public function block_content($context, array $blocks = array())
    {
        // line 8
        echo "<div class=\"module\">
    <div class=\"module-head\">
        <h3>";
        // line 10
        echo anchor("message", "Pesan");
        echo " / Detail Percakapan</h3>
    </div>
    <div class=\"module-body\">

        ";
        // line 14
        $context["active_msg_id"] = $this->getAttribute((isset($context["r"]) ? $context["r"] : null), "id");
        // line 15
        echo "
        <div class=\"table-responsive\">
        <table class=\"table table-hover\" id=\"list-msg\">
            <tbody>
                ";
        // line 19
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["old_related_msg"]) ? $context["old_related_msg"] : null));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["d"]) {
            // line 20
            echo "                    ";
            $context["item_msg"] = (isset($context["d"]) ? $context["d"] : null);
            // line 21
            echo "                    ";
            $this->env->loadTemplate("detail-pesan-item.html")->display($context);
            // line 22
            echo "                ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['d'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 23
        echo "
                ";
        // line 24
        $context["item_msg"] = (isset($context["r"]) ? $context["r"] : null);
        // line 25
        echo "                ";
        $this->env->loadTemplate("detail-pesan-item.html")->display($context);
        // line 26
        echo "
                ";
        // line 27
        $context['_parent'] = (array) $context;
        $context['_seq'] = twig_ensure_traversable((isset($context["new_related_msg"]) ? $context["new_related_msg"] : null));
        $context['loop'] = array(
          'parent' => $context['_parent'],
          'index0' => 0,
          'index'  => 1,
          'first'  => true,
        );
        if (is_array($context['_seq']) || (is_object($context['_seq']) && $context['_seq'] instanceof Countable)) {
            $length = count($context['_seq']);
            $context['loop']['revindex0'] = $length - 1;
            $context['loop']['revindex'] = $length;
            $context['loop']['length'] = $length;
            $context['loop']['last'] = 1 === $length;
        }
        foreach ($context['_seq'] as $context["_key"] => $context["n"]) {
            // line 28
            echo "                    ";
            $context["item_msg"] = (isset($context["n"]) ? $context["n"] : null);
            // line 29
            echo "                    ";
            $this->env->loadTemplate("detail-pesan-item.html")->display($context);
            // line 30
            echo "                ";
            ++$context['loop']['index0'];
            ++$context['loop']['index'];
            $context['loop']['first'] = false;
            if (isset($context['loop']['length'])) {
                --$context['loop']['revindex0'];
                --$context['loop']['revindex'];
                $context['loop']['last'] = 0 === $context['loop']['revindex0'];
            }
        }
        $_parent = $context['_parent'];
        unset($context['_seq'], $context['_iterated'], $context['_key'], $context['n'], $context['_parent'], $context['loop']);
        $context = array_intersect_key($context, $_parent) + $_parent;
        // line 31
        echo "            </tbody>
        </table>
        </div>

        <br>
        ";
        // line 36
        if (((isset($context["confirm_del_all"]) ? $context["confirm_del_all"] : null) == false)) {
            // line 37
            echo "        <div class=\"msg-active\">
            <b>Kirim Pesan</b>
            <hr class=\"hr-msg\">
            ";
            // line 40
            echo form_open_multipart(("message/create/" . $this->getAttribute((isset($context["r"]) ? $context["r"] : null), "sender_receiver_id")), array("class" => "form-horizontal row-fluid"));
            echo "
                <input type=\"hidden\" name=\"penerima\" value=\"";
            // line 41
            echo twig_escape_filter($this->env, (isset($context["receiver_name"]) ? $context["receiver_name"] : null), "html", null, true);
            echo "\">
                <textarea name=\"content\" id=\"content\" class=\"texteditor\">";
            // line 42
            echo set_value("content");
            echo "</textarea>
                ";
            // line 43
            echo form_error("content");
            echo "
                <br>
                <p><button class=\"btn btn-primary\">Kirim</button></p>
            ";
            // line 46
            echo form_close();
            echo "
        </div>
        ";
        }
        // line 49
        echo "
        ";
        // line 50
        if (((isset($context["confirm_del_all"]) ? $context["confirm_del_all"] : null) == true)) {
            // line 51
            echo "        <hr class=\"hr-msg\">
        <div id=\"confirm\" class=\"alert alert-block\">
            <div class=\"pull-right btn-group\" style=\"margin-top: -5px;\">
                <a class=\"btn btn-danger\" href=\"";
            // line 54
            echo twig_escape_filter($this->env, site_url(("message/del_all/" . $this->getAttribute((isset($context["r"]) ? $context["r"] : null), "id"))), "html", null, true);
            echo "\">Ya hapus</a>
                <a class=\"btn btn-primary\" href=\"";
            // line 55
            echo twig_escape_filter($this->env, site_url("message"), "html", null, true);
            echo "\">Batal</a>
            </div>
            <b>Anda yakin ingin menghapus percakapan ini?</b>
        </div>
        ";
        }
        // line 60
        echo "
        <input type=\"hidden\" id=\"active_msg_id\" value=\"";
        // line 61
        echo twig_escape_filter($this->env, $this->getAttribute((isset($context["r"]) ? $context["r"] : null), "id"), "html", null, true);
        echo "\">

    </div>
</div>
";
    }

    public function getTemplateName()
    {
        return "detail-pesan.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  209 => 61,  206 => 60,  198 => 55,  194 => 54,  189 => 51,  187 => 50,  184 => 49,  178 => 46,  172 => 43,  168 => 42,  164 => 41,  160 => 40,  155 => 37,  153 => 36,  146 => 31,  132 => 30,  129 => 29,  126 => 28,  109 => 27,  106 => 26,  103 => 25,  101 => 24,  98 => 23,  84 => 22,  81 => 21,  78 => 20,  61 => 19,  55 => 15,  53 => 14,  46 => 10,  42 => 8,  39 => 7,  32 => 4,  29 => 3,);
    }
}
