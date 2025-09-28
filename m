Return-Path: <devicetree+bounces-222229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 980AABA741C
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 17:29:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4D1C13A99FA
	for <lists+devicetree@lfdr.de>; Sun, 28 Sep 2025 15:29:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D437233723;
	Sun, 28 Sep 2025 15:29:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b="BeefcRxa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f178.google.com (mail-qt1-f178.google.com [209.85.160.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FA4185B67
	for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 15:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759073367; cv=none; b=oZD8svp8rKRV4UoADiFYjqNORL3ZSwnik4ujzXJMhtnGWyMToEx2fDVkDBspVKZi6CNny9Wgi+bXXsAcsUUB2I3yQn4hdT6QY/yDoJzy3puQcOqCs5znWEPke4LME9nZAJNcv0LgoGWnlopf6sLzQveiOYrsPhjsC/N9QDrpOeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759073367; c=relaxed/simple;
	bh=gCtcrpyj3/nvZp3sqKvIbRgfCq9JDmLNiBiXQpYqjl4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aAfazoXIl5hoAKreMUcLeD8eYQsQOoF6QSfvcgmUDkErMhB3KmeiBoyxZU6ywrFDcbscPGlbuHF6UIBqToIN5lyJqcIbfyVVNffQt0ybTn8UXWDZByW4fTWL1aZaaxyMkbWdk93ZByOpnqe5oUvJi1msLabazwAktE1aDhRsqLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu; spf=fail smtp.mailfrom=g.harvard.edu; dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b=BeefcRxa; arc=none smtp.client-ip=209.85.160.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=g.harvard.edu
Received: by mail-qt1-f178.google.com with SMTP id d75a77b69052e-4dac61ed7a5so30810361cf.3
        for <devicetree@vger.kernel.org>; Sun, 28 Sep 2025 08:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1759073364; x=1759678164; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o8hCVZpujpi/X6wfV8yzOK80VKQjfoVRfGXWjYBx4ck=;
        b=BeefcRxaLl+yYr4oO9fbY6w9/wKuWLGxqvh3msrha4pGon0WCCCEmQAURaWpPOFFQ0
         NMJ1dRKiGYf4GTLWWjHKCTNZI4nZTC2EuoHkUgyfdAg/Hwdi5SJnXuH/aTRfunQtQti2
         Dxm+AuZtec7aAntnhcijIfHE/KbXzEDWXz+9+ZolJG49FMhT50tJyf6BE3ZjdrteO9n5
         /RxGubgNKKpT3A+T90BOjtBg5OKGg7jXZpJpMJe19gqCSiOE4AuPDGVkgxTJn8+r/Wd4
         VrNbdd+COcZYrHRxYiakGgE2Fz6x7pqu89bck0/ptq+zbwPoxxVAZKecUYZ02H3AfX5U
         h1QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759073364; x=1759678164;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o8hCVZpujpi/X6wfV8yzOK80VKQjfoVRfGXWjYBx4ck=;
        b=WtSPiM2PN5EDk7wsSZYPBo8MPEspsNdftqnldvsCXFlJHKeghAHKFwk/XtQc6vOhpE
         gQrRTFSysPTaDp+sKZIJEvyEZ9KvsWb597ZBxvQ2Qw9iCdjiGrv+sekuk2E9Ld0lzKmx
         YjririIlpcIBtHX5mScL36pT5k6ZxQTHAMoK/RPy5uTiE1MeYwwLKnk2i1gkmqH9bEHx
         vAgCe0xRYlh9I4JWMY1vLUnf8rG2n+OOiYZe9jCneKCm44VUQURq0JGy8GCYj6Wj8ABh
         oTk2I5aq4/NUrkk9gG4fis6A6qMw6zDTgPH2UwCSZLWJIQAhpohzfJIdlx2tDvXp/z9O
         H8cw==
X-Forwarded-Encrypted: i=1; AJvYcCW/yKqpWXX+ieXE4fnXKVLpcE/hAqAwd4iJVm95lDqcDMMXWvW/EyvdH8ExfcUDhXSxvxnrUyyAB+6e@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2uFjWNn+vXtx2cVZSZW1hdTdOIu10VW0mW9aTVGresJ+6Fyg9
	BobXLAAayUVsFSeOwDk3wzZRFpVo/53dKQofVxxtid3por1sm3R2Ri96gW0Ui1uN+w==
X-Gm-Gg: ASbGncteEFHD15ffE8bNp4OXWxNP0DQ886B2rNWP13tRHijDWTBn3Ur0p5w3FhBR1bH
	Cc1ulK/L56Zfzv5TMhG++XL/beGp7zlkeIeQke+ey25A0uStjV3dhmVMYqu2Afss8epcGJ9xFlL
	Pp/Upiw+cPlTWDuMiNklIF8NEQ5MPmZQhdRPxn/4ValnPY9vj6N6QAFEPtIgcHs2WYw20IzLo95
	xuLWc5uAOD7MN7o6t8MpjpeKA5EVNweV3oV4UxH60aDGIOiodlTVkWBlnIMkt+vvG2b8L+EaGoN
	XJlkBer2GPza6D4fKGhCUPo1JmJ6zfRbdTnVMczG4uX3Hk5k96rlnc7cpVV+3RIycxPa7FSkWHQ
	5CnPC97mTPbqLctPZqL7Y/HIB
X-Google-Smtp-Source: AGHT+IG4kRAUzCZbV50JeMVCr2hPSgsIF/3dzwloR5e/8GzkLrq/n9Yn+b4k5jIB5jCuXdXDqpjpRQ==
X-Received: by 2002:ac8:7c42:0:b0:4b7:aaa2:c8f6 with SMTP id d75a77b69052e-4da4b42c83cmr196263091cf.43.1759073363965;
        Sun, 28 Sep 2025 08:29:23 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::5082])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-85c335b7050sm599023285a.58.2025.09.28.08.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Sep 2025 08:29:23 -0700 (PDT)
Date: Sun, 28 Sep 2025 11:29:19 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] usb: ehci: Add Aspeed AST2700 support
Message-ID: <0a12f3ac-2600-4ede-a738-f4ab43ad4bee@rowland.harvard.edu>
References: <20250928032407.27764-1-ryan_chen@aspeedtech.com>
 <20250928032407.27764-3-ryan_chen@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250928032407.27764-3-ryan_chen@aspeedtech.com>

On Sun, Sep 28, 2025 at 11:24:07AM +0800, Ryan Chen wrote:
> Unlike earlier Aspeed SoCs (AST2400/2500/2600) which are limited to
> 32-bit DMA addressing, the EHCI controller in AST2700 supports 64-bit
> DMA. Update the EHCI platform driver to make use of this capability by
> selecting a 64-bit DMA mask when the "aspeed,ast2700-ehci" compatible
> is present in device tree.
> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---

This is basically good and it can be merged.  However...

>  drivers/usb/host/ehci-platform.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/host/ehci-platform.c b/drivers/usb/host/ehci-platform.c
> index 6aab45c8525c..bcd1c9073515 100644
> --- a/drivers/usb/host/ehci-platform.c
> +++ b/drivers/usb/host/ehci-platform.c
> @@ -27,6 +27,7 @@
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/reset.h>
>  #include <linux/sys_soc.h>
> @@ -239,9 +240,11 @@ static int ehci_platform_probe(struct platform_device *dev)
>  	struct usb_hcd *hcd;
>  	struct resource *res_mem;
>  	struct usb_ehci_pdata *pdata = dev_get_platdata(&dev->dev);
> +	const struct of_device_id *match;
>  	struct ehci_platform_priv *priv;
>  	struct ehci_hcd *ehci;
>  	int err, irq, clk = 0;
> +	bool dma_mask_64;
>  
>  	if (usb_disabled())
>  		return -ENODEV;
> @@ -253,8 +256,13 @@ static int ehci_platform_probe(struct platform_device *dev)
>  	if (!pdata)
>  		pdata = &ehci_platform_defaults;
>  
> +	dma_mask_64 = pdata->dma_mask_64;
> +	match = of_match_device(dev->dev.driver->of_match_table, &dev->dev);

(I just noticed this.)  The "dev->dev.driver->of_match_table" part looks 
odd.  Why not just write "vt8500_ehci_ids"?  Do you expect that this 
could ever have a different value?

Alan Stern

> +	if (match && match->data)
> +		dma_mask_64 = true;
> +
>  	err = dma_coerce_mask_and_coherent(&dev->dev,
> -		pdata->dma_mask_64 ? DMA_BIT_MASK(64) : DMA_BIT_MASK(32));
> +		dma_mask_64 ? DMA_BIT_MASK(64) : DMA_BIT_MASK(32));
>  	if (err) {
>  		dev_err(&dev->dev, "Error: DMA mask configuration failed\n");
>  		return err;
> @@ -298,7 +306,9 @@ static int ehci_platform_probe(struct platform_device *dev)
>  		if (of_device_is_compatible(dev->dev.of_node,
>  					    "aspeed,ast2500-ehci") ||
>  		    of_device_is_compatible(dev->dev.of_node,
> -					    "aspeed,ast2600-ehci"))
> +					    "aspeed,ast2600-ehci") ||
> +		    of_device_is_compatible(dev->dev.of_node,
> +					    "aspeed,ast2700-ehci"))
>  			ehci->is_aspeed = 1;
>  
>  		if (soc_device_match(quirk_poll_match))
> @@ -485,6 +495,7 @@ static const struct of_device_id vt8500_ehci_ids[] = {
>  	{ .compatible = "wm,prizm-ehci", },
>  	{ .compatible = "generic-ehci", },
>  	{ .compatible = "cavium,octeon-6335-ehci", },
> +	{ .compatible = "aspeed,ast2700-ehci",	.data = (void *)1 },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, vt8500_ehci_ids);
> -- 
> 2.34.1
> 

