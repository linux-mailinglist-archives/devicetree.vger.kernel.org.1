Return-Path: <devicetree+bounces-225451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D8F9DBCE32B
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 20:12:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DF5174F7298
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 18:12:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F57E2FC86D;
	Fri, 10 Oct 2025 18:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="PBX1mq5r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21B7B2F3C1E
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 18:12:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760119940; cv=none; b=jFJv4lorhxIi6ZOkglpzdhlkNYEePCmXrkrE9lc3ltAnKAINeDp+Rl+MVz7jmkuqnEjTVHOthrF2C26A7VloAbyjHCbgyd4Hdz9Q4d3V5Bdcg7aQOTyVNcvlHgFsonFJLKUCoWlvyiSFZRIFfGw8ReTGEc6Pruu0TbWMWMM1BWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760119940; c=relaxed/simple;
	bh=5sOPNs/pVYr2aEdLdYkxtrupFFKn+aERSvll06ITe7s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uI36oCJuITYvi0sw4B331oQW3N+CJajKGSoKPxMdqi2hJ4i+zqRyPbybX2shEGDEde6KKkgfKgbSIl7WWY0epFeNRWF+OtbgEexX/HW45cbHjIVVCfpjKj/mtrSUIhavrmJyPzAwAJofFZ0j3KCVHOwUm07aJ+MDbwr7uhU+UN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=PBX1mq5r; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7a7d79839b2so1916900a34.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 11:12:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1760119936; x=1760724736; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kJITi+/a5Uy4Ywybn43TGus/0RCOWKapqQ9K/U9rCqU=;
        b=PBX1mq5r9veqx2nhSMlcRzjG3ZXNZ9XKO0P3mfcjQjQD8uBRKof0H5usVKH1PJ1D3n
         OC1mFKC2hhXvY/jJCBYq/WHUNrKuJKcAW+r7pB3cWDJz26HdKJXPW+H9K9WY6Rhtl829
         Xgh4jNNgtgVJu0ZvwwopeQ0BzIwxAg3kTIViaickRGBjH9vTUwPhB7LfUj0eZwB2OC7L
         nDvQMJApSYJC7d3yw4qz5COMORlGmk/cQyeqGAwlbHLMPdo9Y37ym58fV2tzsaa6uNBF
         8ZuQV9N9+UlrMhHkI4IqrXYkfhYHGpwCkq4TMqGnj8UI+4jDyCKXpXFpM5BzLXVB3hNV
         nFlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760119936; x=1760724736;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kJITi+/a5Uy4Ywybn43TGus/0RCOWKapqQ9K/U9rCqU=;
        b=T2d/99WLlDFgJpPmyw442pRaehwL6ZgpCOM+cMn9ujn95ttsAxk0w+kP6PnJDrFhNh
         ubSLdjVeLYAzQU1I+EPnbgO1F8ISiGbdpE3WDBHfVxbcYy2kL2bdx/0RKNgRQDxglefp
         JX40igidowt6g/WsHmMwLwXZRixG4yYJqk/r+Efk9i0+s2cXP0/8xH48JPwdiP3xoR8U
         CH0jTqrWSYgdSEYHRKn6sFUdtVCXZK+DacyCvltws3RBFLEX9n9+APAOrYD6OZGG5SiG
         z2OVYFYXr+tgtCaunf6FoDH6dq1uj67m8DvgX82RQAsvgpn8CZu+mBQsYqEv5dPMGaGY
         T2bQ==
X-Forwarded-Encrypted: i=1; AJvYcCU4M1QER9m8b3y+xwbVyym/JOftC4azF0rYUwfUqVeLjiw2s9VbGjIHqB7JW0dcIpUam5OKJvPc1grR@vger.kernel.org
X-Gm-Message-State: AOJu0Yxns9bQydhyChSPKLcPd0vcxNcai+Rb62IdkPXsDE6rQoID9pR4
	F6keWhncDSbxalzp1kWwsapgFqSowmA/v7hnBjeGKiEuEu/MpZL/UuQl/uI2HhevpNA=
X-Gm-Gg: ASbGncsAkwEWfKRuOh8iVPY68Fn09tG6bcwEyagXNDzZwoqREqkhWuoLumY0pyWO1K7
	mAgBjkqJhpB81PUu+LTwlKMSPYZJ++FuG2WOS/AS1kxsHE3U5Cvq5roYgChmrHw1s/ThKSEsS0V
	pyKbW8ZIjigFxrpgd09sERpxIlkls06l+e3BrM8R9d3oK1y8YCdyphC7uAr6IZ/pj+Ou6FoC0vL
	uaXR1rn23Q8M62R01VjJxVefXxS6EAoX6SPDtHc+TP2REnGlmrJRk/eARKf007hOHQ3q9L4wFWG
	gfY6aYtBv+vVYR78SsTUDAhcCQFAdqNH3Y39mjTFTl9eCbkmUdVZoaxjPRH3O8oYojoA91CFycG
	BoUTYE23dwn7SM0rD7kdBuylAKNwrTIH4elVmwJaIary2WwjaZizd9x7SdCN/3fvEk5pAPZ6pD8
	4O+zOBKoom6EFFmUuTZPgXQKQu7A==
X-Google-Smtp-Source: AGHT+IGdiPP3DRGOJKjYj4pluDC86vZ/Ybmz+/mK35EcOXVcyBnRq20OMLL70oFsIcshIMYVWisL+w==
X-Received: by 2002:a05:6830:210d:b0:746:d22b:11f2 with SMTP id 46e09a7af769-7c0df752992mr6630275a34.4.1760119936239;
        Fri, 10 Oct 2025 11:12:16 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:6d3b:e3bd:4210:32e2? ([2600:8803:e7e4:500:6d3b:e3bd:4210:32e2])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c0f911aefasm1045881a34.31.2025.10.10.11.12.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Oct 2025 11:12:14 -0700 (PDT)
Message-ID: <07c11aae-6440-46bb-880f-80d09da1bf40@baylibre.com>
Date: Fri, 10 Oct 2025 13:12:12 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 8/8] iio: adc: ad4030: Add support for ADAQ4216 and
 ADAQ4224
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-pwm@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: jic23@kernel.org, ukleinek@kernel.org, michael.hennerich@analog.com,
 nuno.sa@analog.com, eblanc@baylibre.com, andy@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, corbet@lwn.net,
 marcelo.schmitt1@gmail.com
References: <cover.1759929814.git.marcelo.schmitt@analog.com>
 <7f8a65deb597d2d26e1d1d373d70851c7cb3d3e3.1759929814.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <7f8a65deb597d2d26e1d1d373d70851c7cb3d3e3.1759929814.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/8/25 8:51 AM, Marcelo Schmitt wrote:

...

> +static const int adaq4216_hw_gains_db[] = {
> +	-10,	/* 1/3 V/V gain */
> +	-5,	/* 5/9 V/V gain */
> +	7,	/* 20/9 V/V gain */
> +	16,	/* 20/3 V/V gain */
> +};

This is only being used for ARRAY_SIZE() and can be dropped.

> +
> +/*
> + * Gains computed as fractions of 1000 so they can be expressed by integers.
> + */
> +static const int adaq4216_hw_gains_vpv[] = {
> +	MILLI / 3,		/* 333 */
> +	(5 * MILLI / 9),	/* 555 */
> +	(20 * MILLI / 9),	/* 2222 */
> +	(20 * MILLI / 3),	/* 6666 */
> +};
> +
> +static const int adaq4216_hw_gains_frac[][2] = {
> +	{ 1, 3 },  /* 1/3 V/V gain */
> +	{ 5, 9 },  /* 5/9 V/V gain */
> +	{ 20, 9 }, /* 20/9 V/V gain */
> +	{ 20, 3 }, /* 20/3 V/V gain */
> +};
> +

...

> @@ -432,7 +533,14 @@ static int ad4030_get_chan_scale(struct iio_dev *indio_dev,
>  
>  	*val2 = scan_type->realbits;
>  
> -	return IIO_VAL_FRACTIONAL_LOG2;
> +	/* The LSB of the 8-bit common-mode data is always vref/256. */
> +	if (scan_type->realbits == 8 || !st->chip->has_pga)
> +		return IIO_VAL_FRACTIONAL_LOG2;
> +
> +	*val = st->scale_avail[st->pga_index][0];
> +	*val2 = st->scale_avail[st->pga_index][1];

Instead of writing over val and val2, it would make more sense to
move the if up a bit, invert the condition, and have it return early.

> +
> +	return IIO_VAL_INT_PLUS_NANO;
>  }
>  

