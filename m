Return-Path: <devicetree+bounces-298512-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDG3NFtpB2oJ2QIAu9opvQ
	(envelope-from <devicetree+bounces-298512-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 20:43:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 75775556702
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 20:43:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5E5D2300CB04
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 18:43:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 67F3D3E00B4;
	Fri, 15 May 2026 18:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PG3fN/s0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4BD3EEAFC;
	Fri, 15 May 2026 18:43:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778870601; cv=none; b=Y/jnJwP7uOl7NDojHiriltK67I8xFaU0mtySH5wqtLr8SuPdoM7xJjUmYS8UbrbFUUm+Vgm+FX9whxpInSbOvLJ4HZ533ShJFACMkGLMAEHFUpXSaOBCsY6r/PRmAkQ26qFxgbhVuk6lcbHyQ5O5rG6zkMNenxY2fL/0ESxxthI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778870601; c=relaxed/simple;
	bh=5tR1Qq6xXLAVWqV0dkBVwnCvUhjaha/lBnGmx1miMN4=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=lRIS+9TOzW5bDDdSlfFV9WO+/IHwcMISXjALKBM40KM3ZyOY3ct/geiMqwP3YX2Yr87eYV5bdHnWC54df3Rm/36ig0cjE3Be2rpeXtDu9SfdrsNgPwhXxa0vzmWNxaZ2MOMg5tGmVWvqXaLpV2iDSwWd3HwGhiE9NwoLO5skPBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PG3fN/s0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DC384C2BCB0;
	Fri, 15 May 2026 18:43:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778870600;
	bh=5tR1Qq6xXLAVWqV0dkBVwnCvUhjaha/lBnGmx1miMN4=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=PG3fN/s00vPlguRABctf1XyvtT7LxFl38BgcWW3iuZl+rxXwOte//qx3tcUDBdqWz
	 vlVD+et8rq3B35sMYC1+6KYdUdnKNNx6DrZsg6RVjn4iQP2O+FEZc8Hu9hqkqvIW00
	 iaiQ4kB/Qt6gjzEs4hl8saGH3m8hHVsn+hbhbHSIU7LJ/yvBWo2Ar8Cycu7Y45b6OH
	 uO7cNbAZ+XofZM1B9azZvXScfJiQ7pVVzThHCt7SF61EE9mK9WPTPyc1DVFqCmWuSB
	 JpfzhrD74D9t+N7EO6b5RWt1ZP6mbmEjk3DrHFFZwxLHj/pf2DIB6i3vhslMrAJp0S
	 77DrEUkl1uQSA==
Date: Fri, 15 May 2026 19:43:10 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V7 04/11] iio: imu: inv_icm42607: Add I2C and SPI For
 icm42607
Message-ID: <20260515194310.49fa6fb0@jic23-huawei>
In-Reply-To: <20260515130018.237378-5-macroalpha82@gmail.com>
References: <20260515130018.237378-1-macroalpha82@gmail.com>
	<20260515130018.237378-5-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 75775556702
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298512-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url]
X-Rspamd-Action: no action

On Fri, 15 May 2026 08:00:09 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add I2C and SPI driver support for InvenSense ICM-42607 devices.
> Add necessary Kconfig and Makefile to allow building of (incomplete)
> driver.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
I'm a little amused that sashiko seems to have halucinated part of the
previous patch as part of this one as so repeated some comments. Oh well.
Some of it's other comments are correct.

The only thing I added was a few formatting things.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> index 9784709319b9..1088c5c7076f 100644
> --- a/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_core.c
BOL_NS_GPL(inv_icm42607p_hw_data, "IIO_ICM42607");
> +
>  static int inv_icm42607_set_conf(struct inv_icm42607_state *st,
>  				 const struct inv_icm42607_conf *conf)
>  {
> @@ -81,6 +138,14 @@ static int inv_icm42607_setup(struct inv_icm42607_state *st,
>  	unsigned int val;
>  	int ret;
>  
> +	/*
> +	 * Setup the bus first in case we need to set the SPI mode or
> +	 * change the slew rate in order.

Short wrap.  change at least shold be on the line above.

> +	 */
> +	ret = bus_setup(st);
> +	if (ret)
> +		return ret;
> +
>  	ret = regmap_read(st->map, INV_ICM42607_REG_WHOAMI, &val);
>  	if (ret)
>  		return ret;
> @@ -94,20 +159,27 @@ static int inv_icm42607_setup(struct inv_icm42607_state *st,
>  	if (ret)
>  		return ret;
>  
> -	fsleep(1000);
> +	/*
> +	 * In order to confirm a reset is complete, we need to read the reset
> +	 * bit, but in certain circumstances we need to set the bus up before
> +	 * we can do a read. So we should wait the required amount of time
> +	 * per the datasheet first, then set the bus up again, then read to
> +	 * ensure the reset status is done. Invalidate the regmap cache since
> +	 * we're doing a hardware reset.
> +	 */
> +	regcache_mark_dirty(st->map);
Sashiko has some comments here as well:
"
Because regcache_mark_dirty() only flags the cache as needing a sync but does
not clear the cached values, will regmap_update_bits() in this second
bus_setup() call silently skip the hardware writes?
The cache would still show the bits as set from the first bus_setup(), leaving
the hardware in its default reset state.
Would regcache_sync() or regcache_drop_region() be more appropriate here to
force the actual hardware writes?"

>  
> -	ret = regmap_read_poll_timeout(st->map, INV_ICM42607_REG_INT_STATUS,
> -				       val, val & INV_ICM42607_INT_STATUS_RESET_DONE,
> -				       INV_ICM42607_RESET_TIME_MS * 100,
> -				       INV_ICM42607_RESET_TIME_MS * 1000);
> -	if (ret)
> -		return dev_err_probe(dev, ret,
> -				     "reset error, reset done bit not set\n");
> +	fsleep(INV_ICM42607_RESET_TIME_MS * 1000);
>  
>  	ret = bus_setup(st);
>  	if (ret)
>  		return ret;
>  
> +	ret = regmap_read(st->map, INV_ICM42607_REG_INT_STATUS, &val);
> +	if (ret || (!(val & INV_ICM42607_INT_STATUS_RESET_DONE)))
I agree with sashiko here. If you get ret you should return it.

	if (ret)
		return dev_err_probe(dev, ret, "reset error\n");
	if (!(val & INV...))
		return dev_err_probe(dev, -EIO, "reset done bit not set\n");
or something like that.
 
> +		return dev_err_probe(dev, -EIO,
> +				     "reset error, reset done bit not set\n");
> +
>  	ret = regmap_set_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
>  			      INV_ICM42607_INTF_CONFIG0_SENSOR_DATA_ENDIAN);
>  	if (ret)

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> new file mode 100644
> index 000000000000..49438fa6f867
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_spi.c
> @@ -0,0 +1,102 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/device.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/property.h>
> +#include <linux/regmap.h>
> +#include <linux/spi/spi.h>
> +
> +#include "inv_icm42607.h"
> +
> +static int inv_icm42607_spi_bus_setup(struct inv_icm42607_state *st)
> +{
> +	const struct device *dev = regmap_get_device(st->map);
> +	const struct spi_device *spi = to_spi_device(dev);
> +	unsigned int val;
> +	int ret;
> +
> +	if (spi->mode & SPI_3WIRE)
> +		ret = regmap_clear_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
> +					INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);
> +	else
> +		ret = regmap_set_bits(st->map, INV_ICM42607_REG_DEVICE_CONFIG,
> +				      INV_ICM42607_DEVICE_CONFIG_SPI_AP_4WIRE);

I'm inclined to agree with sashiko on these.  You need a 'write' not an update
as the read in a read / modify / write cycle will fail if you are in the wrong mode.
https://sashiko.dev/#/patchset/20260515130018.237378-1-macroalpha82%40gmail.com

Given we are near merging this it can be helpful that if you disagree with sashiko's
comments reply to say so and why.


> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_clear_bits(st->map, INV_ICM42607_REG_INTF_CONFIG1,
> +				INV_ICM42607_INTF_CONFIG1_I3C_DDR_EN |
> +				INV_ICM42607_INTF_CONFIG1_I3C_SDR_EN);
> +	if (ret)
> +		return ret;
> +
> +	val = FIELD_PREP(INV_ICM42607_DRIVE_CONFIG3_SPI_MASK,
> +			 INV_ICM42607_SLEW_RATE_INF_2NS);
> +	ret = regmap_update_bits(st->map, INV_ICM42607_REG_DRIVE_CONFIG3,
> +				 INV_ICM42607_DRIVE_CONFIG3_SPI_MASK, val);
> +	if (ret)
> +		return ret;
> +
> +	return regmap_update_bits(st->map, INV_ICM42607_REG_INTF_CONFIG0,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_MASK,
> +				  INV_ICM42607_INTF_CONFIG0_UI_SIFS_CFG_I2C_DIS);
> +}
> +
> +static int inv_icm42607_probe(struct spi_device *spi)
> +{
> +	const struct inv_icm42607_hw *hw;
> +	struct regmap *regmap;
> +
> +	hw = spi_get_device_match_data(spi);
> +	if (!hw)
> +		return dev_err_probe(&spi->dev, -ENODEV,
> +				     "Failed to get SPI data\n");
> +
> +	regmap = devm_regmap_init_spi(spi, &inv_icm42607_regmap_config);
> +	if (IS_ERR(regmap))
> +		return dev_err_probe(&spi->dev, PTR_ERR(regmap),
> +				     "Failed to register spi regmap %ld\n",
> +				     PTR_ERR(regmap));
> +
> +	return inv_icm42607_core_probe(regmap, hw,
> +				       inv_icm42607_spi_bus_setup);

Fits on one line under 80 chars.  Have another scan through the whole
series for places where edits during revisions might now allow for
less wrapping.

> +}

