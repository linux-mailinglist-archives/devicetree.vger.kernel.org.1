Return-Path: <devicetree+bounces-162807-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40345A79D9C
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 10:04:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BEA13ADDA6
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 08:03:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E8AE241688;
	Thu,  3 Apr 2025 08:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="RjnN8jxY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68DB61DF994
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 08:04:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743667445; cv=none; b=eyEO38wGG8iMnfELm+eDGESgLDSBxBMyTgwP4Gu5PwANGF8U2X0kvbd7nYNLyck/nEjv9G9KVv91I8LcCrBjcWX+/x++/exyOeAiFScHKDlqn5hMe7G3Q75DccKqb7Waouuu+YQP230CM+5p0UE+An8xPVtUigQQWvonIPeBojk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743667445; c=relaxed/simple;
	bh=4CDET8HY4bzxF7350jaD49xltN5LQM8HEsVV5xhKyec=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dljobK8gnMuioUDNHwa7Z35ZxPSRIRdTm5hpD8P2JGcm5DiHKM7o1URwtpaPn8sJ78XJwtPEU7fstRGkEFqfEjgQCiD/e4zviQHcbjHV255gMKqchd8g90PuomDiJlQZqkT5Rngp36iGZLWuLZKVGlXqXHa6SnpM1Gmtr+03gcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=RjnN8jxY; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cf06eabdaso4616525e9.2
        for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 01:04:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1743667441; x=1744272241; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4ODOqqsnViZ1sK0aQSYfZkG1OgH6kYCvoMC0DZ3dd3I=;
        b=RjnN8jxYBKS1yhgpMTOWG/THFMI8b5ik2EcG1GKgiinUNHofP2aZYvqt4uYiRXIhME
         dKFLEpRDy6ouozh9y5mdt0NLbBF33yt2L4IrnySAlZg3Gv/VQpQu9O5Xg+IIAP0q5FLw
         nU3FPpaaKHIEgMU5l3WoAuRD5/0aJzvjQIhDx+koFREkSMNATE5tX0bJxGl5t47T53Fr
         QtNW3FHxpVDac6fN8ci7ULPY4riT3iZdhHdE+hJ0MZLRCnulFV636gM5JWVuKBBGc8t5
         XjBA4Y5p4QjfDhMdLKNTCc4aQOeJ7TMp52P1x79TK9H8JeGOmKz4KmEuuHFN0vcLvOWt
         dDxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743667441; x=1744272241;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4ODOqqsnViZ1sK0aQSYfZkG1OgH6kYCvoMC0DZ3dd3I=;
        b=bi371MU4eIwZVRVL8vN4nGt3SwJwobz5z4qu2VO7sQJJudjDkvavD0vzixx2A5TAkf
         JHq2EGEdNDbTWy/FeFZoGliGBQg40wMqDzara76X6mqzV1dY6oMI1oZxToIzy9wCWjTr
         3ZNAdXzO9MchtL+RDrNmf87bijCkK2rFXSN94i0EAum1GgOdo8v91Ht3bi0eso9BOLRV
         q8VonsfAPJ2/m2ALU/QmRfH2EsiHJSKEtdDst2g+LpcDseCbO2paKxAY1qstVQVXPlAj
         kKCmw3j+tBb+jmLZAR0REWK5zvDuFYpMAyxgW/hIaLYPVCDlpOoZmwnFZGYALKCKB5JW
         9+Ew==
X-Forwarded-Encrypted: i=1; AJvYcCXLJGChE9SiHk/SQZ7ykAY9/wNEBDVdZT7L31w36qF43/wmW3XAK7X6OCkfuH2u5Dm/4l1UldTiKtmj@vger.kernel.org
X-Gm-Message-State: AOJu0YxZBvFqIOtzERXOg6OGX1a4uCXNx8VyL+fP6kdcQwzgPG3S6X25
	oFkHOCqff/3IgTel3sT9D8FF69VthSP6IAijk8++oZHYmDe/CkuI4BUvfa45wx0=
X-Gm-Gg: ASbGnctK4gyN+lCTciYDcemo/k/yKELZoObihfr9lAV0UjuB+OMofHHp3v6vFz8yh3q
	+8QxaMXEoQRxlkIX71Fq7WuJX9C5VyQfyX1YVQwXcCJs6+YOrdbJ2c+PTaju8e9XsETyTcE9BCm
	0h5AfmL6xx9+6/yMfIl8q04i/3dl/RU6/BgupYuxXVY+4ahuYHARnwLoxRhzKiGEbEuBFdpRTIX
	pai0qyHZEb+rdI0mZmeZFy1mdyaJpwRwvXm/qIxx9+WgaKGE1Fik4e4LJcet8t+NC9LD7YZU3//
	SlxJ4tMCxbZ0aiME4TYk3UfeWEEhRFCt/HBvQ3Wv5kePT+n7QWMG
X-Google-Smtp-Source: AGHT+IECVq2HRR1Nyv/1p/1GP+gWgvLkESx2Rr9YngJsLXpP3nOlkno+7eGPJSpNvzemFUEsWCN0zg==
X-Received: by 2002:a05:600c:450f:b0:43c:efed:732d with SMTP id 5b1f17b1804b1-43ec13fc752mr14693545e9.16.1743667440603;
        Thu, 03 Apr 2025 01:04:00 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c30096cc1sm1064581f8f.5.2025.04.03.01.03.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Apr 2025 01:04:00 -0700 (PDT)
Message-ID: <8412725b-8d62-44a1-8929-7de7de8dfdbf@tuxon.dev>
Date: Thu, 3 Apr 2025 11:03:58 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] soc: renesas: rz-sysc: add syscon/regmap support
To: John Madieu <john.madieu.xa@bp.renesas.com>, geert+renesas@glider.be,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, rafael@kernel.org,
 daniel.lezcano@linaro.org
Cc: magnus.damm@gmail.com, devicetree@vger.kernel.org, john.madieu@gmail.com,
 rui.zhang@intel.com, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, sboyd@kernel.org,
 biju.das.jz@bp.renesas.com, linux-pm@vger.kernel.org, lukasz.luba@arm.com
References: <20250330214945.185725-1-john.madieu.xa@bp.renesas.com>
 <20250330214945.185725-2-john.madieu.xa@bp.renesas.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250330214945.185725-2-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, John,

On 31.03.2025 00:49, John Madieu wrote:
> The RZ/G3E system controller has various registers that control or report
> some properties specific to individual IPs. The regmap is registered as a
> syscon device to allow these IP drivers to access the registers through the
> regmap API.
> 
> As other RZ SoCs might have custom read/write callbacks or max-offsets, let's
> register a custom regmap configuration.
> 
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
> v1 -> v2: no changes
> v2 -> v3: no changes
> v3 -> v4: no changes
> v4 -> v5: no changes
> 
> Note for Maintainers: There is a false positive warning reported by
> checkpatch.pl on this patch patch stating that the regmap_config struct
> should be const, despite the fact it's updated in probe().
> 
>  drivers/soc/renesas/Kconfig         |  1 +
>  drivers/soc/renesas/r9a09g047-sys.c |  1 +
>  drivers/soc/renesas/rz-sysc.c       | 30 ++++++++++++++++++++++++++++-
>  drivers/soc/renesas/rz-sysc.h       |  2 ++
>  4 files changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
> index 49648cf28bd2..3ffd3a4ca18d 100644
> --- a/drivers/soc/renesas/Kconfig
> +++ b/drivers/soc/renesas/Kconfig
> @@ -388,6 +388,7 @@ config RST_RCAR
>  
>  config SYSC_RZ
>  	bool "System controller for RZ SoCs" if COMPILE_TEST
> +	select MFD_SYSCON
>  
>  config SYSC_R9A08G045
>  	bool "Renesas RZ/G3S System controller support" if COMPILE_TEST
> diff --git a/drivers/soc/renesas/r9a09g047-sys.c b/drivers/soc/renesas/r9a09g047-sys.c
> index cd2eb7782cfe..5b010a519fab 100644
> --- a/drivers/soc/renesas/r9a09g047-sys.c
> +++ b/drivers/soc/renesas/r9a09g047-sys.c
> @@ -64,4 +64,5 @@ static const struct rz_sysc_soc_id_init_data rzg3e_sys_soc_id_init_data __initco
>  
>  const struct rz_sysc_init_data rzg3e_sys_init_data = {
>  	.soc_id_init_data = &rzg3e_sys_soc_id_init_data,
> +	.max_register_offset = 0x170c,
>  };
> diff --git a/drivers/soc/renesas/rz-sysc.c b/drivers/soc/renesas/rz-sysc.c
> index 1c98da37b7d1..bcbc23da954b 100644
> --- a/drivers/soc/renesas/rz-sysc.c
> +++ b/drivers/soc/renesas/rz-sysc.c
> @@ -6,8 +6,10 @@
>   */
>  
>  #include <linux/io.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> +#include <linux/regmap.h>
>  #include <linux/sys_soc.h>
>  
>  #include "rz-sysc.h"
> @@ -81,6 +83,14 @@ static int rz_sysc_soc_init(struct rz_sysc *sysc, const struct of_device_id *mat
>  	return 0;
>  }
>  
> +static struct regmap_config rz_sysc_regmap = {
> +	.name = "rz_sysc_regs",
> +	.reg_bits = 32,
> +	.reg_stride = 4,
> +	.val_bits = 32,
> +	.fast_io = true,
> +};
> +
>  static const struct of_device_id rz_sysc_match[] = {
>  #ifdef CONFIG_SYSC_R9A08G045
>  	{ .compatible = "renesas,r9a08g045-sysc", .data = &rzg3s_sysc_init_data },
> @@ -97,14 +107,21 @@ MODULE_DEVICE_TABLE(of, rz_sysc_match);
>  
>  static int rz_sysc_probe(struct platform_device *pdev)
>  {
> +	const struct rz_sysc_init_data *data;
>  	const struct of_device_id *match;
>  	struct device *dev = &pdev->dev;
> +	struct regmap *regmap;
>  	struct rz_sysc *sysc;
> +	int ret;
>  
>  	match = of_match_node(rz_sysc_match, dev->of_node);
>  	if (!match)
>  		return -ENODEV;
>  
> +	data = match->data;
> +	if (!data)
> +		return -EINVAL;
> +
>  	sysc = devm_kzalloc(dev, sizeof(*sysc), GFP_KERNEL);
>  	if (!sysc)
>  		return -ENOMEM;
> @@ -114,7 +131,18 @@ static int rz_sysc_probe(struct platform_device *pdev)
>  		return PTR_ERR(sysc->base);
>  
>  	sysc->dev = dev;
> -	return rz_sysc_soc_init(sysc, match);
> +	ret = rz_sysc_soc_init(sysc, match);

The return value of rz_sysc_soc_init() is lost in case
data->max_register_offset != 0. Is there a reason for this?

> +
> +	if (data->max_register_offset) {
> +		rz_sysc_regmap.max_register = data->max_register_offset;
> +		regmap = devm_regmap_init_mmio(dev, sysc->base, &rz_sysc_regmap);
> +		if (IS_ERR(regmap))
> +			return PTR_ERR(regmap);
> +
> +		ret = of_syscon_register_regmap(dev->of_node, regmap);
> +	}
> +
> +	return ret;
>  }
>  
>  static struct platform_driver rz_sysc_driver = {
> diff --git a/drivers/soc/renesas/rz-sysc.h b/drivers/soc/renesas/rz-sysc.h
> index aa83948c5117..37a3bb2c87f8 100644
> --- a/drivers/soc/renesas/rz-sysc.h
> +++ b/drivers/soc/renesas/rz-sysc.h
> @@ -34,9 +34,11 @@ struct rz_sysc_soc_id_init_data {
>  /**
>   * struct rz_sysc_init_data - RZ SYSC initialization data
>   * @soc_id_init_data: RZ SYSC SoC ID initialization data
> + * @max_register_offset: Maximum SYSC register offset to be used by the regmap config
>   */
>  struct rz_sysc_init_data {
>  	const struct rz_sysc_soc_id_init_data *soc_id_init_data;
> +	u32 max_register_offset;
>  };
>  
>  extern const struct rz_sysc_init_data rzg3e_sys_init_data;


