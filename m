Return-Path: <devicetree+bounces-122045-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A881F9CD772
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 07:42:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5586A1F230A7
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 06:42:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 384CB18A92F;
	Fri, 15 Nov 2024 06:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="El6KvHKm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC02F189BA2
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 06:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731652880; cv=none; b=RlpcX+MVtgKxwpAFnEqi+qUrSyiIPmT02doxk9VDWHnG6T4VGCk97A0f048DmvyZxClREaI2zK2Grr04bb4WgqlbyygB5z109/PsPYLwmvaOAVK2qCo5tjgDIFDV3C4wRghalJAAFMpRFKIx7UveCbg3t2dTFAstD9IWi1/SERI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731652880; c=relaxed/simple;
	bh=+YWto08nAzQlfP7Roih16Ol20t5fEagbMxHoY96FEVc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q9puofEtZ5XwGEbaFu88Why59xTTw54vPtxAXDiY/OA01hTkuDKJWUyrJppeEIGQliF3ZWEhzpa2BUU//W1aqzJnDk7CNT4DIWkccUO0HxSjJTu5ovvcXRtviGUeH+tgcvj8YCFTWlvdsiVCZat5ydqNz+7/sA8cnvBprYU5RJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=El6KvHKm; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-2110a622d76so13039005ad.3
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 22:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731652877; x=1732257677; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+9X/wxgCiPevQR8azxljXcXglwxyvUBHBH4k0NcW95s=;
        b=El6KvHKmsxwVaz6fEUkDRNTQgVCXlc2uUgVliom5qc6cPNIQL7l8xdFeoZmz2hcD24
         g7AL7pehyZ4bIVtRW9PVsG3BoXMzmwbqQkp6Olce1co9AezU8ap/2dHXzQZ3fKql6/gt
         CZguZ5Y9ohKfuo5sKCnfprwukC0k6UoQO5GlBW0kxn6AEdnraLt6dAKsm+wwSXc8DnlZ
         bolLElMLa7Y8yw7mBhgNd/FTFlnfxSRL1PWTR+fM+/OwI+N3jDz3LbwF04eM0QzqFfVO
         fDZzEDPG209L0V1yPfjdJtKNQdpHNQpft8KKlnjKsNPp4h37XhKNF66sd1pNdWW8JWAl
         C06A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731652877; x=1732257677;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+9X/wxgCiPevQR8azxljXcXglwxyvUBHBH4k0NcW95s=;
        b=T6CQmn82wnBnE4qh+aSscvCPG8f6gWE0rjwZI5lZFHMIc9Sx3Fp5IdYtgNwVtJ3Ber
         pUx+vvYAkxuGkqSsx0PzaNhQ+S39vMBCEMexSZ4wTVCud6QJLatE1GfKBxCNcI0uuJUh
         OE5wr7ENl89r8oH19IGFcM+1MuJ1xphk7b0zTN5dCsJcVNjsD1hY8skcjKwbCdUMJaXn
         2JMZqARgg9ftg68ePrYS0ovOP5TpnsIzuRKttwNTMZRK8lfxEcu+D5AxoqVEbhzj9GBH
         UhckB7SNIV36MTFQlb+79b9QabHQGP3d5lVSa/toOognSiRW25OtD6kuQ356YNvNxkXc
         xRBw==
X-Forwarded-Encrypted: i=1; AJvYcCWir4y0Lli+RrKErj4gxnypbtRfQTMuqfL0avL+x10Y9ZoRVbcSox6v2P1nG5K8coDnn2zojfhoB5Ok@vger.kernel.org
X-Gm-Message-State: AOJu0YyFw3f4W9g2TcaLviPtXLuDkx4ORUw2PDEK6Ben3t7iLehpoHv5
	L11xb7AfdjgrIm94YOQwJXB59qrHJTgORWVtnCQDknyu9pfJ92QCm5F1EgvFtw==
X-Google-Smtp-Source: AGHT+IGabkTqfzJ7F61xnkcjI95zLPKfJGfkK+pvHWTH/TvMDmJ1L9QNKaKVIJTm7qh/u3tDNf6Mrw==
X-Received: by 2002:a17:902:f544:b0:20c:f27f:fbf with SMTP id d9443c01a7336-211d0d7687fmr23670135ad.25.1731652877101;
        Thu, 14 Nov 2024 22:41:17 -0800 (PST)
Received: from thinkpad ([117.193.208.47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211d0f56e10sm6129835ad.242.2024.11.14.22.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 22:41:16 -0800 (PST)
Date: Fri, 15 Nov 2024 12:11:06 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lpieralisi@kernel.org,
	kw@linux.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, frank.li@nxp.com,
	s.hauer@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	kernel@pengutronix.de, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 03/10] PCI: imx6: Fetch dbi2 and iATU base addesses
 from DT
Message-ID: <20241115064106.iwrorgimt6yenalx@thinkpad>
References: <20241101070610.1267391-1-hongxing.zhu@nxp.com>
 <20241101070610.1267391-4-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241101070610.1267391-4-hongxing.zhu@nxp.com>

On Fri, Nov 01, 2024 at 03:06:03PM +0800, Richard Zhu wrote:
> Since dbi2 and atu regs are added for i.MX8M PCIes. Fetch the dbi2 and
> iATU base addresses from DT directly, and remove the useless codes.
> 

It'd be useful to mention where the base addresses were extraced. Like by the
DWC common driver.

> Upsteam dts's have not enabled EP function. So no function broken for
> old upsteam's dtb.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 20 --------------------
>  1 file changed, 20 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index bc8567677a67..462decd1d589 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -1115,7 +1115,6 @@ static int imx_add_pcie_ep(struct imx_pcie *imx_pcie,
>  			   struct platform_device *pdev)
>  {
>  	int ret;
> -	unsigned int pcie_dbi2_offset;
>  	struct dw_pcie_ep *ep;
>  	struct dw_pcie *pci = imx_pcie->pci;
>  	struct dw_pcie_rp *pp = &pci->pp;
> @@ -1125,25 +1124,6 @@ static int imx_add_pcie_ep(struct imx_pcie *imx_pcie,
>  	ep = &pci->ep;
>  	ep->ops = &pcie_ep_ops;
>  
> -	switch (imx_pcie->drvdata->variant) {
> -	case IMX8MQ_EP:
> -	case IMX8MM_EP:
> -	case IMX8MP_EP:
> -		pcie_dbi2_offset = SZ_1M;
> -		break;
> -	default:
> -		pcie_dbi2_offset = SZ_4K;
> -		break;
> -	}
> -
> -	pci->dbi_base2 = pci->dbi_base + pcie_dbi2_offset;
> -
> -	/*
> -	 * FIXME: Ideally, dbi2 base address should come from DT. But since only IMX95 is defining
> -	 * "dbi2" in DT, "dbi_base2" is set to NULL here for that platform alone so that the DWC
> -	 * core code can fetch that from DT. But once all platform DTs were fixed, this and the
> -	 * above "dbi_base2" setting should be removed.
> -	 */
>  	if (device_property_match_string(dev, "reg-names", "dbi2") >= 0)
>  		pci->dbi_base2 = NULL;
>  
> -- 
> 2.37.1
> 

-- 
மணிவண்ணன் சதாசிவம்

