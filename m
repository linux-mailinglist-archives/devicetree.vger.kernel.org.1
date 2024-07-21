Return-Path: <devicetree+bounces-86992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C88239383CB
	for <lists+devicetree@lfdr.de>; Sun, 21 Jul 2024 09:40:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 712981F2149E
	for <lists+devicetree@lfdr.de>; Sun, 21 Jul 2024 07:40:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED2B79F6;
	Sun, 21 Jul 2024 07:39:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vTepMrN1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547F633E1
	for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 07:39:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721547598; cv=none; b=ZQ9w/vswPKdQE41qGnc1vQr3ldMQ7Va9zhP+LracVXhR9yiAiOsSeHHzabNRPDbqqgEbcl4vYg1m2msH2mLEFafeC2jCFlEzpojsAKkCoow8qx/8KoQaXDwrKHg7EoHdJDPMAIuYc4u41gkVSOmiKrnnRMDeRPKxatl2D9qxZTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721547598; c=relaxed/simple;
	bh=FKPYtsFtam4QQMK01ANM2dJ9eQL9oofZqTRrOT3jXts=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EEm1+namuDWS5eg4fjk1DM2kxPu6MNiThxYOf2y4zqiiROCbZrtE4/ECeb3/0FgQoxrZTsBZZyfMV/rmti0ME/WnqjnppJXhwqZs1EnZ83xN4m8/Jc7CqmI34m4UxAhoEhJtVpTU8v6YljLrmP/PozdvaOce8SKiKOFwuRUPF7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vTepMrN1; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6510c0c8e29so31056627b3.0
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 00:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721547594; x=1722152394; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=N02rs0beU0+PCjKU6W+pNs3gEfWqOvtg3yl3XFcbS8U=;
        b=vTepMrN1lhDS8EyTZ8/9FJS4kOinxkHYvL32d7599ZLJL9fFXWRRNNIvGwR5a6KMxa
         nATLaRuFjtR38d/X0+QB8kciLZTRTO4sUqpcCsBgoOb8mQDwJk6PINVPcsS+mD6rGgRg
         HeuKTcavw48rMwjYmdNlf5oNuq4z5Qe8W6/oIgdGnxUcLYQhWZZ+/t4qtSAOcE9hsIjA
         XpJaC6x9cf1dVxrn+etHIOjQkQ16Hj0ijOtLZJHj7LQvCIc57gn/5mmmqNKLy8JngcgQ
         x25yQnH5VhwqeHenZ/v9/DigVZQjvLBphuLJz5sCWyPIFSBS8AbXGLTD2FzqQBzzivUc
         DDTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721547594; x=1722152394;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N02rs0beU0+PCjKU6W+pNs3gEfWqOvtg3yl3XFcbS8U=;
        b=fOaQR3IXwOgCE9FGfhXoWkJHp0zw/kv8EScnUh22534dmze1bH90zsyxnu9inH9BMo
         j7mAW8ERTnoQvAispbzDMZZdh2fc9g4RpOL3hXtK40FzkOalpPHlSvUVj7CuxdCX37+G
         a4WggxHY0gz3lB6O+rLpwLECqMgnCGFUUh4tniH8NNgoo6yADIZHPvM7m9gxLS8J1Asq
         zmeoPehLDz0JOhh39y86IOwy8KizXb2gqWI7t4v9JuqMUOvESYcQtZ/wEiz+eI436dC3
         uKcJcqdE2nloE8fzbg1uZpAu3+ABULUSBMpdLq3gm/txOwzzRPe6f/yya1CGIc3MzPZ3
         o8DQ==
X-Forwarded-Encrypted: i=1; AJvYcCWV7H5RFTpVSCfKZMJWPtK30zeX6u62Tkzb7IxOo+8FL0SlIk2hBd629epSRwybG355+IX85IJURtTEeKi5e5pdMCq2FH/eQnDB1Q==
X-Gm-Message-State: AOJu0YyInmcJEMqb58YhUUa0a4lQH9OCgOSL39vrSxIwgcUNSrFj3jKW
	8XZgRmzWkQdAt5inj7xR4wAvug8LattNevJ2YxnETFxOoC7da5pWdHj1JTXGRQ==
X-Google-Smtp-Source: AGHT+IFQYY74iAGQY5pOOJPCWv5JUZVONiqWh0swcBRClZ6YAaFDgYxDWJLm9Z5K35Wb0bbXsmVAGg==
X-Received: by 2002:a05:690c:4441:b0:665:7184:fcd0 with SMTP id 00721157ae682-66ad8dc0d02mr32319017b3.23.1721547594246;
        Sun, 21 Jul 2024 00:39:54 -0700 (PDT)
Received: from thinkpad ([120.56.206.118])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70d2243d137sm439633b3a.31.2024.07.21.00.39.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jul 2024 00:39:53 -0700 (PDT)
Date: Sun, 21 Jul 2024 13:09:46 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	NXP Linux Team <linux-imx@nxp.com>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-pci@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
	devicetree@vger.kernel.org, Jason Liu <jason.hui.liu@nxp.com>
Subject: Re: [PATCH v7 02/10] PCI: imx6: Fix i.MX8MP PCIe EP's occasional
 failure to trigger MSI
Message-ID: <20240721073946.GB1908@thinkpad>
References: <20240708-pci2_upstream-v7-0-ac00b8174f89@nxp.com>
 <20240708-pci2_upstream-v7-2-ac00b8174f89@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240708-pci2_upstream-v7-2-ac00b8174f89@nxp.com>

On Mon, Jul 08, 2024 at 01:08:06PM -0400, Frank Li wrote:
> From: Richard Zhu <hongxing.zhu@nxp.com>
> 
> Correct occasional MSI triggering failures in i.MX8MP PCIe EP by applying
> the correct hardware outbound alignment requirement.
> 
> The i.MX platform has a restriction about outbound address translation. The
> pci-epc-mem uses page_size to manage it. Set the correct page_size for i.MX
> platform to meet the hardware requirement, which is the same as inbound
> address alignment. Align it with epc_features::align.
> 
> Fixes: 1bd0d43dcf3b ("PCI: imx6: Clean up addr_space retrieval code")
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Acked-by: Jason Liu <jason.hui.liu@nxp.com>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 9a71b8aa09b3c..ca9a000c9a96d 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -1118,6 +1118,8 @@ static int imx6_add_pcie_ep(struct imx6_pcie *imx6_pcie,
>  	if (imx6_check_flag(imx6_pcie, IMX6_PCIE_FLAG_SUPPORT_64BIT))
>  		dma_set_mask_and_coherent(dev, DMA_BIT_MASK(64));
>  
> +	ep->page_size = imx6_pcie->drvdata->epc_features->align;
> +
>  	ret = dw_pcie_ep_init(ep);
>  	if (ret) {
>  		dev_err(dev, "failed to initialize endpoint\n");
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

