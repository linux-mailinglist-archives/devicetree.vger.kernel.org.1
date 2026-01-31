Return-Path: <devicetree+bounces-261486-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qFPLJAlyfmltZAIAu9opvQ
	(envelope-from <devicetree+bounces-261486-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 22:20:09 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BEEC5C3FC2
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 22:20:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 340C13008C83
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 21:20:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D60F3793C4;
	Sat, 31 Jan 2026 21:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="APXX6qzo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D36F369222
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 21:19:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769894399; cv=none; b=LfuyQqZQ7Mo6WsQGDPn98xDzs7TsO0MxfS5I7f/gwRLAcELg4W+w7Y6FHKWmymMldwihckP8EjFnsgBnzx0ErZxr9F3bGzb7hEVscZ5a9T9+SOjmqJPXXPpH+sTy7/ckV1w/s+Sq1zHp6yHnU7ECi9G0uq0S/bfkHY+E0Vgs2o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769894399; c=relaxed/simple;
	bh=poj6PE5KMZ/ErBJ2AjpBgqaRlabIT4vEYCpL9olBjqE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UEiReX1RqmWNaXo6MgeDqGnOg4zdxS397T4wVkV02v2xlh9oBBXpV6oXFwAb3k+YmonG3wmaLjjYrDne91VCRpccJd1uiIu7zjQwfQetZY06fXj6U7QHnY2AsKz+mf0C/lA/tPcBbiL/R2l39sniehOALjEjGv5b1uEGWpQCUZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=APXX6qzo; arc=none smtp.client-ip=209.85.210.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f52.google.com with SMTP id 46e09a7af769-7d122733808so1347736a34.2
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 13:19:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1769894396; x=1770499196; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zv8qyk+XnBBQd5VL0I95A+dxGWu5ApGoL74XEX3UOy8=;
        b=APXX6qzovNmviYTxtn/VtlpSMMfUSV6UjWxzclGMT7XYtX2Kgrk+V24H7180M0M1yf
         JOYdkhHsbD3Qs1bmpHNSf91yWouklfWNPAZCqa1nu4OJ3eKLjW5d88d5k5T/w+l7RZhv
         R2ka8DS+iFjhH5n0wbvYb03BK+TMAb6WI1FtB084n6SrwUIUY4lWdd+sR+SRljvTNHNA
         tlzxF9PZehrhNcKRtfE/U7IjZSqax9/HHcAjVaebr0cMRVzPTTsOa3Oe2YZXWXsVccZD
         LQQOLGxuHjTkHDsokVMk1L/uiSL70Szb3Ww5KOLzePnJ87RxJA2jdpxpCIYQ07lzwsDH
         uYsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769894396; x=1770499196;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zv8qyk+XnBBQd5VL0I95A+dxGWu5ApGoL74XEX3UOy8=;
        b=pjoqSq6jzMP5mJVPOnOMmtRZROBKdhCGQ7zHyIbBb/wZRfLAhA7uu0fjGmjFa/FyCD
         zdC+9ldIWLICoZNXOZwhQwRhdVLPx+KAw3bhGXPxuIuw/aQd8AvNUYvwJB1wTZotaU2u
         LKAcHXcGxJ+xPuYutVJSu8gVSjxe5TydoRSUA5aF5+tsOuurMdVGchuX/DCNrG1JkHHj
         Up8b5wJ30qZxBmdgDBetZ0flw2kvW3sYSNEY+sGaYIY6220C6P70zvV0D2M/TnXunHGy
         KnpANUWw0za6J0retBr2tgV5zKVdx9XFBXqDBG/c016hT3goCYUTQoxO/iz6Pky2qtEx
         UJRw==
X-Forwarded-Encrypted: i=1; AJvYcCVPNp1zmLqX+Fmn1JzAjZELDoz7VIkNBs4iw1mVXYBv9CbpSHpaMAJlLNitecdttWRysjVFR1wV1vIr@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5d/6Ofq7aarbDcuwjphGpEsZZ1n4U/iSBgtSRGD6cOOUgUZYP
	8mqh2Uw8riHygqE4SPs9J+34TzswbBzPMnw74H4LUe2+nSl+9tmDgIKXotuEamSOUHE=
X-Gm-Gg: AZuq6aKTWrSRsfzycmbub9k27rdN9Jy2YTEYqLiz+4ooId86x7PE+9S25VbBhaiR/iT
	WtfbB/E+kmLju8yIzi67cqQ4W/kZ0sNGAmXumbIt9pHolPCcC5dC75FyXItzAjfmN7gwQKmgoQR
	yUSb14owwjSBF919MYzKDCIe0tvhBeyegFRBYKho65t/q5IVZTvgWB+as9gtvmY0tDV1wDBuJv9
	uwD2SD93dW7vEQRRQxIvPueXt10fACEbSwyrAvqcWblFtjoRL+aPUx3kMWxm9in5FSnLk6pb28G
	o12vwmjhqSE6niwHKSWIy93PhSmzsdmnTnX8B9JUVFkBFnGNTVCh/dqlkH9VhC+a8ujszIhxvQQ
	Cg45PIroajKpZQGERM2MaBJFD4FVaLWxzq3Q3hJB14T5dcSOatU6nAgeOwOeSpdvp+bsLA+ueKe
	475Va+tjxSVn8tvtYNguU4Zzsz/JNQq44VGtNCjcc0AAORF4fqRRbqVdv6FaMz
X-Received: by 2002:a05:6830:4984:b0:7d1:a028:4464 with SMTP id 46e09a7af769-7d1a534bf38mr3733443a34.36.1769894396196;
        Sat, 31 Jan 2026 13:19:56 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7? ([2600:8803:e7e4:500:c7ef:51f2:4f7a:6cd7])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7d18c6b9c8dsm8456703a34.13.2026.01.31.13.19.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 13:19:55 -0800 (PST)
Message-ID: <9504cab4-8881-4f38-bacf-a7a4f52c3f1b@baylibre.com>
Date: Sat, 31 Jan 2026 15:19:55 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] iio: amplifiers: ad8366: consume enable gpio
To: rodrigo.alencar@analog.com, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, Jonathan Cameron <jic23@kernel.org>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20260126-iio-ad8366-update-v2-0-c9a4d31aeb01@analog.com>
 <20260126-iio-ad8366-update-v2-5-c9a4d31aeb01@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260126-iio-ad8366-update-v2-5-c9a4d31aeb01@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	TAGGED_FROM(0.00)[bounces-261486-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,analog.com:email,baylibre.com:mid]
X-Rspamd-Queue-Id: BEEC5C3FC2
X-Rspamd-Action: no action

On 1/26/26 7:51 AM, Rodrigo Alencar via B4 Relay wrote:
> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
> 
> Some parts may consume enable GPIO to enable serial mode
> (HMC1119's and HMC792A P/S pin) or powerup the device
> (e.g. ADA4961's PWUP pin).
> 
> Co-developed-by: Michael Hennerich <michael.hennerich@analog.com>
> Signed-off-by: Michael Hennerich <michael.hennerich@analog.com>
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---
>  drivers/iio/amplifiers/ad8366.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/iio/amplifiers/ad8366.c b/drivers/iio/amplifiers/ad8366.c
> index 134188db2e15..9ad6a628376c 100644
> --- a/drivers/iio/amplifiers/ad8366.c
> +++ b/drivers/iio/amplifiers/ad8366.c
> @@ -41,6 +41,7 @@ struct ad8366_state {
>  	struct spi_device	*spi;
>  	struct mutex            lock; /* protect sensor state */
>  	struct gpio_desc	*reset_gpio;
> +	struct gpio_desc	*enable_gpio;

This isn't needed since it is never used outside of the probe function.
It can be a local variable.

>  	unsigned char		ch[2];
>  	const struct ad8366_info *info;
>  	/*
> @@ -230,6 +231,11 @@ static int ad8366_probe(struct spi_device *spi)
>  		return dev_err_probe(dev, PTR_ERR(st->reset_gpio),
>  				     "Failed to get reset GPIO\n");
>  
> +	st->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_HIGH);
> +	if (IS_ERR(st->enable_gpio))
> +		return dev_err_probe(dev, PTR_ERR(st->enable_gpio),
> +				     "Failed to get enable GPIO\n");
> +
>  	indio_dev->name = spi_get_device_id(spi)->name;
>  	indio_dev->info = &ad8366_info;
>  	indio_dev->modes = INDIO_DIRECT_MODE;
> 


