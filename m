Return-Path: <devicetree+bounces-182899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 05581ACE5AE
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 22:15:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8AED03A3E54
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 20:14:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D10D21F09A3;
	Wed,  4 Jun 2025 20:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="hROKr/xx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 748F2212B28
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 20:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749068106; cv=none; b=upU+N0W8GUwiQ2m3W6bHx5P5SrHy+rzq66ViV2gwhf6fl6KS9iVdXs3clOZ+xBkbxoWt20932u9aGy+f+wSNxcVJ43d76pzEEH05imls63Wdg/3lUgJcuS1neSOhEpMx0/QtAFYLpdwm2Z1kN/E3/B/BfIHAMexcXRiIJ13/mbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749068106; c=relaxed/simple;
	bh=3M80ApW25tcb4bzsgTYXk9LwcbWxkkiaP2Ghn2rZIkg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kkDnvV153iGQNsukPIjCe+C8K+ILZHBVHEEnTOIytFquA3LDS9+YIN8OYXNKwQPX3f6EVqaIc4pwaxBGTPRm5RaxMwhI1REhGjvds7n5muIT/vlN2hg67MFRnRRa+4ufXBcHyl6YY9MuhDsnR7z3spe5LkIUJ+QjP9uCK5j6130=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=hROKr/xx; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-2e41064e247so166981fac.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 13:15:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749068102; x=1749672902; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pRfaLIDBj2llHsNUOJCUg2y9UIhPzulREBxN8ri02+M=;
        b=hROKr/xx+yxFVFNvLblMV0M0Glq7ORvO35rOObPxi2T1qcZ5jI0uohCC08vf1aQouf
         89ANJx0O4m21gde6pPJSTXbSfgqpeLgb5QjmS+dhyJdu0FHmnAugXx4RSkAVYGOCJD11
         aXVMvvNDKg2ow6m9OSpjYX2rSDywTM8rOgdYLVCClE4ed/qgmvqU0y9RGLSitPs5mj2B
         qeVWRMUC0PtAkWu7U9kJb6m+ejtCH51Yly6e1GPjWZ3veImWstMKIqdjTBe9DvgXfIUn
         1tI8OyVKR7Ik0emSAdDVhQ2XAQaMNRCcjQ5RLemhF1EM8AhEqxsNqv8fQEZ7NhfIqvG9
         JHUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749068102; x=1749672902;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pRfaLIDBj2llHsNUOJCUg2y9UIhPzulREBxN8ri02+M=;
        b=OEqFHIicHMlXNlESyvcnW7+orPj6nsFuqg2n+gwZU1JohKegX3LHIRk+HNfqvOhYce
         pDtR/zfpVistgcQBp3EpTYjvFzPFrk1h0Fp/rHvyoblaaKY8z4Tszl3r8POdIu8nODlk
         yeMGLWrI2/1HRocGHzS42g9ltf6Yvxtux8isJ6eqmc92pFos15qwb4K0GzjjvthSkxIT
         MBldAd1Lgk3Exu2foBMUjpJhAXWUaY488aMHAoAv3f2zLV/rQq2OYgV8zNYv4KV65DFq
         6TxMUpCBeHy47/Il3xXnD9m3tzL0BK3ihq1Rf+GSKFmqnQiCBxBKQ8D0sfvvMJh31jXG
         0ofg==
X-Forwarded-Encrypted: i=1; AJvYcCV1Y/7S9Kmq6/vEgv/eUPeXy9HpGUvUd0C6Nn0qU2BaYejz4y5Umm2JvMiY3OFG1rswOU2ywAFT3YKO@vger.kernel.org
X-Gm-Message-State: AOJu0YyZiAzVaCAcJqzKrw6V+gJ3210KXj/UgDswSIay8Rsx6mzhI6Pk
	2KftogDE2FRvkVGwQl5d1bXAZVxY8oauEQ31rXhfvbf5/ywLfOWnwbxruzwTqZTOWfQ=
X-Gm-Gg: ASbGncuAvMoGjq+lLdILd7kpLaLg+rDkKxLaa5CmGA0JzjFcjzYNp1rJnMpQvFOFzy3
	xi/njXxR3qtkozhhgMXCsZvbQNDpd76Zjm33Mv5f1GURZQk8WXfJkOqfK975p/ouQCbLATEwcXe
	JBVvjreNLUwUwCJbB1OawHAFXlvyfqLCxPu5B8xrddxcgzF+Bgx9yFkCuIB+C/PyC6UCrP9r+3Z
	VSgCYOESiQQ3g0T2wu+NkItFNwuWBVsgF8e94XCbA49ehXDVvEYLgQREKpx7Op0AebnolvmzKp4
	rGUYN4VARy3Vx7L1P7cdHikqe6YDCHxVuHmSgRHw6OpRp8JctXXP/ivplju/W7qGj4BSx/FQpl6
	NVR5FsNlPxKomiRBIjFakFKgfwA==
X-Google-Smtp-Source: AGHT+IHQmjfLAxO850YKxxC8hykPYyb6LLSUw/IxyRagifjPWTVnvXEERLoCM79G7tZdCm40eYYEow==
X-Received: by 2002:a05:6870:200b:b0:2d4:ef88:97bb with SMTP id 586e51a60fabf-2e9bf238aaamr2633199fac.1.1749068102493;
        Wed, 04 Jun 2025 13:15:02 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:829:fdd0:311c:c481? ([2600:8803:e7e4:1d00:829:fdd0:311c:c481])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2e906457afesm2830330fac.1.2025.06.04.13.14.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 13:15:01 -0700 (PDT)
Message-ID: <57edc6dc-bbf7-4491-a43b-c33b9466d8d0@baylibre.com>
Date: Wed, 4 Jun 2025 15:14:59 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 01/12] iio: adc: ad7768-1: Ensure SYNC_IN pulse
 minimum timing requirement
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: andy@kernel.org, nuno.sa@analog.com, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 linus.walleij@linaro.org, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org, jonath4nns@gmail.com
References: <cover.1749063024.git.Jonathan.Santos@analog.com>
 <d3ee92a533cd1207cf5c5cc4d7bdbb5c6c267f68.1749063024.git.Jonathan.Santos@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <d3ee92a533cd1207cf5c5cc4d7bdbb5c6c267f68.1749063024.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 6/4/25 2:35 PM, Jonathan Santos wrote:
> The SYNC_IN pulse width must be at least 1.5 x Tmclk, corresponding to
> ~2.5 µs at the lowest supported MCLK frequency. Add a 3 µs delay to
> ensure reliable synchronization timing even for the worst-case scenario.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---

Reviewed-by: David Lechner <dlechner@baylibre.com>

> v10 Changes:
> * New patch.
> ---
>  drivers/iio/adc/ad7768-1.c | 23 +++++++++++++++++++----
>  1 file changed, 19 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/iio/adc/ad7768-1.c b/drivers/iio/adc/ad7768-1.c
> index 51134023534a..8b414a102864 100644
> --- a/drivers/iio/adc/ad7768-1.c
> +++ b/drivers/iio/adc/ad7768-1.c
> @@ -252,6 +252,24 @@ static const struct regmap_config ad7768_regmap24_config = {
>  	.max_register = AD7768_REG24_COEFF_DATA,
>  };
>  
> +static int ad7768_send_sync_pulse(struct ad7768_state *st)
> +{
> +	/*
> +	 * The datasheet specifies a minimum SYNC_IN pulse width of 1.5 × Tmclk,
> +	 * where Tmclk is the MCLK period. The supported MCLK frequencies range
> +	 * from 0.6 MHz to 17 MHz, which corresponds to a minimum SYNC_IN pulse
> +	 * width of approximately 2.5 µs in the worst-case scenario (0.6 MHz).
> +	 *
> +	 * Add a delay to ensure the pulse width is always sufficient to
> +	 * trigger synchronization.
> +	 */
> +	gpiod_set_value_cansleep(st->gpio_sync_in, 1);
> +	fsleep(3);
> +	gpiod_set_value_cansleep(st->gpio_sync_in, 0);
> +
> +	return 0;

There is no other return, so this could be a void function. In this case, it is
fine because a later patch adds another return. But in the future, be sure to
mention that in the commit message (or below the ---) so that reviewers will
know why without having to look ahead.

> +}
> +

