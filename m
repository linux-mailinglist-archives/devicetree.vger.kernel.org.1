Return-Path: <devicetree+bounces-123805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFEF9D6126
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 16:14:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 820F2B21025
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 15:14:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F03FC13D2B2;
	Fri, 22 Nov 2024 15:14:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="Ql+z6/BF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com [209.85.167.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A2C2BAEC
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 15:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732288464; cv=none; b=ZIKdzly0VsZigKpIltWaiqpLaTKKjloA2M1rQecpFy3BX+q8nsChWOlcl1rDnY1eOR5pPWxcIRoU623BFy5FbHonh4838vIL2bN+CI2qm9tkAnDXMb1diFU2HBqsq57Do3IkRfRRgXPbg4PcT/eoUyj+poHcSA+/IaU5dCBx0Wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732288464; c=relaxed/simple;
	bh=O52olxiNLzvwCavQPnCWKjCXgwM4DfuDJpPiYlMQjl0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nJRcjMnk32W4UJc5Ip6nbHFs9MjC0AVzSWqEZ4B00qjGQVfNUEmRUuYFb0pKXFFFLaHjrlaxNkIyqwNHfPWIT5ihZAUPh9KgoBqMX5d4ElItNT/SuemoMB0+sN2mYj7cDvQhMirMvn7rJyTFnA21X4nJokh0GhYQi2wJLL8pHHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=Ql+z6/BF; arc=none smtp.client-ip=209.85.167.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-3e7e2e6ce0aso1082567b6e.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 07:14:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1732288462; x=1732893262; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0kYbhDTXa5oXk2p/WNmgQ8jaLJoIT51c3/cNZ/jqLOw=;
        b=Ql+z6/BFordlYJtqI7PJwASnrsNlImP+HEW5ngrCXHk3rSrUbdNIfv3/gb0+OGSRWA
         SFXbyODgOZXd0ul+6odDaoWpVBPD9FvFEMZUW57V3whiCtmioreR2YtTcTfvRJ/hGgi+
         dBBnwzJayoB3i1/NsObLIRgObfq8qVaEUjlhPWuz37aqfEJfb1O/iLunyECCQYrepVT8
         jEEPH712V8P8Hs9q6Xh09REZpqluvttfzPMejLyafIHpcVsHb0o50txaX0Bvk8vCXGPr
         7QRSgGNE/WZazOugpv9G9HXYwHJGF9K47WNWGL30WMw9uJaFuEyZpdDwN/FH34KnXdn9
         VByA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732288462; x=1732893262;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0kYbhDTXa5oXk2p/WNmgQ8jaLJoIT51c3/cNZ/jqLOw=;
        b=r20F/pmtIvIl3/6MjmrRXNwudNU9JUSU2Os2eyFQTMpndC49F67lYqJJ3QvS81w+3B
         AjrTWpYga1whXfQk3HF5yGwoDokeGSp0Xf9rln614ABWXJrHlUVy5zFNj6a34EqVBZkA
         hxZLhEoZbL46Ohb7wLbvFXxDGAs00RJzTAB9uekoycSZdxnJ1XJG2YUoYsC7IthQCXk1
         55AUv0nzz9qpQK3O5ryvZbesMJB4pjdLzQ3FZraOCEImDfezDlr5r043sSL89JjgDoTd
         jCVqHkjt497+y3WURqGXzSJPpuVVyegou3cl9BedJC7U+EWJb6fKm8E7z1hx/2LWILhL
         1eVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZgB8lcGrUhVQ5NJ+4ivDQhzqce3IvBnLKgg8zW9nULO7NGYHBb158vsVfjq9XMj59kMphWHtmDbGO@vger.kernel.org
X-Gm-Message-State: AOJu0YwWGkrnqfLNB1Xh9H4/i6GBli/GtlmyOmiopIekLXiwjHTjO/jv
	mkeUWirqa/tUhi1BhYd/LmWzk3iB06aYPL5rdSVEQxVOuh0e9748S4gnqn2DawE=
X-Gm-Gg: ASbGncsV4bQfN/6a/K2xrq8Ct9CGNiLlIhUA5dQ01lkjSEToGPyiScXDZNFYJOQRPQp
	fIth4Xk+bMXgv/od64TD9y5Z63w9m5h13J7s0fHCWYc6pjTuedeU8mSdSTyOIHGW6qBfszU9+BJ
	JPRXirDZJwA/5YlECXZAuJoCqQ9UNYyYVd5Ke/kw/BVW7IfDuDVCWbgiaYYmxIvO3Bfb36vj2Zp
	Qse5VMnQoWiboR0GycPfgeSTIa9N3twEMhHqFX3jdQkwWpKx2JgiuV++Fxj8kEzQ/bMydeNJKP7
	m5LCbnzOi5I=
X-Google-Smtp-Source: AGHT+IHi1rbSajXISZpz552EDve4VmtmCu4DfZDFFolYonGEJ4upZPSFhBmFT5ICL+5rkfSQRI8SeA==
X-Received: by 2002:a05:6808:14cd:b0:3e3:cf8b:27b3 with SMTP id 5614622812f47-3e9158089cemr3116963b6e.10.1732288461797;
        Fri, 22 Nov 2024 07:14:21 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3e914e8a3b0sm402924b6e.19.2024.11.22.07.14.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 07:14:20 -0800 (PST)
Message-ID: <afbb5d4d-8715-4544-b372-be23811eebd0@baylibre.com>
Date: Fri, 22 Nov 2024 09:14:18 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/10] iio: adc: ad7124: Don't create more channels
 than the driver can handle
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
 <20241122113322.242875-13-u.kleine-koenig@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241122113322.242875-13-u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 11/22/24 5:33 AM, Uwe Kleine-König wrote:
> The ad7124-4 and ad7124-8 both support 16 channel registers and assigns
> each channel defined in dt statically such a register. While the driver
> could be a bit more clever about this, it currently isn't and specifying
> more than 16 channels yields broken behaviour. So just refuse to bind in
> this situation.

The ad7124-4 datasheet I am looking at says that it only has registers
CONFIG_0 to CONFIG_7, so do we need to limit those chips to 8 channels?
> 
> Fixes: b3af341bbd96 ("iio: adc: Add ad7124 support")
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@baylibre.com>
> ---
>  drivers/iio/adc/ad7124.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/iio/adc/ad7124.c b/drivers/iio/adc/ad7124.c
> index 8d94bc2b1cac..5352b26bb391 100644
> --- a/drivers/iio/adc/ad7124.c
> +++ b/drivers/iio/adc/ad7124.c
> @@ -821,6 +821,16 @@ static int ad7124_parse_channel_config(struct iio_dev *indio_dev,
>  	if (!st->num_channels)
>  		return dev_err_probe(dev, -ENODEV, "no channel children\n");
>  
> +	/*
> +	 * The driver assigns each logical channel defined in the device tree
> +	 * statically one channel register. So only accept 16 such logical
> +	 * channels to not treat CONFIG_0 (i.e. the register following
> +	 * CHANNEL_15) as an additional channel register. The driver could be
> +	 * improved to lift this limitation.
> +	 */
> +	if (st->num_channels > AD7124_MAX_CHANNELS)
> +		return dev_err_probe(dev, -EINVAL, "Too many channels defined\n");
> +
>  	chan = devm_kcalloc(indio_dev->dev.parent, st->num_channels,
>  			    sizeof(*chan), GFP_KERNEL);
>  	if (!chan)


