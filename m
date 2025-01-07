Return-Path: <devicetree+bounces-136342-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDBAA04DBA
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 00:41:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 424567A0FDB
	for <lists+devicetree@lfdr.de>; Tue,  7 Jan 2025 23:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4BE21F4E5C;
	Tue,  7 Jan 2025 23:41:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XGnfxwNC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEE3E1DF75C
	for <devicetree@vger.kernel.org>; Tue,  7 Jan 2025 23:40:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736293260; cv=none; b=tUwHFa3xmNukOPJlgRoPnI88XG4idVuy/Q9rHCBXXZAmRqDJNTDqyeX2cuPiQvoy69qk1EvrmkJ+EvoE1Cko19g0c33fmQSOir1rBQZAd47Kv0azuWdmXFgnVD4JwA1yAQGnQ8KtTKYSd6WOX1du4SR2aIx2J3lw4599FUpFi4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736293260; c=relaxed/simple;
	bh=vY3TG3+Uru+KujoSXwhGQJx4QFHJrYIK51bTcCgFbTM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cxALMqwzxWq1f2gru7aqyzf2K5UbHpI435qRyY6C/cTlqJZ5e9VLNRZZlJ+YWA/AJcO9ONysN2IRO0UD5mrVrBRgFdx71c+5wj/ugF5EWLAgoYIaThwp38m+yvKCZnriQA1SZg5xfY7lgTEh1xJukuvsn7FbUlL7djYVE6SMKH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=XGnfxwNC; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3eba583fbe8so5413436b6e.3
        for <devicetree@vger.kernel.org>; Tue, 07 Jan 2025 15:40:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1736293257; x=1736898057; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hA9SMIRGl/zMWWHv+Ri/ux3lkoHtjeTWyaOGSnC9Hc8=;
        b=XGnfxwNCc0CrjZzcUqTbXm1smku4Km/qIsNcAbEgJaF/FbhWWbq+HV1H0MNW374NEL
         S0vAopqA5fXwTA9/ZHvYvZDOsr3l9rnaIwaJgEEkiAqWTHP+8TzyRSwHs4OASbFrnswc
         2c6n11qwWLYC1ufmvPeO5C8ZDPnjSXtV9WBpPktIcCY4tdq357hSNTppnSX9ZYqcW6Eu
         EGyMIcUwyIkK6PGPmjoq+kfOJZB3ABDA64FGXrXT4IIR6IvfibfLOAdW7bK2VAm8RgS5
         uChiCkR/lUxbRaHIaYs2IQ52broldzH/NPKSNFPWBvKVwtZsrrOSAFOpCS2q4AeS33e9
         LbKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736293257; x=1736898057;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hA9SMIRGl/zMWWHv+Ri/ux3lkoHtjeTWyaOGSnC9Hc8=;
        b=IbQaaJu+p1VSYSpFt8Zpb6gTWVz88OnP1vHprujjwJdBZmikZXtnx1jMstmdZKsf6y
         f+WNEnkqWcSYhJlduKuMf2OVxRUx/AOfqvvgQoxjUHiOuu4ulQfVQsRQOK49A86a8qph
         bZvn8ZaexoiRY0hgAwbt1a7RXJ6tiYAT1HiFIf/8yskbYGyPTZYU/W6CwYLBDaU5NYI2
         tyDidh+I+wrlvwgPXxGyqj4CQ+RCo+x10M+HgUI3MeZ/r/6LcbJ/1Rmv1fRCchgOPEuL
         RyWNOXq1rJ3eZkNb5PobKdogLHny7q/Rj0g+5stOD33ryZVByHtp1CKaOrnkEPcRZGzU
         PsHg==
X-Forwarded-Encrypted: i=1; AJvYcCX/PnwdFcFshciht1QfJj0w/bcyo3x3+AJqwKa5f26poTCkjO1/6ufHOyx9C/1tmXFvcAnJoujouTFa@vger.kernel.org
X-Gm-Message-State: AOJu0YwAcHkz3FOKEPG6msWqKADhXx3J6dTp9a1cdiDl7FqGBEFzpvTx
	vS+1XO/kHeHFny4L/tqqBaH+GZh3QIAtKyXLqe+FRsQq3Z+HG3eQYWOM+Y39nD8=
X-Gm-Gg: ASbGncvZ/+kLIHRODXXD9Z58bUYLGXKfbeI8+xP+aV7nMRuu7YDNBxJngIQLgTkI1oA
	pY6ug3/9JiNNFM5zECaKCE0120lfPtJXod4RIt94grbIWU0xwzod+irlsbD/uSweU3ghl8Qvptp
	Ybd8W1NSF3jrzE+Y0KkXFqbntjQ9Z92PTOxmVxpDhDZsFSEkIBhG3Uh5LE8sRoEFjYY5B0Do6ra
	UbG7ahtF/u3oJKU0BIFvW9JADJ5Mp76di8RgCtgfeNEXq/HBERwefyKbPxvgYbeIB/HAn7x7HHx
	nTGDWJ+qZNk2VhXsQA==
X-Google-Smtp-Source: AGHT+IEgB/WWksiX3jt4m5035Fhdbgpeqq/NdpXf+C0NbgMNenjn6UZUe5f6Mk4QAPVqauJHK/ySZg==
X-Received: by 2002:a05:6808:220e:b0:3e7:bd97:759a with SMTP id 5614622812f47-3ef2eeb0d61mr379709b6e.39.1736293256882;
        Tue, 07 Jan 2025 15:40:56 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3ece247e117sm10792562b6e.14.2025.01.07.15.40.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jan 2025 15:40:55 -0800 (PST)
Message-ID: <6b60de31-4bbb-4a94-a62b-63ccbacdf1b4@baylibre.com>
Date: Tue, 7 Jan 2025 17:40:53 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 07/15] iio: adc: ad7768-1: Add reset gpio
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc: Sergiu Cuciurean <sergiu.cuciurean@analog.com>, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com
References: <cover.1736201898.git.Jonathan.Santos@analog.com>
 <45cfd15501384a183a97d871b6848fb79fdb7b39.1736201898.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <45cfd15501384a183a97d871b6848fb79fdb7b39.1736201898.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 1/7/25 9:25 AM, Jonathan Santos wrote:
> From: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> 
> Depending on the controller, the default state of a gpio can vary. This
> change excludes the probability that the dafult state of the ADC reset
> gpio will be HIGH if it will be passed as reference in the deivcetree.
> 
> Signed-off-by: Sergiu Cuciurean <sergiu.cuciurean@analog.com>
> ---
>  drivers/iio/adc/ad7768-1.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
> index 881446462ff5..f73b9aec8b0f 100644
> --- a/drivers/iio/adc/ad7768-1.c
> +++ b/drivers/iio/adc/ad7768-1.c
> @@ -161,6 +161,7 @@ struct ad7768_state {
>  	struct completion completion;
>  	struct iio_trigger *trig;
>  	struct gpio_desc *gpio_sync_in;
> +	struct gpio_desc *gpio_reset;
>  	const char *labels[ARRAY_SIZE(ad7768_channels)];
>  	/*
>  	 * DMA (thus cache coherency maintenance) may require the
> @@ -441,6 +442,18 @@ static int ad7768_setup(struct ad7768_state *st)
>  {
>  	int ret;
>  
> +	st->gpio_reset = devm_gpiod_get_optional(&st->spi->dev, "reset",
> +						 GPIOD_OUT_LOW);

Could be simplified by setting this to GPIOD_OUT_HIGH and drop

	gpiod_direction_output(st->gpio_reset, 1);

> +	if (IS_ERR(st->gpio_reset))
> +		return PTR_ERR(st->gpio_reset);
> +
> +	if (st->gpio_reset) {
> +		gpiod_direction_output(st->gpio_reset, 1);
> +		usleep_range(10, 15);
> +		gpiod_direction_output(st->gpio_reset, 0);
> +		usleep_range(10, 15);

prefer fsleep()

> +	}
> +

We can move the code below in an else since we don't need to do 2 resets.

>  	/*
>  	 * Two writes to the SPI_RESET[1:0] bits are required to initiate
>  	 * a software reset. The bits must first be set to 11, and then


