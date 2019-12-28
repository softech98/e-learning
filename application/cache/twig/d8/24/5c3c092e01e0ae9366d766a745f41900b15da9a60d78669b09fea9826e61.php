<?php

/* layout-header.html */
class __TwigTemplate_d8245c3c092e01e0ae9366d766a745f41900b15da9a60d78669b09fea9826e61 extends Twig_Template
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
        echo "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />
<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
<link type=\"text/css\" href=\"";
        // line 3
        echo twig_escape_filter($this->env, base_url("assets/comp/bootstrap/css/bootstrap.min.css"), "html", null, true);
        echo "\" rel=\"stylesheet\">
<link type=\"text/css\" href=\"";
        // line 4
        echo twig_escape_filter($this->env, base_url("assets/comp/bootstrap/css/bootstrap-responsive.min.css"), "html", null, true);
        echo "\" rel=\"stylesheet\">
<link type=\"text/css\" href=\"";
        // line 5
        echo twig_escape_filter($this->env, (isset($context["base_url_theme"]) ? $context["base_url_theme"] : null), "html", null, true);
        echo "css/theme.css\" rel=\"stylesheet\">
<link type=\"text/css\" href=\"";
        // line 6
        echo twig_escape_filter($this->env, base_url("assets/comp/font-awesome/css/font-awesome.css"), "html", null, true);
        echo "\" rel=\"stylesheet\">
<link type=\"text/css\" href=\"";
        // line 7
        echo twig_escape_filter($this->env, base_url("assets/comp/pace/flash.css"), "html", null, true);
        echo "\" rel=\"stylesheet\">
<link type=\"text/css\" href=\"";
        // line 8
        echo twig_escape_filter($this->env, base_url("assets/comp/offline/offline-theme-chrome.css"), "html", null, true);
        echo "\" rel=\"stylesheet\">
";
        // line 9
        echo (isset($context["comp_css"]) ? $context["comp_css"] : null);
        echo "
<link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"";
        // line 10
        echo twig_escape_filter($this->env, (isset($context["favicon_url"]) ? $context["favicon_url"] : null), "html", null, true);
        echo "\">
";
    }

    public function getTemplateName()
    {
        return "layout-header.html";
    }

    public function isTraitable()
    {
        return false;
    }

    public function getDebugInfo()
    {
        return array (  51 => 10,  43 => 8,  35 => 6,  31 => 5,  27 => 4,  19 => 1,  133 => 50,  128 => 35,  123 => 6,  117 => 4,  112 => 51,  109 => 50,  107 => 49,  97 => 44,  93 => 43,  84 => 36,  82 => 35,  71 => 26,  65 => 24,  63 => 23,  53 => 18,  49 => 17,  37 => 7,  34 => 6,  28 => 4,  23 => 3,  143 => 53,  136 => 49,  120 => 36,  116 => 35,  110 => 32,  102 => 27,  98 => 26,  95 => 25,  90 => 22,  81 => 19,  76 => 18,  72 => 17,  69 => 16,  56 => 14,  52 => 13,  47 => 9,  45 => 9,  42 => 8,  39 => 7,  32 => 5,  29 => 3,);
    }
}
