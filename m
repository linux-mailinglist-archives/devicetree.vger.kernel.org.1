Return-Path: <devicetree+bounces-109787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E6A997F63
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 10:21:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54DF2285A9F
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 08:21:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B78C1E7C2A;
	Thu, 10 Oct 2024 07:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mQdn2qFU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com [209.85.166.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB7DB1E7C28
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 07:25:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728545122; cv=none; b=Igf0RLtLPfODYz6VlYrLx9i/AZMm40lG0Zw+gpxbOKbsflLLjvuycIKL8JjlEN1OlkRN9qYwPSqJ42mkMdF2akV8MJJe1qpr1I3RCEBAanUrl0j49VXJyb1jd7vLpDR2d38AYTL53sDH7MO50lVd7/TZvs4CG4nljnbiwYab82Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728545122; c=relaxed/simple;
	bh=3kgGD9EGdkoPmmr0ciVcBrugVUMBE2qdQnljE6R6uAE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TRQyS7Kn7cimcpaAb+M89thN3Xnbebgxz1/829K5pMQbGqfXbGzSX2+czBy/SkofggSgJG0mxXkKmAOwkVwComtv8HDtAVrNMAOw+JvfaVa/BjgBArVNJAn977CZCf4EAFFsCjPh6fvrNym525u3nOLFn6oFVMAorQSnOsCQLJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mQdn2qFU; arc=none smtp.client-ip=209.85.166.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-3a3a03399fbso3858315ab.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 00:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728545119; x=1729149919; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=BO+u3ghty2SDKH2fR1oqf2j9fR+PWCSBsyfFPVtqMF8=;
        b=mQdn2qFUyUNG+Mn/k2BkURiEwr5j9G5iOJQ9IVS1E5SCC1LFE7+LyOMMJ93ZfeK7Qc
         qK1um3wvDGckF1MNeN3YjtgR3w75KCMo8Upj2cMajIJWSTI/Cy4mDWfvjBvgF12+eqV/
         ZP3tjzIGmLFJWTPf4nnLWjxbJro/bfwvb8uWAeBKy2eHUeulrnc5F9mGT4l7LSq0nE7C
         KuwCr1CXqINsJ+Bu3Xh2fRAFJAwba0LZe2/2W81Xn+zL7SImyFXgMkCgDYh6IFgtleDh
         kuu2KrAbF9+cHnbfHfzdgCHsa3XJ3HK58B5W6AiLJpbQzaBHWj70SINWYR0kCgnG9K5t
         Ji6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728545119; x=1729149919;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BO+u3ghty2SDKH2fR1oqf2j9fR+PWCSBsyfFPVtqMF8=;
        b=kytml/pxh3WqfEJgcu07D1clraN4q2nzfdeJFN0B44oQgpv08cTBLVAwign5ujTgRi
         fLbt9HME3O+K2/YsuhIDiRwP7l24QiRdUYiq2d7U62IPW5OieWT2ShDdhVijPP3qqh9+
         kEyGiXA9CIDBDM0ast3R1MtqHvG7cR8MDYh6TAglGbTeUYmt3O5fNa6xrBG3OzqaX3Se
         fj92tVDXLJiBTV0E8VxriMx4QNbvMueV8UeIZwv/rRkWB8Xtj+Ajl1kCLdUduoZLCKs0
         bQ+dS9SksGq6JM6EI2h+CLqvaPViAJO6Wigw8qXA56kyBbkSlt0Md2Jm5zSyFiSmxg5+
         PgEg==
X-Forwarded-Encrypted: i=1; AJvYcCWtyrEh9rwVAqNHz90YKJxqpvGxgin3EiLDd6t5pKC6ce5pgs0xYLNzSxah2dV0ZbF0K6Dcc/GTcjbr@vger.kernel.org
X-Gm-Message-State: AOJu0YxMo4fTGBKVMmqbjCf9ix4BagiapZk7GGr0+ZpbWnq5KTtZZ+Wv
	UnpQZMQNqLnDxpK4+DdiMG52EdQ+xBzWDpd4t/2ZN3ZaHeuorqO4EQGRjkOk0A==
X-Google-Smtp-Source: AGHT+IGFCNg/ceeWHNg7TkO0QNW/H0HtnhU7s4ZYJ79wDwVdugpPuxIb48ke9Tn5c8L+FXGGlC1wtg==
X-Received: by 2002:a05:6e02:1aa3:b0:3a0:a3cd:f239 with SMTP id e9e14a558f8ab-3a397cfc376mr56477995ab.8.1728545118678;
        Thu, 10 Oct 2024 00:25:18 -0700 (PDT)
Received: from thinkpad ([220.158.156.184])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7ea449596c8sm494289a12.71.2024.10.10.00.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 00:25:18 -0700 (PDT)
Date: Thu, 10 Oct 2024 12:55:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 07/12] PCI: rockchip-ep: Refactor
 rockchip_pcie_ep_probe() MSI-X hiding
Message-ID: <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-8-dlemoal@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241007041218.157516-8-dlemoal@kernel.org>

On Mon, Oct 07, 2024 at 01:12:13PM +0900, Damien Le Moal wrote:
> Move the code in rockchip_pcie_ep_probe() to hide the MSI-X capability
> to its own function, rockchip_pcie_ep_hide_msix_cap(). No functional
> changes.
> 
> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Btw, can someone from Rockchip confirm if this hiding is necessary for all the
SoCs? It looks to me like an SoC quirk.

- Mani

> ---
>  drivers/pci/controller/pcie-rockchip-ep.c | 54 +++++++++++++----------
>  1 file changed, 30 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> index 523e9cdfd241..7a1798fcc2ad 100644
> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> @@ -581,6 +581,34 @@ static void rockchip_pcie_ep_release_resources(struct rockchip_pcie_ep *ep)
>  	pci_epc_mem_exit(ep->epc);
>  }
>  
> +static void rockchip_pcie_ep_hide_msix_cap(struct rockchip_pcie *rockchip)
> +{
> +	u32 cfg_msi, cfg_msix_cp;
> +
> +	/*
> +	 * MSI-X is not supported but the controller still advertises the MSI-X
> +	 * capability by default, which can lead to the Root Complex side
> +	 * allocating MSI-X vectors which cannot be used. Avoid this by skipping
> +	 * the MSI-X capability entry in the PCIe capabilities linked-list: get
> +	 * the next pointer from the MSI-X entry and set that in the MSI
> +	 * capability entry (which is the previous entry). This way the MSI-X
> +	 * entry is skipped (left out of the linked-list) and not advertised.
> +	 */
> +	cfg_msi = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
> +				     ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
> +
> +	cfg_msi &= ~ROCKCHIP_PCIE_EP_MSI_CP1_MASK;
> +
> +	cfg_msix_cp = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
> +					 ROCKCHIP_PCIE_EP_MSIX_CAP_REG) &
> +					 ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK;
> +
> +	cfg_msi |= cfg_msix_cp;
> +
> +	rockchip_pcie_write(rockchip, cfg_msi,
> +			    PCIE_EP_CONFIG_BASE + ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
> +}
> +
>  static int rockchip_pcie_ep_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
> @@ -588,7 +616,6 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
>  	struct rockchip_pcie *rockchip;
>  	struct pci_epc *epc;
>  	int err;
> -	u32 cfg_msi, cfg_msix_cp;
>  
>  	ep = devm_kzalloc(dev, sizeof(*ep), GFP_KERNEL);
>  	if (!ep)
> @@ -619,6 +646,8 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
>  	if (err)
>  		goto err_disable_clocks;
>  
> +	rockchip_pcie_ep_hide_msix_cap(rockchip);
> +
>  	/* Establish the link automatically */
>  	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
>  			    PCIE_CLIENT_CONFIG);
> @@ -626,29 +655,6 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
>  	/* Only enable function 0 by default */
>  	rockchip_pcie_write(rockchip, BIT(0), PCIE_CORE_PHY_FUNC_CFG);
>  
> -	/*
> -	 * MSI-X is not supported but the controller still advertises the MSI-X
> -	 * capability by default, which can lead to the Root Complex side
> -	 * allocating MSI-X vectors which cannot be used. Avoid this by skipping
> -	 * the MSI-X capability entry in the PCIe capabilities linked-list: get
> -	 * the next pointer from the MSI-X entry and set that in the MSI
> -	 * capability entry (which is the previous entry). This way the MSI-X
> -	 * entry is skipped (left out of the linked-list) and not advertised.
> -	 */
> -	cfg_msi = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
> -				     ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
> -
> -	cfg_msi &= ~ROCKCHIP_PCIE_EP_MSI_CP1_MASK;
> -
> -	cfg_msix_cp = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_BASE +
> -					 ROCKCHIP_PCIE_EP_MSIX_CAP_REG) &
> -					 ROCKCHIP_PCIE_EP_MSIX_CAP_CP_MASK;
> -
> -	cfg_msi |= cfg_msix_cp;
> -
> -	rockchip_pcie_write(rockchip, cfg_msi,
> -			    PCIE_EP_CONFIG_BASE + ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
> -
>  	rockchip_pcie_write(rockchip, PCIE_CLIENT_CONF_ENABLE,
>  			    PCIE_CLIENT_CONFIG);
>  
> -- 
> 2.46.2
> 

-- 
மணிவண்ணன் சதாசிவம்

