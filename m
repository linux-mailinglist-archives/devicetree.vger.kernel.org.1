Return-Path: <devicetree+bounces-166391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 521ECA872C2
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 19:03:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 853477A2D74
	for <lists+devicetree@lfdr.de>; Sun, 13 Apr 2025 17:02:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B851E5B85;
	Sun, 13 Apr 2025 17:03:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a1WBf+KD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f173.google.com (mail-pf1-f173.google.com [209.85.210.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9DF1A5B89
	for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 17:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744563801; cv=none; b=EjH7nnHLzixxrD3wx/CHdgix81FeMKlq/fS+XYIZVT04h081BrQ7UAHrv0uKt34ml1tsRsN4F9nzydj42o1qbiZOLhMS2XGDFAiZ2lwGJYO4qL8Cz+mJKgm+3MbjUvpSoHOADc7WK0+yiZCiIxTGhR2y0pVJ12ZhKMkW8eV1C6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744563801; c=relaxed/simple;
	bh=zL3lvGzcYuFWV3PVKJI1WXLSGN206sUiu1Zj32cTe2M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gcAtehgOrKG2iymGcwn0HaU8H3Upy1A4V0cJQm+jTPmP/Ii7Mhuo1RU5wgCIQC6lS0GpQbE3tgU6aqN0D3vHfl1IpZwOeLgDD6BvLfy/KtOiou5znof5U+JATBtU3/Njzds5ycLWfyC1Msg4cOs6Qa35KQ21i+01nGHgnSDHX94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a1WBf+KD; arc=none smtp.client-ip=209.85.210.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f173.google.com with SMTP id d2e1a72fcca58-7398d65476eso2761960b3a.1
        for <devicetree@vger.kernel.org>; Sun, 13 Apr 2025 10:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744563798; x=1745168598; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=8KYqWXMPG9QT4+d9/EIsutHTMWrOQHXovJYmJ2amFCQ=;
        b=a1WBf+KDzNMKcrxGkT8Ymw8WkqbGgm2oXZ6ojCMw73EqUeuRBZnnaSmWQ6eIIqd7Rc
         lG+fwHaz6OZsHcpOu2/7yo0Kx1wqrV0TZklODlD3R2lt6dIsMQh00vnbAJj1rgEMOVK4
         goMrtUMYPqSFQ6g29zKjDCc6+T+2zfZbK8hq7HLP7tVxtkqlwKwtXFakAt/Quio2AJ4F
         7/+lm74Okt0vvPMW/+Hqac3oTG5/PSp3HxNg2Ptg86wsVfOZZfsUuWzSmuNXlfpU57x8
         U0SfkfOPDX41cn5nnRUJwD3Nf8k8bzqVma+NYBIIp950WSvAfZ/2/Pqizz761xXSD2bx
         +vmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744563798; x=1745168598;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8KYqWXMPG9QT4+d9/EIsutHTMWrOQHXovJYmJ2amFCQ=;
        b=qrm6/QpsL9OK6OCmepTo3M83OYZ7F9ASKyz59n7SIKtXwskG2inf4azU+MfcACT7ZZ
         Zt/Md71exbEGcFj4fhOj6U/VUbJw+iePhHIMuiio8DYv8HkEOkYb0G0HFgVP6qc79Am8
         DqH7Vg9uQKaETxcbJIHiozFIRDBfeW4X7CbyGyQoTY8DAx2+bMaBIZ3kRB4P8eMhmY96
         vl2nPqtqBUb3S/N+13YyT0Xl3G1VErlC4b0oe5/YjPEHxb9SxZDZz/mrfwhW5EMMqRvX
         l4ZdlBuPQ4nRgB7sYgUyYvmBdZMIL6/kNxbQKlj1tqTypUnD7dYR/et0t5s1NfwXUnFn
         5VCg==
X-Forwarded-Encrypted: i=1; AJvYcCVaR8VLpKMWB0ngR+juOgTfhMIqyLJJ2+QJzHV/GvCcqsHkErCw5ol1VZbX36R2dffojz8hIbbu3+Gu@vger.kernel.org
X-Gm-Message-State: AOJu0YxufT95JbNWIc2Hd/OfHU7EJg9Olj6hJE7NVp7C8m3Jljk/HsyG
	nTx+/wVJL9YAdd76iuDPdxi4Vqo4Nhc6PIbTU22Etfu4/KmONmd2bEMKNTlU9Q==
X-Gm-Gg: ASbGncs5H7ECue6gXR+W3cBJ0i+0XkEgnJcVLxiwmWKtb+l/YmsMHtNy9DKOjz0IXFH
	YEW+4xKRViDbTrELIF8JvBWsL9Yw64dp4sqSMBMa5rBdGBFJtNhS2hMBCpm6L+uh4axX6xgFF5l
	oG8zvVtrJk2O9u/Wu/iIeRyRZW6c5Dmz3QENdIiPK2ALEnDwKjwj7wvYTQ8F/+EgJLnXqTK1OO5
	O5oULjcDaIeKRIVdXt9u0612T1OfROywDkl5v2rsLVb9sKccr5tPIL9xkuanSJj+gvCFIpmtb4i
	srHZjZjE/5PThFVnfxF4wloV+LjNqN2tXIllLr16bTbc2aHtz2SE
X-Google-Smtp-Source: AGHT+IHJl9qy9zlA671Ghf76u4hAfg8o0WkGbqOTRDuANRuFVtoUszAvnmcGPP3MsPAP/4ftUIljgw==
X-Received: by 2002:a05:6a20:c995:b0:1f0:e2b9:d163 with SMTP id adf61e73a8af0-2016a1cfeacmr20268545637.12.1744563798241;
        Sun, 13 Apr 2025 10:03:18 -0700 (PDT)
Received: from thinkpad ([120.60.137.231])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b02a08180e2sm8053734a12.14.2025.04.13.10.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Apr 2025 10:03:17 -0700 (PDT)
Date: Sun, 13 Apr 2025 22:33:11 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Marc Zyngier <maz@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, asahi@lists.linux.dev, 
	Alyssa Rosenzweig <alyssa@rosenzweig.io>, Janne Grunau <j@jannau.net>, Hector Martin <marcan@marcan.st>, 
	Sven Peter <sven@svenpeter.dev>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Mark Kettenis <mark.kettenis@xs4all.nl>
Subject: Re: [PATCH v3 03/13] PCI: host-generic: Extract an ecam bridge
 creation helper from pci_host_common_probe()
Message-ID: <bgawumksxn3dbiwu6oeifte4wxcwqed63x5kkvgyeg4emtfqmz@biaouwkqsag5>
References: <20250401091713.2765724-1-maz@kernel.org>
 <20250401091713.2765724-4-maz@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250401091713.2765724-4-maz@kernel.org>

On Tue, Apr 01, 2025 at 10:17:03AM +0100, Marc Zyngier wrote:
> pci_host_common_probe() is an extremely userful helper, as it
> abstracts away most of the gunk that a "mostly-ECAM-compliant"
> device driver needs.
> 
> However, it is structured as a probe function, meaning that a lot
> of the driver-specific setup has to happen in a .init() callback,
> after the bridge and config space have been instantiated.
> 
> This is a bit awkward, and results in a number of convolutions
> that could be avoided if the host-common code was more like
> a library.
> 
> Introduce a pci_host_common_init() helper that does exactly that,
> taking the platform device and a struct pci_ecam_op as parameters.
> 
> This can then be called from the probe routine, and a lot of the
> code that isn't relevant to PCI setup moved away from the .init()
> callback. This also removes the dependency on the device match
> data, which is an oddity.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Acked-by: Alyssa Rosenzweig <alyssa@rosenzweig.io>
> Tested-by: Janne Grunau <j@jannau.net>
> Signed-off-by: Marc Zyngier <maz@kernel.org>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/pci-host-common.c | 24 ++++++++++++++++--------
>  include/linux/pci-ecam.h                 |  2 ++
>  2 files changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-host-common.c b/drivers/pci/controller/pci-host-common.c
> index f441bfd6f96a8..466a1e6a7ffcd 100644
> --- a/drivers/pci/controller/pci-host-common.c
> +++ b/drivers/pci/controller/pci-host-common.c
> @@ -49,23 +49,17 @@ static struct pci_config_window *gen_pci_init(struct device *dev,
>  	return cfg;
>  }
>  
> -int pci_host_common_probe(struct platform_device *pdev)
> +int pci_host_common_init(struct platform_device *pdev,
> +			 const struct pci_ecam_ops *ops)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct pci_host_bridge *bridge;
>  	struct pci_config_window *cfg;
> -	const struct pci_ecam_ops *ops;
> -
> -	ops = of_device_get_match_data(&pdev->dev);
> -	if (!ops)
> -		return -ENODEV;
>  
>  	bridge = devm_pci_alloc_host_bridge(dev, 0);
>  	if (!bridge)
>  		return -ENOMEM;
>  
> -	platform_set_drvdata(pdev, bridge);
> -
>  	of_pci_check_probe_only();
>  
>  	/* Parse and map our Configuration Space windows */
> @@ -73,6 +67,8 @@ int pci_host_common_probe(struct platform_device *pdev)
>  	if (IS_ERR(cfg))
>  		return PTR_ERR(cfg);
>  
> +	platform_set_drvdata(pdev, bridge);
> +
>  	bridge->sysdata = cfg;
>  	bridge->ops = (struct pci_ops *)&ops->pci_ops;
>  	bridge->enable_device = ops->enable_device;
> @@ -81,6 +77,18 @@ int pci_host_common_probe(struct platform_device *pdev)
>  
>  	return pci_host_probe(bridge);
>  }
> +EXPORT_SYMBOL_GPL(pci_host_common_init);
> +
> +int pci_host_common_probe(struct platform_device *pdev)
> +{
> +	const struct pci_ecam_ops *ops;
> +
> +	ops = of_device_get_match_data(&pdev->dev);
> +	if (!ops)
> +		return -ENODEV;
> +
> +	return pci_host_common_init(pdev, ops);
> +}
>  EXPORT_SYMBOL_GPL(pci_host_common_probe);
>  
>  void pci_host_common_remove(struct platform_device *pdev)
> diff --git a/include/linux/pci-ecam.h b/include/linux/pci-ecam.h
> index 3a10f8cfc3ad5..bc2ca2c72ee23 100644
> --- a/include/linux/pci-ecam.h
> +++ b/include/linux/pci-ecam.h
> @@ -97,6 +97,8 @@ extern const struct pci_ecam_ops loongson_pci_ecam_ops; /* Loongson PCIe */
>  #if IS_ENABLED(CONFIG_PCI_HOST_COMMON)
>  /* for DT-based PCI controllers that support ECAM */
>  int pci_host_common_probe(struct platform_device *pdev);
> +int pci_host_common_init(struct platform_device *pdev,
> +			 const struct pci_ecam_ops *ops);
>  void pci_host_common_remove(struct platform_device *pdev);
>  #endif
>  #endif
> -- 
> 2.39.2
> 

-- 
மணிவண்ணன் சதாசிவம்

