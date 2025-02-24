Return-Path: <devicetree+bounces-150156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 27B1DA415C1
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 08:02:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 746AB188F8DA
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 07:02:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA81D18A6D2;
	Mon, 24 Feb 2025 07:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bSRa4TUB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF1CF1A5B81
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 07:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740380565; cv=none; b=WmVA8WD4k33Bf5M0cLnIA9lUl6DNy4rwSM/9GZIAJXmjzAGfrMKX9tiZmq2Ihd+v6jEnAWW+p+3KOkCTq7z55U81grCNRqL9pVJI6ok8YxR3BSB7DlcBa/vL648uWInOqSzJ5+oUjfRt6RsAlDteaQOyAeb0Ex1pXb1yDaxiDyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740380565; c=relaxed/simple;
	bh=o7KXtFkkiossVlXHLyR6rFidy6CgsihrYaqqAvlOcIM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=b79jxPsfosBjvf2gDkhp2jsnuMumTHlnmUsOcn4cZxK7TedsBK/bqRoY28jRntjmD90hNjSddoO7f4mmC5IoRGBEml9PJLOxnu0987h8SqEC7x4Wuksp+nHAqdm69SHhGzhurpzoN/+0oSk+NeRKBo0WB1faEQYOyrgCd4PD04c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bSRa4TUB; arc=none smtp.client-ip=209.85.214.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f178.google.com with SMTP id d9443c01a7336-220d398bea9so60458875ad.3
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 23:02:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740380563; x=1740985363; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=6wvvGLB8O3NF43tAdS2H7DvAXcu+6aLP4+yb5jyf9L4=;
        b=bSRa4TUB1+c3Lj6xxrTPth2yZ+gsfb3LxC5f1OU1A3ngInkH42BYBLEsMVvuMif6Cn
         Nk9k2+0d1sumBwPyOA7j0uS1xFExTf2sQVa9skUafuUlIdR7B+9ViDncV78z8F0eAR0q
         OOBm1f/fgOSlqncI9ONa+2yCz2MSVRnsEoSZkWcLA0kX6US037mUs7Q2+pFve0CB+GCr
         +oWT8y9A0z8I6wDFTI4q2Mt3uCPjFDWzOXoNeOw1qu4uH8nGrDlaYgXLpqTcRfPJjNET
         1Ta67VGBI8E/5eq4SpJ2xaA2syXLQuw8pUVy9/J55E4cqpW9AM105Ie5FIGrio6jzDWj
         kfyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740380563; x=1740985363;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6wvvGLB8O3NF43tAdS2H7DvAXcu+6aLP4+yb5jyf9L4=;
        b=Ctp+dWskuOX/iHQ0Mkla7Pp7N2CeNzIVDA5UCw6jyiayVoLqDGugCaiE8OLZltaN59
         YilJ3wRhcaVUtBblEWZXA4bYKqKgYtjC7CqgToCQ7h+vA1pZEYu4ttvr1LL3KKLARJMM
         um58YhO4fOmdZUBEaPrPdkFMlRnydrC/2rGGezEW8IfoPiwA/NUDolnCbePwF8GCKRHR
         FIPpDRApx2y3PvuVeVqqltHf4VB8kD6bPUyKpfw8y6yxm4dSae6ibjvCYXJDVE03YaSV
         Zy+6ApJ9Tag5LG/VlsYEkAZhBsixUN1tUrnogtcwh6SZdzEZIzOEh45e8bnw2HL0bbRD
         v5fA==
X-Forwarded-Encrypted: i=1; AJvYcCVajg2Cl6ThV6KdoG/1X5vBVU1g7hdax8HBu87k0I0XzK8JsPDLvLeB9Z/4Ws3td0zdG7Yyh8Bv4xN9@vger.kernel.org
X-Gm-Message-State: AOJu0YzE2LIDJP3O060FeV1vXqS/bxY1mo33PSl3Up7aH4j9fb0J1Cvg
	68IcbPMo1HiuCaThO3A2V7TKN2aQbaZ/t/WZgrE9ysfOZ5wR0AJSwmAplkITWg==
X-Gm-Gg: ASbGncuDhI7mKhLNT7EpfV42EHAm2/OC++hDC49QcNbdig+cDh8/T7armfq1fkDcfGY
	CBSKlpW3dXt32Ijt1NbfLD8+V80nbY/pt1M/lr5CD/B0z488wDJ3zGPdY0Yr1AOxZdWZ3BnasUP
	hv7tcJDw762Swgop94CxMeY9yhF6Xnon+pfrR0OeFc0kR330u1TSrY/BZCx9aVyRotOjYEz6Ilk
	GWk1Lu+RK328xprqqZELgsZacspi6rljlbi+RYeFqs7TpFjmgpYPUK5YcyG2ohOOnCXqWi7hQQs
	nPHlqyU36QeeG3gjktUmqqpV+RfpwyEVNUJ4
X-Google-Smtp-Source: AGHT+IHZDCUkVb6KkQggLmytTi/Bc9e4L0SoN/9Y4bEIbQD8e9Ei3Q2gcbNibzYNgvXFukkN4bS6Cg==
X-Received: by 2002:a17:902:d502:b0:220:f509:686a with SMTP id d9443c01a7336-221a10f1e97mr202837705ad.29.1740380563145;
        Sun, 23 Feb 2025 23:02:43 -0800 (PST)
Received: from thinkpad ([36.255.17.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7325c3f4cd3sm16992430b3a.6.2025.02.23.23.02.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 23:02:42 -0800 (PST)
Date: Mon, 24 Feb 2025 12:32:36 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sai Krishna Musham <sai.krishna.musham@amd.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com,
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, michal.simek@amd.com,
	bharat.kumar.gogada@amd.com, thippeswamy.havalige@amd.com
Subject: Re: [PATCH 2/2] PCI: xilinx-cpm: Add support for PCIe RP PERST#
 signal
Message-ID: <20250224070236.nhowwz3uwk2rx4qi@thinkpad>
References: <20250224063046.1438006-1-sai.krishna.musham@amd.com>
 <20250224063046.1438006-3-sai.krishna.musham@amd.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224063046.1438006-3-sai.krishna.musham@amd.com>

On Mon, Feb 24, 2025 at 12:00:46PM +0530, Sai Krishna Musham wrote:
> Add GPIO-based control for the PCIe Root Port PERST# signal.
> 
> According to section 2.2 of the PCIe Electromechanical Specification
> (Revision 6.0), PERST# signal has to be deasserted after a delay of
> 100 ms (TPVPERL) to ensure proper reset sequencing during PCIe
> initialization.
> 
> Signed-off-by: Sai Krishna Musham <sai.krishna.musham@amd.com>
> ---
> This patch depends on the following patch series.
> https://lore.kernel.org/all/20250217072713.635643-3-thippeswamy.havalige@amd.com/
> ---
>  drivers/pci/controller/pcie-xilinx-cpm.c | 23 +++++++++++++++++++++++
>  1 file changed, 23 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-xilinx-cpm.c b/drivers/pci/controller/pcie-xilinx-cpm.c
> index 81e8bfae53d0..0e31b85658e6 100644
> --- a/drivers/pci/controller/pcie-xilinx-cpm.c
> +++ b/drivers/pci/controller/pcie-xilinx-cpm.c
> @@ -6,6 +6,8 @@
>   */
>  
>  #include <linux/bitfield.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
>  #include <linux/interrupt.h>
>  #include <linux/irq.h>
>  #include <linux/irqchip.h>
> @@ -568,8 +570,29 @@ static int xilinx_cpm_pcie_probe(struct platform_device *pdev)
>  	struct device *dev = &pdev->dev;
>  	struct pci_host_bridge *bridge;
>  	struct resource_entry *bus;
> +	struct gpio_desc *reset_gpio;
>  	int err;
>  
> +	/* Request the GPIO for PCIe reset signal */
> +	reset_gpio = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);

You've defined the polarity as 0x1 in the binding. Which corresponds to
GPIO_ACTIVE_LOW. So if you request the GPIO as GPIOD_OUT_LOW, it means the host
is going to drive the PERST# line as 'high', which corresponds to PERST#
deassert. I don't think you'd want that and if that is what is really happening,
the endpoint state machine would be broken. So I suspect that the polarity of
your PERST# line is wrong.

- Mani

> +	if (IS_ERR(reset_gpio)) {
> +		dev_err(dev, "Failed to request reset GPIO\n");
> +		return PTR_ERR(reset_gpio);
> +	}
> +
> +	/* Assert the reset signal */
> +	gpiod_set_value(reset_gpio, 0);
> +
> +	/*
> +	 * As per section 2.2 of the PCI Express Card Electromechanical
> +	 * Specification (Revision 6.0), the deassertion of the PERST# signal
> +	 * should be delayed by 100 ms (TPVPERL).
> +	 */
> +	msleep(100);
> +
> +	/* Deassert the reset signal */
> +	gpiod_set_value(reset_gpio, 1);
> +
>  	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*port));
>  	if (!bridge)
>  		return -ENODEV;
> -- 
> 2.44.1
> 

-- 
மணிவண்ணன் சதாசிவம்

