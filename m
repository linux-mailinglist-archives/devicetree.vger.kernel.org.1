Return-Path: <devicetree+bounces-123816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E28E09D6182
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 16:46:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5DB8B1603D1
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 15:46:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1741E13E40F;
	Fri, 22 Nov 2024 15:46:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="JWKW2ogm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f50.google.com (mail-oo1-f50.google.com [209.85.161.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB1A4134A8
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 15:46:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732290378; cv=none; b=lcKttSPTCtXFZzJr0/Uz9OZry/++q556OwDvsBrTWpynF8cIVKy65/daQdoLxTnn1gnTffZ/g+AxdyuyzuDA3SY3iwco8v//GATl39/5ivy9lb1SM/dx46QioOiXeaHe7qrl819C6676oXt8ld2/TjVZWojfJ0ZGMaq4+pzSQAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732290378; c=relaxed/simple;
	bh=8A9KboFZlDjH+7JL2T93PiUqvpXAbf/duCGgVYuUXmY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g9/4ekGxDj2jtDOYQSA77oFcYOmfXubBPxWGVJevEQAvEzpexj0icsIQdoxkYHqVBmcXNwcbVAPslDF/bP6K463Te9uS6osy/gSbZRzDHKXC6bwlVh1pV7w1Tmv+IpH/6EI88jP/TKID1dmBKkkbtbhGeTwMbq01MF/wQHW9KBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=JWKW2ogm; arc=none smtp.client-ip=209.85.161.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f50.google.com with SMTP id 006d021491bc7-5ee1c3dbeb9so1118020eaf.1
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 07:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732290374; x=1732895174; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=D2navrkuwUUZwOHUSJByS4fe4hcXyHRaDfcbWiC/spM=;
        b=JWKW2ogmFgDUWU9PMOyPjN4Q0V8INbdgTRIo3/yrdahDjgJ5U+cxe1jrA5W4zVxgmm
         kzwDmmKtyfXUbSaVyPyKTBQ7yR0kHfgwpbU2Wn+KoMk0hBTk4DMRXIb4jaK3frkBijAc
         EGzbFDHyjaYu9r6b0LOLqRifY1oaZtduuVLJnawbHFdjoe+9J07m+ukzNHu43AocSsn7
         HALfoPmTLRH5h/aRxfN62LCXRJp/FPXFnkrl6t3Bx6fVezNfQlFi+y685AgYnyDbAXGl
         kyfX5MsrStYOjOB6NPTxq4URFE7gnQkLo51QEa6vCtyGy/AWsKT8zCO1oyePAuQLdXvn
         fHEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732290374; x=1732895174;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=D2navrkuwUUZwOHUSJByS4fe4hcXyHRaDfcbWiC/spM=;
        b=OPPDzem2MO6Pj8VPTfbb6UXNGaP0MTXk3JLo5NkY0BBUqsb/LYxXMLYVSREW9Kl6jo
         7ugZh9ZRzixnxw3vGIC1T5tqpKM40200//LEteQF3O2kR81RuMiFFt9UeC+57oQOYBUg
         0eWbBJkl86XmDKAW/zfPGNpAfgaKqhXNOc8yayyPY4RNnvOzy+gp5vE1Y6QtulTh9//S
         scthoRoolYNjiyJLUGQb5K53tl/4uLCWjZI/WL+/P5loMtEwP/B7lMdt4TMEHfD6kxSi
         ws6m09maP8h1LhQuy9jDhZYZhZhUbqGBDTFgQDg8xR84Yn048QDKFAIcRAcZVjebjWI4
         nuXg==
X-Forwarded-Encrypted: i=1; AJvYcCUAKJSM5JuxkAYl/rvnO28qE68o5DFLU1EFm2uweLxMP/03OJlW9muc/KAD0BVKa9bvuGgI1+Q8hAeL@vger.kernel.org
X-Gm-Message-State: AOJu0YzSsPahUBxEPexk1JuVVl8Zet7p9HiIg9QMvZTLfM5EFrEGyg9i
	/ukQsCBIB5LaccmMqd8mc+Qcfcnx6ZyeJGY84MwiG630ENHmTyGf0WehCTsL+KY=
X-Gm-Gg: ASbGncsjpujGJEbLFQSRZ5TF7bygKGD5Z1lLjmJDaDaA3M8XJQvxAnI/1LmXAR6MlS9
	WrqpitcvNlld8njILOP09XndhAclP8jg7fBqJpz1TvCQX7K50fIOPKWEvLidOALfiHZhuwblW0x
	VJGuB4RiiQja3SHP90MT+QvxzBrEYKLy17g6O5OIIKbox1n5k7mhCelxrWzm0HpcoQ3SCZ8UMoj
	PcyCVQ6JLZk+felHT0kOgPuC4vdaJ2JcQhqTT8B73J8S7KwTcSLV/XOHKIJPfggnUvhgbDh8LcP
	94pIGvqIu6I=
X-Google-Smtp-Source: AGHT+IHQO+VDjXrAfCPt1zOyi9ptupBJn2BIBWMu7tResn7bM8x9VgkS1UAcVQpJvGu5LM+7F4LQNg==
X-Received: by 2002:a05:6820:8ca:b0:5d6:ab0:b9a6 with SMTP id 006d021491bc7-5f06a25b762mr2076127eaf.4.1732290372320;
        Fri, 22 Nov 2024 07:46:12 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5f06984a66fsm420673eaf.27.2024.11.22.07.46.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 07:46:11 -0800 (PST)
Message-ID: <a50bc35e-779c-414e-bfa3-cf9264cd77be@baylibre.com>
Date: Fri, 22 Nov 2024 09:46:10 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 10/10] iio: adc: ad7124: Implement temperature
 measurement
To: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@baylibre.com>,
 Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>
Cc: Alexandru Ardelean <aardelean@baylibre.com>,
 Alisa-Dariana Roman <alisa.roman@analog.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>,
 Conor Dooley <conor+dt@kernel.org>,
 Dumitru Ceclan <dumitru.ceclan@analog.com>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20241122113322.242875-12-u.kleine-koenig@baylibre.com>
 <20241122113322.242875-22-u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241122113322.242875-22-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/22/24 5:33 AM, Uwe Kleine-König wrote:
> If the maximal count of channels the driver supports isn't fully
> utilized, add an attribute providing the internal temperature.
> 

...

> @@ -901,6 +945,32 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
>  		chan[channel].channel2 = ain[1];
>  	}
>  
> +	if (num_channels < AD7124_MAX_CHANNELS) {
> +		st->channels[num_channels] = (struct ad7124_channel) {
> +			.nr = num_channels,
> +			.ain = AD7124_CHANNEL_AINP(AD7124_INPUT_TEMPSENSOR) |
> +				AD7124_CHANNEL_AINM(AD7124_INPUT_AVSS),
> +			.cfg = {
> +				.bipolar = true,
> +			},
> +		};
> +
> +		chan[num_channels] = (struct iio_chan_spec) {
> +			.type = IIO_TEMP,
> +			.info_mask_separate = BIT(IIO_CHAN_INFO_RAW) |
> +				BIT(IIO_CHAN_INFO_SCALE) | BIT(IIO_CHAN_INFO_OFFSET) |
> +				BIT(IIO_CHAN_INFO_SAMP_FREQ),
> +			.scan_type = {
> +				.sign = 'u',

The combination of .bipolar = true and .sign = 'u' looks a bit suspicions.

> +				.realbits = 24,
> +				.storagebits = 32,
> +				.endianness = IIO_BE,
> +			},
> +			.address = num_channels,
> +			.scan_index = num_channels,
> +		};
> +	};
> +
>  	return 0;
>  }
>  


