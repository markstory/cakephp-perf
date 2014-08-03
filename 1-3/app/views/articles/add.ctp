<div class="articles form">
<?php echo $this->Form->create('Article');?>
	<fieldset>
		<legend><?php __('Add Article'); ?></legend>
	<?php
		echo $this->Form->input('title');
		echo $this->Form->input('body');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('List Articles', true), array('action' => 'index'));?></li>
	</ul>
</div>