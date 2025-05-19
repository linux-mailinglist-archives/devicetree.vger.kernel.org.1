Return-Path: <devicetree+bounces-178566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71379ABC326
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 17:52:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B8AAF188B6CE
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 15:52:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99FF1286424;
	Mon, 19 May 2025 15:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UamEbpn7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B27C42857DF
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 15:51:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747669867; cv=none; b=rzEcx8a9vFRPMSuhChmvcGszs5XrN6ohE4Lr/7Fmx8rkh3Y96DrcI34fSca+e8ZYSfMsZQH8UvG8fgxw8reNGQaX6VEpy6Zu3m/hZzQAbhVwvX1U8RYpwRvk4c2foQu4aiZ5ontzghlpbvhMRZBxLSecEk8KgHC/I6ud5N+q9GI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747669867; c=relaxed/simple;
	bh=WtXjgHGgOeWhkZnhe3EEZ4oiWzAptq+Fxpl6tc7EjZs=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=Dse6jbbgJic2/4ILsFnWty+gSOi35hQv0Mwg0/5tNk0aOSf/xagQUrIF/sG3J++eX3qkEKNXDzCUYGOuKbRdUfowWVcHu6WyNVKTMFIzfw5QK3En1A9r6f7FXrX+kPC02KNlpBbJfIfw0sFevxHKFxC0uMoP5njh1ji5gU3snOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UamEbpn7; arc=none smtp.client-ip=209.85.167.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f180.google.com with SMTP id 5614622812f47-403407e998eso3676719b6e.0
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 08:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1747669865; x=1748274665; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=4R1jjXpvGFZooNqwzquS4BoBFMZHfpqMKV80JZ1CvuA=;
        b=UamEbpn7nxELoA44WJVW+ubaZsRxztzIsnnd13E+2z4vp862uIczRd9CEos95UifYD
         B0VonvuLci4OIyZ7V6wXx9fRIypzCd8FzLG/wPPuhA6ctbNiIZHGVe2rhH0AsUcSvhcj
         hhPB1PZw21DaEekMxn/j5ccKUjuL3Yoa0CqBJKyUjtATfQUaORRTmeKru3km2f5Wr+K+
         9R8Eg+qHEtL8SRCn5e98nd7TQklxagYH52Raymc9++p7bjmoRG11u4oGBvtftDNIB+gj
         PjA74NNFbBwCEI61ejpHeeJtu+NjKyUexEH2To2wi7ca1bn5cCWl9D7kP8FtCPc9zj6k
         +hdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747669865; x=1748274665;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4R1jjXpvGFZooNqwzquS4BoBFMZHfpqMKV80JZ1CvuA=;
        b=OVw/RO4BBf8QU/CqAUeVr9nf8WI3wg8oFT6um3Ytr3pQJOPnZBkMFIuuS5Ry3zbsdy
         2lddAe7zpdytyPwylU6BZiOlVzDD1X+OPdTbhPxC2FUiu5XiLgroaX28XcotHgdqtrxU
         rKb93wapJc2t+qCFXmUZpUhQYmEzKU4YryLLcV9AKJrK2jjcimbfpsmRUjXBUgj+bVQp
         I60bpYUdy8ikQdFl0q3YMwKKwiWMNa8Dy+jtRO2Le8kVx1GZnlAeToz+s2+rYx2Djq02
         FKV9miN2vlheRFjZGQt6iSNNALb4/tJHxMRXPmE+dOuB/t1LI7Dn+NLTi+mrNLrzeXGJ
         a3Ig==
X-Forwarded-Encrypted: i=1; AJvYcCXkIuCEwFVi9n/mITNrd6v4JDzwBfFfW5+Wcu93Fo1/zF7Z81e4ryJzcu8tZXC7kIrv2b0sJcbvassl@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0mbQyiMLI5CHMGCzmto3IoCoudLY/oFwEmhZUqVoz1Z4y07H5
	T1MdbjZN+LNBiLt+0Kze170qXe5DBIhLdCItsi9ZRBY56WF7yqIvyHYFwfqjPrvjoA4=
X-Gm-Gg: ASbGncsfLmvf0y13eANL4Cs7qQALeq3RL+zPW/h+K8mhH8G1pzdtErzZLX2dY3OfDjm
	pZP2gTVO52U8Op4GQxZ3g4FT8uBXUI2cwng5dTGUHVC2wHxQK4bUJ7J7ulqAhJZf6p8mzGdSV/5
	udiaxM0exJS3NB1RS1FStcxDrPSo+A75HkRb84MGepVwKRheaHhf91zIRnWew3TNg3GL5/gBsRj
	+RhW8D8oWWtvqJPZNrwT59DdLRRFcouxfwy+LRpc5OASIbC+2J4g8bbSG3AeLrV3oB0wgZrThl5
	+L3gWDadpXMw65oX36Owu17p/2Eu68IUJhPyqZE2+fZuYoTFK/abtppzat9aoFVswAkMXQ3wPkL
	8/Lkx2dHuPZQhbsGenIvEsJ6CLA==
X-Google-Smtp-Source: AGHT+IFr8We/4x3wKFarQINBJsR1rX8wHZI8lP1EpQm+Tg4CIOj5A2c5zLtagPVbttrgQ1CNzVdJBg==
X-Received: by 2002:a05:6808:3a12:b0:402:1caf:7789 with SMTP id 5614622812f47-404d8767942mr9511245b6e.14.1747669864661;
        Mon, 19 May 2025 08:51:04 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5? ([2600:8803:e7e4:1d00:a628:91ca:eb5:d6f5])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-404d97d6129sm1404336b6e.8.2025.05.19.08.51.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 May 2025 08:51:04 -0700 (PDT)
Message-ID: <9f5dcb2d-3fa9-4e39-9cf9-c5a23847224a@baylibre.com>
Date: Mon, 19 May 2025 10:51:03 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 09/10] iio: adc: ad4080: add driver support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250516082630.8236-1-antoniu.miclaus@analog.com>
 <20250516082630.8236-10-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250516082630.8236-10-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/16/25 3:26 AM, Antoniu Miclaus wrote:
> Add support for AD4080 high-speed, low noise, low distortion,
> 20-bit, Easy Drive, successive approximation register (SAR)
> analog-to-digital converter (ADC).
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---


...

> +static int ad4080_properties_parse(struct ad4080_state *st)
> +{
> +	struct device *dev = regmap_get_device(st->regmap);
> +
> +	st->lvds_cnv_en = device_property_read_bool(dev, "adi,lvds-cnv-enable");
> +
> +	st->num_lanes = 1;
> +	device_property_read_u32(dev, "adi,num-lanes", &st->num_lanes);
> +	if (!st->num_lanes)

Error checking seems not strict enough. Allowed values are only 1 and 2.

> +		return dev_err_probe(dev, -EINVAL,
> +				     "Invalid 'adi,num-lanes' value: %u",
> +				     st->num_lanes);
> +
> +	return 0;
> +}
> +


