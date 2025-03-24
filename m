Return-Path: <devicetree+bounces-160040-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B658A6D60B
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 09:20:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D939D1885B05
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 08:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2128D18FDA5;
	Mon, 24 Mar 2025 08:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ozkfcmcL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A4A257453
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 08:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742804331; cv=none; b=q1kbheCL9ZnFRogOaV6ZX7/dLK7+pY0HmkdCfPfSJpv8XB3t2sAf6I+vYHw+e3DUdIGFLY6q6KMdd/QDr8hX0h+6eK44gx+fNs2wvaLbdKTukVM0tp82ZlJ6gaYeH6940fLlP5nLbn+9ttOnyZi2IUiwYIDpUnxjku3+oaB0ZRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742804331; c=relaxed/simple;
	bh=6/FGJEt1RK3xrrnf30jQkcciY1Tncfe7Lc4lNDrYdyw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=PbZRHH8ai9kVwMlmQbwBfwn/oY6zZKvQMgEmXnqwzWtWHL2DdcxBw/zbDxamaLb3It8a3vwsjlht9qQCRstbgKuvVSI9gtbXP76vQORKVNji463Pf9cTZOUeJ0f6vuC7YLiu14v7mwxtXFKVsy4hqTT4wNM5eQjs24WcyZpBnrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ozkfcmcL; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-43ce70f9afbso40529755e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 01:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1742804327; x=1743409127; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wUV72th4YLID8Yi5m5TOOfAU6k/l5ItTBGhCs4wlkd4=;
        b=ozkfcmcLabBiV8WInbkjifw8S9L2Zi6QGtbu159iGGTj1dk7e1flwO+DjVqdbp6L8a
         AFClaxAiVkc37l0akScbEVeDUuI3j7I/VPJmH9oOCp7D2AhSsKWVk7C3Bqs4g7wbRnqS
         /QGUR5J2gvmx70juqkZK+UnsjsCMQu8kg/PmjsnOcK0RL6tB68lPPiMHN9dZG46etYcq
         xa4ypLHNRirSpL/i5sNb6L7Aja5PPgVUPgynSPsnO9oHgbCpG87bm97cSFoq1QVcEz3U
         dqzNLUIPP50q5eSOp53alb0lPiSAp504dZMQ1ddZqxRZQGXshjFVXNVlcJnrPtH+9Qn1
         uODQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742804327; x=1743409127;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wUV72th4YLID8Yi5m5TOOfAU6k/l5ItTBGhCs4wlkd4=;
        b=ltmlqghGcZeiPgl786Vw8OuBcLmcJRowDQqGw4GE6JSmpUmMzRidF19B7QKOXNSnm0
         ueOeqRWxfi23Bh0PV51+BJ66t5vk9kxxHkwzwY7jXy3lGWZAN6wM7y/5d2g5HY23TT8a
         OMloL3aETUGKzxqAOBMd47Pq6tz2YQWDsKJmF659Plj7HGaQXfuuaSnDSgtH/fgvlytp
         57xN4IjpcIxPPJjwoVYTQ5v97+Mq5brecRjwqKqUyz5ZT3p1BFNltGqmt9W9BcKNG4wn
         IYb6KXOTzlHlVZYwCBN+9EaV8owhucebZEF1hSp8TXBfmYhZP2ZH0DKaXaFIxVmsOnM8
         fg6w==
X-Forwarded-Encrypted: i=1; AJvYcCUVCeI7PMgiGvdlzjAQfuQKhxbtCyGZ5+rwnB7TsJCN8QaEZ3RAl0NZpN88MKcIyHsi/MGfj4xA7Mh4@vger.kernel.org
X-Gm-Message-State: AOJu0YySpxRKKd5ndGpQK+6RDJvMRI9RbTE8KXKChMhTi2et3IAWW7S8
	hhJLF0cTUAO1RtejFVfIqJN68JeqOTQ0jc8XxZg3BQdHaYSz9IxM96mhvme5QKw=
X-Gm-Gg: ASbGncvrkcBYgHeezP6mv3M8SuxozDz0E+D7a5ooMtkVPf8Cs/U+/agfGaCvRe5zHIa
	RO90kIvnq1Mk8GHxL9Qs91PMGiNmKEaIX29hDuNJODNEBmvWLtYNejJPMF6C23IYuQwM5XcirSq
	LBW3FeYf1dilTxLXSMS18JYpbdVHr4ODPgiQeH1JuJ3xEbK5QSVWCAXTmMhzcEXOJodyaielKZ6
	s8Ngji6IIHJaouE/PqV5L1pXM/i3thXSDfeHuAlZ5BhDjdxI0lZ0v/zZyDymkZ3G2X97yyGc0Gy
	CRKiczx7jnnil/TwF6FoFO7sYqtuFY1Dl60JK7lRHqUiRff0vbWZ
X-Google-Smtp-Source: AGHT+IGsHxYn5Ee/W35yKht21ggLacnLCdw5GuAkDQDpS+0jTcweaq4u/g3gFV75Q5DOsSvSYrtVtQ==
X-Received: by 2002:a05:600c:1d16:b0:43d:ac5:11e8 with SMTP id 5b1f17b1804b1-43d58db52e1mr44341605e9.21.1742804327367;
        Mon, 24 Mar 2025 01:18:47 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d43fdab7asm163827855e9.29.2025.03.24.01.18.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 01:18:46 -0700 (PDT)
Message-ID: <3e6cb322-bc8d-471c-87c8-286b98f12ad9@tuxon.dev>
Date: Mon, 24 Mar 2025 10:18:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next 05/13] net: macb: add no LSO capability
 (MACB_CAPS_NO_LSO)
To: =?UTF-8?Q?Th=C3=A9o_Lebrun?= <theo.lebrun@bootlin.com>,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Samuel Holland <samuel.holland@sifive.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Russell King <linux@armlinux.org.uk>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-mips@vger.kernel.org, Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Tawfik Bayouk <tawfik.bayouk@mobileye.com>
References: <20250321-macb-v1-0-537b7e37971d@bootlin.com>
 <20250321-macb-v1-5-537b7e37971d@bootlin.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250321-macb-v1-5-537b7e37971d@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Theo,

On 21.03.2025 21:09, Théo Lebrun wrote:
> LSO is runtime-detected using the PBUF_LSO field inside register
> designcfg_debug6/GEM_DCFG6. Allow disabling that feature if it is
> broken by using struct macb_config->caps.
> 
> Signed-off-by: Théo Lebrun <theo.lebrun@bootlin.com>
> ---
>  drivers/net/ethernet/cadence/macb.h      | 1 +
>  drivers/net/ethernet/cadence/macb_main.c | 5 +++--
>  2 files changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/cadence/macb.h b/drivers/net/ethernet/cadence/macb.h
> index 3b43cb9468e3618754ff2bc6c5f360447bdeeed0..e9da6e3b869fc772613a0d6b86308917c9bff7fe 100644
> --- a/drivers/net/ethernet/cadence/macb.h
> +++ b/drivers/net/ethernet/cadence/macb.h
> @@ -739,6 +739,7 @@
>  #define MACB_CAPS_MIIONRGMII			BIT(9)
>  #define MACB_CAPS_NEED_TSUCLK			BIT(10)
>  #define MACB_CAPS_QUEUE_DISABLE			BIT(11)
> +#define MACB_CAPS_NO_LSO			BIT(12)
>  #define MACB_CAPS_PCS				BIT(24)
>  #define MACB_CAPS_HIGH_SPEED			BIT(25)
>  #define MACB_CAPS_CLK_HW_CHG			BIT(26)
> diff --git a/drivers/net/ethernet/cadence/macb_main.c b/drivers/net/ethernet/cadence/macb_main.c
> index b5797c1ac0a41e9472883b013c1e44a01092f257..807f7abbd9941bf624f14a5ddead68dad1c8deb2 100644
> --- a/drivers/net/ethernet/cadence/macb_main.c
> +++ b/drivers/net/ethernet/cadence/macb_main.c
> @@ -4373,8 +4373,9 @@ static int macb_init(struct platform_device *pdev)
>  	/* Set features */
>  	dev->hw_features = NETIF_F_SG;
>  
> -	/* Check LSO capability */
> -	if (GEM_BFEXT(PBUF_LSO, gem_readl(bp, DCFG6)))
> +	/* Check LSO capability; capability is for buggy HW */

The comment here is a bit confusing to me.

> +	if (!(bp->caps & MACB_CAPS_NO_LSO) &&
> +	    GEM_BFEXT(PBUF_LSO, gem_readl(bp, DCFG6)))
>  		dev->hw_features |= MACB_NETIF_LSO;
>  
>  	/* Checksum offload is only available on gem with packet buffer */
> 


