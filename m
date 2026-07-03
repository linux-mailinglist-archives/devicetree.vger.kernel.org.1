Return-Path: <devicetree+bounces-320372-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lAK0LOQjSGoOmwAAu9opvQ
	(envelope-from <devicetree+bounces-320372-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 23:04:36 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FCDA705AE3
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 23:04:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=baylibre.com header.s=google header.b=S2Y1tGNU;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320372-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320372-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0054A30379A1
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 21:04:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F4FC33FE1F;
	Fri,  3 Jul 2026 21:04:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029A81F94F
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 21:04:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783112659; cv=none; b=H8roV+2KLfUrVWr2DHeJziLG591ucej97bQjgT2nl7o4J8D37XDFOyV8pOMqSqDc3QoMThsfhj9nLxD8oSdO5oGSK6RDHMed5TLtrUp5JrDBglAHVrZWBlI8hPBEy+oW0lbmxIB7CMvDHb+i+e+x9zMJ4BzPwohvDNLxIfY2vfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783112659; c=relaxed/simple;
	bh=MQy31eRIJfry7Mo9HLrWsPnb0wqDDcV/DtFzKv2+j7E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Is+VssoGlNgFKLeTml7k+h40XqeBJIHJipemK6hpN38uCsU20ZEsfhllHTbtk4NDXn+7FPumjKOphtcVw6SNMWOa7uJ2Ibvd5+/34INNEKu29YbT/McZ9Z8k/FGga1MZHGE2kCAujHPMG9qdotF8Cbq9sLCcdT86C3HQcEeYi50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.b=S2Y1tGNU; arc=none smtp.client-ip=209.85.167.182
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-4960fb63c75so545307b6e.2
        for <devicetree@vger.kernel.org>; Fri, 03 Jul 2026 14:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1783112656; x=1783717456; darn=vger.kernel.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=BLvAnZoezxC+9vK/RWbW1DG6Jw4oqR7pajbloqOy9bs=;
        b=S2Y1tGNUMnKdnQfMqQZJklgskkJfEM2wmhYmXs4ZwxBYMRlIkvXIV1xCHDufJ8cuOi
         HX8wuDsSXC8yBHPZD0ou32r/ZMo94c4ftaCOntNPujVPQ68qgkWYPy3ZIkzVpajULx4u
         jV5qjRNEII2yF+WV3uHDMdr1bYzmlCoRBBqUzNygXa3a922fnd8oDI7wps/Gc0S3BAGX
         cngpQZggZ2p6cf9rO7oHcY7gI0B0joPA/dihoVqUpz80CGJj/KAgAIOp5BIMSYRD4x5B
         COgdWPzuatsDJg9O8V1wAhkfUv1X/NVa2TWQupeiBYAk/CRZ0ngqkn0b0SLlpBmLqB71
         TzuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783112656; x=1783717456;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=BLvAnZoezxC+9vK/RWbW1DG6Jw4oqR7pajbloqOy9bs=;
        b=KXM/rJZafl5aOMc4eHktchb26SO1rrWVbufJtPIoIFDAhh+tEDmrGlotEwfx8IMi4h
         cp2U6oCkmkL+udK91on4W0YrVbklGfHI8xQ2DYS+wrx82Iw3Tt3jHfQy0jLRJFJNKmpo
         XTVjEA8MmgGR6Ky6BJbX6EcEeQfl1jm/niSoa+nYtcvi5Nc0Y7/gCegjQGRrzWuzeeT/
         jT7KFCRVbsxuAyIJr77uA4EaXZz+Det5HlurQUF2xjaJSdAGPOnoUeRTzLCa1dwuCEca
         YiXBnI4X5puxIbZVYbelyc01uqJHNTSpJ/8qgPXu7WjUGjv/FvnpbP/kDEARc//Ntyha
         RJfA==
X-Forwarded-Encrypted: i=1; AFNElJ+ddVGwXptge72SfGh7H5BFn9pJGLjZmm2oqZpzHiwGnE1xsW3kYABNscgRGhOTKrjlYx5S6evKG1tI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqafkl5P+mdMvYBXMnSX3s6GFWoBtkFHeBswxKVMy+ujLJraRm
	UG0pHou6cZV6ZEzoTMxew2jUsi4Ew69PSGlXzJ/fEnCWeNYhwvRuQT8FfLfMQ+ECKQI=
X-Gm-Gg: AfdE7ckCckAERZmTewLnC9Yvgn5Q1+JFH+kjtQSNBMrc4gSnTZ0dIRU01FQPyT90x6z
	Lw2seIjcLru4I6mAedHjo45hDSdk7HR7dALb+wnJcgE2/hiW3ZQ7RArr9ZNfc3mWeIR4u3E8If+
	gfOkBFodai+jhcz+mDGUsflwNe1IuaV2DlhOeGAs+lzg9KxNdnVq6+JvT1QOefyLijxxPuJ9M8C
	q2TWJHI3VbbHAog24LZQIgNRsWC0cSL8pVCsFTYl6t6ix3753jFO8aJHe1dvsgt79JxY6C36CoV
	VuZoRXVV+Qa2kHRazSTmRlHNZZre3CbgL5HL4mKB0z5cBdM0h4tkKaO4vnrGrp4MeRiyWtVx9ZH
	I77Dhj0XOIV6QAnSaw3aPEd1ujGcCpiFurlr/I6LIUJSD5FlEdexsHUGYyOQVMMjGZqtuGDSJbX
	4MP0F9BzZRPuUe1SelXDvF2TEfzbNRnOXAiiBIRfk1G01OPzffIqRPsL2+M7P9oTI=
X-Received: by 2002:a05:6808:1510:b0:496:a36:b5e5 with SMTP id 5614622812f47-499b79f805dmr422098b6e.17.1783112655990;
        Fri, 03 Jul 2026 14:04:15 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:6af9:a9d7:17b5:2644? ([2600:8803:e7e4:500:6af9:a9d7:17b5:2644])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-497d1af5a51sm4927539b6e.10.2026.07.03.14.04.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Jul 2026 14:04:15 -0700 (PDT)
Message-ID: <d78d5f30-7f32-4998-8dc4-f17c61a5f81b@baylibre.com>
Date: Fri, 3 Jul 2026 16:04:14 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] iio: adc: add MAX40080 current-sense amplifier
 driver
To: Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>
Cc: =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ciprian Hegbeli <ciprian.hegbeli@analog.com>,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20260703102941.1141341-1-stefan.popa@analog.com>
 <20260703102941.1141341-3-stefan.popa@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260703102941.1141341-3-stefan.popa@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[baylibre.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-320372-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[baylibre.com:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	DMARC_NA(0.00)[baylibre.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:stefan.popa@analog.com,m:jic23@kernel.org,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:ciprian.hegbeli@analog.com,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,baylibre.com:from_mime,baylibre.com:dkim,baylibre.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4FCDA705AE3

On 7/3/26 5:29 AM, Stefan Popa wrote:
> The MAX40080 is a bidirectional current-sense amplifier with an
> integrated 12-bit ADC and an I2C/SMBus interface. It measures the
> voltage across an external shunt resistor and the input bus voltage,
> storing the results in an internal FIFO.
> 
> Add a direct-mode IIO driver exposing the current and voltage channels
> with raw, scale and hardware-gain attributes, a configurable

Patch does not implemnt hardware-gain attribute (which is correct,
so just fix the commit message).

> oversampling (digital averaging) ratio, and PEC-protected register
> access. The current scale is derived from the shunt resistor value
> described in the device tree.
> 
> +static int max40080_update_bits(struct max40080_state *st, u8 reg,
> +				u16 mask, u16 val)
> +{
> +	int ret;
> +	int tmp;
> +
> +	guard(mutex)(&st->lock);

Usually we don't want the lock at this level in case anything needs to
update more than one register in an atomic operation.

> +
> +	tmp = i2c_smbus_read_word_data(st->client, reg);
> +	if (tmp < 0)
> +		return tmp;
> +
> +	tmp &= ~mask;
> +	tmp |= val & mask;
> +
> +	ret = i2c_smbus_write_word_data(st->client, reg, tmp);
> +	if (ret < 0)
> +		return ret;
> +
> +	return 0;
> +}
> +

...

> +static int max40080_read_raw(struct iio_dev *indio_dev,
> +			     struct iio_chan_spec const *chan,
> +			     int *val,
> +			     int *val2,
> +			     long mask)
> +{
> +	struct max40080_state *st = iio_priv(indio_dev);
> +	unsigned int range;
> +	int ret;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW:
> +		if (chan->type == IIO_CURRENT) {
> +			ret = max40080_get_current(st, val);
> +			if (ret)
> +				return ret;
> +		} else if (chan->type == IIO_VOLTAGE) {
> +			ret = max40080_get_voltage(st, val);
> +			if (ret)
> +				return ret;
> +		}

Se usually use switch statement in IIO instead of else if.

> +
> +		return IIO_VAL_INT;
> +	case IIO_CHAN_INFO_SCALE:
> +		if (chan->type == IIO_CURRENT) {
> +			/*
> +			 * The selectable current-sense range is exposed through
> +			 * scale: each RANGE setting has its own precomputed
> +			 * mA-per-code value. Userspace picks the range by writing
> +			 * the matching scale.
> +			 */
> +			ret = max40080_get_range(st, &range);
> +			if (ret)
> +				return ret;
> +
> +			*val = st->current_scale[range][0];
> +			*val2 = st->current_scale[range][1];
> +			return IIO_VAL_INT_PLUS_NANO;
> +		}
> +		/* voltage[mV] = raw * Vref[mV] * buffer_gain / ADC_RES */
> +		*val = MAX40080_INTER_VREF_MV * MAX40080_V_BUFF_GAIN;
> +		*val2 = MAX40080_ADC_RES;
> +		return IIO_VAL_FRACTIONAL;
> +	case IIO_CHAN_INFO_OVERSAMPLING_RATIO:
> +		ret = max40080_get_oversampling_ratio(st, val);
> +		if (ret)
> +			return ret;
> +		return IIO_VAL_INT;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +

...

> +static int max40080_probe(struct i2c_client *client)
> +{
> +	struct device *dev = &client->dev;
> +	struct iio_dev *indio_dev;
> +	struct max40080_state *st;
> +	int ret;
> +
> +	if (!i2c_check_functionality(client->adapter,
> +				     I2C_FUNC_SMBUS_WORD_DATA |
> +				     I2C_FUNC_SMBUS_I2C_BLOCK |
> +				     I2C_FUNC_SMBUS_QUICK))
> +		return -EOPNOTSUPP;
> +
> +	client->flags |= I2C_CLIENT_PEC;
> +
> +	indio_dev = devm_iio_device_alloc(dev, sizeof(*st));
> +	if (!indio_dev)
> +		return -ENOMEM;
> +
> +	i2c_set_clientdata(client, indio_dev);
> +
> +	st = iio_priv(indio_dev);
> +	st->client = client;
> +
> +	ret = devm_mutex_init(dev, &st->lock);
> +	if (ret)
> +		return ret;
> +
> +	if (device_property_read_u32(dev, "shunt-resistor-micro-ohms",
> +				     &st->shunt_resistor_uohm))
> +		st->shunt_resistor_uohm = 1000000; /* default 1 ohm */
> +
> +	if (!st->shunt_resistor_uohm)
> +		return dev_err_probe(dev, -EINVAL,
> +				     "shunt-resistor-micro-ohms must be non-zero\n");
> +
> +	max40080_calc_current_scale(st);
> +
> +	indio_dev->name = "max40080";
> +	indio_dev->info = &max40080_info;
> +	indio_dev->modes = INDIO_DIRECT_MODE;
> +	indio_dev->channels = max40080_channels;
> +	indio_dev->num_channels = ARRAY_SIZE(max40080_channels);
> +
> +	/* No averaging by default; configurable at runtime via sysfs. */
> +	ret = max40080_init(st, 1);

Why have a paramter if it is always the same value? Can just move
this comment into the init function and drop the arg.

> +	if (ret)
> +		return ret;
> +
> +	return devm_iio_device_register(dev, indio_dev);
> +}
> +
> +static const struct i2c_device_id max40080_i2c_ids[] = {
> +	{ "max40080" },

Include `.name = `

> +	{ }
> +};
> +MODULE_DEVICE_TABLE(i2c, max40080_i2c_ids);
> +


