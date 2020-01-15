<?php

/* layout-print.html */
class __TwigTemplate_04dd718307fd81562cf3e305709903886f3ab80453041c47ec5e76bc7fc117c2 extends Twig_Template
{
    public function __construct(Twig_Environment $env)
    {
        parent::__construct($env);

        $this->parent = false;

        $this->blocks = array(
            'title' => array($this, 'block_title'),
            'css' => array($this, 'block_css'),
            'content' => array($this, 'block_content'),
        );
    }

    protected function doDisplay(array $context, array $blocks = array())
    {
        // line 1
        echo "<!DOCTYPE html>
<html>
<head>
    <title>";
        // line 4
        $this->displayBlock('title', $context, $blocks);
        echo "</title>
    ";
        // line 5
        $this->env->loadTemplate("layout-header.html")->display($context);
        // line 6
        echo "    <style type=\"text/css\">
        h3.title {
            margin-bottom: 0px;
            line-height: 30px;
        }
        hr.top {
            border: none;
            border-bottom: 2px solid #333;
            margin-bottom: 10px;
            margin-top: 10px;
        }
    </style>
    ";
        // line 18
        $this->displayBlock('css', $context, $blocks);
        // line 19
        echo "</head>
<body>
    <div class=\"container\">
        <div class=\"row\">
            <div class=\"span12\">
                <br>
                <div class=\"kop-print\">
                    <img src=\"";
        // line 26
        echo twig_escape_filter($this->env, get_logo_config(), "html", null, true);
        echo "\">
                    <div class=\"kop-nama\">";
        // line 27
        echo twig_escape_filter($this->env, get_pengaturan("nama-sekolah", "value"), "html", null, true);
        echo "</div>
                    <div class=\"kop-info\">Alamat : ";
        // line 28
        echo twig_escape_filter($this->env, get_pengaturan("alamat", "value"), "html", null, true);
        echo ", Telepon : ";
        echo twig_escape_filter($this->env, get_pengaturan("telp", "value"), "html", null, true);
        echo "</div>
                </div>
                <hr class=\"kop-print-hr\">
            </div>
        </div>
        <br>
        ";
        // line 34
        $this->displayBlock('content', $context, $blocks);
        // line 35
        echo "    </div>
</body>
</html>
";
    }

    // line 4
    public function block_title($context, array $blocks = array())
    {
        echo twig_escape_filter($this->env, (isset($context["site_name"]) ? $context["site_name"] : null), "html", null, true);
    }

    // line 18
    public function block_css($context, array $blocks = array())
    {
    }

    // line 34
    public function block_content($context, array $blocks = array())
    {
    }

    public function getTemplateName()
    {
        return "layout-print.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  97 => 34,  92 => 18,  86 => 4,  79 => 35,  77 => 34,  66 => 28,  62 => 27,  58 => 26,  49 => 19,  47 => 18,  33 => 6,  31 => 5,  27 => 4,  22 => 1,  226 => 68,  209 => 65,  205 => 64,  201 => 63,  197 => 62,  193 => 61,  190 => 60,  173 => 59,  160 => 48,  158 => 47,  155 => 46,  150 => 43,  133 => 40,  129 => 39,  125 => 38,  120 => 37,  114 => 35,  112 => 34,  108 => 33,  104 => 32,  100 => 31,  96 => 30,  93 => 29,  76 => 28,  67 => 21,  63 => 19,  61 => 18,  52 => 11,  50 => 10,  42 => 8,  39 => 7,  32 => 4,  29 => 3,);
    }
}
