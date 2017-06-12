<?php if(count($currencies) > 1): ?>
	<li class="dropdown">
		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
			<?php foreach($currencies as $currency): ?>
				<?php if($currency['symbol_left'] && $currency['code'] == $code): ?>
					<?= $currency['symbol_left']; ?> <?=$text_currency?> <span class="caret"></span>
				<?php elseif($currency['symbol_right'] && $currency['code'] == $code): ?>
					<?=$text_currency?> <?= $currency['symbol_right']; ?> <span class="caret"></span>
				<?php endif; ?>
			<?php endforeach; ?>
		</a>
		<ul class="dropdown-menu">
			<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-currency">
				<?php foreach($currencies as $currency): ?>
					<?php if($currency['symbol_left']): ?>
					<li>
						<a name="<?=$currency['code']?>" href="<?=$currency['code']?>"><?= $currency['symbol_left']; ?> <?=$currency['title']?></a>
					</li>
					<?php else: ?>
					<li>
						<a name="<?=$currency['code']?>" href="<?=$currency['code']?>"><?=$currency['title']?> <?= $currency['symbol_right']; ?></a>
					</li>
					<?php endif; ?>
				<?php endforeach; ?>
				<input type="hidden" name="code" value="" />
  				<input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
			</form>
		</ul>
	</li>
<?php endif; ?>