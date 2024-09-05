Return-Path: <devicetree+bounces-100622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 84EE396E508
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 23:25:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 12D77B215A1
	for <lists+devicetree@lfdr.de>; Thu,  5 Sep 2024 21:25:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 791941AD27F;
	Thu,  5 Sep 2024 21:25:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="2zveC6n1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 537CC1A4E6F
	for <devicetree@vger.kernel.org>; Thu,  5 Sep 2024 21:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725571544; cv=none; b=Ev4L+Mew/fXDc4XJrkGWvnaNpaJ7EBlZDElwsqGLWgL9gvaFBpKS8h1OXsxGt4BsU0on/Bblbfy/jWljsNShSztKm6NbXApN7JK59GDbeSxzRM7SRu0k1FkbGh854NkSi1khudnWDZ8bFbKKGw4CunLkCwDG5v58kgUAUu3wWsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725571544; c=relaxed/simple;
	bh=HSVdh6DlK/bUQYWwhJ/DOlVdKX73tkTLOVCP3lGqjOw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=anaokyuSOIC6M/UDB+P2NBmK45P3uaSmsH+Zf2naPpGuVDyMzAkdsiCMtx28Nc5Zea5YY1htKAC/Q3BUCgfKnpEFBVW7Qbc8k3+Q+q3qowhB/+VtkH6U22H5xtxXqurzmA5NROuSGIJPMMRf/B+05u/LYeTTMn726f//RAOsfyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=2zveC6n1; arc=none smtp.client-ip=209.85.167.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3df0519a3ceso889970b6e.2
        for <devicetree@vger.kernel.org>; Thu, 05 Sep 2024 14:25:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1725571540; x=1726176340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fu2LBq0wr4uCbYcpOIyALHAwFgwtVHbOrzj2MNQAIS8=;
        b=2zveC6n1qxVQJfTD0IhUJl/vozcEBRcM8NzyyhwH43dAdeU2BzKnFfEW58h12ABgij
         TCcjRBM24hSiXFKpTMzzq71Mf9Fah/jdFbtx14/72Pp4KAuN/DCZLERnJ71ZCGVzzgTU
         SSR33BpV8vg0uAYDqUQUDGp3N29zp4Ujk6G9Gmrlv7jpxewitFA7ij+5Xj/prdNFj7nS
         jybUArGsegRehyZtrlmKsBXLcHAxSOcnQWi1El1L4+5SIcF5XkC+uyB71twaGqj65BFs
         d+OvsdmX7LZ/jW3zHu7Qx+2JgCfper9zAuA/+w6nWU+Gd2uCfRItvYqy6XmHhnanXyhc
         xzNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725571540; x=1726176340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fu2LBq0wr4uCbYcpOIyALHAwFgwtVHbOrzj2MNQAIS8=;
        b=f2RtoXErKGOVypPcC7m/dceg7DVc9ez7UBG1+6NKDyeWmEsvaIAmUTuZ6vMvzj32Ju
         2v1iLEFGlLX3/KZMKMF6SXOFrYxZzHcAhSHUoAEB9SEMIY8AnwFBJ42yCSBR5DGQgXlF
         RB2Hw7jsA19Ef9NL/ljQEH/vZKXFqrV11nTwzAUOu3GQ0zeyNjkZNsRePPg2eV8N/QOo
         EZAa9VmB4lQbNqV8YV/IoJj1GVoG/xoIM6VS+W1MnKxroJJV+V1d8xCIuASWQ0CaegHp
         dNr7PbmKlePWdih0sc3kJOmYd7Vsn2aZcSqtnuLeMfVrdeJEzt4des7QOMfIHSoO/h0R
         +enQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUkd855N5Qke18HKKHG4WW/YqdTgXRsyeIJFq3YFDn9+9XAE1/Kn29BrvJVC00yHAuaoRKgCl2ZjTg@vger.kernel.org
X-Gm-Message-State: AOJu0YwPeFjcLlMVIbVSTlpVCUVmLFqyIK5DZCMh1rx7ztDGsunBRQYy
	Q4vz8qSQVVFa4BSpC5Ia+xHb26bm4m54t+prV92NdfBXF40H4oJV5fAzJLFKfQU=
X-Google-Smtp-Source: AGHT+IHdv/EbugAmJ7r5iwyOeKbvpTXIU+mFHAGXNUh55QcJGCrv3aFVWa6nJ0A/HsvDo91d7GHtsg==
X-Received: by 2002:a05:6808:2110:b0:3d9:4163:654f with SMTP id 5614622812f47-3e029f27515mr810531b6e.32.1725571540508;
        Thu, 05 Sep 2024 14:25:40 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-3df11865deesm3363718b6e.46.2024.09.05.14.25.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Sep 2024 14:25:40 -0700 (PDT)
Message-ID: <7ba70132-e661-4f4f-a0e3-0ed1efc1aecb@baylibre.com>
Date: Thu, 5 Sep 2024 16:25:39 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/8] iio: adc: ad7606: add 'bits' parameter to channels
 macros
To: Alexandru Ardelean <aardelean@baylibre.com>, linux-iio@vger.kernel.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc: jic23@kernel.org, krzk+dt@kernel.org, robh@kernel.org, lars@metafoo.de,
 michael.hennerich@analog.com, gstols@baylibre.com
References: <20240905082404.119022-1-aardelean@baylibre.com>
 <20240905082404.119022-2-aardelean@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240905082404.119022-2-aardelean@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 9/5/24 3:23 AM, Alexandru Ardelean wrote:
> There are some newer additions to the AD7606 family, which support 18 bit
> precision.
> Up until now, all chips were 16 bit.
> 
> This change adds a 'bits' parameter to the AD760X_CHANNEL macro and renames
> 'ad7606_channels' -> 'ad7606_channels_16bit' for the current devices.
> 
> The AD7606_SW_CHANNEL() macro is also introduced, as a short-hand for IIO
> channels in SW mode.
> 
> Signed-off-by: Alexandru Ardelean <aardelean@baylibre.com>
> ---

...

> diff --git a/drivers/iio/adc/ad7606.h b/drivers/iio/adc/ad7606.h
> index 0c6a88cc4695..771121350f98 100644
> --- a/drivers/iio/adc/ad7606.h
> +++ b/drivers/iio/adc/ad7606.h
> @@ -8,7 +8,7 @@
>  #ifndef IIO_ADC_AD7606_H_
>  #define IIO_ADC_AD7606_H_
>  
> -#define AD760X_CHANNEL(num, mask_sep, mask_type, mask_all) {	\
> +#define AD760X_CHANNEL(num, mask_sep, mask_type, mask_all, bits) {	\
>  		.type = IIO_VOLTAGE,				\
>  		.indexed = 1,					\
>  		.channel = num,					\
> @@ -19,24 +19,26 @@
>  		.scan_index = num,				\
>  		.scan_type = {					\
>  			.sign = 's',				\
> -			.realbits = 16,				\
> -			.storagebits = 16,			\
> +			.realbits = (bits),			\
> +			.storagebits = (bits),			\

Technically OK in this patch since bits is still always 16 but we
can avoid changing the same line again later to:

	(bits) > 16 ? 32 : 16

if we just do that in this patch.


>  			.endianness = IIO_CPU,			\
>  		},						\
>  }

