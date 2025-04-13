Return-Path: <devicetree+bounces-166393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C90A872CA
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 19:07:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 074103B8EA5
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 17:06:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85CB11E882F;
	Sun, 13 Apr 2025 17:07:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vHQ3ZlW/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCBF81AF4C1
	for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 17:07:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744564025; cv=none; b=AMehZK4IsSl8Tj8M2DWCgTFvXgiwtw0J317SLkeGAt6PIzuK4CHU1f8qZG0K0ZqJhXPbUoYEJkh3z9KZbiSPI4q2vL1NzOD/a4NY7FjOt9lmF5HZJAeGlDdSc6lxY8iFTcfm/nalOo7HdFZkkxK0STMxEkjNuBFVRWCXrT7iiMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744564025; c=relaxed/simple;
	bh=nXufBv2d9pq7C949AzMIVQxPJIQqZJ31lPxfJIooLrs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Pms1f7W4GTF0BgmpG2KOAuUuDz+ThZVsyrb9P7A+sIvIWxHPNcFXWYu3qtDv4O3J+zN+sl1tSPLbQ8imZaKEq0NdArh3VvV1rUttdVY3nv1XQQrX/MgQF7rqgmZipammzwFqGza6FN60U0y+aEdCWD/tMHCq4RzNC8EQJMeXjUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vHQ3ZlW/; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7394945d37eso2982139b3a.3
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 10:07:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744564023; x=1745168823; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=AEElue2tYW/hBjcRseiSqCB01x22XFA+AuPsh/D6E9s=;
        b=vHQ3ZlW/0OA90tMsUH+cz0V+xeyTSJMYsKymgXsxvHE8nl9xILaGuekHyiA+DP3gQP
         TnBy75hgx9N83d/qcfg4v8r6jQdat45MFO+uGxYIFH3ZRlSKjLkZi8ZphQUINAx45ODB
         odZVZRFPizxaZtK73hyD17KcLLQms1Yb4hIejQM26kWK61XI64iaiL+gnqrGDfKnI3Jh
         3S43AB1OUbl55dOwV/ki0jmuscTuiFjjJmr1zXkAKTFuFXJ3yrnHRs+8apdOOP1mlnx5
         Jk8YXiAJAjz0/eRAv3q86z6895d9T2F3rKAQuoAz8uDvVBOi8rpeNISc8/NcS9qt3hGi
         M7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744564023; x=1745168823;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AEElue2tYW/hBjcRseiSqCB01x22XFA+AuPsh/D6E9s=;
        b=MaakdC3jjQBzBtkfsAUi5V5fcwHQL1wpgPVEhruvhD9Iksyx+gNCYm1QdZLTp4zlwi
         +ESVB+fSCy291VB+KChafH57FVPpIN+Rre8FKDkppwhMEXg5sWduBCarXiNsG9dXp0O0
         iHU1AtXOYy7Xc8jnKm7IJpUOahMu/4a2haSwljJjFGD3JSn10RxvRHVtamLyZAZNG6ek
         jzdLqlJ/Puv/X6cV5upFlzvcd6WeNDWhxomI3QExzLHtuAj7F2k55KZ4q2XQc/JMoz+A
         Q44Kp/a/l29KdnTyJD6B+8Ye45xLHeR7AHMoThBWPy8QhmdFtOp5b883ziKgz3IA077a
         TtvQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7ooUhvV2UilS7nPX4X60yEv3x+FX6mnrZSfOAJs0h49El2L5jI9ND9fCqJjnaualXN8D3CK1Gs2vu@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4oHwqjyb5gp6fprdCfcL22vCxo6QLXJ2j2LYc+7sCWJsXhI04
	L4AnU34cruOwoiPt5K7F9KV5Bom/yMs4nciAYVvl7A1lzqfRgl1mI4lnhJtMqw==
X-Gm-Gg: ASbGncv8WuZXbpxvwXZXoxGCVdT7UmwLEF63lkQF2kz9ac6+5ND+HYLkqpXjUDAPJkk
	rmePnp1t03XZr8RQ8Mpe8wfZLtsVX6V/dCbXYLbbZCyGZZWwoB0npFu0cuUxeoZjguZOftOQYXQ
	BelbxhMLeWuzl8t6/cG7RhzEIEmJQNqbVfhCAu65/H6A5VekDtCV7+CFkY4EHYIckyv0S/yXSot
	aD/A3kS4fw2il8CV4LpcchoIimtmHfbSYrdhSYSK+vHHE8BQeroPwUK//UuOsZI6LUFT5z9xAqr
	JI2gJkYOjEyTCSubvlbQdqG4Xtfr2+0PJE1r+XTAvyufnfNOHNyQ
X-Google-Smtp-Source: AGHT+IFzcTIcJAVCdciwF5W12Gs6hhpKts4y4tqwIfl35r96ytiQ8WM9loQM2BZkZ8y249PrujZoeg==
X-Received: by 2002:a17:90b:5245:b0:2ff:796b:4d05 with SMTP id 98e67ed59e1d1-308236640a9mr15187310a91.11.1744564022954;
        Sun, 13 Apr 2025 10:07:02 -0700 (PDT)
Received: from thinkpad ([120.60.137.231])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7c95c35sm85022145ad.143.2025.04.13.10.06.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 10:07:02 -0700 (PDT)
Date: Sun, 13 Apr 2025 22:36:56 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH v3 05/13] PCI: apple: Move over to standalone probing
Message-ID: <mcb56cuupmguo3eeinj5b2bk67aki4optle5ht2hu7a5eskpxu@qmngxpm2lmrn>
References: <20250401091713.2765724-1-maz@kernel.org>
 <20250401091713.2765724-6-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401091713.2765724-6-maz@kernel.org>

On Tue, Apr 01, 2025 at 10:17:05AM +0100, Marc Zyngier wrote:
> Now that we have the required infrastructure, split the Apple PCIe
> setup into two categories:
> 
> - stuff that has to do with PCI setup stays in the .init() callback
> 
> - stuff that is just driver gunk (such as MSI setup) goes into a
>   probe routine, which will eventually call into the host-common
>   code
> 
> The result is a far more logical setup process.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> Tested-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/pcie-apple.c | 54 ++++++++++++++++-------------
>  1 file changed, 30 insertions(+), 24 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-apple.c b/drivers/pci/controller/pcie-apple.c
> index 842f8cee7c868..d07e488051290 100644
> --- a/drivers/pci/controller/pcie-apple.c
> +++ b/drivers/pci/controller/pcie-apple.c
> @@ -730,35 +730,15 @@ static void apple_pcie_disable_device(struct pci_host_bridge *bridge, struct pci
>  
>  static int apple_pcie_init(struct pci_config_window *cfg)
>  {
> +	struct apple_pcie *pcie = cfg->priv;
>  	struct device *dev = cfg->parent;
> -	struct platform_device *platform = to_platform_device(dev);
>  	struct device_node *of_port;
> -	struct apple_pcie *pcie;
>  	int ret;
>  
> -	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
> -	if (!pcie)
> -		return -ENOMEM;
> -
> -	pcie->dev = dev;
> -
> -	mutex_init(&pcie->lock);
> -
> -	pcie->base = devm_platform_ioremap_resource(platform, 1);
> -	if (IS_ERR(pcie->base))
> -		return PTR_ERR(pcie->base);
> -
> -	cfg->priv = pcie;
> -	INIT_LIST_HEAD(&pcie->ports);
> -
> -	ret = apple_msi_init(pcie);
> -	if (ret)
> -		return ret;
> -
>  	for_each_available_child_of_node(dev->of_node, of_port) {
>  		ret = apple_pcie_setup_port(pcie, of_port);
>  		if (ret) {
> -			dev_err(pcie->dev, "Port %pOF setup fail: %d\n", of_port, ret);
> +			dev_err(dev, "Port %pOF setup fail: %d\n", of_port, ret);
>  			of_node_put(of_port);
>  			return ret;
>  		}
> @@ -778,14 +758,40 @@ static const struct pci_ecam_ops apple_pcie_cfg_ecam_ops = {
>  	}
>  };
>  
> +static int apple_pcie_probe(struct platform_device *pdev)
> +{
> +	struct device *dev = &pdev->dev;
> +	struct apple_pcie *pcie;
> +	int ret;
> +
> +	pcie = devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
> +	if (!pcie)
> +		return -ENOMEM;
> +
> +	pcie->dev = dev;
> +	pcie->base = devm_platform_ioremap_resource(pdev, 1);
> +	if (IS_ERR(pcie->base))
> +		return PTR_ERR(pcie->base);
> +
> +	mutex_init(&pcie->lock);
> +	INIT_LIST_HEAD(&pcie->ports);
> +	dev_set_drvdata(dev, pcie);
> +
> +	ret = apple_msi_init(pcie);
> +	if (ret)
> +		return ret;
> +
> +	return pci_host_common_init(pdev, &apple_pcie_cfg_ecam_ops);
> +}
> +
>  static const struct of_device_id apple_pcie_of_match[] = {
> -	{ .compatible = "apple,pcie", .data = &apple_pcie_cfg_ecam_ops },
> +	{ .compatible = "apple,pcie" },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, apple_pcie_of_match);
>  
>  static struct platform_driver apple_pcie_driver = {
> -	.probe	= pci_host_common_probe,
> +	.probe	= apple_pcie_probe,
>  	.driver	= {
>  		.name			= "pcie-apple",
>  		.of_match_table		= apple_pcie_of_match,
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்

