Return-Path: <devicetree+bounces-54089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C6688F976
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 09:03:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 79E5DB2585C
	for <lists+devicetree@lfdr.de>; Thu, 28 Mar 2024 08:03:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B303654BDA;
	Thu, 28 Mar 2024 08:01:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="IzCHboNc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEF8065BA7
	for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 08:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711612887; cv=none; b=G67PNPPEh+StfsOA/oq7lr7UiHGbxldkcITTkxV0RH6aA8fzhCjJpGhDMj9RiMppFLqZHLi4ql5CxWVecmazl/Hv6BVlVk2CGo+A9gQQXQp7q9HkQYFS6zokmvPPaLKGbjZCc8r2WEEBgGMXvY2KcHrdUuH7YPPOG5/ECi/Xd5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711612887; c=relaxed/simple;
	bh=iGPkZ93mPGMHekKKmEQJnZAQ7M3hRddQQyp6Ob/5spM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MJj1i56XvWeOx0EQXs6r0cwwj2wkbaf//fHR78jLF3czNrLhPTboRg8eDbcTkstSmwRnS5TiHtoIn1iGY0iJoslPf1a5wLKPjnHSq1k9QNzW3cavBmQyZRoOogtFsTStjhq5drRAAKl1TKm5DfprIxmMOa6VNCeS6huMCk7U4Yk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=IzCHboNc; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-4154819c1adso876635e9.3
        for <devicetree@vger.kernel.org>; Thu, 28 Mar 2024 01:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1711612882; x=1712217682; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sOFRtkco0210L/WuRcYQ2nRZLqQCloOmB/yxmLTCTIQ=;
        b=IzCHboNcSD6S71uyiZCJjwvWfO6o0LaUf+9SOu0KyA5/a8JJCXmKD2/4qjqjEzekUj
         HlGlpMlIdet8abtzXEw/O4DOa/Q7SWLKOJ3CVPJQuTUdZ8On5zlgjy3DoFbG/HjAwsQs
         XHi7YulBehbsd0ttOqouZGEW66Ge6C9hCq+mPl31me5jdMF1kzZS3aOAKFdt8cGr+uIf
         bqsr4ONXzdrN4gnYdoZsT1Y/obcsAHcfLC7BXvxh17JJNzqU/Qzribs6vyd5FxrvRimg
         sNHymoC1Y4jhWikkBJ0vkZjtCtKZtZ3Y/OnrLuKwMBGX8oWi5ed5PhwM+hQSU2E7mlND
         Kkqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711612882; x=1712217682;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sOFRtkco0210L/WuRcYQ2nRZLqQCloOmB/yxmLTCTIQ=;
        b=jj2k4SZ01weaY0wz10sT9S32zrBbU3cZIO98oknwHeCOPdTlZao9J7+VIM5aiuc1sI
         y/U8L7ZbXLtVJBA6y5o7a0Z0AEAdR43eRK+MHk7N69CBKTslPltuKLqmvL0RxtKw8t8E
         bl1Qmj8v7G47bwatMgaUesLl6HafEyTTGtYMpq1+JUmHPtnF/d5wSknn9Y8Lf/v6Zo7G
         iv1RPI5J5aVr1rvMY6hX++RFkAn2jWXW4j6ql54+JYxVhT9YpZHRc76N/CTd+siLjbkj
         CEOHMSlSKuUGeAgF9joh12hgA8HXyIq81lHSxJrGYcDqH9GDf2/KeDonukQgKNSWqO84
         Ps/w==
X-Forwarded-Encrypted: i=1; AJvYcCXcNXUZSiaLquYfjO/XSBgP5RCQQk/9FJwjtny05aroTi2+nZK5MbkvvX4msi6rP5rVHzkj09In59dsS3ShQdrQtYiTyS6KzbOsHA==
X-Gm-Message-State: AOJu0YyFBBAvIhanYGC7+tNKehdc9PfGD6GtjNWx8dfXxOAHKjn1XK8w
	WgStoWx3PnBi96tGoHoeX3n06WIF74vioZeE+KftSvepNDZGMKzMLrb5vvM82P8=
X-Google-Smtp-Source: AGHT+IEfucJcctzZC8UBvZQeq6f9QZjWkgL5lvSz0lZ62cuXHSgW+76tyPLaKHZwCKmq33V0C3VBOA==
X-Received: by 2002:a05:600c:5250:b0:413:f3f0:c591 with SMTP id fc16-20020a05600c525000b00413f3f0c591mr1901771wmb.41.1711612882008;
        Thu, 28 Mar 2024 01:01:22 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id jg5-20020a05600ca00500b00414850d567fsm4609630wmb.1.2024.03.28.01.01.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Mar 2024 01:01:21 -0700 (PDT)
Message-ID: <c200e87e-1c65-4926-9307-16229e90594e@tuxon.dev>
Date: Thu, 28 Mar 2024 10:01:19 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH 07/13] pinctrl: renesas: pinctrl-rzg2l: Validate power
 registers for SD and ETH
Content-Language: en-US
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Magnus Damm <magnus.damm@gmail.com>
Cc: linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Fabrizio Castro <fabrizio.castro.jz@renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20240326222844.1422948-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20240326222844.1422948-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240326222844.1422948-8-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Prabhakar,

On 27.03.2024 00:28, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> On RZ/V2H(P) SoC, the power registers for SD and ETH do not exist,
> resulting in invalid register offsets. Ensure that the register offsets
> are valid before any read/write operations are performed. If the power
> registers are not available, both SD and ETH will be set to -EINVAL.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  drivers/pinctrl/renesas/pinctrl-rzg2l.c | 16 ++++++++++------
>  1 file changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pinctrl/renesas/pinctrl-rzg2l.c b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> index 348fdccaff72..705372faaeff 100644
> --- a/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> +++ b/drivers/pinctrl/renesas/pinctrl-rzg2l.c
> @@ -184,8 +184,8 @@
>   */
>  struct rzg2l_register_offsets {
>  	u16 pwpr;
> -	u16 sd_ch;
> -	u16 eth_poc;
> +	int sd_ch;
> +	int eth_poc;
>  };
>  
>  /**
> @@ -2567,8 +2567,10 @@ static int rzg2l_pinctrl_suspend_noirq(struct device *dev)
>  	rzg2l_pinctrl_pm_setup_dedicated_regs(pctrl, true);
>  
>  	for (u8 i = 0; i < 2; i++) {
> -		cache->sd_ch[i] = readb(pctrl->base + SD_CH(regs->sd_ch, i));
> -		cache->eth_poc[i] = readb(pctrl->base + ETH_POC(regs->eth_poc, i));
> +		if (regs->sd_ch != -EINVAL)

As of my knowledge, the current users of this driver uses SD and ETH
offsets different from zero. To avoid populating these values for all the
SoCs and avoid increasing the size of these fields I think you can add
checks like these:

if (regs->sd_ch)
	// set sd_ch


Same for the rest.

> +			cache->sd_ch[i] = readb(pctrl->base + SD_CH(regs->sd_ch, i));
> +		if (regs->eth_poc != -EINVAL)
> +			cache->eth_poc[i] = readb(pctrl->base + ETH_POC(regs->eth_poc, i));
>  	}
>  
>  	cache->qspi = readb(pctrl->base + QSPI);
> @@ -2599,8 +2601,10 @@ static int rzg2l_pinctrl_resume_noirq(struct device *dev)
>  	writeb(cache->qspi, pctrl->base + QSPI);
>  	writeb(cache->eth_mode, pctrl->base + ETH_MODE);
>  	for (u8 i = 0; i < 2; i++) {
> -		writeb(cache->sd_ch[i], pctrl->base + SD_CH(regs->sd_ch, i));
> -		writeb(cache->eth_poc[i], pctrl->base + ETH_POC(regs->eth_poc, i));
> +		if (regs->sd_ch != -EINVAL)
> +			writeb(cache->sd_ch[i], pctrl->base + SD_CH(regs->sd_ch, i));
> +		if (regs->eth_poc != -EINVAL)
> +			writeb(cache->eth_poc[i], pctrl->base + ETH_POC(regs->eth_poc, i));
>  	}
>  
>  	rzg2l_pinctrl_pm_setup_pfc(pctrl);

