Return-Path: <devicetree+bounces-73812-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EB02900C53
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 21:13:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 109A01C2169D
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2024 19:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAABF14658E;
	Fri,  7 Jun 2024 19:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dEaQi6HZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3EAE143876
	for <devicetree@vger.kernel.org>; Fri,  7 Jun 2024 19:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717787620; cv=none; b=N9qPb6kcj3nKnViuWE8Ooudjd7TIZ/3Jbc4tXVCoxE7eCVR95553xotTj8JiDLAuYGJLVMez2Zzh77+VVvYGN6D0qk38PbGGWM2j57nPiISiSPBYc79Ua1LnM/CG1augx7x7Roqdez5BRjAgr0kZN0JDP0qa7vPNQsrkbhVAJxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717787620; c=relaxed/simple;
	bh=cEDTgMrXlgD0YchbLBGmUJQMZeBVMnlvkFJQntt8S1E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tK1PPspUmwIx91sWXQWiOudgKt6D9boBbZ0o7dd0vQ7lI0vUXjx5yvK4fibaBO4Aqw4IvF0mCZlSQcpQFYxCnm2T7/j5Nk4wds2sjaYWCb4iZ3FN75swvSg01MFT7ZeGToJiUFXtZhMTRm2giqeJ68DoeS0ULnzXFMtr9sZF0dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dEaQi6HZ; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3d1fd550811so1415410b6e.2
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2024 12:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717787618; x=1718392418; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q3sLjneVKNLVUsJ1Sg3YJK9+pNgg6awuADOkTmlppuU=;
        b=dEaQi6HZsj0Ka1JKn17qhYe3ROuPYOQA/B4KJGey47kG4p8NRO2FAjMchyFbyBcuhk
         iImZW0Dh+s9w5aFXU+zC4dtreTpvTjE6VzzEafLLuikV/hBT4s44blP8njg1GI6YVokR
         IvwscBKQKYvel+XGI0hnZlNUERE3K4VoLIN0unrPGiWvu7j3TX80pL07Z8fdi+dkyG/U
         b6989J+a4bKskx4W27GgyO2qt2uMcimTo3W+hjmBfobIAsArJLX+M3t/cCL0EVYLTyJW
         dDFYvKg5pcmeUUaFpuOHYKCR9aZgUUSefBElqQBJWKJwlyYTator0BPlIJRRY+VuHRui
         WBBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717787618; x=1718392418;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q3sLjneVKNLVUsJ1Sg3YJK9+pNgg6awuADOkTmlppuU=;
        b=mD72M7cflzcx/iH3tfWB/q6Dnf3tzKxkmMvZPxk5eo3BntA+qqUC7Olpet6amL+Q0A
         sAY0DXqqmb6XcGoB05YPcccgZfWXX58f8hSY/UNxRcB523wqedOVuIrv2DDNnSmujhUt
         +ic2v+smXpbZEUzPzpyKyjR+lh3dJtteapQopZhlMnqf5KtxO1DRmHsX9F96/tfXDawy
         wZ8/8kocQfG6el6ftyDCcIUWA/iWjVRiiLwVvgWvMF7UYxeYWcZLvTC/Um35GhN8/JPo
         6ilQGrwBWVretbg5eckvfOWFtMm5TM+1RR7HqDLhVW7vTDr9I+tjJnDcMQpgmBRetta4
         KD8w==
X-Forwarded-Encrypted: i=1; AJvYcCXC3BfKgDKtHYpS1NqXC2B+xLRl7pyghezFWqw15kRAURo+VcDozXeTx5ZX6D/kFf9p1iETaArjf3ghaBzQUGo+b3LOxY0mPMUhxA==
X-Gm-Message-State: AOJu0YzhQOcT+8qJz+Zs91ij/UQJdd9Au2OnTw+K6hXe8SSrVoQozfJC
	qcxohyBE/NQGON0h2hsrHt2iTaq9SRCgAmRtjRi5b5C+muNikaP0itOU8oACYog=
X-Google-Smtp-Source: AGHT+IGVJjnuB1/LVAcUwO8woWT9s8JYzSpFOfB2Lad6HmxFQ/s3LlkY+Ca7aoWJuM4DQ6E+N7H6OA==
X-Received: by 2002:a05:6808:1b10:b0:3d1:dfd0:6aa3 with SMTP id 5614622812f47-3d210f5200emr4165117b6e.51.1717787617690;
        Fri, 07 Jun 2024 12:13:37 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3d20b69f2f2sm747128b6e.33.2024.06.07.12.13.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 07 Jun 2024 12:13:37 -0700 (PDT)
Message-ID: <afd89c16-d9d7-43e3-b40a-a88588fd7346@baylibre.com>
Date: Fri, 7 Jun 2024 14:13:36 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/5] iio: dac: ltc2664: Add driver for LTC2664 and
 LTC2672
To: "Paller, Kim Seer" <KimSeer.Paller@analog.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen
 <lars@metafoo.de>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Dimitri Fedrau <dima.fedrau@gmail.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "Hennerich, Michael" <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 kernel test robot <lkp@intel.com>
References: <20240603012200.16589-1-kimseer.paller@analog.com>
 <20240603012200.16589-6-kimseer.paller@analog.com>
 <408aa030-23df-418d-a04d-a5551119624b@baylibre.com>
 <PH0PR03MB7141405D9A40A18E1C90FF79F9FA2@PH0PR03MB7141.namprd03.prod.outlook.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <PH0PR03MB7141405D9A40A18E1C90FF79F9FA2@PH0PR03MB7141.namprd03.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/6/24 10:49 AM, Paller, Kim Seer wrote:


>>> +#define LTC2664_CHANNEL(_chan) {					\
>>> +	.indexed = 1,							\
>>> +	.output = 1,							\
>>> +	.channel = (_chan),						\
>>> +	.info_mask_separate = BIT(IIO_CHAN_INFO_SCALE) |		\
>>> +		BIT(IIO_CHAN_INFO_OFFSET) | BIT(IIO_CHAN_INFO_RAW),
>> 	\
>>> +	.info_mask_separate_available = BIT(IIO_CHAN_INFO_RAW),
>> 	\
>>> +	.ext_info = ltc2664_ext_info,					\
>>> +}
>>> +
>>> +static const struct iio_chan_spec ltc2664_channels[] = {
>>> +	LTC2664_CHANNEL(0),
>>> +	LTC2664_CHANNEL(1),
>>> +	LTC2664_CHANNEL(2),
>>> +	LTC2664_CHANNEL(3),
>>> +};
>>> +
>>> +static const struct iio_chan_spec ltc2672_channels[] = {
>>> +	LTC2664_CHANNEL(0),
>>> +	LTC2664_CHANNEL(1),
>>> +	LTC2664_CHANNEL(2),
>>> +	LTC2664_CHANNEL(3),
>>> +	LTC2664_CHANNEL(4),
>>> +};
>>
>> Do we really need these since they are only used as a template anyway?
>> We could just have a single template for one channel and copy it as
>> manay times as needed.
> 
> Yes, from what I can see we need separate channel specs for both devices
> since they have a differing number of channels. As for your suggestion about
> having a single template for one channel and copying it as many times as
> needed, I'm not entirely sure how to implement it in this context. Could you
> provide something like a code snippet to illustrate this?
> 

Instead of the #define and arrays above, just have a single static struct:


static const struct iio_chan_spec ltc2664_channel_template = {
	.indexed = 1,
	.output = 1,
	.info_mask_separate = BIT(IIO_CHAN_INFO_SCALE) |
			      BIT(IIO_CHAN_INFO_OFFSET) |
			      BIT(IIO_CHAN_INFO_RAW),
	.info_mask_separate_available = BIT(IIO_CHAN_INFO_RAW),
	.ext_info = ltc2664_ext_info,
};


>>> +static int ltc2664_setup(struct ltc2664_state *st, struct regulator *vref)
>>> +{
>>> +	const struct ltc2664_chip_info *chip_info = st->chip_info;
>>> +	struct gpio_desc *gpio;
>>> +	int ret;
>>> +
>>> +	/* If we have a clr/reset pin, use that to reset the chip. */
>>> +	gpio = devm_gpiod_get_optional(&st->spi->dev, "reset", GPIOD_OUT_HIGH);
>>> +	if (IS_ERR(gpio))
>>> +		return dev_err_probe(&st->spi->dev, PTR_ERR(gpio),
>>> +				     "Failed to get reset gpio");
>>> +	if (gpio) {
>>> +		usleep_range(1000, 1200);
>>> +		gpiod_set_value_cansleep(gpio, 0);
>>> +	}
>>> +
>>> +	/*
>>> +	 * Duplicate the default channel configuration as it can change during
>>> +	 * @ltc2664_channel_config()
>>> +	 */
>>> +	st->iio_channels = devm_kmemdup(&st->spi->dev, chip_info->iio_chan,
>>> +					(chip_info->num_channels + 1) *
>>> +					sizeof(*chip_info->iio_chan),
>>> +					GFP_KERNEL);

Then here, instead of devm_kmemdup():

	st->iio_channels = devm_kcalloc(&st->spi->dev,
					chip_info->num_channels,
					sizeof(struct iio_chan_spec),
					GFP_KERNEL);
	if (!st->iio_channels)
		return -ENOMEM;

	for (i = 0; i < chip_info->num_channels; i++) {
		st->iio_channels[i] = ltc2664_channel_template;
		st->iio_channels[i].type = chip_info->measurement_type;
		st->iio_channels[i].channel = i;
	}

Note: the original code was missing the error check and I think
num_channels + 1 was 1 too many, so I fixed both of those in the
example as well.

This also replaces:

	st->iio_channels[chan].type = chip_info->measurement_type;

from ltc2664_set_span() as it seems a bit out of place there.

>>> +
>>> +	ret = ltc2664_channel_config(st);
>>> +	if (ret)
>>> +		return ret;
>>> +
>>> +	if (!vref)
>>> +		return 0;
>>> +
>>> +	return regmap_set_bits(st->regmap, LTC2664_CMD_CONFIG, LTC2664_REF_DISABLE);
>>> +}

