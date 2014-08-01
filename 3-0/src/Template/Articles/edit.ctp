<div class="articles form">
<?= $this->Form->create($article); ?>
	<fieldset>
		<legend><?= __('Edit Article'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('title');
		echo $this->Form->input('body');
	?>
	</fieldset>
<?= $this->Form->button(__('Submit')); ?>
<?= $this->Form->end(); ?>
</div>
<div class="actions">
	<h3><?= __('Actions'); ?></h3>
	<ul>
		<li><?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $article->id], ['confirm' => __('Are you sure you want to delete # %s?', $article->id)]); ?></li>
		<li><?= $this->Html->link(__('List Articles'), ['action' => 'index']); ?></li>
	</ul>
</div>
