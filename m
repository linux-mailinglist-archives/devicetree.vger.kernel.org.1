Return-Path: <devicetree+bounces-216996-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B11D0B56A4C
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 17:44:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 033E2189B410
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:44:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 499142DA743;
	Sun, 14 Sep 2025 15:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="gE/5JzCX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5502D9EF3
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 15:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757864642; cv=none; b=q43g7YtB/WT3Jx04JWO5GszYH5mRxd4KBDEkiL376RyMR9p7vOOxnzkGy2gYjUK2Axdp15l67I14Q03OQzZU4kBxWlgjcRbJzmo1IctKzBv7VXtnl0M0okP+mQkkyYKEzGTqISyIxKipAuvGS++rKuWUUF+kYVFczdyeuQEhVbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757864642; c=relaxed/simple;
	bh=cP0K/fO+03hivuzCPBr9UJRxnuVoSdNkA2qEl1wBq1U=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=T49zs/b7pG43R3HAllGAYUTwo6uPRXEEPUVuYw0AAiaP1zgoeTRT9RV6dBZnmwNp7V+GtAfYnfV1utNC5adMlwgOrX6omzipv3ZbPsGF6+VVChuZGmecq/rgv3Pv78PBjVFv6VSmFxo+i/dx7zWmJqX8P7vRENrwsvGG5pVhGwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=gE/5JzCX; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3e8ef75b146so577059f8f.0
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 08:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1757864639; x=1758469439; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=17ifI2mYE1NgbBTyTNuir4pDtVCiq8BMt8N76nRgoes=;
        b=gE/5JzCXB0cQCDXvC2d5bHqmJsCwY9zPhYQo57k5htoP4NMh9+LOujN586e3uQldMf
         0OVMQo336R+S0rokscRux8+rUTUw2CXHdoGzQEdJ7+xkg2aLFNEhbEYahIw9OfzZqAX6
         pdkDoE1G7hcIJQUSyR+pm9rMxe2Xih2VbaRsBFArSVl1W02BobUS1vToWSM0/HMbtH+z
         QUscixrb3yO0cMpeVjIFG10x9nLGGCV6VnmJOZySfVDcfCGKGXzCaNYDyq9SuYgwGBX7
         mkBIvzzxJ8Ufq1j4I7KCUH8SWdi0RcU6o9d/0B0ZaF8epkdcsUMOdpaOuU0qQEQB4l43
         Lhig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757864639; x=1758469439;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=17ifI2mYE1NgbBTyTNuir4pDtVCiq8BMt8N76nRgoes=;
        b=hae38y1v8/Fbq/KU29VO+Emv22BJ3dq4us65SnO9SWA0mIXejasc3wnDKVpZiMO0HV
         +nuUswMIkTz61+bPbMEKOTTDu8prnPx8+2h2PZ+vhNXcYJfPZYOJYoFD7AYFwy48KDKn
         jSUtc9u8MvMqHqnozeJRIuc6UbLExeE6RPdxVWzVFB8XHo/vDmwXcp39FD4I3Hs1Yxn3
         43cEkA1b6X0QOixxbX3yHRWL08PYklPlwHMs09O98+GI/qJMaXLLoyH+XOj650RIXHC/
         Hpy+hqMNfByjT1fKW3eAxeZtbFMdkLYsV6cWuXDgQ0Tot+ceCZBi48Ng4DLzL8hvkvgI
         F21A==
X-Forwarded-Encrypted: i=1; AJvYcCWYhajOZDnsS+zHl/jhS+zllr7M8+ouYxsWfPD2VN59VAiNoyE2vQEodQw+LSfWeMjCNdpTxKPetKtM@vger.kernel.org
X-Gm-Message-State: AOJu0YwWGED50QbjyYh5GUSW3bXbL/WVcwe2VL/7E5X3t7+70K+LaUzJ
	IuVF6YExXjRu7QnMJKEg1Tw+7ENc9tukyCYm0SvF2GjTnWApde8vwlmT93yrDH0Emf4=
X-Gm-Gg: ASbGnctGKt48wg0bfMYdbQZfdwtoVCwvt8OS1UMkFyuuYg0SV5Me006/COS4BxqwDX9
	LwYcZWFG6vZhvyC+6LWGRYJVwFwsUrC8U5Xi8vdYjPg79UPpv7IaR2B8wydtT570mI0qvGwlfNn
	Rrr4vee4WdSAmyqy4Ybs9xBF1UZpQdV21TPuBTMQKOhzQaobc2/6M2T5+114xmFdB2yLSiqcI/s
	GM4jOPMlmtPgi/5zLcj2LDMLuI5OIfxzbjxRzXasGT+N/my17GuKmSoV+R4EN5kLe7Uk2HhzDYQ
	T9PhZvZ2kycGnyCxCP6T3LC3LNGsMcsdbfMtUwmbvCyYRedwNHeSK419xGz/YCdGIIPwRE9UYKM
	qysOOE7v2Hm+0eFyrLPJgAnAARXVXcTpHeWkXj/RHiQ==
X-Google-Smtp-Source: AGHT+IHL6egG0n/SaYA5xvNQA+X+v1J8Dbx8go0tlT2XCBBZEzMIXumDBUCMKSubOS2pVf3FdBCGfA==
X-Received: by 2002:a05:6000:2510:b0:3e4:ea11:f7df with SMTP id ffacd0b85a97d-3e7659db441mr8532807f8f.40.1757864638550;
        Sun, 14 Sep 2025 08:43:58 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.153])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e0153fbd5sm74655275e9.5.2025.09.14.08.43.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Sep 2025 08:43:57 -0700 (PDT)
Message-ID: <038ea3e7-53d5-4e49-ad35-cc2a58e4d808@tuxon.dev>
Date: Sun, 14 Sep 2025 18:43:55 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 04/15] iio: adc: at91-sama5d2_adc: update calibration
 index, validation condition
To: Varshini Rajendran <varshini.rajendran@microchip.com>,
 eugen.hristev@linaro.org, jic23@kernel.org, dlechner@baylibre.com,
 nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, srini@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250804100219.63325-1-varshini.rajendran@microchip.com>
 <20250804100219.63325-5-varshini.rajendran@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250804100219.63325-5-varshini.rajendran@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Varshini,

On 8/4/25 13:02, Varshini Rajendran wrote:
> Add additional condition for validating the calibration data read from
> the OTP through nvmem device interface. Adjust the calibration indexes
> of sama7g5 according to the buffer received from the OTP memory.
> 
> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
> ---
>  drivers/iio/adc/at91-sama5d2_adc.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index c3450246730e..d952109a64a9 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -445,6 +445,14 @@ static const struct at91_adc_reg_layout sama7g5_layout = {
>  #define at91_adc_writel(st, reg, val)					\
>  	writel_relaxed(val, (st)->base + (st)->soc_info.platform->layout->reg)
>  
> +/*
> + * The calibration data has a TAG to recognize the packet
> + * The tag has a constant value "ACST" with the ASCII
> + * equivalent 0x41435354. This is used to validate the
> + * calibration data obtained from the OTP.
> + */
> +#define AT91_TEMP_CALIB_TAG	0x41435354
> +
>  /**
>   * struct at91_adc_platform - at91-sama5d2 platform information struct
>   * @layout:		pointer to the reg layout struct
> @@ -504,10 +512,10 @@ struct at91_adc_temp_sensor_clb {
>   * @AT91_ADC_TS_CLB_IDX_MAX: max index for temperature calibration packet in OTP
>   */
>  enum at91_adc_ts_clb_idx {
> -	AT91_ADC_TS_CLB_IDX_P1 = 2,
> -	AT91_ADC_TS_CLB_IDX_P4 = 5,
> -	AT91_ADC_TS_CLB_IDX_P6 = 7,
> -	AT91_ADC_TS_CLB_IDX_MAX = 19,
> +	AT91_ADC_TS_CLB_IDX_P1 = 1,
> +	AT91_ADC_TS_CLB_IDX_P4 = 4,
> +	AT91_ADC_TS_CLB_IDX_P6 = 6,
> +	AT91_ADC_TS_CLB_IDX_MAX = 18,
>  };
>  
>  /* Temperature sensor calibration - Vtemp voltage sensitivity to temperature. */
> @@ -2281,7 +2289,7 @@ static int at91_adc_temp_sensor_init(struct at91_adc_state *st,
>  		dev_err(dev, "Failed to read calibration data!\n");
>  		return PTR_ERR(buf);
>  	}
> -	if (len < AT91_ADC_TS_CLB_IDX_MAX * 4) {
> +	if (len < AT91_ADC_TS_CLB_IDX_MAX * 4  || buf[0] != AT91_TEMP_CALIB_TAG) {

Can buf[0] != AT91_TEMP_CALIB_TAG with the new code?


>  		dev_err(dev, "Invalid calibration data!\n");
>  		ret = -EINVAL;
>  		goto free_buf;


