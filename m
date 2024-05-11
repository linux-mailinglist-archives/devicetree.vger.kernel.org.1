Return-Path: <devicetree+bounces-66460-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 95BF68C31B5
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 15:55:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4887F281764
	for <lists+devicetree@lfdr.de>; Sat, 11 May 2024 13:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A74415337C;
	Sat, 11 May 2024 13:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRTBIqyV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7965C6FC6;
	Sat, 11 May 2024 13:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715435698; cv=none; b=F2IwlQIL7VzbF3/8tz5B0qziTejuk7ngc7qcKkDMEXbs/v9qBsFNL69KOBTB4MviCoJ3RS+L2otd1ThDHU9M4cP3ucJ9s8mhNW7LT9HEEhKGNvIzLx31YhK/Mye+jI4IU1a0VTHeZxANAWeGZb65Syk4K/6sNBARffLCyyztOlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715435698; c=relaxed/simple;
	bh=gCsj/a1PfXpm0RqEqY4E1vBScl0XIwizJeX2rxSG5Lo=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Uz/vHSQF+cyP1aWBUrWMQU3pYT5R6PT7Q1NxR/CwuvurUdNG/sJGlTakNOBWGDmBIhAwkifJnbXmS2lLE5qB2Iopv2wp8NK+EqT0wFtTLuPQTW+aPQay2qp+5mJK8sM1N8PviDJIzZ8fmE/oo9QcG+b1XM2IRl+3g1iu8VFtd4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRTBIqyV; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97A02C2BBFC;
	Sat, 11 May 2024 13:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715435698;
	bh=gCsj/a1PfXpm0RqEqY4E1vBScl0XIwizJeX2rxSG5Lo=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=YRTBIqyVnIhB2CDR2zSoPjrQ8ZAeF5dSqjYxFxKzHXLRQHXTcM1+ohzqHT0mhCdBW
	 ksixMeNFmgOp+QCQA0e9drLU9qsDe3LH+o1AukCLiguYiOQ2fCCKOhcTf+1Afch7FY
	 7UjiS6HdC2p3mEySAEqGMFARfQdsI9DnRIdDKcxuJ313jfUDwaiBebf0C3Mfvwd61J
	 UABQFyuIVNT3+HPXiviYDNrajw3B1KT248gOdrKWuIG2xEK+PZNy8rO6brtzSak6rP
	 L3zGtRREC/SjCBdGtUd6RgPrXboNCrdiCutpjGH2TL79ZiQ6ZRASPkVexLMo3KBVj1
	 mb2p4Sy/Im5tQ==
Date: Sat, 11 May 2024 14:54:47 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Ramona Gradinariu <ramona.bolboaca13@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, conor+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, robh@kernel.org, nuno.sa@analog.com
Subject: Re: [PATCH v2 8/8] drivers: iio: imu: Add support for adis1657x
 family
Message-ID: <20240511145447.68de0f59@jic23-huawei>
In-Reply-To: <20240508131310.880479-9-ramona.bolboaca13@gmail.com>
References: <20240508131310.880479-1-ramona.bolboaca13@gmail.com>
	<20240508131310.880479-9-ramona.bolboaca13@gmail.com>
X-Mailer: Claws Mail 4.2.0 (GTK 3.24.41; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Wed,  8 May 2024 16:13:10 +0300
Ramona Gradinariu <ramona.bolboaca13@gmail.com> wrote:

> Add support for ADIS1657X family devices in already exiting ADIS16475
> driver.
> 
> Signed-off-by: Ramona Gradinariu <ramona.bolboaca13@gmail.com>
Hi Ramona

A few things in here that I put in the v1 review that I did earlier today
(so way after you sent this out!) Please check that though as I may
not have repeated all comments.

Also, a question on races.

Jonathan

> ---
> changes in v2:
>  - various fields renaming
>  - added inline value setting instead of using extra variable
>  - use min_t function instead of if condition followed by assignment
>  - added new chip info structure for devices which support fifo
>  - rewrote the !! operations to increase readability
>  - added missing entries for adis1657x devices in adis16475_ids
>  drivers/iio/imu/adis16475.c | 552 +++++++++++++++++++++++++++++++++---
>  1 file changed, 510 insertions(+), 42 deletions(-)
> 
> diff --git a/drivers/iio/imu/adis16475.c b/drivers/iio/imu/adis16475.c
> index c589f214259b..706ae2611b8f 100644
> --- a/drivers/iio/imu/adis16475.c
> +++ b/drivers/iio/imu/adis16475.c
> @@ -14,6 +14,7 @@
>  #include <linux/iio/buffer.h>
>  #include <linux/iio/iio.h>
>  #include <linux/iio/imu/adis.h>
> +#include <linux/iio/sysfs.h>
>  #include <linux/iio/trigger_consumer.h>
>  #include <linux/irq.h>
>  #include <linux/lcm.h>
> @@ -52,6 +53,8 @@
>  				FIELD_PREP(ADIS16475_MSG_CTRL_DR_POL_MASK, x)
>  #define ADIS16475_SYNC_MODE_MASK	GENMASK(4, 2)
>  #define ADIS16475_SYNC_MODE(x)		FIELD_PREP(ADIS16475_SYNC_MODE_MASK, x)
> +#define ADIS16575_SYNC_4KHZ_MASK	BIT(11)
> +#define ADIS16575_SYNC_4KHZ(x)		FIELD_PREP(ADIS16575_SYNC_4KHZ_MASK, x)
>  #define ADIS16475_REG_UP_SCALE		0x62
>  #define ADIS16475_REG_DEC_RATE		0x64
>  #define ADIS16475_REG_GLOB_CMD		0x68
> @@ -65,15 +68,32 @@
>  #define ADIS16500_BURST32_MASK		BIT(9)
>  #define ADIS16500_BURST32(x)		FIELD_PREP(ADIS16500_BURST32_MASK, x)
>  /* number of data elements in burst mode */
> -#define ADIS16475_BURST32_MAX_DATA	32
> +#define ADIS16475_BURST32_MAX_DATA_NO_TS32	32
> +#define ADIS16575_BURST32_DATA_TS32		34
>  #define ADIS16475_BURST_MAX_DATA	20
>  #define ADIS16475_MAX_SCAN_DATA		20
>  /* spi max speed in brust mode */
>  #define ADIS16475_BURST_MAX_SPEED	1000000
> +#define ADIS16575_BURST_MAX_SPEED	8000000
>  #define ADIS16475_LSB_DEC_MASK		0
>  #define ADIS16475_LSB_FIR_MASK		1
>  #define ADIS16500_BURST_DATA_SEL_0_CHN_MASK	GENMASK(5, 0)
>  #define ADIS16500_BURST_DATA_SEL_1_CHN_MASK	GENMASK(12, 7)
> +#define ADIS16575_MAX_FIFO_WM		511
> +#define ADIS16475_REG_FIFO_CTRL		0x5A
> +#define ADIS16575_WM_LVL_MASK		GENMASK(15, 4)
> +#define ADIS16575_WM_LVL(x)		FIELD_PREP(ADIS16575_WM_LVL_MASK, x)
> +#define ADIS16575_WM_POL_MASK		BIT(3)
> +#define ADIS16575_WM_POL(x)		FIELD_PREP(ADIS16575_WM_POL_MASK, x)
> +#define ADIS16575_WM_EN_MASK		BIT(2)
> +#define ADIS16575_WM_EN(x)		FIELD_PREP(ADIS16575_WM_EN_MASK, x)
> +#define ADIS16575_OVERFLOW_MASK		BIT(1)
> +#define ADIS16575_STOP_ENQUEUE		FIELD_PREP(ADIS16575_OVERFLOW_MASK, 0)
> +#define ADIS16575_OVERWRITE_OLDEST	FIELD_PREP(ADIS16575_OVERFLOW_MASK, 1)
> +#define ADIS16575_FIFO_EN_MASK		BIT(0)
> +#define ADIS16575_FIFO_EN(x)		FIELD_PREP(ADIS16575_FIFO_EN_MASK, x)
> +#define ADIS16575_FIFO_FLUSH_CMD	BIT(5)
> +#define ADIS16575_REG_FIFO_CNT		0x3C
> 
>  enum {
>  	ADIS16475_SYNC_DIRECT = 1,
> @@ -95,6 +115,9 @@ struct adis16475_chip_info {
>  	const char *name;
>  #define ADIS16475_HAS_BURST32		BIT(0)
>  #define ADIS16475_HAS_BURST_DELTA_DATA	BIT(1)
> +#define ADIS16475_HAS_TIMESTAMP32	BIT(2)
> +#define ADIS16475_NEEDS_BURST_REQUEST	BIT(3)
> +#define ADIS16475_HAS_FIFO		BIT(4)
>  	const long flags;
>  	u32 num_channels;
>  	u32 gyro_max_val;
> @@ -116,6 +139,7 @@ struct adis16475 {
>  	bool burst32;
>  	unsigned long lsb_flag;
>  	u16 sync_mode;
> +	u16 fifo_watermark;
>  	/* Alignment needed for the timestamp */
>  	__be16 data[ADIS16475_MAX_SCAN_DATA] __aligned(8);
>  };
> @@ -442,6 +466,124 @@ static int adis16475_set_filter(struct adis16475 *st, const u32 filter)
>  	return 0;
>  }
> 
> +static ssize_t adis16475_get_fifo_enabled(struct device *dev,
> +					  struct device_attribute *attr,
> +					  char *buf)
> +{
> +	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> +	struct adis16475 *st = iio_priv(indio_dev);
> +	int ret;
> +	u16 val;
> +
> +	ret = adis_read_reg_16(&st->adis, ADIS16475_REG_FIFO_CTRL, &val);
> +	if (ret)
> +		return ret;
> +
> +	return sysfs_emit(buf, "%d\n", (u16)FIELD_GET(ADIS16575_FIFO_EN_MASK, val));

Change the format to %lu an drop the cast.

> +}
> +
> +static ssize_t adis16475_get_fifo_watermark(struct device *dev,
> +					    struct device_attribute *attr,
> +					    char *buf)
> +{
> +	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> +	struct adis16475 *st = iio_priv(indio_dev);
> +	int ret;
> +	u16 val;
> +
> +	ret = adis_read_reg_16(&st->adis, ADIS16475_REG_FIFO_CTRL, &val);
> +	if (ret)
> +		return ret;
> +
> +	return sysfs_emit(buf, "%d\n", (u16)FIELD_GET(ADIS16575_WM_LVL_MASK, val) + 1);
As above.

> +}
> +
> +static ssize_t hwfifo_watermark_min_show(struct device *dev,
> +					 struct device_attribute *attr,
> +					 char *buf)
> +{
> +	return sysfs_emit(buf, "%s\n", "1");
	return sysfs_emit(buf, "1\n");
or
	return sysfs_emit(buf, "%u\n", 1);

> +}
> +
> +static ssize_t hwfifo_watermark_max_show(struct device *dev,
> +					 struct device_attribute *attr,
> +					 char *buf)
> +{
> +	return sysfs_emit(buf, "%s\n", __stringify(ADIS16575_MAX_FIFO_WM));

Why use macro when you can just use %ul?

> +}
> +
> +static IIO_DEVICE_ATTR_RO(hwfifo_watermark_min, 0);
> +static IIO_DEVICE_ATTR_RO(hwfifo_watermark_max, 0);
> +static IIO_DEVICE_ATTR(hwfifo_watermark, 0444,
> +		       adis16475_get_fifo_watermark, NULL, 0);
> +static IIO_DEVICE_ATTR(hwfifo_enabled, 0444,
> +		       adis16475_get_fifo_enabled, NULL, 0);
> +
> +static const struct attribute *adis16475_fifo_attributes[] = {
> +	&iio_dev_attr_hwfifo_watermark_min.dev_attr.attr,
> +	&iio_dev_attr_hwfifo_watermark_max.dev_attr.attr,
> +	&iio_dev_attr_hwfifo_watermark.dev_attr.attr,
> +	&iio_dev_attr_hwfifo_enabled.dev_attr.attr,
> +	NULL
> +};
> +
> +static int adis16475_buffer_postenable(struct iio_dev *indio_dev)
> +{
> +	struct adis16475 *st = iio_priv(indio_dev);
> +	struct adis *adis = &st->adis;
> +
> +	return adis_update_bits(adis, ADIS16475_REG_FIFO_CTRL,
> +				ADIS16575_FIFO_EN_MASK, (u16)ADIS16575_FIFO_EN(1));
> +}
> +
> +static int adis16475_buffer_postdisable(struct iio_dev *indio_dev)
> +{
> +	struct adis16475 *st = iio_priv(indio_dev);
> +	struct adis *adis = &st->adis;
> +	int ret;
> +
> +	adis_dev_lock(&st->adis);
> +
> +	ret = __adis_update_bits(adis, ADIS16475_REG_FIFO_CTRL,
> +				 ADIS16575_FIFO_EN_MASK, (u16)ADIS16575_FIFO_EN(0));
> +	if (ret)
> +		goto unlock;
> +
> +	ret = __adis_write_reg_16(adis, ADIS16475_REG_GLOB_CMD,
> +				  ADIS16575_FIFO_FLUSH_CMD);
> +
> +unlock:
> +	adis_dev_unlock(&st->adis);
> +	return ret;
> +}
> +
> +static const struct iio_buffer_setup_ops adis16475_buffer_ops = {
> +	.postenable = adis16475_buffer_postenable,
> +	.postdisable = adis16475_buffer_postdisable,
> +};
> +
> +static int adis16475_set_watermark(struct iio_dev *indio_dev, unsigned int val)
> +{
> +	struct adis16475 *st  = iio_priv(indio_dev);
> +	int ret;
> +	u16 wm_lvl;
> +
> +	adis_dev_lock(&st->adis);
> +
> +	val = min_t(unsigned int, val, ADIS16575_MAX_FIFO_WM);
> +
> +	wm_lvl = ADIS16575_WM_LVL(val - 1);
> +	ret = __adis_update_bits(&st->adis, ADIS16475_REG_FIFO_CTRL, ADIS16575_WM_LVL_MASK, wm_lvl);
> +	if (ret)
> +		goto unlock;
> +
> +	st->fifo_watermark = val;
> +
> +unlock:
> +	adis_dev_unlock(&st->adis);
> +	return ret;
> +}
> +
>  static const u32 adis16475_calib_regs[] = {
>  	[ADIS16475_SCAN_GYRO_X] = ADIS16475_REG_X_GYRO_BIAS_L,
>  	[ADIS16475_SCAN_GYRO_Y] = ADIS16475_REG_Y_GYRO_BIAS_L,
> @@ -673,6 +815,12 @@ enum adis16475_variant {
>  	ADIS16507_1,
>  	ADIS16507_2,
>  	ADIS16507_3,
> +	ADIS16575_2,
> +	ADIS16575_3,
> +	ADIS16576_2,
> +	ADIS16576_3,
> +	ADIS16577_2,
> +	ADIS16577_3,
>  };
> 
>  enum {
> @@ -730,6 +878,12 @@ static const struct adis16475_sync adis16475_sync_mode[] = {
>  	{ ADIS16475_SYNC_PULSE, 1000, 2100 },
>  };
> 
> +static const struct adis16475_sync adis16575_sync_mode[] = {
> +	{ ADIS16475_SYNC_OUTPUT },
> +	{ ADIS16475_SYNC_DIRECT, 1900, 4100 },
> +	{ ADIS16475_SYNC_SCALED, 1, 400 },
> +};
> +
>  static const struct adis_timeout adis16475_timeouts = {
>  	.reset_ms = 200,
>  	.sw_reset_ms = 200,
> @@ -759,7 +913,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.sync = adis16475_sync_mode,
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.adis_data = ADIS16475_DATA(16470, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16475_1] = {
> @@ -778,7 +932,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.sync = adis16475_sync_mode,
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.adis_data = ADIS16475_DATA(16475, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16475_2] = {
> @@ -797,7 +951,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.sync = adis16475_sync_mode,
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.adis_data = ADIS16475_DATA(16475, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16475_3] = {
> @@ -816,7 +970,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.sync = adis16475_sync_mode,
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.adis_data = ADIS16475_DATA(16475, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16477_1] = {
> @@ -836,7 +990,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16477, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16477_2] = {
> @@ -856,7 +1010,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16477, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16477_3] = {
> @@ -876,7 +1030,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16477, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16465_1] = {
> @@ -895,7 +1049,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.sync = adis16475_sync_mode,
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.adis_data = ADIS16475_DATA(16465, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16465_2] = {
> @@ -914,7 +1068,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.sync = adis16475_sync_mode,
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.adis_data = ADIS16475_DATA(16465, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16465_3] = {
> @@ -933,7 +1087,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.sync = adis16475_sync_mode,
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.adis_data = ADIS16475_DATA(16465, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16467_1] = {
> @@ -952,7 +1106,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.sync = adis16475_sync_mode,
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.adis_data = ADIS16475_DATA(16467, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16467_2] = {
> @@ -971,7 +1125,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.sync = adis16475_sync_mode,
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.adis_data = ADIS16475_DATA(16467, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16467_3] = {
> @@ -990,7 +1144,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.sync = adis16475_sync_mode,
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode),
>  		.adis_data = ADIS16475_DATA(16467, &adis16475_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16500] = {
> @@ -1011,7 +1165,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode) - 1,
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16500, &adis1650x_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16501] = {
> @@ -1032,7 +1186,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode) - 1,
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16501, &adis1650x_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16505_1] = {
> @@ -1053,7 +1207,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode) - 1,
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16505, &adis1650x_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16505_2] = {
> @@ -1074,7 +1228,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode) - 1,
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16505, &adis1650x_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16505_3] = {
> @@ -1095,7 +1249,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode) - 1,
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16505, &adis1650x_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16507_1] = {
> @@ -1116,7 +1270,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode) - 1,
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16507, &adis1650x_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16507_2] = {
> @@ -1137,7 +1291,7 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode) - 1,
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16507, &adis1650x_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
>  	[ADIS16507_3] = {
> @@ -1158,9 +1312,153 @@ static const struct adis16475_chip_info adis16475_chip_info[] = {
>  		.num_sync = ARRAY_SIZE(adis16475_sync_mode) - 1,
>  		.flags = ADIS16475_HAS_BURST32 | ADIS16475_HAS_BURST_DELTA_DATA,
>  		.adis_data = ADIS16475_DATA(16507, &adis1650x_timeouts,
> -					    ADIS16475_BURST32_MAX_DATA,
> +					    ADIS16475_BURST32_MAX_DATA_NO_TS32,
>  					    ADIS16475_BURST_MAX_SPEED),
>  	},
> +	[ADIS16575_2] = {
> +		.name = "adis16575-2",
> +		.num_channels = ARRAY_SIZE(adis16477_channels),
> +		.channels = adis16477_channels,
> +		.gyro_max_val = 1,
> +		.gyro_max_scale = IIO_RAD_TO_DEGREE(40 << 16),
> +		.accel_max_val = 8,
> +		.accel_max_scale = IIO_M_S_2_TO_G(32000 << 16),
> +		.temp_scale = 100,
> +		.deltang_max_val = IIO_DEGREE_TO_RAD(450),
> +		.deltvel_max_val = 100,
> +		.int_clk = 4000,
> +		.max_dec = 3999,
> +		.sync = adis16575_sync_mode,
> +		.num_sync = ARRAY_SIZE(adis16575_sync_mode),
> +		.flags = ADIS16475_HAS_BURST32 |
> +			 ADIS16475_HAS_BURST_DELTA_DATA |
> +			 ADIS16475_NEEDS_BURST_REQUEST |
> +			 ADIS16475_HAS_TIMESTAMP32 |
> +			 ADIS16475_HAS_FIFO,
> +		.adis_data = ADIS16475_DATA(16575, &adis16475_timeouts,
> +					    ADIS16575_BURST32_DATA_TS32,
> +					    ADIS16575_BURST_MAX_SPEED),
> +	},
> +	[ADIS16575_3] = {
> +		.name = "adis16575-3",
> +		.num_channels = ARRAY_SIZE(adis16477_channels),
> +		.channels = adis16477_channels,
> +		.gyro_max_val = 1,
> +		.gyro_max_scale = IIO_RAD_TO_DEGREE(10 << 16),
> +		.accel_max_val = 8,
> +		.accel_max_scale = IIO_M_S_2_TO_G(32000 << 16),
> +		.temp_scale = 100,
> +		.deltang_max_val = IIO_DEGREE_TO_RAD(2000),
> +		.deltvel_max_val = 100,
> +		.int_clk = 4000,
> +		.max_dec = 3999,
> +		.sync = adis16575_sync_mode,
> +		.num_sync = ARRAY_SIZE(adis16575_sync_mode),
> +		.flags = ADIS16475_HAS_BURST32 |
> +			 ADIS16475_HAS_BURST_DELTA_DATA |
> +			 ADIS16475_NEEDS_BURST_REQUEST |
> +			 ADIS16475_HAS_TIMESTAMP32 |
> +			 ADIS16475_HAS_FIFO,
> +		.adis_data = ADIS16475_DATA(16575, &adis16475_timeouts,
> +					    ADIS16575_BURST32_DATA_TS32,
> +					    ADIS16575_BURST_MAX_SPEED),
> +	},
> +	[ADIS16576_2] = {
> +		.name = "adis16576-2",
> +		.num_channels = ARRAY_SIZE(adis16477_channels),
> +		.channels = adis16477_channels,
> +		.gyro_max_val = 1,
> +		.gyro_max_scale = IIO_RAD_TO_DEGREE(40 << 16),
> +		.accel_max_val = 40,
> +		.accel_max_scale = IIO_M_S_2_TO_G(32000 << 16),
> +		.temp_scale = 100,
> +		.deltang_max_val = IIO_DEGREE_TO_RAD(450),
> +		.deltvel_max_val = 125,
> +		.int_clk = 4000,
> +		.max_dec = 3999,
> +		.sync = adis16575_sync_mode,
> +		.num_sync = ARRAY_SIZE(adis16575_sync_mode),
> +		.flags = ADIS16475_HAS_BURST32 |
> +			 ADIS16475_HAS_BURST_DELTA_DATA |
> +			 ADIS16475_NEEDS_BURST_REQUEST |
> +			 ADIS16475_HAS_TIMESTAMP32 |
> +			 ADIS16475_HAS_FIFO,
> +		.adis_data = ADIS16475_DATA(16576, &adis16475_timeouts,
> +					    ADIS16575_BURST32_DATA_TS32,
> +					    ADIS16575_BURST_MAX_SPEED),
> +	},
> +	[ADIS16576_3] = {
> +		.name = "adis16576-3",
> +		.num_channels = ARRAY_SIZE(adis16477_channels),
> +		.channels = adis16477_channels,
> +		.gyro_max_val = 1,
> +		.gyro_max_scale = IIO_RAD_TO_DEGREE(10 << 16),
> +		.accel_max_val = 40,
> +		.accel_max_scale = IIO_M_S_2_TO_G(32000 << 16),
> +		.temp_scale = 100,
> +		.deltang_max_val = IIO_DEGREE_TO_RAD(2000),
> +		.deltvel_max_val = 125,
> +		.int_clk = 4000,
> +		.max_dec = 3999,
> +		.sync = adis16575_sync_mode,
> +		.num_sync = ARRAY_SIZE(adis16575_sync_mode),
> +		.flags = ADIS16475_HAS_BURST32 |
> +			 ADIS16475_HAS_BURST_DELTA_DATA |
> +			 ADIS16475_NEEDS_BURST_REQUEST |
> +			 ADIS16475_HAS_TIMESTAMP32 |
> +			 ADIS16475_HAS_FIFO,
> +		.adis_data = ADIS16475_DATA(16576, &adis16475_timeouts,
> +					    ADIS16575_BURST32_DATA_TS32,
> +					    ADIS16575_BURST_MAX_SPEED),
> +	},
> +	[ADIS16577_2] = {
> +		.name = "adis16577-2",
> +		.num_channels = ARRAY_SIZE(adis16477_channels),
> +		.channels = adis16477_channels,
> +		.gyro_max_val = 1,
> +		.gyro_max_scale = IIO_RAD_TO_DEGREE(40 << 16),
> +		.accel_max_val = 40,
> +		.accel_max_scale = IIO_M_S_2_TO_G(32000 << 16),
> +		.temp_scale = 100,
> +		.deltang_max_val = IIO_DEGREE_TO_RAD(450),
> +		.deltvel_max_val = 400,
> +		.int_clk = 4000,
> +		.max_dec = 3999,
> +		.sync = adis16575_sync_mode,
> +		.num_sync = ARRAY_SIZE(adis16575_sync_mode),
> +		.flags = ADIS16475_HAS_BURST32 |
> +			 ADIS16475_HAS_BURST_DELTA_DATA |
> +			 ADIS16475_NEEDS_BURST_REQUEST |
> +			 ADIS16475_HAS_TIMESTAMP32 |
> +			 ADIS16475_HAS_FIFO,
> +		.adis_data = ADIS16475_DATA(16577, &adis16475_timeouts,
> +					    ADIS16575_BURST32_DATA_TS32,
> +					    ADIS16575_BURST_MAX_SPEED),
> +	},
> +	[ADIS16577_3] = {
> +		.name = "adis16577-3",
> +		.num_channels = ARRAY_SIZE(adis16477_channels),
> +		.channels = adis16477_channels,
> +		.gyro_max_val = 1,
> +		.gyro_max_scale = IIO_RAD_TO_DEGREE(10 << 16),
> +		.accel_max_val = 40,
> +		.accel_max_scale = IIO_M_S_2_TO_G(32000 << 16),
> +		.temp_scale = 100,
> +		.deltang_max_val = IIO_DEGREE_TO_RAD(2000),
> +		.deltvel_max_val = 400,
> +		.int_clk = 4000,
> +		.max_dec = 3999,
> +		.sync = adis16575_sync_mode,
> +		.num_sync = ARRAY_SIZE(adis16575_sync_mode),
> +		.flags = ADIS16475_HAS_BURST32 |
> +			 ADIS16475_HAS_BURST_DELTA_DATA |
> +			 ADIS16475_NEEDS_BURST_REQUEST |
> +			 ADIS16475_HAS_TIMESTAMP32 |
> +			 ADIS16475_HAS_FIFO,
> +		.adis_data = ADIS16475_DATA(16577, &adis16475_timeouts,
> +					    ADIS16575_BURST32_DATA_TS32,
> +					    ADIS16575_BURST_MAX_SPEED),
> +	},
>  };
> 
>  static int adis16475_update_scan_mode(struct iio_dev *indio_dev,
> @@ -1195,15 +1493,19 @@ static const struct iio_info adis16475_info = {
>  	.debugfs_reg_access = adis_debugfs_reg_access,
>  };
> 
> +static const struct iio_info adis16575_info = {
> +	.read_raw = &adis16475_read_raw,
> +	.write_raw = &adis16475_write_raw,
> +	.update_scan_mode = adis16475_update_scan_mode,
> +	.debugfs_reg_access = adis_debugfs_reg_access,
> +	.hwfifo_set_watermark = adis16475_set_watermark,
> +};
> +
>  static bool adis16475_validate_crc(const u8 *buffer, u16 crc,
> -				   const bool burst32)
> +				   u16 burst_size, u16 start_idx)
>  {
>  	int i;
> -	/* extra 6 elements for low gyro and accel */
> -	const u16 sz = burst32 ? ADIS16475_BURST32_MAX_DATA :
> -		ADIS16475_BURST_MAX_DATA;
> -
> -	for (i = 0; i < sz - 2; i++)
> +	for (i = start_idx; i < burst_size - 2; i++)
>  		crc -= buffer[i];
> 
>  	return crc == 0;
> @@ -1213,10 +1515,14 @@ static void adis16475_burst32_check(struct adis16475 *st)
>  {
>  	int ret;
>  	struct adis *adis = &st->adis;
> +	u8 timestamp32 = 0;
> 
>  	if (!(st->info->flags & ADIS16475_HAS_BURST32))
>  		return;
> 
> +	if (st->info->flags & ADIS16475_HAS_TIMESTAMP32)
> +		timestamp32 = 1;
> +
>  	if (st->lsb_flag && !st->burst32) {
>  		const u16 en = ADIS16500_BURST32(1);
> 
> @@ -1230,9 +1536,12 @@ static void adis16475_burst32_check(struct adis16475 *st)
>  		/*
>  		 * In 32-bit mode we need extra 2 bytes for all gyro
>  		 * and accel channels.
> +		 * If the device has 32-bit timestamp value we need 2 extra
> +		 * bytes for it.
>  		 */
> -		adis->burst_extra_len = 6 * sizeof(u16);
> -		adis->xfer[1].len += 6 * sizeof(u16);
> +		adis->burst_extra_len = (6 + timestamp32) * sizeof(u16);
> +		adis->xfer[1].len += (6 + timestamp32) * sizeof(u16);
> +
>  		dev_dbg(&adis->spi->dev, "Enable burst32 mode, xfer:%d",
>  			adis->xfer[1].len);
> 
> @@ -1248,7 +1557,7 @@ static void adis16475_burst32_check(struct adis16475 *st)
> 
>  		/* Remove the extra bits */
>  		adis->burst_extra_len = 0;
> -		adis->xfer[1].len -= 6 * sizeof(u16);
> +		adis->xfer[1].len -= (6 + timestamp32) * sizeof(u16);
>  		dev_dbg(&adis->spi->dev, "Disable burst32 mode, xfer:%d\n",
>  			adis->xfer[1].len);
>  	}
> @@ -1263,20 +1572,30 @@ static int adis16475_push_single_sample(struct iio_poll_func *pf)
>  	__be16 *buffer;
>  	u16 crc;
>  	bool valid;
> +	u8 crc_offset = 9;
> +	u16 burst_size = ADIS16475_BURST_MAX_DATA;
> +	u16 start_idx = (st->info->flags & ADIS16475_HAS_TIMESTAMP32) ? 2 : 0;
> +
>  	/* offset until the first element after gyro and accel */
>  	const u8 offset = st->burst32 ? 13 : 7;
> 
> +	if (st->burst32) {
> +		crc_offset = (st->info->flags & ADIS16475_HAS_TIMESTAMP32) ? 16 : 15;
> +		burst_size = (st->info->flags & ADIS16475_HAS_TIMESTAMP32) ?
> +			     ADIS16575_BURST32_DATA_TS32 : ADIS16475_BURST32_MAX_DATA_NO_TS32;
> +	}
> +
>  	ret = spi_sync(adis->spi, &adis->msg);
>  	if (ret)
> -		goto check_burst32;
> +		return ret;
> 
>  	buffer = adis->buffer;
> 
> -	crc = be16_to_cpu(buffer[offset + 2]);
> -	valid = adis16475_validate_crc(adis->buffer, crc, st->burst32);
> +	crc = be16_to_cpu(buffer[crc_offset]);
> +	valid = adis16475_validate_crc(adis->buffer, crc, burst_size, start_idx);
>  	if (!valid) {
>  		dev_err(&adis->spi->dev, "Invalid crc\n");
> -		goto check_burst32;
> +		return ret;
>  	}
> 
>  	for_each_set_bit(bit, indio_dev->active_scan_mask,
> @@ -1337,22 +1656,113 @@ static int adis16475_push_single_sample(struct iio_poll_func *pf)
>  	}
> 
>  	iio_push_to_buffers_with_timestamp(indio_dev, st->data, pf->timestamp);
> -check_burst32:
> +
> +	return 0;
> +}
> +
> +static irqreturn_t adis16475_trigger_handler(int irq, void *p)
> +{
> +	struct iio_poll_func *pf = p;
> +	struct iio_dev *indio_dev = pf->indio_dev;
> +	struct adis16475 *st = iio_priv(indio_dev);
> +
> +	adis16475_push_single_sample(pf);
>  	/*
>  	 * We only check the burst mode at the end of the current capture since
>  	 * it takes a full data ready cycle for the device to update the burst
>  	 * array.
>  	 */
>  	adis16475_burst32_check(st);
> -	return ret;
> +
> +	iio_trigger_notify_done(indio_dev->trig);
> +
> +	return IRQ_HANDLED;
>  }
> 
> -static irqreturn_t adis16475_trigger_handler(int irq, void *p)
> +static int adis16575_custom_burst_read(struct iio_poll_func *pf, u8 burst_req)
> +{
> +	struct iio_dev *indio_dev = pf->indio_dev;
> +	struct adis16475 *st = iio_priv(indio_dev);
> +	struct adis *adis = &st->adis;
> +	unsigned int burst_max_length;
> +	u8 *tx;
> +
> +	if (adis->data->burst_max_len)
> +		burst_max_length = adis->data->burst_max_len;
> +	else
> +		burst_max_length = adis->data->burst_len + adis->burst_extra_len;
> +
> +	tx = adis->buffer + burst_max_length;
> +	tx[0] = ADIS_READ_REG(burst_req);
As in v1 discussion, I'd like it to be more apparent that this
modification affects both cases. Perhaps wrap it up in a function call
adis16475_update_msg_for_burst()
or something like that.

> +
> +	if (burst_req)
> +		return spi_sync(adis->spi, &adis->msg);
> +
> +	return adis16475_push_single_sample(pf);
> +}
> +
> +/*
> + * This handler is meant to be used for devices which support burst readings
> + * from FIFO (namely devices from adis1657x family).
> + * In order to pop the FIFO the 0x68 0x00 FIFO pop burst request has to be sent.
> + * If the previous device command was not a FIFO pop burst request, the FIFO pop
> + * burst request will simply pop the FIFO without returning valid data.
> + * For the nth consecutive burst request, the

tidy up the line warping to be consistent.

> + * device will send the data popped with the (n-1)th consecutive burst request.
> + * In order to read the data which was popped previously, without popping the FIFO,
> + * the 0x00 0x00 burst request has to be sent.
> + * If after a 0x68 0x00 FIFO pop burst request, there is any other device access
> + * different from a 0x68 0x00 or a 0x00 0x00 burst request, the FIFO data popped
> + * previously will be lost.
> + */
> +static irqreturn_t adis16475_trigger_handler_with_fifo(int irq, void *p)
>  {
>  	struct iio_poll_func *pf = p;
>  	struct iio_dev *indio_dev = pf->indio_dev;
> +	struct adis16475 *st = iio_priv(indio_dev);
> +	struct adis *adis = &st->adis;
> +	int ret;
> +	u16 fifo_cnt, i;
> 
> -	adis16475_push_single_sample(pf);
> +	adis_dev_lock(&st->adis);
> +
> +	ret = __adis_read_reg_16(adis, ADIS16575_REG_FIFO_CNT, &fifo_cnt);
> +	if (ret)
> +		goto unlock;
> +
> +	/*
> +	 * If no sample is available, nothing can be read. This can happen if
> +	 * a the used trigger has a higher frequency than the selected sample rate.
> +	 */
> +	if (!fifo_cnt)
> +		goto unlock;
> +
> +	/*
> +	 * First burst request - FIFO pop: popped data will be returned in the
> +	 * next burst request.
> +	 */
> +	ret = adis16575_custom_burst_read(pf, adis->data->burst_reg_cmd);
> +	if (ret)
> +		goto unlock;
> +
> +	for (i = 0; i < fifo_cnt - 1; i++) {
> +		ret = adis16475_push_single_sample(pf);
> +		if (ret)
> +			goto unlock;
> +	}
> +
My paranoid instincts for potential race conditions kick in.
Is this one of those annoying devices where the fifo interrupt will only occur
again if we successfully read enough data to get below the threshold?
Snag with no public datasheet is I can't just look it up!
If it's a level interrupt this won't be a problem.

If so the race is the following.
1. Interrupt happens, we read the number of entries in fifo.
2. We read out the fifo, but for some reason our read is slow... (contention on
   bus, CPU overheating, who knows).  The data fills up at roughly the
   same rate as we are reading.
3. We try to carry on but in reality the fifo contents never dropped below
   the watermark, so not more interrupts ever occur.

Solution normally is to put this read sequence in a while (fifo_cnt)
and reread that after you've done the burst read.  If there is more data
go around again.  That way we drive for definitely having gotten to zero
at some stage - and hence whatever the threshold is set to a new interrupt
will occur.

> +	/* FIFO read without popping */watermark
> +	ret = adis16575_custom_burst_read(pf, 0);
> +	if (ret)
> +		goto unlock;
> +
> +unlock:
> +	/*
> +	 * We only check the burst mode at the end of the current capture since
> +	 * reading data from registers will impact the FIFO reading.
> +	 */
> +	adis16475_burst32_check(st);
> +	adis_dev_unlock(&st->adis);
>  	iio_trigger_notify_done(indio_dev->trig);
> 
>  	return IRQ_HANDLED;
> @@ -1366,6 +1776,14 @@ static int adis16475_config_sync_mode(struct adis16475 *st)
>  	u32 sync_mode;
>  	u16 max_sample_rate = st->info->int_clk + 100;
> 
> +	/* if available, enable 4khz internal clock */
> +	if (st->info->int_clk == 4000) {
> +		ret = __adis_update_bits(&st->adis, ADIS16475_REG_MSG_CTRL,
> +					 ADIS16575_SYNC_4KHZ_MASK, (u16)ADIS16575_SYNC_4KHZ(1));
> +		if (ret)
> +			return ret;
> +	}
> +
>  	/* default to internal clk */
>  	st->clk_freq = st->info->int_clk * 1000;
> 
> @@ -1472,6 +1890,23 @@ static int adis16475_config_irq_pin(struct adis16475 *st)
>  	 */
>  	usleep_range(250, 260);
> 
> +	/*
> +	 * If the device has FIFO support, configure the watermark polarity
> +	 * pin as well.
Should I think be
	configure the watermark pin polarity as well.
or
	configure the watermark pin polarity.

a "polarity pin" would be a special pin that controls the polarity that we are
configuring in some way rather than intention of configuring the polarity of
the watermark pin.

An fiddly example of English word order changing meaning :(

Rest of series looks good to me other than the minor build fixes.

Jonathan

> +	 */
> +	if (st->info->flags & ADIS16475_HAS_FIFO) {
> +		ret = adis_update_bits(&st->adis, ADIS16475_REG_FIFO_CTRL,
> +				       ADIS16575_WM_POL_MASK, (u16)ADIS16575_WM_POL(polarity));
> +		if (ret)
> +			return ret;
> +
> +		/* Enable watermark interrupt pin. */
> +		ret = adis_update_bits(&st->adis, ADIS16475_REG_FIFO_CTRL,
> +				       ADIS16575_WM_EN_MASK, (u16)ADIS16575_WM_EN(1));
> +		if (ret)
> +			return ret;
> +	}
> +
>  	return 0;
>  }


