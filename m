Return-Path: <devicetree+bounces-219339-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B33B8A307
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 17:08:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D9471C8744C
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 15:09:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3054F3148D7;
	Fri, 19 Sep 2025 15:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b="TRX/sHYK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76070313264
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 15:08:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758294529; cv=none; b=C8VBwNS37WomiUcPsm5rMa8H04NJ13B4MgTzwoXZS1w7tWBjyE5AA5i5RCLLv6at2Q+iI+Pl9v7O1661gbLIg35ESQ1aGGjjXiI011UcGj/cdlP4K3DaVh+sCI81zcAYEGgIsJ3wlDzDncfMkOPMrfXUhDIUVgfOdRx63ESWrH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758294529; c=relaxed/simple;
	bh=/a0kQx40XROJgZ3EOPUHwIoezHFZS6LbJ+em6MLV0LU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=adI0XHZ4J14CM/az3Wd+EkR2hZDRctxRSvfVVpt1bRPTAnc/n3IjP2TEznfccqF0C3246dcM2BMeT56LvG2uo2b5BR/x4JoRsaWMHgAtP+ivEM4YW7Lnotuj2WWrLpTTejNj8m1Z0cUrpYfkeX90W0xjOmwoK56zyzZvbks+HkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu; spf=fail smtp.mailfrom=g.harvard.edu; dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b=TRX/sHYK; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=g.harvard.edu
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-78f15d5846dso24457886d6.0
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 08:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1758294526; x=1758899326; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/cJcwvwR+y6h1p4tywJwvr+RXXJL/piF54RClFTejJg=;
        b=TRX/sHYKm84dQYwnoHQPhZP1r/huy/qUdqvHlov6LeD3s7OlAKbDCdzKiCvuGhG0SY
         88sVXWaLOUKtlxiGzBHkmZqbvXa78OFx6SkkPBcFFGCtz8E00OU4+TOQRKz1D7DxSp1F
         7IjqJNuIeS+QzTMhbnn6UpFmrhIeTteGqv46ASHxw9Q9l0hZJBxfG9IDa71kfL+aHD2j
         FoIi6MbI/IJggupnumy3RYwdogzZ4iosuUx+IsMgelddwICG0P9X5behPcyD9PRB0lZP
         MlgJCjqxoIT3TaKXAVsDSbhF15Bk9t+M7EKFYzCn2mTUmCn8Uoo4a/5qNzek4cLfrdfX
         rPXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758294526; x=1758899326;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/cJcwvwR+y6h1p4tywJwvr+RXXJL/piF54RClFTejJg=;
        b=h1Q9V8TkBGtpXGQK3t32BSZo7g0t+CflvRkHPhPj5X9383M/aRm4I90vBGXd6Z6X3B
         pnMGTHWMt/IwdQqrJCz2NYwz8uRtI7G95nbEEqVMhRVJLc7cnfxAn7rG5rzko5oQ9Kcl
         B36nIOoCoPqXqX+y16zbS3Lfp4+XuruFRcbPm4HUcsOTueTGJV5IdKie3qIAeCmMhzbN
         CUUCA4HWzslajVqlDXxXrkIMlLh9Z6ahupq1yyoLcx0Gux/fSzT1YAxwFcOQKVDGJUtw
         Gd8YUW3Nr+vLMlFu7KYJtg0YvljhpNe61rQFlS0uAwjrcUgjj66dmkcf66qwD+AqM44z
         HoDA==
X-Forwarded-Encrypted: i=1; AJvYcCVVtQV7yEyTiSPpyF0He+CEcU3U41POEIYrzhsa0pNAKQKx5PkB0ZmYfg3FuCetBqlfym9KZf7zFb3A@vger.kernel.org
X-Gm-Message-State: AOJu0YyBqIynJDbtsG0sGk2MqG+x6aT0SkRHvPJhY/obPkGVj+SBKvFH
	43QWKJdBRe9IHxj7Dd2AwFqwv/q8yqA80Vbh2QBO6q23ccf2P8Fr2Xbuyq/PelZs2Q==
X-Gm-Gg: ASbGncs9DyySkNW7gP7+F6N00p+XxWxMISCuws1ykLFKTICOwXMPz6YbPpcQIDp/AxK
	SwelTFZDEVWSWcbdzHwQVsEi1g3Y+g3wGOldeO5ZQnyNS+9RCUogSkLlnLNl+CynvTmWvAs3paU
	2Gnj2iJdzDBj71ERIevhdnn65TTwTe4OFF/B/D7/cyRaP96RcK7aRXiLA3emceU5wGg/CMJ1mVe
	Cd4pwytyz2PT/bhIAhONkTZg9lABIeJ/Oplq3DxTeq24iUM08PDEgG9lnroYoZ+tAoTRV3bZI7s
	J/xZymkHYqdRaLBCNHZ57zCdSV4Om6lK6qMg79gj63UM+w5CNMEfrNDZPU9wf1bvH/o0VPmfdhr
	AT2GXTPZV1+YMFTAdBcPDmE3wErIypgPXsSE=
X-Google-Smtp-Source: AGHT+IHbpkXQZhe+Jnrr9L+se/U4Bba6Omx0NL0JhE8vgSxjcjks/kfv+u5a4rDegESNS9rEBeb68Q==
X-Received: by 2002:a05:6214:daf:b0:77a:29ba:1b68 with SMTP id 6a1803df08f44-799212d1809mr46426076d6.63.1758294526374;
        Fri, 19 Sep 2025 08:08:46 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::bb27])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-79351b9ddffsm30204296d6.37.2025.09.19.08.08.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 08:08:45 -0700 (PDT)
Date: Fri, 19 Sep 2025 11:08:43 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 4/4] usb: uhci: Add Aspeed AST2700 support
Message-ID: <9bb18e89-13bc-469b-8c05-61f8d55a558e@rowland.harvard.edu>
References: <20250919025712.719246-1-ryan_chen@aspeedtech.com>
 <20250919025712.719246-5-ryan_chen@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919025712.719246-5-ryan_chen@aspeedtech.com>

On Fri, Sep 19, 2025 at 10:57:12AM +0800, Ryan Chen wrote:
> Unlike earlier Aspeed SoCs (AST2400/2500/2600) which are limited to
> 32-bit DMA addressing, the UHCI controller in AST2700 supports 64-bit
> DMA. Update the platform UHCI driver to select the appropriate DMA
> mask based on the device tree compatible string.
> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  drivers/usb/host/uhci-platform.c | 15 +++++++++++----
>  1 file changed, 11 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/usb/host/uhci-platform.c b/drivers/usb/host/uhci-platform.c
> index f255358d6242..5b4be9a5764a 100644
> --- a/drivers/usb/host/uhci-platform.c
> +++ b/drivers/usb/host/uhci-platform.c
> @@ -71,6 +71,7 @@ static int uhci_hcd_platform_probe(struct platform_device *pdev)
>  	struct usb_hcd *hcd;
>  	struct uhci_hcd	*uhci;
>  	struct resource *res;
> +	u64 *dma_mask_ptr;
>  	int ret;
>  
>  	if (usb_disabled())
> @@ -81,7 +82,8 @@ static int uhci_hcd_platform_probe(struct platform_device *pdev)
>  	 * Since shared usb code relies on it, set it here for now.
>  	 * Once we have dma capability bindings this can go away.
>  	 */
> -	ret = dma_coerce_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
> +	dma_mask_ptr = (u64 *)of_device_get_match_data(&pdev->dev);
> +	ret = dma_coerce_mask_and_coherent(&pdev->dev, *dma_mask_ptr);

What will happen here if of_device_get_match_data() returns 0 or an 
error?  Shouldn't you test for that and then use dma_mask_32 as the 
default mask?

And if you do this then do you need to add the .data fields to the 
existing entries in the platform_uhci_ids table below?

Alan Stern

>  	if (ret)
>  		return ret;
>  
> @@ -114,7 +116,8 @@ static int uhci_hcd_platform_probe(struct platform_device *pdev)
>  		}
>  		if (of_device_is_compatible(np, "aspeed,ast2400-uhci") ||
>  		    of_device_is_compatible(np, "aspeed,ast2500-uhci") ||
> -		    of_device_is_compatible(np, "aspeed,ast2600-uhci")) {
> +		    of_device_is_compatible(np, "aspeed,ast2600-uhci") ||
> +		    of_device_is_compatible(np, "aspeed,ast2700-uhci")) {
>  			uhci->is_aspeed = 1;
>  			dev_info(&pdev->dev,
>  				 "Enabled Aspeed implementation workarounds\n");
> @@ -189,9 +192,13 @@ static void uhci_hcd_platform_shutdown(struct platform_device *op)
>  	uhci_hc_died(hcd_to_uhci(hcd));
>  }
>  
> +static const u64 dma_mask_32 =	DMA_BIT_MASK(32);
> +static const u64 dma_mask_64 =	DMA_BIT_MASK(64);
> +
>  static const struct of_device_id platform_uhci_ids[] = {
> -	{ .compatible = "generic-uhci", },
> -	{ .compatible = "platform-uhci", },
> +	{ .compatible = "generic-uhci", .data = &dma_mask_32},
> +	{ .compatible = "platform-uhci", .data = &dma_mask_32},
> +	{ .compatible = "aspeed,ast2700-uhci", .data = &dma_mask_64},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, platform_uhci_ids);
> -- 
> 2.34.1
> 

