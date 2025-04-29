Return-Path: <devicetree+bounces-172070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E591AAA160A
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 19:33:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 40035984678
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 17:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7727E2528E4;
	Tue, 29 Apr 2025 17:26:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="YsIeU8WW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f54.google.com (mail-oo1-f54.google.com [209.85.161.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A7EC21ADC7
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 17:26:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745947592; cv=none; b=ECbsUMcc54Jkfh01YnPRmDmIGfmcOtO/cqpBYNugN4cCCHjqLn5dc5aputUDhW/fkqmgv3UvIxtQGghUuhw7bBvFGEXCOYtAm08fxtm2lud537Z87t28jcjlOnx4xPXfsCSiTZ8wTXUk8YtMb44zYDsRssslrN1RBlBBIiPLrH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745947592; c=relaxed/simple;
	bh=7/r+kRE8PwvZkzCqHeJ6cAWMXVFDXMKM0pFM4kYPawc=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=RhQWPXYjM7YnsGlvSrfxTyKTz5qXRFa3PqGzz4MAJdAVWVXMAB/vuIUwc9gcb6GhbgwTuOZCVGzPJFEeZc5Vu/d8mKrCOiSYnE/b6APeXbsbcxPGjcRiCCq++QXuk9X4Ycv0Curq3HlifDg4Vx3cXGnWckmSmbqmkhNUTmO6WKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=YsIeU8WW; arc=none smtp.client-ip=209.85.161.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f54.google.com with SMTP id 006d021491bc7-60657f417c4so1902583eaf.0
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1745947588; x=1746552388; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QZ2g6zKZfle2bhJ5TIK6uWf8PPm/y7+YFw/ot4iG/gE=;
        b=YsIeU8WWHBPME2MXC4GS8pEI26o+/u4xh7g3hTPUgT4NKWs8JPhiJF+ij1JxkJGV2e
         8qLxpyzdR231Pf4DD5AAfRptTaKDznrItbIotIKjJb/VnFrNz5+6ViXNQ6XOIBUHC2f6
         AsZnfZoOaHx0QjiDmhMyZnN07Oei2/z64w3y9YY4igWZ74yFAYBqN6i2ha0U7mUlLMVe
         uZzmx9Nf1s+IwMmAP893p4l1om6hb6iu8Z/99XigCr62v1z6IcDCdW6wIomaENAw6ZtF
         R7hZmcrzB1Xb/OLZnnulcIlYQ1QTdd7gBkk3r3Hu00ZZ+v7xTTYORCuTmbfpyK9JO4lV
         VVrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745947588; x=1746552388;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QZ2g6zKZfle2bhJ5TIK6uWf8PPm/y7+YFw/ot4iG/gE=;
        b=k3+oAiHPIXDnkW8fdm9Lmc5s2S7U4T12IqF1WuxFbxzpd/x44hLZ3YP0y2K4x8380/
         TFshDQzAPCu/SzPlkJ/5yQH63OQMjUxWJOUqKIaD6VjPS2070cjE1vZezuNDS9n5uaZB
         oKUv+TS/WZz7FUvO1WgbeXih+Xj8nwfBZIF2XzOeWBmZYoyIaxYqxFFGhzyuiIxQ4QCF
         WOUURvH1CH9etYHtiAinM9ghKsJtQyK6DrHmjbR3X5i9RVl6HzY8xLKHaCqHHSabHj2D
         avnW2KuV/QlPV2US0JHHrVM1kIdtVIARPUqqAR1Gt+be3TMfxtTXwxgJ2+4brjgZKxGv
         tgww==
X-Forwarded-Encrypted: i=1; AJvYcCWH14gw+cVTKlkZjqc4UWq+sNHj6cGMTs83IQKt7NJn7urb31T+LIMADUUn1t0XfR1TiXWOUn6/9WgS@vger.kernel.org
X-Gm-Message-State: AOJu0YxbdXDZT/NiMYEPzjhSfhW3qOSR32V8N4SR3lRAyUMAG66xOEo2
	o1lykKnvebxfFq8VpoHGK3ZmL215UPF+1TT3uEjga0Yy80iaxiV332+j5wv9EBfqxvANAUZTzu9
	f
X-Gm-Gg: ASbGnct6ReX7h9g4RQSSsBpYN1RzZ5Ocb8DukpYA5z5k/ClhvRvsThKduAgZcQICUiS
	i0csEn82Bmn50cOc8PJUFTpMqEOxm/GBFy6z0Mutq7LgMCZS6KjrhPtzJpDq8e3Ihh0EF0wRJax
	ue5MI6j4KPNFh/kBOLfEKmx94akjXP9wSEkNJI/pCDa4AxyFMskNtSajX98pRXGUsquFZOHepp/
	k6u1YoY82/K3Cr8XqbFuuOn2MIRIF5lD1gCBeEUOHxszmg3YLGEPpISgUuclGdunNsDXau4sZBJ
	3SZrbRuCApC2OaiBxEETG3SDdbDf00HohVuPzSaee4N8FObkv0e2yRCCrkWjLsUzAbktr546eIO
	Tz9z/cX0yzayLsCmHlQ==
X-Google-Smtp-Source: AGHT+IEfTeUQO0w+CK2girx/RErz7NGrkaGNtLF/J9RvQJnFMJQ+cMG8h2DSovjttwNeq03UDsd/Uw==
X-Received: by 2002:a05:6870:9629:b0:2d5:2955:aa57 with SMTP id 586e51a60fabf-2da3eb9a0f3mr2337581fac.0.1745947588639;
        Tue, 29 Apr 2025 10:26:28 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6? ([2600:8803:e7e4:1d00:dc17:157d:e8b2:3ad6])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7308b2ef3f3sm381658a34.54.2025.04.29.10.26.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 10:26:28 -0700 (PDT)
Message-ID: <7b11bb00-fd2a-4df4-bb7e-7e67ed396ba2@baylibre.com>
Date: Tue, 29 Apr 2025 12:26:27 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/11] iio: adc: adi-axi-adc: add num lanes support
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250425112538.59792-1-antoniu.miclaus@analog.com>
 <20250425112538.59792-10-antoniu.miclaus@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <20250425112538.59792-10-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/25/25 6:25 AM, Antoniu Miclaus wrote:
> Add support for setting the number of lanes enabled.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> no changes in v3.
>  drivers/iio/adc/adi-axi-adc.c | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/drivers/iio/adc/adi-axi-adc.c b/drivers/iio/adc/adi-axi-adc.c
> index bf0155830d87..8ff781ab5ec3 100644
> --- a/drivers/iio/adc/adi-axi-adc.c
> +++ b/drivers/iio/adc/adi-axi-adc.c
> @@ -44,6 +44,7 @@
>  #define   ADI_AXI_ADC_REG_CONFIG_CMOS_OR_LVDS_N	BIT(7)
>  
>  #define ADI_AXI_ADC_REG_CTRL			0x0044
> +#define    AXI_AD408X_CTRL_NUM_LANES_MSK	GENMASK(12, 8)

Same comment applies here. It looks like this is common to all cores, so no
AD408X in the name please.

>  #define    AXI_AD408X_CTRL_SYNC_MSK		BIT(3)
>  #define    ADI_AXI_ADC_CTRL_DDR_EDGESEL_MASK	BIT(1)
>  
> @@ -451,6 +452,19 @@ static int axi_adc_sync_status_get(struct iio_backend *back, bool *sync_en)
>  	return 0;
>  }


