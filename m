Return-Path: <devicetree+bounces-310389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JYk1D52cKmpktgMAu9opvQ
	(envelope-from <devicetree+bounces-310389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:31:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BFE67158D
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 13:31:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=S6jquNgb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310389-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-310389-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4F1C4302924F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 11:31:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1C133E6DCE;
	Thu, 11 Jun 2026 11:31:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 677DF3E5EF7;
	Thu, 11 Jun 2026 11:31:14 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781177475; cv=none; b=JhShpIXtZl8t9OR1VgKskgNxU80T/ag6wp/L9xHZc5ZzbBSVcbr43NHNtiMj/2L9ogQJWu0APJ/z8EECbMc8gbC+py1Q1bO1GOMcD5BYsc06nQRxa4Fd2iSY+5GUbiWi7haAvbcql5qDYz81OXHyiqRs0FbdYuckJcmDFLIAWOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781177475; c=relaxed/simple;
	bh=GML30N95M7QdExIZP1VZdmbf5T2+Yo45w15hzNP1Czc=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=rVJTfR4ZKpHPtRkbe2eIgNM+VpTKHZguUPYMNw7ufnl5Keog7QK2FdJe1cJwpvMpLzZEu7gkw9ZOxtaoyfsuwpBOgVrk0TB/zOE5mA33sPhxTK4nnvJukkxaZYV2Sq5SwJxT6dDvNbyjQ9jyR/WilR3QEF7d09b0LCve6CO6Hy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S6jquNgb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A70111F00893;
	Thu, 11 Jun 2026 11:31:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781177474;
	bh=gvVGS7HepZfoFKbsri39B0EmW/0inIjuvnnUqe6DqVI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References;
	b=S6jquNgbVdPuvewsDdweLdY/y/4LkJhpQuSgCc5hvvGbcXSIwHMYIo4klTYa7xa18
	 Dw5kaip8ufwOdzTYJSaMIYKOMtDSAQ6/XVae9Lp1AfLCleuPPjct77QUcO3dxCuDDC
	 /CGLcSQlX3+4MBW1h6VFQ9bhy9Xe8KhaEc1yN7ft+vKlRNmw+bSEGEKXN4kpou5vLb
	 sXeN4b57aWA5LHOy3/0oWeXE7HFJV/Phbu1AsPePxG0+cBHM4EcATB9JTAFlPMAYob
	 fPhBBENTEym+Hdx0UWZzRTMw09SRus5aZcFkdN76z627Wr60wVzzzSsAG4eaWOhGCc
	 cSMek9L2E+fLA==
Date: Thu, 11 Jun 2026 12:31:03 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-iio@vger.kernel.org, andy@kernel.org, nuno.sa@analog.com,
 dlechner@baylibre.com, jean-baptiste.maneyrol@tdk.com,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 heiko@sntech.de, conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 andriy.shevchenko@intel.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH V11 7/9] iio: imu: inv_icm42607: Add Accelerometer for
 icm42607
Message-ID: <20260611123103.198353d3@jic23-huawei>
In-Reply-To: <20260610175455.19006-8-macroalpha82@gmail.com>
References: <20260610175455.19006-1-macroalpha82@gmail.com>
	<20260610175455.19006-8-macroalpha82@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:macroalpha82@gmail.com,m:linux-iio@vger.kernel.org,m:andy@kernel.org,m:nuno.sa@analog.com,m:dlechner@baylibre.com,m:jean-baptiste.maneyrol@tdk.com,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:heiko@sntech.de,m:conor+dt@kernel.org,m:krzk+dt@kernel.org,m:robh@kernel.org,m:andriy.shevchenko@intel.com,m:macromorgan@hotmail.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-310389-lists,devicetree=lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,analog.com,baylibre.com,tdk.com,lists.infradead.org,sntech.de,intel.com,hotmail.com];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 89BFE67158D

On Wed, 10 Jun 2026 12:54:51 -0500
Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add icm42607 accelerometer sensor for icm42607.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Minor things inline.

> diff --git a/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
> new file mode 100644
> index 000000000000..cb60bb5ecc14
> --- /dev/null
> +++ b/drivers/iio/imu/inv_icm42607/inv_icm42607_accel.c
> @@ -0,0 +1,379 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (C) 2026 InvenSense, Inc.
> + */
> +
> +#include <linux/iio/iio.h>
> +#include <linux/mutex.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
> +
> +#include "inv_icm42607.h"
> +#include "inv_icm42607_temp.h"
> +
> +#define INV_ICM42607_ACCEL_CHAN(_modifier, _index, _ext_info)		\
> +{									\
> +	.type = IIO_ACCEL,						\
> +	.modified = 1,							\
> +	.channel2 = _modifier,						\
> +	.info_mask_separate =						\
> +		BIT(IIO_CHAN_INFO_RAW),					\
> +	.info_mask_shared_by_type =					\
> +		BIT(IIO_CHAN_INFO_SCALE),				\
> +	.info_mask_shared_by_type_available =				\
> +		BIT(IIO_CHAN_INFO_SCALE),				\
> +	.info_mask_shared_by_all =					\
> +		BIT(IIO_CHAN_INFO_SAMP_FREQ),				\
> +	.info_mask_shared_by_all_available =				\
> +		BIT(IIO_CHAN_INFO_SAMP_FREQ),				\

See other comments on this is is 'all' and perhaps applies to temperature.
If it doesn't apply to temperature then it may need splitting up.

Little less clear cut for mount matrix, so I don't mind that one just

> +	.scan_index = _index,						\
> +	.scan_type = {							\
> +		.sign = 's',						\
> +		.realbits = 16,						\
> +		.storagebits = 16,					\
> +		.endianness = IIO_BE,					\
> +	},								\
> +	.ext_info = _ext_info,						\
> +}


> +static int inv_icm42607_accel_write_odr(struct iio_dev *indio_dev,
> +					int val, int val2)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	struct device *dev = regmap_get_device(st->map);
> +	unsigned int idx;
> +	struct inv_icm42607_sensor_conf conf = INV_ICM42607_SENSOR_CONF_INIT;
> +	int ret;
> +
> +	for (idx = 5; idx < ARRAY_SIZE(inv_icm42607_accel_odr); ++idx) {
> +		if (val == inv_icm42607_accel_odr[idx][0] &&
> +		    val2 == inv_icm42607_accel_odr[idx][1])
> +			break;
> +	}
> +	if (idx >= ARRAY_SIZE(inv_icm42607_accel_odr))
> +		return -EINVAL;
> +
> +	conf.odr = idx;
> +
> +	PM_RUNTIME_ACQUIRE_AUTOSUSPEND(dev, pm);
> +	ret = PM_RUNTIME_ACQUIRE_ERR(&pm);
> +	if (ret)
> +		return ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	ret = inv_icm42607_set_accel_conf(st, &conf, NULL);
> +	if (ret)
> +		return ret;
> +
> +	return 0;

If this isn't getting more complex later,
	return inv_...

> +}
> +
> +static int inv_icm42607_accel_read_raw(struct iio_dev *indio_dev,
> +				       struct iio_chan_spec const *chan,
> +				       int *val, int *val2, long mask)
> +{
> +	struct inv_icm42607_state *st = iio_device_get_drvdata(indio_dev);
> +	s16 data;
> +	int ret;
> +
> +	switch (chan->type) {
> +	case IIO_ACCEL:
> +		break;
> +	case IIO_TEMP:
> +		return inv_icm42607_temp_read_raw(indio_dev, chan, val, val2, mask);

I commented on this in previous patch, but once the shared_by_all is
added to the temp channel, this needs modifying to ensure we only call the
temp handler for cases that aren't shared_by_all.

> +	default:
> +		return -EINVAL;
> +	}
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW:
> +		if (!iio_device_claim_direct(indio_dev))
> +			return -EBUSY;

As below - drop these mode claims as for now there is only one mode.

> +		ret = inv_icm42607_accel_read_sensor(indio_dev, chan, &data);
> +		iio_device_release_direct(indio_dev);
> +		if (ret)
> +			return ret;
> +		*val = data;
> +		return IIO_VAL_INT;
> +	case IIO_CHAN_INFO_SCALE:
> +		return inv_icm42607_accel_read_scale(indio_dev, val, val2);
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		return inv_icm42607_accel_read_odr(st, val, val2);
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int inv_icm42607_accel_read_avail(struct iio_dev *indio_dev,
> +					 struct iio_chan_spec const *chan,
> +						 const int **vals,
> +					 int *type, int *length, long mask)
> +{
> +	if (chan->type != IIO_ACCEL)
> +		return -EINVAL;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SCALE:
> +		*vals = (const int *)inv_icm42607_accel_scale_nano;
> +		*type = IIO_VAL_INT_PLUS_NANO;
> +		*length = ARRAY_SIZE(inv_icm42607_accel_scale_nano) * 2;
> +		return IIO_AVAIL_LIST;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		*vals = (const int *)inv_icm42607_accel_odr[5];
> +		*type = IIO_VAL_INT_PLUS_MICRO;
> +		*length = (ARRAY_SIZE(inv_icm42607_accel_odr) - 5) * 2;
> +		return IIO_AVAIL_LIST;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int inv_icm42607_accel_write_raw(struct iio_dev *indio_dev,
> +					struct iio_chan_spec const *chan,
> +					int val, int val2, long mask)
> +{
> +	int ret;
> +
> +	if (chan->type != IIO_ACCEL)
> +		return -EINVAL;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SCALE:
> +		if (!iio_device_claim_direct(indio_dev))

As in previous, this stuff doesn't belong in a driver that is always in direct
mode.

> +			return -EBUSY;
> +		ret = inv_icm42607_accel_write_scale(indio_dev, val, val2);
> +		iio_device_release_direct(indio_dev);
> +		return ret;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		return inv_icm42607_accel_write_odr(indio_dev, val, val2);
> +	default:
> +		return -EINVAL;
> +	}

> +struct iio_dev *inv_icm42607_accel_init(struct inv_icm42607_state *st)
> +{
> +	struct device *dev = regmap_get_device(st->map);
> +	const char *name;

where no other strong reason for ordering, reverse xmas tree.

> +	struct inv_icm42607_sensor_state *accel_st;
> +	struct iio_dev *indio_dev;
> +	int ret;
> +
> +	name = devm_kasprintf(dev, GFP_KERNEL, "%s-accel", st->hw->name);
> +	if (!name)
> +		return ERR_PTR(-ENOMEM);
> +
> +	indio_dev = devm_iio_device_alloc(dev, sizeof(*accel_st));
> +	if (!indio_dev)
> +		return ERR_PTR(-ENOMEM);
> +	accel_st = iio_priv(indio_dev);
> +
> +	accel_st->power_mode = INV_ICM42607_SENSOR_MODE_LOW_NOISE;
> +	accel_st->filter = INV_ICM42607_FILTER_BW_73HZ;
> +
> +	iio_device_set_drvdata(indio_dev, st);
> +	indio_dev->name = name;
> +	indio_dev->info = &inv_icm42607_accel_info;
> +	indio_dev->modes = INDIO_DIRECT_MODE;
> +	indio_dev->channels = inv_icm42607_accel_channels;
> +	indio_dev->num_channels = ARRAY_SIZE(inv_icm42607_accel_channels);
> +
> +	ret = devm_iio_device_register(dev, indio_dev);
> +	if (ret)
> +		return ERR_PTR(ret);
> +
> +	return indio_dev;
> +}


