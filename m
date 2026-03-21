Return-Path: <devicetree+bounces-278581-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mBqRJUWUvmmOTgMAu9opvQ
	(envelope-from <devicetree+bounces-278581-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 13:51:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F572E559C
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 13:51:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5F4BF3011F3C
	for <lists+devicetree@lfdr.de>; Sat, 21 Mar 2026 12:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C9E82ED84C;
	Sat, 21 Mar 2026 12:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Znk4sBiX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 694B12DECDE;
	Sat, 21 Mar 2026 12:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774097474; cv=none; b=pfQSrO5mjP8KV4mR4KwwXY3fut8jjHlHhCxrEk3SeUgYdqr2U3lMM4hPinfg005ogrKwkDu6yQ6qTyjDGIczdyyyLSsGRjlZDzct9Kc2kftjWqWFH7uYJd+Rwhpkq+mA7N+EkjiFNz2oLcvdW9ykdJoRV05WsOTLHvNtPx3Ryqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774097474; c=relaxed/simple;
	bh=0uSiGaUEZeo1zPFWtkVjiXOSFqTsLfKtS9gtjb25Gf4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=heYV5794qwjXp+5ntNPo5FY7E/p0EYjGlhZfoCQBkD1SA5b4vGiEZPYp93eemjoskpp/220dH1jSWdztLzX44mt544nIw06jfph3GwGS5Vg54AbfWt1OapgMGaZFBK2t9vDG2PdFQ2bdBYrAhCYPabI1/XFxfwKpsfDkYSOOWdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Znk4sBiX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5259BC2BC9E;
	Sat, 21 Mar 2026 12:51:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774097474;
	bh=0uSiGaUEZeo1zPFWtkVjiXOSFqTsLfKtS9gtjb25Gf4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=Znk4sBiXr50TUsaGDiqLHCtNVIQI8Sw5w/5bfgu6FCSRdzpb6qHf5YfZKkoq/Rww5
	 W83CFAkAcn24xiT6uCbsXA4pn0Byv+dy7kzUdJbQ9u8C5qPB9wBLa8AU3662iDgY5D
	 m64/xfoElldoKwiwQfFfT8ZwsiPXdXJ9frXjUHWIi/pEBR+dGanrpHX8TXWolXnjHE
	 +4RE0D04V8h7wVEIBtBDEUw/9jNd2YELq3S4hKfF2xWsxRZCvanD9N6b8nCz09Q/Hp
	 Szp382dRpudkTK1vsEfzLoYRFBeaIsv0ZCz4qdFEOeWlcyep6Oy6B7rGTVGzUtuQMZ
	 vjIkwYOVF2w7g==
Date: Sat, 21 Mar 2026 12:51:03 +0000
From: Jonathan Cameron <jic23@kernel.org>
To: Carlos Jones Jr <carlosjr.jones@analog.com>
Cc: Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, David Lechner <dlechner@baylibre.com>, Michael
 Hennerich <Michael.Hennerich@analog.com>, Liam Beguin
 <liambeguin@gmail.com>, Nuno =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, Andy
 Shevchenko <andy@kernel.org>, Tobias Sperling
 <tobias.sperling@softing.com>, Jorge Marques <jorge.marques@analog.com>,
 <linux-iio@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/3] iio: adc: ltc2309: introduce chip_info structure
Message-ID: <20260321125103.516b984e@jic23-huawei>
In-Reply-To: <20260320140819.191700-2-carlosjr.jones@analog.com>
References: <20260320140819.191700-1-carlosjr.jones@analog.com>
	<20260320140819.191700-2-carlosjr.jones@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.51; x86_64-pc-linux-gnu)
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-278581-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[15];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[metafoo.de,kernel.org,baylibre.com,analog.com,gmail.com,softing.com,vger.kernel.org];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E1F572E559C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Fri, 20 Mar 2026 22:08:17 +0800
Carlos Jones Jr <carlosjr.jones@analog.com> wrote:

> This is a preparatory patch that introduces a chip_info structure
> to the LTC2309 driver to facilitate adding support for additional
> chip variants with different channel configurations and timing
> requirements.
> 
> The chip_info structure contains chip-specific data including
> the channel specifications, number of channels, and read delay
> timing. This change does not modify the existing LTC2309
> functionality.
> 
> Signed-off-by: Carlos Jones Jr <carlosjr.jones@analog.com>
Hi Carlos,

Firstly welcome to IIO!

A few comments inline. Some overlap with Andy's review.

Jonathan

> ---
>  drivers/iio/adc/ltc2309.c | 24 ++++++++++++++++++++++--
>  1 file changed, 22 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/iio/adc/ltc2309.c b/drivers/iio/adc/ltc2309.c
> index 5f0d947d0615..4ea25873398c 100644
> --- a/drivers/iio/adc/ltc2309.c
> +++ b/drivers/iio/adc/ltc2309.c
> @@ -8,6 +8,7 @@
>   * Copyright (c) 2023, Liam Beguin <liambeguin@gmail.com>
>   */
>  #include <linux/bitfield.h>
> +#include <linux/delay.h>
>  #include <linux/i2c.h>
>  #include <linux/iio/iio.h>
>  #include <linux/kernel.h>
> @@ -26,18 +27,26 @@
>  #define LTC2309_DIN_UNI		BIT(3)
>  #define LTC2309_DIN_SLEEP	BIT(2)
>  
> +struct ltc2309_chip_info {
> +	const struct iio_chan_spec *channels;

We now have __counted_by_ptr so you can use that marking
to make it explicit that num_channels is telling us how
many elements channels has.

> +	unsigned int num_channels;
> +	unsigned int read_delay_us;
> +};
> +
>  /**
>   * struct ltc2309 - internal device data structure
>   * @dev:	Device reference
>   * @client:	I2C reference
>   * @lock:	Lock to serialize data access
>   * @vref_mv:	Internal voltage reference
> + * @chip_info:	Chip-specific configuration data
See below. Maybe more appropriate to copy the read_delay rather
than keeping pointer to full structure around.


>   */
>  struct ltc2309 {
>  	struct device		*dev;
>  	struct i2c_client	*client;
>  	struct mutex		lock; /* serialize data access */
>  	int			vref_mv;
> +	const struct ltc2309_chip_info *chip_info;
>  };
>  
>  /* Order matches expected channel address, See datasheet Table 1. */
> @@ -117,6 +126,10 @@ static int ltc2309_read_raw_channel(struct ltc2309 *ltc2309,
>  		return ret;
>  	}
>  
> +	if (ltc2309->chip_info->read_delay_us)
> +		usleep_range(ltc2309->chip_info->read_delay_us,
> +			     ltc2309->chip_info->read_delay_us * 2);

Andy covered this. fsleep() provides standard tolerance on
usleeps if we don't care about precise timing (and given it's a sleep
we never get precise timing anyway!)

> +
>  	ret = i2c_master_recv(ltc2309->client, (char *)&buf, 2);
>  	if (ret < 0) {
>  		dev_err(ltc2309->dev, "i2c read failed: %pe\n", ERR_PTR(ret));
> @@ -156,6 +169,12 @@ static const struct iio_info ltc2309_info = {
>  	.read_raw = ltc2309_read_raw,
>  };
>  
> +static const struct ltc2309_chip_info ltc2309_chip_info = {
> +	.channels = ltc2309_channels,
> +	.num_channels = ARRAY_SIZE(ltc2309_channels),
> +	.read_delay_us = 0,
> +};
> +
>  static int ltc2309_probe(struct i2c_client *client)
>  {
>  	struct iio_dev *indio_dev;
> @@ -169,11 +188,12 @@ static int ltc2309_probe(struct i2c_client *client)
>  	ltc2309 = iio_priv(indio_dev);
>  	ltc2309->dev = &indio_dev->dev;
>  	ltc2309->client = client;
> +	ltc2309->chip_info = &ltc2309_chip_info;

Given only the read_delay_us is used after probe, I'd add a variable for
that and copy just that value over.  If you have other changes that
are coming in the near future that will add more fields to the structure
that are needed after probe, then fine to leave it as you have it
(but add a mention in the commit message).


>  
>  	indio_dev->name = "ltc2309";

Given we try to present the actual device name in sysfs, I'd expect to see the
name coming from the chip_info structure as well.

>  	indio_dev->modes = INDIO_DIRECT_MODE;
> -	indio_dev->channels = ltc2309_channels;
> -	indio_dev->num_channels = ARRAY_SIZE(ltc2309_channels);
> +	indio_dev->channels = ltc2309->chip_info->channels;
> +	indio_dev->num_channels = ltc2309->chip_info->num_channels;
>  	indio_dev->info = &ltc2309_info;
>  
>  	ret = devm_regulator_get_enable_read_voltage(&client->dev, "vref");


