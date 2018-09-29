<!DOCTYPE html>
<html>
    <head>
        <title>Assignment2</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>            
    </head>
    <body>
        <div class="container">
            <h1>Hello <{$name}>>,</h1>
            <table class="table">
                <thead>
                    <tr>
                        <th>S/N</th>
                        <{foreach $table.1 as $a => $b}>
                            <th><{$a|upper}></th>
                        <{/foreach}>                                                                                
                        <th>Total</th>
                    </tr>
                </thead>
                <tbody>
                    <{assign var='count_a' value=0}>
                    <{assign var='count_b' value=0}>
                    <{assign var='prea' value=0}>
                    <{assign var='psta' value=0}>
                    <{foreach from = $table key = $key item = $val name = counter}>
                        <tr>
                            <td>
                                <{$smarty.foreach.counter.iteration}>
                            </td>
                            <{foreach from = $val key = $a item = $b}>
                                <td>
                                    <{if $a eq 'pre'}>
                                        <{$count_a = $count_a+1}>
                                        <{$prea = $prea+$b}><{$p = $b}>
                                        <{$b}>
                                    <{else if $a eq 'post'}>
                                        <{$count_b = $count_b+1}>
                                        <{$psta = $psta+$b}>
                                        <{$b}>
                                    <{else}>
                                        <{$b}>
                                    <{/if}>
                                </td>        
                                <{if $a eq 'post'}>
                                    <td><{$p+$b}></td>
                                <{/if}>
                            <{/foreach}>
                        </tr>                            
                    <{/foreach}>
                </tbody>
                <tfoot>
                    <td>Avg</td>
                    <td colspan='2'></td>
                    <td><{($prea/$count_a)|round:2}></td>
                    <td><{($psta/$count_b)|round:2}></td>
                    <td></td>
                </tfoot>
            </table>
        </div>
        <pre>
            &lt;div class="container"&gt;
                &lt;h1&gt;Hello &lt;{$name}&gt;&gt;,&lt;/h1&gt;
                &lt;table class="table"&gt;
                    &lt;thead&gt;
                        &lt;tr&gt;
                            &lt;th&gt;S/N&lt;/th&gt;
                            &lt;{foreach $table.1 as $a =&gt; $b}&gt;
                                &lt;th&gt;&lt;{$a|upper}&gt;&lt;/th&gt;
                            &lt;{/foreach}&gt;                                                                                
                            &lt;th&gt;Total&lt;/th&gt;
                        &lt;/tr&gt;
                    &lt;/thead&gt;
                    &lt;tbody&gt;
                        &lt;{assign var='count_a' value=0}&gt;
                        &lt;{assign var='count_b' value=0}&gt;
                        &lt;{assign var='prea' value=0}&gt;
                        &lt;{assign var='psta' value=0}&gt;
                        &lt;{foreach from = $table key = $key item = $val name = counter}&gt;
                            &lt;tr&gt;
                                &lt;td&gt;
                                    &lt;{$smarty.foreach.counter.iteration}&gt;
                                &lt;/td&gt;
                                &lt;{foreach from = $val key = $a item = $b}&gt;
                                    &lt;td&gt;
                                        &lt;{if $a eq 'pre'}&gt;
                                            &lt;{$count_a = $count_a+1}&gt;
                                            &lt;{$prea = $prea+$b}&gt;&lt;{$p = $b}&gt;
                                            &lt;{$b}&gt;
                                        &lt;{else if $a eq 'post'}&gt;
                                            &lt;{$count_b = $count_b+1}&gt;
                                            &lt;{$psta = $psta+$b}&gt;
                                            &lt;{$b}&gt;
                                        &lt;{else}&gt;
                                            &lt;{$b}&gt;
                                        &lt;{/if}&gt;
                                    &lt;/td&gt;        
                                    &lt;{if $a eq 'post'}&gt;
                                        &lt;td&gt;&lt;{$p+$b}&gt;&lt;/td&gt;
                                    &lt;{/if}&gt;
                                &lt;{/foreach}&gt;
                            &lt;/tr&gt;                            
                        &lt;{/foreach}&gt;
                    &lt;/tbody&gt;
                    &lt;tfoot&gt;
                        &lt;td&gt;Avg&lt;/td&gt;
                        &lt;td colspan='2'&gt;&lt;/td&gt;
                        &lt;td&gt;&lt;{($prea/$count_a)|round:2}&gt;&lt;/td&gt;
                        &lt;td&gt;&lt;{($psta/$count_b)|round:2}&gt;&lt;/td&gt;
                        &lt;td&gt;&lt;/td&gt;
                    &lt;/tfoot&gt;
                &lt;/table&gt;
            &lt;/div&gt;
        </pre>
    </body>
</html>