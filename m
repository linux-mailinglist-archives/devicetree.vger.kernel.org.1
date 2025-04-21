Return-Path: <devicetree+bounces-169074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA51A9568A
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 21:11:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E0B201892B1A
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 19:11:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F36881EE03C;
	Mon, 21 Apr 2025 19:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="wIJq4qf7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916D01EC01D
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 19:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745262684; cv=none; b=BR4Qg61IKrw/ucqsPGXA5W7qbRfFBXtjBCjhFivdFmC3VJSAMB1CjPB0xZukMOJcdNDzowQLJrMk0PETrErEZeDjy1LwdK5yrvgX+MfFT2lDbTfbItCZXSJ0kpVUQ9et+OtGxCX+TVu6xZUD5UrnChbmOPbGW5dN8zjBav9EJMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745262684; c=relaxed/simple;
	bh=5AIG1sMY/MlIZGAcS5S5t2hhJlsih5VEaj99xoBne6s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LpokXKzrnlIKNqu3z8aQo6opn6oE0lrce/1vZ0+iLRivI3p3t18GSrtLC5pQD0NFMl2bklrktFSuzdtK4YyeQIHkFdcImi94arX0nF73k42GhKcofKmhDcTHjJL7pZTJrxEGd2TuJEi6Qek6wSNMsINKSikf9Wo+nd08biujl4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=wIJq4qf7; arc=none smtp.client-ip=209.85.160.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f181.google.com with SMTP id d75a77b69052e-476a304a8edso45312171cf.3
        for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 12:11:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1745262680; x=1745867480; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gI2L4uhiI02NJe/WReim9SGsmkpDN8uWBBFo4WhEb3I=;
        b=wIJq4qf71Gj8kDZQpsoV4QWDlSzichemTKpttLEE1qbs0i+ul9Zxd5AemJ+8mQrRH/
         GxtpGAdtYAW6qaa6f+YvZcMy1YTOPOOidNHUksGBDvf7jPiK6kSyfiNMjLoBNnH4++ld
         tg6X8MXtVJ6w2lfnvmiIntJrO1aTSad9u9QWasDvf4M4AZ0RQYnP3aNK208TWX7BDCDT
         nOM2tw3nC5KQBqqr7DSbP97k0N8kXjS8gLcmWgnBHMGddoQggET8rhOtO+9PQW3qwUOm
         qLFezrkwiM0q41xrQ6Al39rpv/9P7pqlG+F0WaY5lFaOo0guhKZXH/4em3CxqK3y3sxJ
         oheg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745262680; x=1745867480;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gI2L4uhiI02NJe/WReim9SGsmkpDN8uWBBFo4WhEb3I=;
        b=jKi6fKRasfCX+cK7AyW/bThJX9EIqIQePt9x7Xcn+Lx7RsSBMp5gGcyqV2AUZIVqpn
         MEEJFnibYN1GLEv4mABVgMoMDUK+QcqG8N2pnkF0XZpV3hIjUe8ef4CfG0oe7rsk8NuV
         syN2V3r69n0Z8Uv6uRpJXP38LoYEG9zVNJP/Y6U4THcayl05DZ2TuquHO3hKzTV7SpaR
         q6VbBAZ8tW9RVJBYjtKy9XaVCp5u2fu/VCuqzQDBcEvCRlZJD+dE1njjZp4vqhf4yI8Y
         KC4DxDzcxJaacfpNgULaqXh09N4GukFoNMkpus9/dJ6/qxx3/0uCvoUSYxqPQ1Ndrsm5
         wn+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWxyIkU4oS3f4eAL49IxsHTfMnHOds+luGQUiO8dMLJr/wYIvRPY4mrsY7nr4XHG3RtwbbiAU0oprMF@vger.kernel.org
X-Gm-Message-State: AOJu0Yymgf34gYdTO03aREBCRHsLUNzWRHkaDWh+SMIe2HVknnQnRNGK
	lL+gaKGW2u3JghufsjCiKxYIfpiqDokiHYF314/4/HRFq2LO27bEoAA6eHqBGd0=
X-Gm-Gg: ASbGncu3Pd6J7K9bRCyooiVhjFzt99SPqyRjKZsWum5AIDYrhWiiwQY3pME91YCwbuc
	n6h6yXEo7YBkvqDOcsaAmZEv/VTDFITOb3/iEViL8fSh+xoM3EsPZt5krsjCC0NxBS3pnHRHDNf
	Ncj9xBOUax2AoQ9XzC3Xxe7bJoTYXj3qejumzZ4Jw80dzmt61WteVNJRUXqIKtGK90ubfajID5/
	zzAM2PtWm103gtFmKWDqJLCCGe/8JaoT6f/OE6BaVVc9JU4vc0wrvWfQd0UIFTeqm4Z8Q+DZkxx
	L6x7IdlO36AiJ3emkkInVWvvkE3r36KPt9zEQiTX+8hyqbItY26VhOcJi4aTw0J95eaKbwXjdsg
	Dpaj5
X-Google-Smtp-Source: AGHT+IHP/Ty/ZP20dA5qBvEvFjaNUxmyfhkG77rGIDC4dMEZdaAtit8jzrqmhWV8xbqy0JUyq8twcQ==
X-Received: by 2002:ac8:5e4f:0:b0:474:db2f:bd32 with SMTP id d75a77b69052e-47aec4b971emr238825011cf.38.1745262679762;
        Mon, 21 Apr 2025 12:11:19 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-47ae9c188a8sm45206481cf.8.2025.04.21.12.11.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Apr 2025 12:11:19 -0700 (PDT)
Message-ID: <29954f84-75b9-436f-8e36-f52bf26a905f@riscstar.com>
Date: Mon, 21 Apr 2025 14:11:18 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] pinctrl: spacemit: add clock support for K1 SoC
To: Yixun Lan <dlan@gentoo.org>, Linus Walleij <linus.walleij@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, spacemit@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20250416-02-k1-pinctrl-clk-v2-0-2b5fcbd4183c@gentoo.org>
 <20250416-02-k1-pinctrl-clk-v2-2-2b5fcbd4183c@gentoo.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250416-02-k1-pinctrl-clk-v2-2-2b5fcbd4183c@gentoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/15/25 7:15 PM, Yixun Lan wrote:
> For SpacemiT K1 SoC's pinctrl, explicitly acquiring clocks in
> the driver instead of relying on bootloader or default hardware
> settings to enable it.
> 
> Signed-off-by: Yixun Lan <dlan@gentoo.org>

It might be nice at some point to set the clock rates
to whatever is preferred.  But this looks good to me.

Reviewed-by: Alex Elder <elder@riscstar.com>


> ---
>   drivers/pinctrl/spacemit/pinctrl-k1.c | 10 ++++++++++
>   1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/pinctrl/spacemit/pinctrl-k1.c b/drivers/pinctrl/spacemit/pinctrl-k1.c
> index 67e867b04a02ea1887d93aedfdea5bda037f88b1..9996b1c4a07e72f2a3832b759feddcd4e07f2159 100644
> --- a/drivers/pinctrl/spacemit/pinctrl-k1.c
> +++ b/drivers/pinctrl/spacemit/pinctrl-k1.c
> @@ -2,6 +2,7 @@
>   /* Copyright (c) 2024 Yixun Lan <dlan@gentoo.org> */
>   
>   #include <linux/bits.h>
> +#include <linux/clk.h>
>   #include <linux/cleanup.h>
>   #include <linux/io.h>
>   #include <linux/of.h>
> @@ -721,6 +722,7 @@ static int spacemit_pinctrl_probe(struct platform_device *pdev)
>   {
>   	struct device *dev = &pdev->dev;
>   	struct spacemit_pinctrl *pctrl;
> +	struct clk *func_clk, *bus_clk;
>   	const struct spacemit_pinctrl_data *pctrl_data;
>   	int ret;
>   
> @@ -739,6 +741,14 @@ static int spacemit_pinctrl_probe(struct platform_device *pdev)
>   	if (IS_ERR(pctrl->regs))
>   		return PTR_ERR(pctrl->regs);
>   
> +	func_clk = devm_clk_get_enabled(dev, "func");
> +	if (IS_ERR(func_clk))
> +		return dev_err_probe(dev, PTR_ERR(func_clk), "failed to get func clock\n");
> +
> +	bus_clk = devm_clk_get_enabled(dev, "bus");
> +	if (IS_ERR(bus_clk))
> +		return dev_err_probe(dev, PTR_ERR(bus_clk), "failed to get bus clock\n");
> +
>   	pctrl->pdesc.name = dev_name(dev);
>   	pctrl->pdesc.pins = pctrl_data->pins;
>   	pctrl->pdesc.npins = pctrl_data->npins;
> 


