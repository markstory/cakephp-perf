<div class="articles form">
<?= $this->Form->create($article); ?>
	<fieldset>
		<legend><?= __('Add Article'); ?></legend>
	<?php
		echo $this->Form->control('title');
		echo $this->Form->control('body');
	?>
	</fieldset>
<?= $this->Form->button(__('Submit')); ?>
<?= $this->Form->end(); ?>
</div>
<div class="actions">
	<h3><?= __('Actions'); ?></h3>
	<ul>
		<li><?= $this->Html->link(__('List Articles'), ['action' => 'index']); ?></li>
	</ul>
</div>
