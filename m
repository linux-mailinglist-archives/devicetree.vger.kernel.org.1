Return-Path: <devicetree+bounces-272501-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QEOmDbNdrGl/pAEAu9opvQ
	(envelope-from <devicetree+bounces-272501-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 18:17:39 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A5DB22CDD2
	for <lists+devicetree@lfdr.de>; Sat, 07 Mar 2026 18:17:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59615301AD1D
	for <lists+devicetree@lfdr.de>; Sat,  7 Mar 2026 17:17:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5815630EF92;
	Sat,  7 Mar 2026 17:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="BXDUau7i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f171.google.com (mail-oi1-f171.google.com [209.85.167.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E2450276
	for <devicetree@vger.kernel.org>; Sat,  7 Mar 2026 17:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772903840; cv=none; b=fd8jRs6qnMy5MPld/ybIAGqLw/cG51DsLpOzWOrpVI0crW7/Uhc42sdLheUpqkq5lK7Th/E8ZdG4IGE3TQ2gCg6SqU9F3TDF8Gquqewoji+jogvl8k4LT5uZxktXHsF+12kzrad7WhkgvZZ0lnJtNFWlLdaFfUlrgAndjGQpSAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772903840; c=relaxed/simple;
	bh=q2HQcfiT/KoQa7CVQjSe9h4G+/m15DVdnGvuTp+vQTc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=E6MhbWwp29y+KcxN6Bb/JQPeY4xqIYLAOpv41AOsbmgtTBtffg+47mYReRCHvDimiXa55oH+i2DHzZ3rY7o3llV5LlR14tdpS4ZI7C3ExJ2oDySyKZuPU5p8MK1l+yURgHzLLG++a/dRoLrCQ/GLY65zGncgCx0olC6qeOPYPd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=BXDUau7i; arc=none smtp.client-ip=209.85.167.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f171.google.com with SMTP id 5614622812f47-466eaeda27aso446103b6e.3
        for <devicetree@vger.kernel.org>; Sat, 07 Mar 2026 09:17:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1772903837; x=1773508637; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uLqbBF+LpizOINU7hVvdD1525Ju0a1AaHblaI6jxaPo=;
        b=BXDUau7irOnfFiTavMo2iTXcArn411Bc0S6cLgYkwFoZ8v0KG2gsZRXLB9T+RW8mGS
         3g7FCsqytpsc9BIilmZ8POvmKEnGaLKeku1I5OPBw81gNjTUcKueXJpUjN+by807qHGT
         ZSRcS7WByOgZyA11hJKDnykgjroRzVYyZ7A94WKCinj3BDuAMFsl6/sGNSRhkWYvdtKa
         exy076ci+ByJhRsSUE8i3weYW4FcFAkHOPNE9MKTiVRQYJK0gKkZpDPGAehnrqp6I7PB
         ru8wsuARRnGGTO+jp+N48K99OjQEtG7SYMalohLEI1zQxTKP6/01mx+6JCfTw4Isj5xY
         UNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772903837; x=1773508637;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uLqbBF+LpizOINU7hVvdD1525Ju0a1AaHblaI6jxaPo=;
        b=P9V45hVBBujG0JGj2rRqU/SDbj+PDeaiwsrHjMUDxdkbhUnzy7N/h8Yf/a6Us9UDGj
         LSR1WSdg2/2zqm6p/3SY6GypekTnnNx0GB5wIOBIuzFVZeI2Tsk9Sm2s0nMYJjhMQ5ns
         q/YZUufb5SUNUvqWyjtez0gEPTnkmWdgaXQ7x+I3rGmWtgSgy1VPhjtUADH27tXpKeqO
         uqsMH0yGpUSyp14n3likxM/HieJJ8IqOm0hci8AmWKb2/qPQDCLO+0tyQGOCjMIC7g0y
         R2Yn4XGNDKXG/NYjkYDsMlTC5TYM19GG74yXTCEwrbkHhVYt5TdzQFBNf4cdF7qKKyxh
         93GA==
X-Forwarded-Encrypted: i=1; AJvYcCXuB61SF2vk0vb4qwQZXuh2Xz8f36fmeEgQCR5+fEIw9ThV9jZmzSWTkj8qGM9v8i563Ve1nARHyJud@vger.kernel.org
X-Gm-Message-State: AOJu0YwdUWPPX/Q7hU0dc3xaH1B1Bnx97v93R4znG5Ev1KVqijPgR4+N
	3aEvUyPgTfb1EGlkkgprxMH8KZQjOZrhKacxtLyuZrboLdFcqZWASfQFj2PCA0n3Nco=
X-Gm-Gg: ATEYQzxsjGWmSlRMo5TGiVjoOQxtxsYsJDjc5B+0/1sWK/9pEatVlhI8/5KiZinXVcT
	+iQjOp7dF1BZr14zp3MBXnkvi0ks9XHYCByRCXO9MIH7bwK9pf1J4b/3H+5lBfCjxSvaThSvIZv
	5MEz2HUMQamU6Ea30XK+tgRQD2lNe3gRjSrSqXzcygffA3C4SxvL4WUGtbaVnfq6qsrFcJlxKXP
	bvMXzXAMZlP8MG4eMv0en34lEw8ieBEKtsA+94ATfsrkeGIYnOUfKR2RnpsEWKkxp1bjIl7EKKy
	Cq50oX0pWFEVko8DRtPel87GWvM/m9Y5OKSODPCWio/Iex7WCwDMn0YKi7TUhbWBekOLYClWiaW
	3TxJ7VLdDGAG6YQmzoksCdIxDA6J5XkYwHPldir6QBiKnBuT3+YVOzJd+JRIM7vdOh7Je2RfX34
	n3bfRwth/fWENyVcGxc+CP3WD7xskVu1p0UUR6eVHtG4RSLgpsYTSHTbNr+xire0w/yuJ9B8ykr
	g==
X-Received: by 2002:a05:6808:838b:b0:466:efb5:9434 with SMTP id 5614622812f47-466efb59cc0mr768015b6e.31.1772903837147;
        Sat, 07 Mar 2026 09:17:17 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:cccf:5174:fa72:c520? ([2600:8803:e7e4:500:cccf:5174:fa72:c520])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-466df93e85fsm2677663b6e.2.2026.03.07.09.17.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Mar 2026 09:17:15 -0800 (PST)
Message-ID: <3181de17-d3f6-479e-9500-f5d552bb4151@baylibre.com>
Date: Sat, 7 Mar 2026 11:17:15 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] iio: proximity: add driver for ST VL53L1X ToF sensor
To: Siratul Islam <email@sirat.me>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org
Cc: jic23@kernel.org, nuno.sa@analog.com, andy@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, linux-kernel@vger.kernel.org
References: <20260303090253.42076-1-email@sirat.me>
 <20260303090253.42076-3-email@sirat.me>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260303090253.42076-3-email@sirat.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: 8A5DB22CDD2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-272501-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.976];
	RCPT_COUNT_SEVEN(0.00)[10];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Action: no action

On 3/3/26 3:02 AM, Siratul Islam wrote:
> Add support for the STMicroelectronics VL53L1X Time-of-Flight
> ranging sensor with I2C interface.
> 

...

> +static int vl53l1x_set_distance_mode(struct vl53l1x_data *data,
> +				     enum vl53l1x_distance_mode mode)
> +{
> +	int ret;
> +
> +	switch (mode) {
> +	case VL53L1X_SHORT:
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_PHASECAL_CONFIG__TIMEOUT_MACROP,
> +				   0x14);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_RANGE_CONFIG__VCSEL_PERIOD_A, 0x07);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_RANGE_CONFIG__VCSEL_PERIOD_B, 0x05);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_RANGE_CONFIG__VALID_PHASE_HIGH,
> +				   0x38);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap, VL53L1X_SD_CONFIG__WOI_SD0,
> +				   0x07);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap, VL53L1X_SD_CONFIG__WOI_SD1,
> +				   0x05);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_SD_CONFIG__INITIAL_PHASE_SD0, 6);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_SD_CONFIG__INITIAL_PHASE_SD1, 6);

Maybe worth using regmap_multi_reg_write() above and below?

> +		break;
> +	case VL53L1X_LONG:
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_PHASECAL_CONFIG__TIMEOUT_MACROP,
> +				   0x0A);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_RANGE_CONFIG__VCSEL_PERIOD_A, 0x0F);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_RANGE_CONFIG__VCSEL_PERIOD_B, 0x0D);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_RANGE_CONFIG__VALID_PHASE_HIGH,
> +				   0xB8);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap, VL53L1X_SD_CONFIG__WOI_SD0,
> +				   0x0F);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap, VL53L1X_SD_CONFIG__WOI_SD1,
> +				   0x0D);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_SD_CONFIG__INITIAL_PHASE_SD0, 14);
> +		if (ret)
> +			return ret;
> +		ret = regmap_write(data->regmap,
> +				   VL53L1X_SD_CONFIG__INITIAL_PHASE_SD1, 14);
> +		break;
> +	default:
> +		return -EINVAL;
> +	}
> +
> +	if (ret)
> +		return ret;
> +
> +	data->distance_mode = mode;
> +	return 0;
> +}
> +

...

> +	return ret;
> +}
> +
> +static const struct iio_chan_spec vl53l1x_channels[] = {
> +	{
> +		.type = IIO_DISTANCE,
> +		.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
> +				      BIT(IIO_CHAN_INFO_SCALE),
> +		.scan_index = 0,
> +		.scan_type = {
> +			.sign = 'u',
> +			.realbits = 16,
> +			.storagebits = 16,
> +		},
> +	},
> +	IIO_CHAN_SOFT_TIMESTAMP(1),
> +};
> +
> +static int vl53l1x_read_raw(struct iio_dev *indio_dev,
> +			    const struct iio_chan_spec *chan, int *val,
> +			    int *val2, long mask)
> +{
> +	struct vl53l1x_data *data = iio_priv(indio_dev);
> +	int ret;
> +
> +	if (chan->type != IIO_DISTANCE)
> +		return -EINVAL;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_RAW:

What is here is perfectly fine, but I'm sure someone will eventually
want to change it to IIO_DEV_ACQUIRE_DIRECT_MODE().

> +		if (!iio_device_claim_direct(indio_dev))
> +			return -EBUSY;
> +		ret = vl53l1x_read_proximity(data, val);
> +		iio_device_release_direct(indio_dev);
> +		if (ret)
> +			return ret;
> +		return IIO_VAL_INT;
> +	case IIO_CHAN_INFO_SCALE:
> +		*val = 0;
> +		*val2 = 1000;
> +		return IIO_VAL_INT_PLUS_MICRO;
> +	default:
> +		return -EINVAL;
> +	}
> +}
> +
> +static int vl53l1x_validate_trigger(struct iio_dev *indio_dev,
> +				    struct iio_trigger *trig)
> +{
> +	struct vl53l1x_data *data = iio_priv(indio_dev);
> +
> +	return data->trig == trig ? 0 : -EINVAL;
> +}
> +
> +static const struct iio_info vl53l1x_info = {
> +	.read_raw = vl53l1x_read_raw,
> +	.validate_trigger = vl53l1x_validate_trigger,
> +};
> +
> +static irqreturn_t vl53l1x_trigger_handler(int irq, void *priv)
> +{
> +	struct iio_poll_func *pf = priv;
> +	struct iio_dev *indio_dev = pf->indio_dev;
> +	struct vl53l1x_data *data = iio_priv(indio_dev);
> +	struct {
> +		u16 distance;
> +		aligned_s64 timestamp;
> +	} scan = {};
> +	unsigned int range_status;
> +	int ret;
> +
> +	ret = regmap_read(data->regmap, VL53L1X_RESULT__RANGE_STATUS,
> +			  &range_status);
> +	if (ret || (range_status & VL53L1X_RANGE_STATUS_MASK) !=

Probably best to use FIELD_GET() here and redefine VL53L1X_RANGE_STATUS_VALID
accrodingly.

> +			   VL53L1X_RANGE_STATUS_VALID)
> +		goto done;
> +
> +	ret = vl53l1x_read_u16(data,
> +			       VL53L1X_RESULT__FINAL_CROSSTALK_CORRECTED_RANGE_MM_SD0,
> +				   &scan.distance);
> +	if (ret)
> +		goto done;
> +
> +	iio_push_to_buffers_with_timestamp(indio_dev, &scan,
> +					   iio_get_time_ns(indio_dev));
> +
> +done:
> +	iio_trigger_notify_done(indio_dev->trig);
> +	vl53l1x_clear_irq(data);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t vl53l1x_threaded_irq(int irq, void *priv)
> +{
> +	struct iio_dev *indio_dev = priv;
> +	struct vl53l1x_data *data = iio_priv(indio_dev);
> +
> +	if (iio_buffer_enabled(indio_dev))
> +		iio_trigger_poll_nested(indio_dev->trig);
> +	else
> +		complete(&data->completion);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static int vl53l1x_configure_irq(struct i2c_client *client,
> +				 struct iio_dev *indio_dev)

Would be more logical to move this function closer to probe.

> +{
> +	struct vl53l1x_data *data = iio_priv(indio_dev);
> +	int irq_flags = irq_get_trigger_type(client->irq);
> +	int ret;
> +
> +	if (!irq_flags)
> +		irq_flags = IRQF_TRIGGER_FALLING;
> +
> +	ret = devm_request_threaded_irq(&client->dev, client->irq, NULL,
> +					vl53l1x_threaded_irq,
> +					irq_flags | IRQF_ONESHOT,
> +					indio_dev->name, indio_dev);
> +	if (ret) {
> +		dev_err(&client->dev, "devm_request_irq error: %d\n", ret);


Can use return dev_err_probe() here since this is only called in probe.


> +		return ret;
> +	}
> +
> +	ret = regmap_write(data->regmap, VL53L1X_SYSTEM__INTERRUPT_CONFIG_GPIO,
> +			   VL53L1X_INT_NEW_SAMPLE_READY);
> +	if (ret)
> +		dev_err(&client->dev, "failed to configure IRQ: %d\n", ret);

ditto

> +
> +	return ret;
> +}
> +
> +static int vl53l1x_buffer_postenable(struct iio_dev *indio_dev)
> +{
> +	struct vl53l1x_data *data = iio_priv(indio_dev);
> +
> +	return vl53l1x_start_ranging(data);
> +}
> +
> +static int vl53l1x_buffer_postdisable(struct iio_dev *indio_dev)
> +{
> +	struct vl53l1x_data *data = iio_priv(indio_dev);
> +	int ret;
> +
> +	ret = vl53l1x_stop_ranging(data);
> +	if (ret)
> +		return ret;
> +
> +	reinit_completion(&data->completion);
> +	wait_for_completion_timeout(&data->completion, HZ / 10);
> +
> +	return vl53l1x_clear_irq(data);
> +}
> +
> +static const struct iio_buffer_setup_ops vl53l1x_buffer_setup_ops = {
> +	.postenable = &vl53l1x_buffer_postenable,
> +	.postdisable = &vl53l1x_buffer_postdisable,
> +};

These are not symetric. It either needs to be postenable/predisable
or preenable/postdisable.


