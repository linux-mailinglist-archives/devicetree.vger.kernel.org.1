Return-Path: <devicetree+bounces-210792-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CE7B3CD49
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 18:41:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 212003B16D0
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 16:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACE2F2773F8;
	Sat, 30 Aug 2025 16:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="rApEJ9er"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7593D81
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 16:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756572092; cv=none; b=lZ1XX1tXHnHi45zyQpuB3/13l3Hgh8RTK9g+APOM8lRVvCyZ5QR9S2f0wap5Wg6RIXHeg+78DfbUW0C8MAY5LpugmndH6Qn8H+6/oKYddKRClrT7ok95Z1yoz0bbc7vU5YOHkUUrRSGwGIGJwkzfka749BwaT88XtLp+WrbR57w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756572092; c=relaxed/simple;
	bh=9pLVtHagF9RfuVvLL5VmokTfRtBhGQ67ZkM9NHr6/xM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=p9wyIt8NDe6fX7pHuYQWBFo88eOtv+bFLgwGg2knI0wWC9ojdzpXyuzGD3PEmmiPcYDQhuvvNsjtD0H5GY8ecFP7TBpn2DnC93CIt/iwc6LVErpHuGTm3qKBbj+9T+E7M7pZ2LDLcHW6WPl8pCsN7mBF6fTpCAWoYhxSZJwHnd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=rApEJ9er; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-7455e68736eso1189196a34.0
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 09:41:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1756572088; x=1757176888; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sbfBohOE3aUAe+8ggIJdFs3Ub7xyIyjcAlkbS5chGaw=;
        b=rApEJ9erCEAhloV58ULbDH5EvvpeMmIdIkDlBfA9xitGgEExwtWbmQkz1RUdCcMAa+
         MtiyC3tIRRdc6vXoHUu2B2b3v1Uel8VaZhy9UZX/Uah6P0EyiCU15AmxTH4j9D02KAR3
         uCbIyFS0BGua5quv3PSXGEZmnnhJq4+rV4xkGO4lwLZV1x+4Nttni7NvjpCSyqUeoUMW
         ZtCG+WSiQzT4Az4QFJAA+stUYBZvp9m+roqig8mLZZgHi8WGydgHAq8NCj/DE3EEmy14
         dlMiiSme7XxvU31PHkPQcRjmmOtH3Od5NAjxz4q5/Fiw3Sg7ezmKN2AuxWgiEFwOPbGs
         nJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756572088; x=1757176888;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sbfBohOE3aUAe+8ggIJdFs3Ub7xyIyjcAlkbS5chGaw=;
        b=qu229He0gDQnzYeFdNyhw1C5o/BDqnuEdyD44vB2FOQK1PY/1UJZStdJk/4wFQuxTv
         lxOD9tmLnegYs+dGZ2FXv6nDDWkQO7UoayIzF8VSeo8ANq8P5KD64VEnOOnqT4TvUvRt
         DgPAcZF/OPhz2IqG/anB60edE7RpMO9Kp5a1twjhX2PNKAeqYO8Pb2yybdPbmtu0Mf2o
         2xQqnKQm47dIn4upjnJ4eyqDUnZiM79UuY28EXVwgdhPjJMxd/lAMEA11pUzqbtLXYyh
         rSJ2LhIPGyrSRmwMOgT8UnPNt4HZVyqn4IDHNHCFC5d+DgEwUdmjwIWIub5o19cnzQKX
         LPRA==
X-Forwarded-Encrypted: i=1; AJvYcCXVhypIC2fsniXXu08MnIgD0THZz6kw4akt/RkgP6+Lxn9/It3iAEVgsLIVlr9zE5QkAOMlTflncvlm@vger.kernel.org
X-Gm-Message-State: AOJu0Yyjn+12K7Yi+j9gsZD9OlnKbzHFMLqH9o4UBWQL8O4jIF0zoZI/
	6y0oN+5k7uagkacFhDQTfXgh0DY3oAeMuD+xEyXZKk7JjORCv91vT0+Cq6EgZgCO/RI=
X-Gm-Gg: ASbGncu9YDmUD+H3SxgoERHoc/cZQYAE46U0LUgMr2CHBTtza6k5dEZ7u0s4Denhofp
	wq1gPicJni8aOzco4olRRgN0thP9ZkwIbiBgHRj/u6DaG4kMDgxX7HPv62tQHY2P37o53QOpFhz
	rC8Dvy8ierJ4DkaTtOkB1keiUEIBXsIXu7Sgc1iZXalBnf158OlGROUKNh4st4MAPAxIQNqyK3a
	YrKRXWMpHhIvq0euS+zy+0D6ep7wRKaPxGoit795C/4M7jfgG95T1Tvrw4GTsHQ8HUzmZj14FIT
	FwEatUDRvvuVTEzSIJrVFOjUrxu+hXHDgI4UYrb0UbbvbyPfLsxCcFRPMfQImmD3ot7ssSIkyzK
	t0pX2QDa7i+Fq8/X3/17rfW3cdbYbyrvlLx3VZNIqaLpDAxrj55VU5Yqe/neZT9kWNMPaKaNoRO
	U=
X-Google-Smtp-Source: AGHT+IEr7AQnCq5wkF/dg8M61n6r+AfW5NR3ZpEgSAUCmyBrqg6y3i+f1Si6RhVd/teU1v3mrKvqvQ==
X-Received: by 2002:a05:6830:398b:b0:744:f08e:4d30 with SMTP id 46e09a7af769-74569f18c36mr1644826a34.35.1756572088242;
        Sat, 30 Aug 2025 09:41:28 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d? ([2600:8803:e7e4:1d00:f7b4:dfbd:5110:c59d])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3196d46d8a6sm345913fac.18.2025.08.30.09.41.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Aug 2025 09:41:26 -0700 (PDT)
Message-ID: <a94fe92c-ec2e-42d9-9a88-f40f243560ca@baylibre.com>
Date: Sat, 30 Aug 2025 11:41:25 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/15] spi: spi-offload-trigger-pwm: Use duty offset
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@baylibre.com>
Cc: Axel Haslam <ahaslam@baylibre.com>, jic23@kernel.org,
 Michael.Hennerich@analog.com, nuno.sa@analog.com, eblanc@baylibre.com,
 andy@kernel.org, corbet@lwn.net, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, broonie@kernel.org, Jonathan.Cameron@huawei.com,
 andriy.shevchenko@linux.intel.com, marcelo.schmitt1@gmail.com
References: <cover.1756511030.git.marcelo.schmitt@analog.com>
 <2410525339f56466fa566dda367678ec92f9fb98.1756511030.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <2410525339f56466fa566dda367678ec92f9fb98.1756511030.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 8/29/25 7:42 PM, Marcelo Schmitt wrote:
> From: Axel Haslam <ahaslam@baylibre.com>
> 
> Pass the duty offset to the waveform pwm.
> 
> Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>
> ---
>  drivers/spi/spi-offload-trigger-pwm.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/spi/spi-offload-trigger-pwm.c b/drivers/spi/spi-offload-trigger-pwm.c
> index 805ed41560df..8413aeb3689d 100644
> --- a/drivers/spi/spi-offload-trigger-pwm.c
> +++ b/drivers/spi/spi-offload-trigger-pwm.c
> @@ -51,13 +51,13 @@ static int spi_offload_trigger_pwm_validate(struct spi_offload_trigger *trigger,
>  	wf.period_length_ns = DIV_ROUND_UP_ULL(NSEC_PER_SEC, periodic->frequency_hz);
>  	/* REVISIT: 50% duty-cycle for now - may add config parameter later */
>  	wf.duty_length_ns = wf.period_length_ns / 2;
> -
> +	wf.duty_offset_ns = periodic->offset_ns;

I would be tempted to put the loop check here:

	offload_offset_ns = periodic->offset_ns;

	do {
		wf.offset_ns = offload_offset_ns;
		ret = pwm_round_waveform_might_sleep(st->pwm, &wf);
		if (ret)
			return ret;
		offload_offset_ns += 10;

	} while (wf.offset_ns < periodic->offset_ns);

	wf.duty_offset_ns = periodic->offset_ns;

instead of in the ADC driver so that all future callers don't have to
repeat this.

Also cc: Uwe in case he has any better suggestions on how to avoid
repeating such verbose validations by all uses of the PWM waveform
APIs.


>  	ret = pwm_round_waveform_might_sleep(st->pwm, &wf);
>  	if (ret < 0)
>  		return ret;
>  
>  	periodic->frequency_hz = DIV_ROUND_UP_ULL(NSEC_PER_SEC, wf.period_length_ns);
> -
> +	periodic->offset_ns = wf.duty_offset_ns;
>  	return 0;
>  }
>  
> @@ -77,6 +77,7 @@ static int spi_offload_trigger_pwm_enable(struct spi_offload_trigger *trigger,
>  	wf.period_length_ns = DIV_ROUND_UP_ULL(NSEC_PER_SEC, periodic->frequency_hz);
>  	/* REVISIT: 50% duty-cycle for now - may add config parameter later */
>  	wf.duty_length_ns = wf.period_length_ns / 2;
> +	wf.duty_offset_ns = periodic->offset_ns;
>  
>  	return pwm_set_waveform_might_sleep(st->pwm, &wf, false);
>  }


