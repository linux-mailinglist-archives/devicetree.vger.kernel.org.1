Return-Path: <devicetree+bounces-268992-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kEYIA6SpoGlGlgQAu9opvQ
	(envelope-from <devicetree+bounces-268992-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 21:14:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 619E61AEF2B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 21:14:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 087E83164A07
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 20:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE9C944D6A6;
	Thu, 26 Feb 2026 20:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="mTDizaPH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f194.google.com (mail-oi1-f194.google.com [209.85.167.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 256982DE70B
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 20:08:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772136523; cv=none; b=k3KWoJakZtMUSTW9Dkn5VJmNQUF7k9XYRJC1bMa4iMRn4jggwjL8f+hDgTV/QjnOcJCLDTVjBXe+tpocd/hWSLYtTcI48nDdPdVMNIAzdmOCkR+Y87Eqjt7kgpqQmOD/S+pv/o7NHct3sLJR/BdYRSWRzBJBUynQB5ykjeE7+V4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772136523; c=relaxed/simple;
	bh=Y+d+r4bFcwg6sI3Utl3lEFqtjztW5xWMSKPhFFwq93U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dKFto3eqBg/+5Ny3fLLdUlRG7f2heQpGIQhoMLWlhnSetNoI1fxZ8FD1CBjaOQMoOaA2ex4DKaezaA+kemaNOMjVA3o7MwfFjNUmsM58b+7QBUJTyYw79zXmXGMxwZLsQTIM3yczNRxFPx8R0wiLtL9e6dAR55qGOxWspCTqGGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=mTDizaPH; arc=none smtp.client-ip=209.85.167.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f194.google.com with SMTP id 5614622812f47-46391f4c1f9so844111b6e.0
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 12:08:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772136518; x=1772741318; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qWGDXihMEqO2rf/nsV/mvk9/0fomlaDoazYYG8h6w0Q=;
        b=mTDizaPHpkm1RlIHUbnCXQ0R7/2TfoHDqNHS5EGcp7RTF77FJIZdxbu3d5dvkfi9WE
         f3Mrit99+TUr7gBtt0SIAPhl7gjsVw1bC74Bf9s/4ODr+T3Eyk7zJhXQrEXlhRj/l7S3
         IGAk79igj0ooYViOEnNDitW8b+jbwvkcgUoLkf4i8djHd0pz58zw3weUvdk+5s/qEyu4
         KANrajyfFrfxByCbrlF8GIIhVDZxpNplE7XLG2UX1bjNuNRuAjCzxdDWIu7/SWWDToZ3
         sWf1+B6C6ESw+EpkgjfpKIGHBEVwDkB+jCcVk7V3gfvYIL0W6AytJkv6ERtNPcZGw7/y
         LiVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772136518; x=1772741318;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qWGDXihMEqO2rf/nsV/mvk9/0fomlaDoazYYG8h6w0Q=;
        b=KOSgnNeKCgsgJ1UKarQJm5K1/fV8+CclFhdZwGKt26a075qcTDquwPoagjodq+bzj3
         rUiatAPB0nM96F9CIv2kpLPtxetgRk6BOsvxjMtKiQE1MzX3J9KftitwVc+RhVeG9ySH
         +V0UMaLqQLNPtgBzralmH3S/RGVmA4gwEMkpw0+nhSlSM4GFLrZqM5qW52x9wGGaj/5w
         eFdfLU0xmi9r7HmVyM8A+Glz0gThcmL45vuCA+u+74gVuf5VCsNGOycwTpV1u2cbbH1w
         SVAG3PBsQcuGxpgiUAIJhU6ScELVTN7m+tlVqizqqgKjPuNONRIy+ffftLPGL3OE/IIQ
         x9MQ==
X-Gm-Message-State: AOJu0Yw1UPgrlymK6+KtDds5s3zzXbvWzFScw4wtFAW530Zi4Ys/r75/
	yq8ZpmbVtPXXQdHVu6U/QKdZaBZHcfM4uuSwrmsD9TRnixh18sSeEZoogSHYR6wUdes=
X-Gm-Gg: ATEYQzzEysQkO2owWdpGp+jtqub4b7MLH0cTWnk/Z6qHBrTO+IoXjI8fQ2a/WPVUS3U
	kAJ64rkphU+baB/nWCi/CRCZqfo57VweaNKXBBp8z7jhm7b8ijJ4bzIhG+aAC0b6MKMhZSY1+pn
	CIowTUqzIzNRsWiyt8yPvsTPmXA0Bu4STOtI5IvmSnY4VXlptEJyWU2tlM6LZLLanWWLrQlo6Et
	ajx8DJj/9hRbaXjUAl+OnSPMr0Mt/JFEgFMBO31vg/NBzYQvmJ4m+VrsdaNcIe2d17iTw/YF8/5
	qhFk+bIiLC75ns97P47ertArjwOyZhXa7EcZBuxVzo6+1nuCb7seL3POdCYuIG68Aa8SHBqyWws
	e6z4eYqRu6JZ8oJKe6SVDZRYor8yztj8aUdyCWjQ2KfMHAUFvf7c7JtdfE2fkG/HXQDLP2Wte58
	5sXLKPzGiVgkTOlN3kJLbdVNc/wLICjAzzpM3+eSBDTGZ/BF8FccTF3budkQ1nzV2qq0+XawrH3
	K/EKBpwnNac
X-Received: by 2002:a05:6808:d4e:b0:450:7df:e90b with SMTP id 5614622812f47-464bebe44d5mr212889b6e.52.1772136517943;
        Thu, 26 Feb 2026 12:08:37 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:602c:a8f4:3667:524c? ([2600:8803:e7e4:500:602c:a8f4:3667:524c])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4160d26d45fsm2928724fac.14.2026.02.26.12.08.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 12:08:37 -0800 (PST)
Message-ID: <b0127cf2-1d47-4799-bc7c-4aa62168b25b@baylibre.com>
Date: Thu, 26 Feb 2026 14:08:36 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] iio: temperature: add ADI MAX30210 driver
To: John Erasmus Mari Geronimo <johnerasmusmari.geronimo@analog.com>,
 linux-iio@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>
References: <20260226163041.169786-1-johnerasmusmari.geronimo@analog.com>
 <20260226163041.169786-3-johnerasmusmari.geronimo@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260226163041.169786-3-johnerasmusmari.geronimo@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-268992-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,baylibre-com.20230601.gappssmtp.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:url,analog.com:email]
X-Rspamd-Queue-Id: 619E61AEF2B
X-Rspamd-Action: no action

On 2/26/26 10:30 AM, John Erasmus Mari Geronimo wrote:
> MAX30210 ±0.1°C Accurate Ultra-Small Low-Power Digital Temperature Sensor
> 
> Signed-off-by: John Erasmus Mari Geronimo <johnerasmusmari.geronimo@analog.com>
> ---
>  MAINTAINERS                        |   8 +
>  drivers/iio/temperature/Kconfig    |  10 +
>  drivers/iio/temperature/Makefile   |   1 +
>  drivers/iio/temperature/max30210.c | 758 +++++++++++++++++++++++++++++
>  4 files changed, 777 insertions(+)
>  create mode 100644 drivers/iio/temperature/max30210.c
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1c75276404df..2abdbcf3a8e5 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1638,6 +1638,14 @@ W:	https://ez.analog.com/linux-software-drivers
>  F:	Documentation/devicetree/bindings/iio/dac/adi,max22007.yaml
>  F:	drivers/iio/dac/max22007.c
>  
> +ANALOG DEVICES INC MAX30210 DRIVER
> +M:	John Erasmus Mari Geronimo <johnerasmusmari.geronimo@analog.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Supported
> +W:	https://ez.analog.com/linux-software-drivers
> +F:	Documentation/devicetree/bindings/iio/temperature/adi,max30210.yaml

The part above should be introduced in the first patch where the file
above is added.

> +F:	drivers/iio/temperature/max30210.c

Then only this part added in this patch.

> +
>  ANALOG DEVICES INC ADA4250 DRIVER
>  M:	Antoniu Miclaus <antoniu.miclaus@analog.com>
>  L:	linux-iio@vger.kernel.org
> diff --git a/drivers/iio/temperature/Kconfig b/drivers/iio/temperature/Kconfig
> index 9328b2250ace..2d7cb50e2538 100644
> --- a/drivers/iio/temperature/Kconfig
> +++ b/drivers/iio/temperature/Kconfig
> @@ -184,4 +184,14 @@ config MCP9600
>  	  This driver can also be built as a module. If so, the module
>  	  will be called mcp9600.
>  
> +config MAX30210
> +	tristate "MAX30210 Low-Power I2C Digital Temperature Sensor"
> +	depends on I2C
> +	help
> +	  If you say yes here you get support for MAX30210 low-power digital
> +	  temperature sensor chip connected via I2C.
> +
> +	  This driver can also be build as a module. If so, the module
> +	  will be called max30210.
> +
>  endmenu
> diff --git a/drivers/iio/temperature/Makefile b/drivers/iio/temperature/Makefile
> index 07d6e65709f7..e5aad14dc09b 100644
> --- a/drivers/iio/temperature/Makefile
> +++ b/drivers/iio/temperature/Makefile
> @@ -8,6 +8,7 @@ obj-$(CONFIG_LTC2983) += ltc2983.o
>  obj-$(CONFIG_HID_SENSOR_TEMP) += hid-sensor-temperature.o
>  obj-$(CONFIG_MAXIM_THERMOCOUPLE) += maxim_thermocouple.o
>  obj-$(CONFIG_MAX30208) += max30208.o
> +obj-$(CONFIG_MAX30210) += max30210.o

I suppose this has enough differences from max30208 and other chips
to justify a separate driver?

>  obj-$(CONFIG_MAX31856) += max31856.o
>  obj-$(CONFIG_MAX31865) += max31865.o
>  obj-$(CONFIG_MCP9600) += mcp9600.o
> diff --git a/drivers/iio/temperature/max30210.c b/drivers/iio/temperature/max30210.c
> new file mode 100644
> index 000000000000..aaa3a26be131
> --- /dev/null
> +++ b/drivers/iio/temperature/max30210.c
> @@ -0,0 +1,758 @@
> +// SPDX-License-Identifier: GPL-2.0

Prefer more precise GPL-2.0-only or GPL-2.0-or-later (your choice).

> +/*
> + * Analog Devices MAX30210 I2C Temperature Sensor driver
> + *
> + * Copyright 2026 Analog Devices Inc.
> + */
> +
> +#include <asm/div64.h>
> +#include <linux/bitfield.h>
> +#include <linux/bitops.h>
> +#include <linux/debugfs.h>
> +#include <linux/delay.h>
> +#include <linux/errno.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/i2c.h>
> +#include <linux/iio/buffer.h>
> +#include <linux/iio/events.h>
> +#include <linux/iio/iio.h>
> +#include <linux/iio/sysfs.h>
> +#include <linux/iio/trigger.h>
> +#include <linux/iio/triggered_buffer.h>
> +#include <linux/iio/trigger_consumer.h>
> +#include <linux/interrupt.h>
> +#include <linux/log2.h>
> +#include <linux/module.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/property.h>
> +#include <linux/pwm.h>
> +#include <linux/regmap.h>
> +#include <linux/stat.h>
> +#include <linux/string.h>
> +#include <linux/unaligned.h>
> +#include <linux/units.h>
> +
> +#define MAX30210_STATUS_REG		0x00
> +#define MAX30210_INT_EN_REG		0x02
> +#define MAX30210_FIFO_DATA_REG		0x08
> +#define MAX30210_FIFO_CONF_1_REG	0x09
> +#define MAX30210_FIFO_CONF_2_REG	0x0A
> +#define MAX30210_SYS_CONF_REG		0x11
> +#define MAX30210_PIN_CONF_REG		0x12
> +#define MAX30210_TEMP_ALM_HI_REG	0x22
> +#define MAX30210_TEMP_ALM_LO_REG	0x24
> +#define MAX30210_TEMP_INC_THRESH_REG	0x26
> +#define MAX30210_TEMP_DEC_THRESH_REG	0x27
> +#define MAX30210_TEMP_CONF_1_REG	0x28
> +#define MAX30210_TEMP_CONF_2_REG	0x29
> +#define MAX30210_TEMP_CONV_REG		0x2A
> +#define MAX30210_TEMP_DATA_REG		0x2B
> +#define MAX30210_TEMP_SLOPE_REG		0x2D
> +#define MAX30210_UNIQUE_ID_REG		0x30
> +#define MAX30210_PART_ID_REG		0xFF
> +
> +#define MAX30210_A_FULL_MASK   BIT(7)
> +#define MAX30210_TEMP_RDY_MASK BIT(6)
> +#define MAX30210_TEMP_DEC_MASK BIT(5)
> +#define MAX30210_TEMP_INC_MASK BIT(4)
> +#define MAX30210_TEMP_LO_MASK  BIT(3)
> +#define MAX30210_TEMP_HI_MASK  BIT(2)
> +#define MAX30210_PWR_RDY_MASK  BIT(0)
> +
> +#define MAX30210_FLUSH_FIFO_MASK BIT(4)
> +
> +#define MAX30210_EXT_CNV_EN_MASK	BIT(7)
> +#define MAX30210_EXT_CVT_ICFG_MASK	BIT(6)
> +#define MAX30210_INT_FCFG_MASK		GENMASK(3, 2)
> +#define MAX30210_INT_OCFG_MASK		GENMASK(1, 0)
> +
> +#define MAX30210_CHG_DET_EN_MASK	BIT(3)
> +#define MAX30210_RATE_CHG_FILTER_MASK	GENMASK(2, 0)
> +
> +#define MAX30210_TEMP_PERIOD_MASK	GENMASK(3, 0)
> +#define MAX30210_ALERT_MODE_MASK	BIT(7)
> +
> +#define MAX30210_AUTO_MASK	BIT(1)
> +#define MAX30210_CONV_T_MASK	BIT(0)
> +
> +#define MAX30210_PART_ID		0x45
> +#define MAX30210_FIFO_SIZE		64
> +#define MAX30210_FIFO_INVAL_DATA	GENMASK(23, 0)
> +#define MAX30210_WATERMARK_DEFAULT	(0x40 - 0x1F)
> +
> +#define MAX30210_INT_EN(state, mask)	((state) ? (mask) : 0x0)
> +
> +#define MAX30210_UNIQUE_ID_LEN		6
> +#define MAX30210_EXT_CVT_FREQ_MIN	1
> +#define MAX30210_EXT_CVT_FREQ_MAX	20
> +
> +struct max30210_state {
> +	/*
> +	 * Prevent simultaneous access to the i2c client.

This is currently only used in the interrupt handler, which is already
protected agains reentrancy. So we either don't need this or it should
be used in many more places to actually provide protection.

> +	 */
> +	struct mutex lock;
> +	struct regmap *regmap;
> +	struct iio_trigger *trig;

Probably can be a local varaible when combined with another suggestion
later to use a default function implementation.

> +	struct gpio_desc *powerdown_gpio;

This is not used outside of max30210_setup(), so can be a local variable.

> +	u8 watermark;
> +	u8 data[3 * MAX30210_FIFO_SIZE]  __aligned(IIO_DMA_MINALIGN);

We should make this clear that this is FIFO data and not scan data.
Usually, we only see something like this for scan data, which would
need to be 4 bytes per sample rather than 3.

(This is why Andy thought we shuold be using IIO_DECLARE_BUFFER_WITH_TS()
here, but it isn't actually the case.)

> +};
> +
> +static const int samp_freq_avail[] = {
> +	0, 15625,
> +	0, 31250,
> +	0, 62500,
> +	0, 125000,
> +	0, 250000,
> +	0, 500000,
> +	1, 0,
> +	2, 0,
> +	4, 0,
> +	8, 0
> +};
> +
> +static const struct regmap_config max30210_regmap = {
> +	.reg_bits = 8,
> +	.val_bits = 8,
> +	.max_register = MAX30210_PART_ID_REG,
> +};
> +
> +static int max30210_read_temp(struct regmap *regmap, unsigned int reg,
> +			      int *temp)
> +{
> +	u8 uval[2] __aligned(IIO_DMA_MINALIGN);
> +	int ret;
> +
> +	ret = regmap_bulk_read(regmap, reg, uval, 2);
> +	if (ret)
> +		return ret;
> +
> +	*temp = sign_extend32(get_unaligned_be16(uval), 15);
> +
> +	return IIO_VAL_INT;
> +}
> +
> +static int max30210_write_temp(struct regmap *regmap, unsigned int reg,
> +			       int temp)
> +{
> +	u8 uval[2] __aligned(IIO_DMA_MINALIGN);
> +
> +	put_unaligned_be16(temp, uval);
> +
> +	return regmap_bulk_write(regmap, reg, uval, 2);
> +}
> +
> +static void max30210_fifo_read(struct iio_dev *indio_dev)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +	u32 samp;
> +	int ret, i, j;
> +
> +	ret = regmap_bulk_read(st->regmap, MAX30210_FIFO_DATA_REG,
> +			       st->data, 3 * st->watermark);
> +	if (ret < 0)
> +		return dev_err(&indio_dev->dev, "Failed to read from fifo.\n");
> +
> +	for (i = 0; i < st->watermark; i++) {
> +		samp = 0;
> +
> +		for (j = 0; j < 3; j++) {
> +			samp <<= 8;
> +			samp |= st->data[3 * i + j];
> +		}

Can we not just do a 3 byte memcpy() here?

Or if this is making it CPU-endian, then use get_unaligned_be24()
and fix IIO_BE to be IIO_CPU in the scan data.

> +
> +		if (samp == MAX30210_FIFO_INVAL_DATA) {
> +			dev_err(&indio_dev->dev, "Invalid data\n");

This error could get quite noisy. There is a rate-limited version
of dev_err() we could use.

> +			continue;
> +		}
> +
> +		iio_push_to_buffers(indio_dev, &samp);
> +	}
> +}
> +
> +static irqreturn_t max30210_trigger_handler(int irq, void *p)
> +{
> +	struct iio_poll_func *pf = p;
> +	struct iio_dev *indio_dev = pf->indio_dev;
> +	struct max30210_state *st = iio_priv(indio_dev);
> +	unsigned int status;
> +	int ret;
> +
> +	guard(mutex)(&st->lock);
> +
> +	ret = regmap_read(st->regmap, MAX30210_STATUS_REG, &status);
> +	if (ret) {
> +		dev_err(&indio_dev->dev, "Status byte read error\n");
> +		goto exit_irq;
> +	}
> +
> +	if (status & MAX30210_PWR_RDY_MASK) {
> +		dev_info(&indio_dev->dev, "power-on\n");

dev_dbg(). Although I question that we really need this at all. There is
a time delay in the setup function, so it seems like nothing would be
waiting for this.

> +		st->watermark = MAX30210_WATERMARK_DEFAULT;

Would make more sense to set the default during probe.

> +	}
> +
> +	if (status & MAX30210_A_FULL_MASK)
> +		max30210_fifo_read(indio_dev);
> +
> +	if (status & MAX30210_TEMP_HI_MASK)
> +		iio_push_event(indio_dev,
> +			       IIO_UNMOD_EVENT_CODE(IIO_TEMP, 0,
> +						    IIO_EV_TYPE_THRESH,
> +						    IIO_EV_DIR_RISING),
> +			       iio_get_time_ns(indio_dev));
> +
> +	if (status & MAX30210_TEMP_LO_MASK)
> +		iio_push_event(indio_dev,
> +			       IIO_UNMOD_EVENT_CODE(IIO_TEMP, 0,
> +						    IIO_EV_TYPE_THRESH,
> +						    IIO_EV_DIR_FALLING),
> +			       iio_get_time_ns(indio_dev));
> +
> +exit_irq:
> +	iio_trigger_notify_done(indio_dev->trig);
> +	return IRQ_HANDLED;
> +}
> +
> +static int max30210_reg_access(struct iio_dev *indio_dev, unsigned int reg,
> +			       unsigned int writeval, unsigned int *readval)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +
> +	if (!readval)
> +		return regmap_write(st->regmap, reg, writeval);
> +
> +	return regmap_read(st->regmap, reg, readval);
> +}
> +
> +static int max30210_validate_trigger(struct iio_dev *indio_dev,
> +				     struct iio_trigger *trig)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +
> +	if (st->trig != trig)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static int max30210_read_event(struct iio_dev *indio_dev,
> +			       const struct iio_chan_spec *chan,
> +			       enum iio_event_type type,
> +			       enum iio_event_direction dir,
> +			       enum iio_event_info info, int *val, int *val2)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +
> +	if (info == IIO_EV_INFO_VALUE) {
> +		switch (dir) {
> +		case IIO_EV_DIR_RISING:
> +			switch (type) {
> +			case IIO_EV_TYPE_THRESH:
> +				return max30210_read_temp(st->regmap,
> +							  MAX30210_TEMP_ALM_HI_REG, val);
> +			default:
> +				return -EINVAL;
> +			}
> +			break;

break is unreachable and should be omitted.

> +		case IIO_EV_DIR_FALLING:
> +			switch (type) {
> +			case IIO_EV_TYPE_THRESH:
> +				return max30210_read_temp(st->regmap,
> +							  MAX30210_TEMP_ALM_LO_REG, val);
> +			default:
> +				return -EINVAL;
> +			}
> +			break;

Same.

> +		default:
> +			return -EINVAL;
> +		}
> +	}
> +
> +	return -EINVAL;

Just return early after the if to avoid indenting the switch statement so much.

> +}
> +
> +static int max30210_write_event(struct iio_dev *indio_dev,
> +				const struct iio_chan_spec *chan,
> +				enum iio_event_type type,
> +				enum iio_event_direction dir,
> +				enum iio_event_info info, int val, int val2)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +
> +	if (info == IIO_EV_INFO_VALUE) {
> +		switch (dir) {
> +		case IIO_EV_DIR_RISING:
> +			switch (type) {
> +			case IIO_EV_TYPE_THRESH:
> +				return max30210_write_temp(st->regmap,
> +							   MAX30210_TEMP_ALM_HI_REG, val);
> +			default:
> +				return -EINVAL;
> +			}
> +			break;
> +		case IIO_EV_DIR_FALLING:
> +			switch (type) {
> +			case IIO_EV_TYPE_THRESH:
> +				return max30210_write_temp(st->regmap,
> +							   MAX30210_TEMP_ALM_LO_REG, val);
> +			default:
> +				return -EINVAL;
> +			}
> +			break;
> +		default:
> +			return -EINVAL;
> +		}
> +	}
> +
> +	return -EINVAL;

Same.

> +}
> +
> +static int max30210_read_event_config(struct iio_dev *indio_dev,
> +				      const struct iio_chan_spec *chan,
> +				      enum iio_event_type type,
> +				      enum iio_event_direction dir)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +	unsigned int val;
> +	int ret;
> +
> +	ret = regmap_read(st->regmap, MAX30210_INT_EN_REG, &val);
> +	if (ret)
> +		return ret;
> +
> +	switch (dir) {
> +	case IIO_EV_DIR_RISING:
> +		switch (type) {
> +		case IIO_EV_TYPE_THRESH:
> +			return FIELD_GET(MAX30210_TEMP_HI_MASK, val);
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	case IIO_EV_DIR_FALLING:
> +		switch (type) {
> +		case IIO_EV_TYPE_THRESH:
> +			return FIELD_GET(MAX30210_TEMP_LO_MASK, val);
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int max30210_write_event_config(struct iio_dev *indio_dev,
> +				       const struct iio_chan_spec *chan,
> +				       enum iio_event_type type,
> +				       enum iio_event_direction dir, int state)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +	unsigned int val;
> +
> +	switch (dir) {
> +	case IIO_EV_DIR_RISING:
> +		switch (type) {
> +		case IIO_EV_TYPE_THRESH:
> +			val = MAX30210_INT_EN(state, MAX30210_TEMP_HI_MASK);
> +
> +			return regmap_update_bits(st->regmap,
> +						  MAX30210_INT_EN_REG,
> +						  MAX30210_TEMP_HI_MASK, val);
> +		default:
> +			return -EINVAL;
> +		}
> +		break;
> +	case IIO_EV_DIR_FALLING:
> +		switch (type) {
> +		case IIO_EV_TYPE_THRESH:
> +			val = MAX30210_INT_EN(state, MAX30210_TEMP_LO_MASK);
> +
> +			return regmap_update_bits(st->regmap,
> +						  MAX30210_INT_EN_REG,
> +						  MAX30210_TEMP_LO_MASK, val);
> +		default:
> +			return -EINVAL;
> +		}
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int max30210_read_raw(struct iio_dev *indio_dev,
> +			     struct iio_chan_spec const *chan, int *val,
> +			     int *val2, long mask)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +	unsigned int uval;
> +	int ret;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SCALE:
> +		*val = 5;
> +
> +		return IIO_VAL_INT;
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		ret = regmap_read(st->regmap, MAX30210_TEMP_CONF_2_REG, &uval);
> +		if (ret)
> +			return ret;
> +
> +		uval = FIELD_GET(MAX30210_TEMP_PERIOD_MASK, uval);
> +
> +		*val = 8;
> +
> +		/**
> +		 * register values 0x9 or above have the same sample
> +		 * rate of 8Hz
> +		 */
> +		*val2 = uval >= 0x9 ? 1 : BIT(0x9 - uval);
> +
> +		return IIO_VAL_FRACTIONAL;
> +	case IIO_CHAN_INFO_RAW:
> +		ret = iio_device_claim_direct_mode(indio_dev);

If the buffer is enabled, can we just skip setting the converion mode
and read the TEMP_DATA register to get the last value measured?

Also, iio_device_claim_direct_mode() doesn't exist anymore, so I wonder
which kernel version was used to compile and test this patch.

We now have IIO_DEV_ACQUIRE_DIRECT_MODE() that can be used in cases
like this to avoid the goto.


> +		if (ret)
> +			return ret;
> +
> +		ret = regmap_write(st->regmap, MAX30210_TEMP_CONV_REG,
> +				   MAX30210_CONV_T_MASK);
> +		if (ret)
> +			goto release_dmode;
> +
> +		fsleep(8000);
> +
> +		ret = max30210_read_temp(st->regmap, MAX30210_TEMP_DATA_REG, val);
> +
> +release_dmode:
> +		iio_device_release_direct_mode(indio_dev);
> +		return ret;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int max30210_read_avail(struct iio_dev *indio_dev,
> +			       struct iio_chan_spec const *chan,
> +			       const int **vals, int *type, int *length,
> +			       long mask)
> +{
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		*vals = samp_freq_avail;
> +		*type = IIO_VAL_INT_PLUS_MICRO;
> +		*length = ARRAY_SIZE(samp_freq_avail);
> +
> +		return IIO_AVAIL_LIST;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int max30210_write_raw(struct iio_dev *indio_dev,
> +			      struct iio_chan_spec const *chan, int val,
> +			      int val2, long mask)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +	u64 data;
> +	int ret;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		ret = iio_device_claim_direct_mode(indio_dev);
> +		if (ret)
> +			return ret;
> +
> +		/**
> +		 * micro_value = val * 1000000 + val2
> +		 * reg_value = ((micro_value * 64) / 1000000) - 1
> +		 */
> +		data = (val * MICRO + val2) << 6;

This will end up with wierd resutls if val or val2 is negative.

Can we write << 6 as * 64 to match the comment? The compiler is smart enough
to make the optimization for us.

> +		do_div(data, MICRO);
> +
> +		data = fls_long(data - 1);
> +		data = FIELD_PREP(MAX30210_TEMP_PERIOD_MASK, data);
> +
> +		ret = regmap_update_bits(st->regmap, MAX30210_TEMP_CONF_2_REG,
> +					 MAX30210_TEMP_PERIOD_MASK,
> +					 (unsigned int)data);
> +
> +		iio_device_release_direct_mode(indio_dev);
> +		return ret;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int max30210_write_raw_get_fmt(struct iio_dev *indio_dev,
> +				      struct iio_chan_spec const *chan,
> +				      long mask)
> +{
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		return IIO_VAL_INT_PLUS_MICRO;

This is the default, so we should not need this function at all.

> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static const struct iio_trigger_ops max30210_trigger_ops = {
> +	.validate_device = &iio_trigger_validate_own_device,
> +};
> +
> +static int max30210_set_watermark(struct iio_dev *indio_dev, unsigned int val)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +	unsigned int reg;
> +	int ret;
> +
> +	if (val < 1 || val > MAX30210_FIFO_SIZE)
> +		return -EINVAL;
> +
> +	reg = MAX30210_FIFO_SIZE - val;
> +
> +	ret = regmap_write(st->regmap, MAX30210_FIFO_CONF_1_REG, reg);
> +	if (ret)
> +		return ret;
> +
> +	st->watermark = val;
> +
> +	return 0;
> +}
> +
> +static ssize_t hwfifo_watermark_show(struct device *dev,
> +				     struct device_attribute *devattr,
> +				     char *buf)
> +{
> +	struct max30210_state *st = iio_priv(dev_to_iio_dev(dev));
> +
> +	return sysfs_emit(buf, "%d\n", st->watermark);
> +}
> +
> +IIO_STATIC_CONST_DEVICE_ATTR(hwfifo_watermark_min, "1");
> +IIO_STATIC_CONST_DEVICE_ATTR(hwfifo_watermark_max,
> +			     __stringify(MAX30210_FIFO_SIZE));
> +static IIO_DEVICE_ATTR_RO(hwfifo_watermark, 0);
> +
> +static const struct iio_dev_attr *max30210_fifo_attributes[] = {
> +	&iio_dev_attr_hwfifo_watermark_min,
> +	&iio_dev_attr_hwfifo_watermark_max,
> +	&iio_dev_attr_hwfifo_watermark,
> +	NULL,
> +};
> +
> +static int max30210_buffer_preenable(struct iio_dev *indio_dev)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +	int ret;
> +
> +	ret = regmap_update_bits(st->regmap, MAX30210_INT_EN_REG,
> +				 MAX30210_A_FULL_MASK, MAX30210_A_FULL_MASK);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_update_bits(st->regmap, MAX30210_FIFO_CONF_2_REG,
> +				 MAX30210_FLUSH_FIFO_MASK,
> +				 MAX30210_FLUSH_FIFO_MASK);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(st->regmap, MAX30210_TEMP_CONV_REG,
> +			   MAX30210_AUTO_MASK | MAX30210_CONV_T_MASK);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static int max30210_buffer_postdisable(struct iio_dev *indio_dev)
> +{
> +	struct max30210_state *st = iio_priv(indio_dev);
> +	int ret;
> +

Unwinding should be the revese order of the setup. If there is a reason
for it to be in a different order, it needs a comment to explain.

> +	ret = regmap_update_bits(st->regmap, MAX30210_INT_EN_REG,
> +				 MAX30210_A_FULL_MASK, 0x0);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_update_bits(st->regmap, MAX30210_FIFO_CONF_2_REG,
> +				 MAX30210_FLUSH_FIFO_MASK,
> +				 MAX30210_FLUSH_FIFO_MASK);
> +	if (ret)
> +		return ret;
> +
> +	ret = regmap_write(st->regmap, MAX30210_TEMP_CONV_REG, 0x0);
> +	if (ret)
> +		return ret;
> +
> +	return 0;
> +}
> +
> +static const struct iio_buffer_setup_ops max30210_buffer_ops = {
> +	.preenable = max30210_buffer_preenable,
> +	.postdisable = max30210_buffer_postdisable,
> +};
> +
> +static const struct iio_info max30210_info = {
> +	.read_raw = max30210_read_raw,
> +	.read_avail = max30210_read_avail,
> +	.write_raw = max30210_write_raw,
> +	.write_raw_get_fmt = max30210_write_raw_get_fmt,
> +	.hwfifo_set_watermark = max30210_set_watermark,
> +	.debugfs_reg_access = &max30210_reg_access,

> +	.validate_trigger = &max30210_validate_trigger,

Can we just use iio_validate_own_trigger()?

> +	.read_event_value = max30210_read_event,
> +	.write_event_value = max30210_write_event,
> +	.write_event_config = max30210_write_event_config,
> +	.read_event_config = max30210_read_event_config,
> +};
> +
> +static const struct iio_event_spec max30210_events[] = {
> +	{
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_RISING,
> +		.mask_separate = BIT(IIO_EV_INFO_VALUE) | BIT(IIO_EV_INFO_ENABLE),
> +	}, {
> +		.type = IIO_EV_TYPE_THRESH,
> +		.dir = IIO_EV_DIR_FALLING,
> +		.mask_separate = BIT(IIO_EV_INFO_VALUE) | BIT(IIO_EV_INFO_ENABLE),
> +	},
> +};
> +
> +static const struct iio_chan_spec max30210_channels = {
> +	.type = IIO_TEMP,
> +	.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
> +			      BIT(IIO_CHAN_INFO_SCALE) |
> +			      BIT(IIO_CHAN_INFO_SAMP_FREQ),
> +	.info_mask_separate_available = BIT(IIO_CHAN_INFO_SAMP_FREQ),
> +	.output = 0,
> +	.scan_index = 0,
> +	.event_spec = max30210_events,
> +	.num_event_specs = ARRAY_SIZE(max30210_events),
> +	.scan_type = {
> +		.sign = 's',
> +		.realbits = 16,
> +		.storagebits = 32,
> +		.shift = 8,
> +		.endianness = IIO_BE,
> +	},
> +};
> +
> +static int max30210_setup(struct max30210_state *st, struct device *dev)
> +{
> +	unsigned int val;
> +
> +	/* Power down to reset device */
> +	st->powerdown_gpio = devm_gpiod_get_optional(dev, "powerdown",
> +						     GPIOD_OUT_HIGH);
> +	if (IS_ERR(st->powerdown_gpio))
> +		return dev_err_probe(dev, PTR_ERR(st->powerdown_gpio),
> +				     "Failed to request powerdown GPIO.\n");
> +
> +	/* Power up device */
> +	gpiod_set_value(st->powerdown_gpio, 0);

Usually, if the gpio is not wired up, we would reset the device via
a software reset. It looks like this has one in the SYSTEM_CONFIGURATION
register.

> +
> +	fsleep(700);
> +
> +	/* Clear status byte */
> +	return regmap_read(st->regmap, MAX30210_STATUS_REG, &val);
> +}
> +

