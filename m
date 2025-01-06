Return-Path: <devicetree+bounces-135891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F765A02D7D
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 17:17:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 08A641615F2
	for <lists+devicetree@lfdr.de>; Mon,  6 Jan 2025 16:17:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 671BA1DC9BC;
	Mon,  6 Jan 2025 16:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kT59MZLU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9F501DE4DE
	for <devicetree@vger.kernel.org>; Mon,  6 Jan 2025 16:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736180221; cv=none; b=S9ITkCyNKXV+tflu/JCeSDoNxLhk3rrH+bbbl6ET+rjJlLCmm2kopNFYaJqZfVag+DqMYQFs1hj8xV/hu8ycSpr2eF1T4MyUfI4zkFo1OVZlxpVrfUZEJ6VqlyV593k0NhGrnMGMpI8xMiHlKEBWBZDQXPa077je0ukdUmDjnfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736180221; c=relaxed/simple;
	bh=jR0rtiAFDgif5wPqwtmomqJBgFXe+11Fti0M+vMT9lQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hGwFnp7wbemIBNLS8jtwBnJ76hGLmL9L1DK14/sonWQGduaUjMpGKO+HJ8e420gnzuNVGGpOe1NFff9qwXx6POAA1i82d7cVehez42TrwfpFYbxJ7Jw4yxluX/re2qXwI/3sQm4rkCa7eMPc4ecH6Ml2s/FQz1A6tTFgvyHt2LI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kT59MZLU; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-21654fdd5daso195421885ad.1
        for <devicetree@vger.kernel.org>; Mon, 06 Jan 2025 08:16:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736180216; x=1736785016; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ioU53vgoNQ0AoVqbDSui1lqyY/iBOmMjiyD6RqrD6B4=;
        b=kT59MZLUL7oK48eiJbBsGFtBdciUG9qpVaXUAi4tdUOqnIWzIxl4X+G+ycI6n5jMLF
         +fcVAjfXyZrCKkiMZTtw86jmp0s5bOgH+zVLnajiMB9WqZk9gNb3gJOxdODeTXNagtr4
         0NZG+KjDhtnxqOLMRNvw1+7O/oJ71CCUe37+yI5y6Ho7ORl8AsvbzCtHyVdW1jZ4uCae
         1RCYUjI0zWPVeW6tUYPoS+JGzDHyOQSrr5Gt4Ey4WiTpOzW+OfV67+TQg7E4+rgM+9E1
         PONn+IsnQ47elDD+qlEpEuVdhKKxaYvFxiHyh785eOWapE742MU2seFByBGR9RCZzpQZ
         5hUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736180216; x=1736785016;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ioU53vgoNQ0AoVqbDSui1lqyY/iBOmMjiyD6RqrD6B4=;
        b=sws3lqiwoFi1HMgvpFyfriXQ8WhPpUZ4sWeRwXlVPqKLkZ6sN6ZP+M9CkshJeG01i0
         hVHxUoksSY0LnaxeP0ZOVBKSdcRwfAwIBBP1WXXB49Cswmo0H9M14DvquM7T2fgvsmDC
         W+2CcQ3uzazJHTSAPgUE0DqRuV7hNxHK+mbgviUYAx2R1IYYkkROQEeak1wgwu69H2F8
         QRrYMKVuglCPFfGQoMz6E1fmW9VtGIHjvS/4rQshneYYetQ25G3ylP15f5Diz5Zc5G6p
         IjgzPAjsdbnuD4/fkbb4oj99eZGKinQRwrBM36qzlAgu4k+JuwRBDYHkVBfAZxQyPFUa
         R5qg==
X-Forwarded-Encrypted: i=1; AJvYcCXzCQc0v3PecCQQWF6c2vQmED1gOzQhyyrUQ28TmgGwklja8ty51qszK9Pa6HS5tFEAY+nMnZUAJtFr@vger.kernel.org
X-Gm-Message-State: AOJu0YxKH9d+hEPb4zKYyktgYbc7IaTi1k79qhBVHzZfnz9ydO+tzUpw
	GJWuQ6jH2/MvA9H7HEmQy3JhNFDllMhW3Y5QKyzAelGuh8PP8wTs4PgPNaw3JX6LfewfSxjSzlA
	=
X-Gm-Gg: ASbGncuYDMlpUoZ+dt4RGIjWdGXRQUj0coZ5RV4NmMQoN+3+u1ACfl3OiAzQfcqC+yQ
	f20wUUrFhQMQMv+C++YNSZKMh7IDmEgJFIOMqHTZloPWBUCOyoPrU/mqMgkEXQJ7l+1fIjubAtP
	QXPNE2WQ1gyfssCHGCRTSzH9CbEDU0jt65bTgcSQKPFf/iET7rKUwmByT+mKhCRiRDJOmXIILt1
	e/t99PkhD2+1Hfx8nd4TFS5+DKIdLJtpErf5CMQpZCnRF17nsewv74Kgmbk0wSOHoc=
X-Google-Smtp-Source: AGHT+IE0TclArATGV1Fu9QzdsMBgtnLWVMtYLElP8xxrkxbbzfBsYBkj0d5S+FS+C4fjsFRPAz2wxQ==
X-Received: by 2002:a17:903:1209:b0:216:36ff:ba33 with SMTP id d9443c01a7336-219e6ebcfc7mr772797425ad.26.1736180216074;
        Mon, 06 Jan 2025 08:16:56 -0800 (PST)
Received: from thinkpad ([120.60.61.126])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f4fbcsm294633875ad.174.2025.01.06.08.16.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jan 2025 08:16:55 -0800 (PST)
Date: Mon, 6 Jan 2025 21:46:39 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Jianjun Wang <jianjun.wang@mediatek.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Ryder Lee <ryder.lee@mediatek.com>, linux-pci@vger.kernel.org,
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Xavier Chang <Xavier.Chang@mediatek.com>
Subject: Re: [PATCH 4/5] PCI: mediatek-gen3: Don't reply AXI slave error
Message-ID: <20250106161639.4bgb7rhokoe22xpp@thinkpad>
References: <20250103060035.30688-1-jianjun.wang@mediatek.com>
 <20250103060035.30688-5-jianjun.wang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250103060035.30688-5-jianjun.wang@mediatek.com>

On Fri, Jan 03, 2025 at 02:00:14PM +0800, Jianjun Wang wrote:
> There are some circumstances where the EP device will not respond to
> non-posted access from the root port (e.g., MMIO read). In such cases,
> the root port will reply with an AXI slave error, which will be treated

By 'reply with an AXI slave error', you meant that the root port responds to the
MMIO read by the CPU with AXI slave error? If so, please reword it as such to
avoid confusion.

> as a System Error (SError), causing a kernel panic and preventing us
> from obtaining any useful information for further debugging.
> 
> We have added a new bit in the PCIE_AXI_IF_CTRL_REG register to prevent
> PCIe AXI0 from replying with a slave error. Setting this bit on an older
> platform that does not support this feature will have no effect.
> 

But the issue is still present on the older SoCs, isn't it? If so, please add
this info to the comments below.

- Mani

> By preventing AXI0 from replying with a slave error, we can keep the
> kernel alive and debug using the information from AER.
> 
> Signed-off-by: Jianjun Wang <jianjun.wang@mediatek.com>
> ---
>  drivers/pci/controller/pcie-mediatek-gen3.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
> index 4bd3b39eebe2..48f83c2d91f7 100644
> --- a/drivers/pci/controller/pcie-mediatek-gen3.c
> +++ b/drivers/pci/controller/pcie-mediatek-gen3.c
> @@ -87,6 +87,9 @@
>  #define PCIE_LOW_POWER_CTRL_REG		0x194
>  #define PCIE_FORCE_DIS_L0S		BIT(8)
>  
> +#define PCIE_AXI_IF_CTRL_REG		0x1a8
> +#define PCIE_AXI0_SLV_RESP_MASK		BIT(12)
> +
>  #define PCIE_PIPE4_PIE8_REG		0x338
>  #define PCIE_K_FINETUNE_MAX		GENMASK(5, 0)
>  #define PCIE_K_FINETUNE_ERR		GENMASK(7, 6)
> @@ -469,6 +472,15 @@ static int mtk_pcie_startup_port(struct mtk_gen3_pcie *pcie)
>  	val |= PCIE_FORCE_DIS_L0S;
>  	writel_relaxed(val, pcie->base + PCIE_LOW_POWER_CTRL_REG);
>  
> +	/*
> +	 * Prevent PCIe AXI0 from replying a slave error, as it will cause kernel panic
> +	 * and prevent us from getting useful information.
> +	 * Keep the kernel alive and debug using the information from AER.
> +	 */
> +	val = readl_relaxed(pcie->base + PCIE_AXI_IF_CTRL_REG);
> +	val |= PCIE_AXI0_SLV_RESP_MASK;
> +	writel_relaxed(val, pcie->base + PCIE_AXI_IF_CTRL_REG);
> +
>  	/* Disable DVFSRC voltage request */
>  	val = readl_relaxed(pcie->base + PCIE_MISC_CTRL_REG);
>  	val |= PCIE_DISABLE_DVFSRC_VLT_REQ;
> -- 
> 2.46.0
> 

-- 
மணிவண்ணன் சதாசிவம்

