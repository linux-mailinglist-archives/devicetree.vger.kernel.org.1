Return-Path: <devicetree+bounces-140470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C923EA19EEA
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 08:26:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD89516A167
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 07:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C3FA20B7E4;
	Thu, 23 Jan 2025 07:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="B2ZsFa5C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C0320B7F0
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 07:26:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737617174; cv=none; b=j4TSwMpR4KHTQdnAiSSJAe2Afi+jQP89Y3a0K+l0yJtDV3zbZdM0pCHkteo+R47e5T3po2F4aaERpcEXg2DMOKrsl9lqd4qStoz1hNahZTg7+CHPiJ4v/bPVTAgbbUU5Q5QPuZ7bixNzIt+EG8t/OTHAWWgUHNauXzG+qijLKaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737617174; c=relaxed/simple;
	bh=NdZnuyMVKe+1RJUPeyXFqEJNn+CTnqa4jJGgTqCCOl4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QNQ9DrnBmzpAJMLk3iphyvamSYs/xyo6L469xCxyij8PZqCDhNMF3S89VVK6oCe3MZ5A9o2Cvj83/QDM1gQV6IldCzYIULW+YougLySAi+hrVMSzO9KyK2RvWDtLFQy9qIe2MeZ2iNmOGtacbSknl95EkvLfCzbdEDGtJOFq3kw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=B2ZsFa5C; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-385e0d47720so80891f8f.0
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 23:26:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737617170; x=1738221970; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=nMQfKcjyN3XjY9KdVgtaexw85mLCcMx0Q4C5a4FjcYU=;
        b=B2ZsFa5CWxrpO29FFokt8URsAiLJ5Z2QVH2hKTXbFWXm9WmC1hyCitsX7YiiqoTrKf
         SSIPLxj+HXgNDVdLcVadeSMH1lwQ0YtSZz0q/1RPhmkz1RxzJ/tXmT0fHSKIVffJmoA0
         KCKXDsxUs+nzCSW903z6h1vfxYhmsCdlrhilK3aXVp8oFGnfBvRLGelpJUfQZrGltDod
         NoSHBnmELDiD4LWm70ItJns2uIeCeOKJ9M3W4rSrsD+BKnBUzEPQluVjCZK3ikQjuoLo
         ygVtGoj3WtWAdYwSC5rKDIvQJedQK1khT4oOZGBof1siwlnLqFFC+3B6QyJZ4R66tlgR
         Acnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737617170; x=1738221970;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nMQfKcjyN3XjY9KdVgtaexw85mLCcMx0Q4C5a4FjcYU=;
        b=mZ1Xy1CG28PmoBdWE93vy/H04LJ4lKnSofe4P/2ihsL/ruXcwuUmy/7s7ozQ/+33OZ
         NKwz1IZtigXZr41hoWnoXhQp/pf1r7/jpdbI3Mhj4V2Gt0SxRVT8XhAyklCwtF460+cl
         FiS1zWzttgHfXhzAi0b8hLG7ngV61D6rZ7NM+GcnYfIWhujhwBu5CnCBVelb4r5YaKYy
         Bce3hZQfPspARFxuMCYMGsFBaKti2Lh9tDfe+TgHvXda+TYA6Mmh0iGhwqyWCf0v4/5U
         syD5Zmjhe+nhTwXKXApX7XTMHPx8CbTsr1hUa8cnmcIUe1UrCtqYxygsZvTSXd2ZZ+WK
         qLlw==
X-Forwarded-Encrypted: i=1; AJvYcCU230DNSjCGWo5kAd78xVkWoKnv1CmM5cYQfF9frO4YLojsaOFhZUXN8dHI8HajmTTJ3JBWWcrqTrns@vger.kernel.org
X-Gm-Message-State: AOJu0YwyPIGty1JsK0C5oDmL3AesFoCie8XYbVcS2UVi1NYDOLF0Lq4z
	1hnehl6mcZmGsPm8dO7hVBh685qjxbqZsdxOt9ql4Rqa7AXzQ3y3LoA8w9WyLLI=
X-Gm-Gg: ASbGncs60ZaGjUv9/fwyJ+UjI2naZ6JCryrrSvU5aSFZ0JRGtv0QJ5tzm9BGp5Gj3sI
	1kphUJpjhO4hs6G7WcL7WyI3STi3Diza8TXX/LKVPe9251ClcoFOD4iXYIgo9DhcvimUh+Y58wq
	LRbfyHbo6kV/l4EUAd6zMyo7/XTTFRdEdwopB9uK/DIuBV5OOmBMRSbJpAOljEWpYKvg6+1LCm2
	pOCculSw3ob1yZ4Ph5ijdEJZeav722KUVl07ueqDOaZ+ELIfHOzHxtq0n5I+iNyMA8MEJ9gv3vB
	7Fz2SHHylMpZ1JdLXss4pV23
X-Google-Smtp-Source: AGHT+IHb7c38GI9KFqxvE1ndExZtij3Ix+csS5cSw5JLp5XD0pptgjTkVg6vwIHa6IngTUW03BlTHA==
X-Received: by 2002:a05:600c:3ac6:b0:42c:b55f:f4f with SMTP id 5b1f17b1804b1-438b17d0086mr25977105e9.6.1737617170565;
        Wed, 22 Jan 2025 23:26:10 -0800 (PST)
Received: from [192.168.1.20] ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-438b31d98d7sm50414275e9.30.2025.01.22.23.26.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jan 2025 23:26:09 -0800 (PST)
Message-ID: <3819c34c-6ec3-400a-a02d-f89216b417c6@linaro.org>
Date: Thu, 23 Jan 2025 08:26:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] firmware: stratix10-svc: Add
 of_platform_default_populate()
To: Mahesh Rao <mahesh.rao@intel.com>, Moritz Fischer <mdf@kernel.org>,
 Wu Hao <hao.wu@intel.com>, Xu Yilun <yilun.xu@intel.com>,
 Tom Rix <trix@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Dinh Nguyen <dinguyen@kernel.org>
Cc: linux-fpga@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Mahesh Rao <mahesh.rao@altera.com>
References: <20250122-socfpga_sip_svc_misc-v1-0-cbdcd034ae34@intel.com>
 <20250122-socfpga_sip_svc_misc-v1-3-cbdcd034ae34@intel.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20250122-socfpga_sip_svc_misc-v1-3-cbdcd034ae34@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22/01/2025 06:58, Mahesh Rao wrote:
> Add of_platform_default_populate() to stratix10-svc
> driver as the firmware/svc node was moved out of soc.
> This fixes the failed probing of child drivers of
> svc node.
> 
> Fixes: 23c3ebed382a ("arm64: dts: socfpga: agilex: move firmware out of soc node")
> 


There is never a blank line between tags. Use: `git log`

> Signed-off-by: Mahesh Rao <mahesh.rao@intel.com>

> ---
>  drivers/firmware/stratix10-svc.c | 14 +++++++++++---
>  1 file changed, 11 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/firmware/stratix10-svc.c b/drivers/firmware/stratix10-svc.c
> index c5c78b869561b0c1e9602823ad1f501e98e3ce51..15a7207f7753dcd4e94da4aa9a6162fedb577fe9 100644
> --- a/drivers/firmware/stratix10-svc.c
> +++ b/drivers/firmware/stratix10-svc.c
> @@ -1227,13 +1227,19 @@ static int stratix10_svc_drv_probe(struct platform_device *pdev)
>  	if (!svc->intel_svc_fcs) {
>  		dev_err(dev, "failed to allocate %s device\n", INTEL_FCS);
>  		ret = -ENOMEM;
> -		goto err_unregister_dev;
> +		goto err_unregister_rsu_dev;
>  	}
>  
>  	ret = platform_device_add(svc->intel_svc_fcs);
>  	if (ret) {
>  		platform_device_put(svc->intel_svc_fcs);
> -		goto err_unregister_dev;
> +		goto err_unregister_rsu_dev;
> +	}
> +
> +	ret = of_platform_default_populate(dev_of_node(dev), NULL, dev);
> +	if (ret < 0) {
> +		of_platform_depopulate(dev);
> +		goto err_unregister_fcs_dev;
>  	}
>  
>  	dev_set_drvdata(dev, svc);
> @@ -1242,7 +1248,9 @@ static int stratix10_svc_drv_probe(struct platform_device *pdev)
>  
>  	return 0;
>  
> -err_unregister_dev:
> +err_unregister_fcs_dev:
> +	platform_device_unregister(svc->intel_svc_fcs);
> +err_unregister_rsu_dev:
>  	platform_device_unregister(svc->stratix10_svc_rsu);
>  err_free_kfifo:
>  	kfifo_free(&controller->svc_fifo);


You need to update remove() callback.




Best regards,
Krzysztof

