<div class="articles index">
	<h2><?= __('Articles'); ?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
		<th><?= $this->Paginator->sort('id'); ?></th>
		<th><?= $this->Paginator->sort('title'); ?></th>
		<th><?= $this->Paginator->sort('body'); ?></th>
		<th><?= $this->Paginator->sort('modified'); ?></th>
		<th class="actions"><?= __('Actions'); ?></th>
	</tr>
	<?php foreach ($articles as $article): ?>
	<tr>
		<td><?= h($article->id); ?>&nbsp;</td>
		<td><?= h($article->title); ?>&nbsp;</td>
		<td><?= h($article->body); ?>&nbsp;</td>
		<td><?= h($article->modified); ?>&nbsp;</td>
		<td class="actions">
			<?= $this->Html->link(__('View'), ['action' => 'view', $article->id]); ?>
			<?= $this->Html->link(__('Edit'), ['action' => 'edit', $article->id]); ?>
			<?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $article->id], ['confirm' => __('Are you sure you want to delete # %s?', $article->id)]); ?>
		</td>
	</tr>
	<?php endforeach; ?>
	</table>
	<p><?= $this->Paginator->counter(); ?></p>
	<div class="paging">
	<?php
		echo $this->Paginator->prev('< ' . __('previous'));
		echo $this->Paginator->numbers();
		echo $this->Paginator->next(__('next') . ' >');
	?>
	</div>
</div>
<div class="actions">
	<h3><?= __('Actions'); ?></h3>
	<ul>
		<li><?= $this->Html->link(__('New Article'), ['action' => 'add']); ?></li>
	</ul>
</div>
