Return-Path: <devicetree+bounces-221950-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06386BA45FF
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 17:15:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CE2423B4B65
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 15:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F405C1FDA8E;
	Fri, 26 Sep 2025 15:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b="CXk4sqxJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f49.google.com (mail-qv1-f49.google.com [209.85.219.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E7A1E49F
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 15:15:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758899742; cv=none; b=bkX3WtWQhdrMEkro2L5IHbqHQ1USBBtaU4sH6ds9oZYffPtFSyncc44czk4lAyM7gqgKNpC2Ifvjm1WKF0ImB/tneDoWIRVwzx7HGnBPy8lLQGH+VZFgPDPV1OpRJC88QiIwKyboa/+Ic0s9CEQNmFWsi3BReM2cx6n9MtUE2CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758899742; c=relaxed/simple;
	bh=tnE3QGr4qwOpMW+YrXCOEjh1zg0YQogd2On/Zb7EF1Y=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aRsJbvoK1QeiE9NTBL3qhjQRUhSDnaF/eIpcz9xG/JymK7F0oGNfUg6js7lq9KhE0bPocPGdbWgNx8n7ZCejoLhcTUyLqLqN7njETnJgc60WGDOs4CAee1si4kg9cfFY8Bf2eUZZJJsBy7fp2urbFKgn/WEzvkmeaJuPY9qDEPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu; spf=fail smtp.mailfrom=g.harvard.edu; dkim=pass (2048-bit key) header.d=rowland.harvard.edu header.i=@rowland.harvard.edu header.b=CXk4sqxJ; arc=none smtp.client-ip=209.85.219.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=rowland.harvard.edu
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=g.harvard.edu
Received: by mail-qv1-f49.google.com with SMTP id 6a1803df08f44-796d68804a0so23623966d6.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 08:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rowland.harvard.edu; s=google; t=1758899740; x=1759504540; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8mgmIsUwHn5NnmA1QDmFh3xD/ZS6ogc5baSh2F4ITRY=;
        b=CXk4sqxJJ+h9NUHlMDlicPoxGWs/wBCXgn/TcYPTo7Xuq6BD+afR6CuJS4OWaTHEq4
         pqgvimceEQO/eFvgP/b2dB5CDAO03svGY+gIjPP4Bx/zVzl7h8hh5KJrYRRCM3PJeU0D
         SD/fUxLPrEHtP/ivbb5VgLhcPbg90NjBnsh6HDMNPRsSj7p5BUinBM62EQ/NIElQ04Fi
         qh56xth5ie8Cr1wnMeQe4v2Ex32i0kImhl47tCq+oV+rMp4wiZGj7aOXV1nbV8dzamg6
         zGnz3Tx9Y0Zd56Z9KopxVf/D3bNabc9Sm5zY9tC99kziFPivCLYkhGquiR2T/t2YSb9X
         l5Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758899740; x=1759504540;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8mgmIsUwHn5NnmA1QDmFh3xD/ZS6ogc5baSh2F4ITRY=;
        b=pPflKXNNhLoueNCvFf94VdVF6+53KcxarkvNMFoQvpGFEyzAatDe/fuRhMXgA6OZs4
         H7nCcb+nj30QelrT7KnPx2ALsKFdYOfY6cTeVVEz+McERYZnUPB+hrLDmaa6RdSQRihL
         gfSZCnAN1k4LGAziQFebxs56wa+9UTV4TISOI1xXjQDXGR244KLUotJ7U9gm3rlyDayK
         5dGOugoA32iYwozxw6xk12oWUbsgYa0+Va580Dnbz8sMuvCvMxn6ScLG5PfjuAhEWqgj
         9sogJaZsPycEcLMMDxxzwmz6QK70n1HRLV/SPUYCU4gxudlMhEw2JmhyOfsgJkLy7vA/
         Podg==
X-Forwarded-Encrypted: i=1; AJvYcCUN+S3jCvM2++L79UEqu8yktBcZoKK1UkeIduyg3SBNtGFyJNbu7ySrK3fZHFUfCpv0IelzfJLoAO8i@vger.kernel.org
X-Gm-Message-State: AOJu0YzfvOReUYNe4r9OU/TFlde/sq4kvIoJ3Kr1jZwHdbVi0yE4GqZW
	Ix+HnbBxIJ0XSwALaujzc6EITbAK5wfUtkUxAPM/AtIEtO6ZZ48vOBCI+5YcR/rJ2w==
X-Gm-Gg: ASbGncvNZVJGs1OeSdejQxoWA8m79/hDfww0LPRSmmU5DKN/4adc5l7N/WgOqHKiEXR
	QaVF0c7fy55l4l5OEva1itClvkQC/89WKZZNdCyBfIIB+dVEvkqFdKbi7nKonfnLhlD7/iKNYeK
	qhNy/0lbVnUFvi/zr5WXn5Ug1X0/cGNTGG+MmTg4HmNpea1BybRXWJ7hOQJp+plGAWc4iBGNJys
	6ZNkCEmtWoEWmLLbObq18cTbGLCoUOTo98CgFSiiBue4kBig6bnH68MjB0+Qd3ZoZ16fKDYiJvB
	AjzG4B4CVKYv+pdFWG+DQJESBKliu9VKEdgczmBafR9FyvCmJENKrykF7mldAL8w1EEK/bpRmRZ
	xi6eR4LTjuWRJDeWzHyu4RH0DzCAk
X-Google-Smtp-Source: AGHT+IHx7x8dpmnst2zIiS/IJcJkHsczM37IMp4b3wgC1hi2by/LThI2vKSMV96wujtmqZa+sVcurA==
X-Received: by 2002:a05:6214:e42:b0:78e:6354:b258 with SMTP id 6a1803df08f44-7fc2b767d7bmr104171166d6.15.1758899739627;
        Fri, 26 Sep 2025 08:15:39 -0700 (PDT)
Received: from rowland.harvard.edu ([2601:19b:d03:1700::bb27])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-80167018730sm27530516d6.39.2025.09.26.08.15.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 08:15:39 -0700 (PDT)
Date: Fri, 26 Sep 2025 11:15:36 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Ryan Chen <ryan_chen@aspeedtech.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] usb: ehci: Add Aspeed AST2700 support
Message-ID: <69e6fd9c-6020-4caf-b6e4-644ae794d421@rowland.harvard.edu>
References: <20250926023308.2890607-1-ryan_chen@aspeedtech.com>
 <20250926023308.2890607-3-ryan_chen@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250926023308.2890607-3-ryan_chen@aspeedtech.com>

On Fri, Sep 26, 2025 at 10:33:08AM +0800, Ryan Chen wrote:
> Unlike earlier Aspeed SoCs (AST2400/2500/2600) which are limited to
> 32-bit DMA addressing, the EHCI controller in AST2700 supports 64-bit
> DMA. Update the EHCI platform driver to make use of this capability by
> selecting a 64-bit DMA mask when the "aspeed,ast2700-ehci" compatible
> is present in device tree.
> 
> Signed-off-by: Ryan Chen <ryan_chen@aspeedtech.com>
> ---
>  drivers/usb/host/ehci-platform.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/host/ehci-platform.c b/drivers/usb/host/ehci-platform.c
> index 6aab45c8525c..18e231d345d0 100644
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
> @@ -239,6 +240,7 @@ static int ehci_platform_probe(struct platform_device *dev)
>  	struct usb_hcd *hcd;
>  	struct resource *res_mem;
>  	struct usb_ehci_pdata *pdata = dev_get_platdata(&dev->dev);
> +	const struct of_device_id *match;
>  	struct ehci_platform_priv *priv;
>  	struct ehci_hcd *ehci;
>  	int err, irq, clk = 0;
> @@ -253,6 +255,10 @@ static int ehci_platform_probe(struct platform_device *dev)
>  	if (!pdata)
>  		pdata = &ehci_platform_defaults;
>  
> +	match = of_match_device(dev->dev.driver->of_match_table, &dev->dev);
> +	if (match && match->data)
> +		pdata->dma_mask_64 = 1;

You must not do this, since pdata may be pointing to the static 
ehci_platform_defaults structure.  Instead, set a local variable to the 
value of pdata->dma_mask_64, and if match->data is set then update the 
local variable.  

> +
>  	err = dma_coerce_mask_and_coherent(&dev->dev,
>  		pdata->dma_mask_64 ? DMA_BIT_MASK(64) : DMA_BIT_MASK(32));

Then use the local variable here to select which DMA mask is used.

Alan Stern

