<?php

/* layout-footer.html */
class __TwigTemplate_7a25c528a66c4a92a5303c593807b878208ca3ddfc874f844ed7273987a3481b extends Twig_Template
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
        echo "<script type=\"text/javascript\">
var site_url = \"";
        // line 2
        echo twig_escape_filter($this->env, site_url(), "html", null, true);
        echo "\";
var base_url = \"";
        // line 3
        echo twig_escape_filter($this->env, base_url(), "html", null, true);
        echo "\";
</script>
<script src=\"";
        // line 5
        echo twig_escape_filter($this->env, base_url("assets/comp/jquery/jquery.js"), "html", null, true);
        echo "\" type=\"text/javascript\"></script>
<script src=\"";
        // line 6
        echo twig_escape_filter($this->env, base_url("assets/comp/jquery/jquery-ui-1.10.1.custom.min.js"), "html", null, true);
        echo "\" type=\"text/javascript\"></script>
<script data-pace-options='{ \"ajax\": false }' src=\"";
        // line 7
        echo twig_escape_filter($this->env, base_url("assets/comp/pace/pace.min.js"), "html", null, true);
        echo "\" type=\"text/javascript\"></script>
<script src=\"";
        // line 8
        echo twig_escape_filter($this->env, base_url("assets/comp/offline/offline.min.js"), "html", null, true);
        echo "\" type=\"text/javascript\"></script>
<script src=\"";
        // line 9
        echo twig_escape_filter($this->env, base_url("assets/comp/bootstrap/js/bootstrap.min.js"), "html", null, true);
        echo "\" type=\"text/javascript\"></script>
";
        // line 10
        echo (isset($context["comp_js"]) ? $context["comp_js"] : null);
        echo "
<script src=\"";
        // line 11
        echo twig_escape_filter($this->env, (isset($context["base_url_theme"]) ? $context["base_url_theme"] : null), "html", null, true);
        echo "scripts/script.js\" type=\"text/javascript\"></script>
";
    }

    public function getTemplateName()
    {
        return "layout-footer.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  55 => 11,  26 => 3,  22 => 2,  51 => 10,  43 => 8,  35 => 6,  31 => 5,  27 => 4,  19 => 1,  133 => 50,  128 => 35,  123 => 6,  117 => 4,  112 => 51,  109 => 50,  107 => 49,  97 => 44,  93 => 43,  84 => 36,  82 => 35,  71 => 26,  65 => 24,  63 => 23,  53 => 18,  49 => 17,  37 => 7,  34 => 6,  28 => 4,  23 => 3,  143 => 53,  136 => 49,  120 => 36,  116 => 35,  110 => 32,  102 => 27,  98 => 26,  95 => 25,  90 => 22,  81 => 19,  76 => 18,  72 => 17,  69 => 16,  56 => 14,  52 => 13,  47 => 9,  45 => 9,  42 => 8,  39 => 7,  32 => 5,  29 => 3,);
    }
}
