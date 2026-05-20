Return-Path: <devicetree+bounces-300847-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOgCJ+79DWok5QUAu9opvQ
	(envelope-from <devicetree+bounces-300847-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 20:31:10 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FCF45966C4
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 20:31:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47D233175411
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 18:24:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A3FD4014A0;
	Wed, 20 May 2026 18:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hbZNqBCT"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39C9C400E1B;
	Wed, 20 May 2026 18:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779301422; cv=none; b=pWvTlTQHnr+YRKx+04OpYIIZH/9a+9Ja16hrYQoZvP7FozULeInoNpIpIk32nMJQVeU6sI2QLv1a8A4sR9RZW0xfCCcjWtQjdKnECzSD7lwDiFimVS5QiYM38YQYoaB6dxF//EW3lXH4GobIqyoJ4GJ69wEV1arxWBfBrE8vMhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779301422; c=relaxed/simple;
	bh=eAkv6m8d2IGxCDoHFSMJxyF7C7uv/eqLlLgxLxLoXZg=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=K/YmB/4LP2wr3EZHO9zk8uFQg6YCLjq5awkbnvKCRx+T0EelbvHJbTb5ekBck89elQgEipixar1UtL/Bap1SoZ+EXawAhN3NhKxG9Zw77LPCbrod6Muu2irdCvmbmPai/D4xstaWRnwVdGJ1D0U+lOUA6PRWE2Euqb4/wvd3ayc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hbZNqBCT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CBB741F00894;
	Wed, 20 May 2026 18:23:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779301420;
	bh=gubjDCCRfPt2+6a28Rol+A7fNFT/WfoM0ypzk3iynrc=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=hbZNqBCTk9VklHOkhdFu1srZYDdlDJYno2S5h9z9YVHa37+QyX8AqCbbaDGDO+c/c
	 ggC90hJGA+Tm8l+awiLV7PenKB0wzxsH+KswNgCj6trUXI8KVawvuHBnOS2fOmfyjy
	 ulbZiCmpNeQ8eaL4trHy0UDFwsd2t/t5/tNE0Gqy+mTPj2ZnNBEZ5WbNQ4njMuYMmR
	 93tztnIpD+y4w8iI31NlyYaYCBmVJXSUmWM/03ew/riPdJc6+L0o7ERhpgwQmx2I8M
	 +exATMvMXDzn50Fxp8VMFVeSZkk+xX9LS/Zs7kb9cknjGZZfKcg4unrXmLtBwPHNvZ
	 agX+0MXp93E6g==
Date: Wed, 20 May 2026 19:23:30 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V8 03/10] iio: imu: inv_icm42607: Add inv_icm42607 Core
 Driver
Message-ID: <20260520192330.36dfb573@jic23-huawei>
In-Reply-To: <20260518200526.458421-4-macroalpha82@gmail.com>
References: <20260518200526.458421-1-macroalpha82@gmail.com>
	<20260518200526.458421-4-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-300847-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Queue-Id: 5FCF45966C4
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Mon, 18 May 2026 15:05:18 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add the core component of a new inv_icm42607 driver. This includes
> a few setup functions and the full register definition in the
> header file.
> 
How are you driving the fifo capture? There isn't a trigger
and the irq isn't wired up that I can find.

I'm struggling to see how this works.
I would expect to see something like:
inv_icm42600_irq_handler()

Ah. This was previously in the wake up patch.  That bit we still need
for this driver to work.


> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

> +int inv_icm42607_core_probe(struct regmap *regmap, const struct inv_icm42607_hw *hw,
> +			    inv_icm42607_bus_setup bus_setup)
> +{
> +	struct device *dev = regmap_get_device(regmap);
> +	struct inv_icm42607_state *st;
> +	int irq;
> +	int ret;
> +
> +	irq = fwnode_irq_get_byname(dev_fwnode(dev), "INT1");
> +	if (irq < 0)
> +		return dev_err_probe(dev, irq, "Unable to get INT1 interrupt\n");
This doesn't seem to be used?

> +

