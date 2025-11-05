Return-Path: <devicetree+bounces-235415-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 97688C382B1
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 23:18:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C55904F0CC3
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 22:18:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2080D2F12C8;
	Wed,  5 Nov 2025 22:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ayjMRaPz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89C82EFDA2
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 22:18:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762381095; cv=none; b=OgfNxnF2MaRPoyMWHSZWxWz5Ho9oJw54EhrVtW704OMcILop5OLda5SS6Wxc3xjGuHCcw2l17MzpzGTO2MH4KCenUatB4r2+bbLQM1O4xTG+r2xKkc8OJckWxAipB2rh8QqU0vIvvlGDG0xmnW/S2Eei/BXAtv8/ArBHZsyhKpc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762381095; c=relaxed/simple;
	bh=FgSHmdWK8fD86bwRD+NZMD0W0N6z+nayNo+9iUVv+Ak=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Ok8eYwt2yVK5pPlKQO+KqFQ/MmHkRvFHn0r+8LWdcWkWcDV2+Pb7E+NN/R4pSyoFvRzMjwvtxBIQoaeh54gEh8x5QDIr8HWMWt3/j+PAvOkrYfBv0SdrGdofBv3netOamjmE8sKUmf1dTFKpZTxZ3lWGjyvRxZuScm0A2VYIKXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ayjMRaPz; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-340cccf6956so269821a91.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 14:18:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762381092; x=1762985892; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Im7C/yPVX9MxQ3wIFuOi8MGfdZ4IZni92LwvcWpKIGs=;
        b=ayjMRaPzv1xu7dmY/OaJsI/1A7EsC3QCEOV7CGR0Bg6ZTRXjC7dBZa0y6B9KjqsQrU
         1+2wZr+jYdfRCNMS+zbe1nRoorC9EztQ+ppXTe2gX0tkfhV1LaDZ4nTd0xAI5MPmro0R
         4eiPeOOs1vNV23BdWGi9+Sd9OTX/ja7ja24wvfvquPmjXw0cvft5biFO1yAEpwZ1CLTs
         LHoHKSBzNNRFmYXnJKfQOyFF9GVqpA6xpfGG/ZKGMdZaCOhdR5VWAgTHu262I7Zqu0S1
         QkX93ekiQZyUe+h9akbySFOP2AXbRaLbF6CNBMOBSgUlyH2JSj4OOqimdEXf2kU3uP04
         BFpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762381092; x=1762985892;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Im7C/yPVX9MxQ3wIFuOi8MGfdZ4IZni92LwvcWpKIGs=;
        b=XwVoSqR596l4FYAsoZwb3Bi0HdG3PQpruLmI42bYXNNcr0wDrxYtRmlRsrajpXiGtY
         JL1zUcNi3r1gL9u8NyUY/zaeHnGM6TjZ5R2gv25Ns+az2o7AOju93zaotRHog1MlLI/H
         ZMu+3qMizfcNvAP1RwwJzpEfV4hc/1nPmOHgYdy3UBqrCCp4pYSR28AN4ZszbSJXenbl
         G511zB8w3+ZEWp6xN6XxlQ/ORvPy0PeLwikD8D5LZ3f7qCAJDv82bsUpe4EhcAhDJC0M
         LWPstkBCxiuOai0AycEVROlPlkCxGX6A27Mg10W71V5oe7VvNK64nkmmBLuQWpoIyT0h
         38/g==
X-Forwarded-Encrypted: i=1; AJvYcCV1xVZm+iXw4MWSpj74utBo7xgnUhGsC8SxWm3H9xBOfW4JPbYnhBnqEktSCjdl5gnTowZoxKEdBJhV@vger.kernel.org
X-Gm-Message-State: AOJu0Yx140U599Qg2zKBckgNu2+z1MJB6eRCxedITJapxyv+mFrmfb/o
	p9pem7wjySM5SO/bbbT1jeA8Hu9QWcgkt78OO15vpd9ooul+C/T5JnCS
X-Gm-Gg: ASbGncvZbUvRgEtZTlBcK081icjlyrXn0SkU9f1DbyGG+L1Q48SJ4EISPsRK76FkVeQ
	lo+62hvl733TA9mDA5KwuteJZGUqr+uqITbUf5QXTC3AsTyvwZoYDt3wgGglxKX81vy4aBxgxVP
	qlFAtfPMXou6JjBdCxSZ/t7+Eyxk2MyH7QjR9QUSw+QTU4tkiCrU2sLM0UTpkM8yN9lJURhFIUb
	ej0tr5DSYn03XyCdFEYEGAyTMktDYvCIMcQMPXFrxhdxBuCink6/YjFUKjATaAfu8z0otO4lGkP
	VEYLXo1u7CY6YsAGnfOo3mV0xD45vfS1dVrTC6VaMqSWE6N2G6RjU1bRan9etyLfMIkBdX5OJ8q
	FroNSQqCG1gGax7y0112SLIRlEii2DZZyJDKh5OjidGWv0gROanlDs0c3HONNQJ+tQSNmUsEdKU
	50JLWyLK5qWYb9BD8PwPBvcKUEwTtg17x0hnBLgEi/WNgEFhUkuzju
X-Google-Smtp-Source: AGHT+IGMYKxUc+yFWPCSR1IktVa+NNpsyxMZ4O/wnRPrxacZqCnZibSpr1AmWZE5WIphsK5cnjwcSA==
X-Received: by 2002:a17:90b:5250:b0:340:c179:3666 with SMTP id 98e67ed59e1d1-341a6c1e314mr6059131a91.8.1762381092040;
        Wed, 05 Nov 2025 14:18:12 -0800 (PST)
Received: from google.com ([2a00:79e0:2ebe:8:35dd:7def:e1d1:adfe])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341d05c982dsm238658a91.20.2025.11.05.14.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Nov 2025 14:18:11 -0800 (PST)
Date: Wed, 5 Nov 2025 14:18:08 -0800
From: Dmitry Torokhov <dmitry.torokhov@gmail.com>
To: akemnade@kernel.org
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Andreas Kemnade <andreas@kemnade.info>, Tony Lindgren <tony@atomide.com>, 
	Kevin Hilman <khilman@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-omap@vger.kernel.org
Subject: Re: [PATCH v3 2/3] Input: twl4030 - add TWL603x power button
Message-ID: <tyx4vvapd4pca6e236rcjkbxecor5kderzoinbwyuecdclzcix@jgksmvfioc4x>
References: <20251105-twl6030-button-v3-0-9b37eb2b0989@kernel.org>
 <20251105-twl6030-button-v3-2-9b37eb2b0989@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251105-twl6030-button-v3-2-9b37eb2b0989@kernel.org>

Hi Andreas,

On Wed, Nov 05, 2025 at 08:52:36PM +0100, akemnade@kernel.org wrote:
> From: Andreas Kemnade <andreas@kemnade.info>
> 
> Like the TWL4030, these PMICs also have a power button feature, so extend
> the TWL4030 power button driver. As the irqchip of the TWL6030 mfd driver
> does not provide mask, unmask finctions, do it manually.
> 
> Signed-off-by: Andreas Kemnade <andreas@kemnade.info>
> ---
>  drivers/input/misc/twl4030-pwrbutton.c | 61 +++++++++++++++++++++++++++++++---
>  1 file changed, 57 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/input/misc/twl4030-pwrbutton.c b/drivers/input/misc/twl4030-pwrbutton.c
> index f85cc289c053..b72fba9a1b2c 100644
> --- a/drivers/input/misc/twl4030-pwrbutton.c
> +++ b/drivers/input/misc/twl4030-pwrbutton.c
> @@ -25,22 +25,40 @@
>  #include <linux/kernel.h>
>  #include <linux/errno.h>
>  #include <linux/input.h>
> +#include <linux/bits.h>

Move to the top of includes please.

>  #include <linux/interrupt.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
>  #include <linux/mfd/twl.h>
>  
> -#define PWR_PWRON_IRQ (1 << 0)
> +#define PWR_PWRON_IRQ BIT(0)
>  
> -#define STS_HW_CONDITIONS 0xf
> +#define STS_HW_CONDITIONS_4030 0xf
> +#define STS_HW_CONDITIONS_6030 0x2

Probably no need for these defines, just use numbers in structure
instances.

> +
> +struct twl_pwrbutton_chipdata {
> +	u8 status_reg;
> +	bool need_manual_irq;
> +};
> +
> +static const struct twl_pwrbutton_chipdata twl4030_chipdata = {
> +	STS_HW_CONDITIONS_4030,
> +	false,

I am a big fan of named initializers, so maybe

	.status_reg = 0x0f,
	.need_manual_irq = false,

?

Otherwise looks good.

Thanks.

-- 
Dmitry

