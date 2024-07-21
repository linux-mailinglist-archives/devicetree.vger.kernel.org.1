Return-Path: <devicetree+bounces-86994-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F3F19383E0
	for <lists+devicetree@lfdr.de>; Sun, 21 Jul 2024 09:57:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A302EB2096D
	for <lists+devicetree@lfdr.de>; Sun, 21 Jul 2024 07:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D627BBE65;
	Sun, 21 Jul 2024 07:57:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QpKw+WIW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DF668C13
	for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 07:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721548647; cv=none; b=EvrnkCzoIi6CG7N/wq/ddV68EiWIoJOdnYwA9gXbbt2f03O+bY6UZFuhu7Ty+e7eUAJcuSk5jPC9lWEX1Cy1NrRx0JLhKAz5MHt+nTtUiM0xGfQdtDcEWQMNo4HZNFFos+iWQmAvjHpRWcXPiF7fK8HIjhgvIxG2kuc4cqmNJ4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721548647; c=relaxed/simple;
	bh=s69hgVRKMH7JDZd2qOJja1UzLIOGXfsO9ijXxL17Huk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jApAFu74STZJ2qumqsfDyC4GP2RU2xewEg14x23gOpEfvWMYWteERj6lseZLQuR8bZWVZhXjMkCacdSt6Sfs9frxczWwKtPuO163nrZtFvFzk+yRo5wiCV6UMbE2tMfFw4xx8H6SpTmaacqdPOmjttbPqDqB0TWUC7v3t2upOxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QpKw+WIW; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-1fc569440e1so27671645ad.3
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2024 00:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721548644; x=1722153444; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=hyQz2Ns66mgvWpxSfqn/FqrN5K/JDuDi/DmSKkr9CpA=;
        b=QpKw+WIWlWrHQmo+t2v27byKa60Mp2h5hpg6NI4vvrpY3kN6TLg00SUN5V4Ffw4qPg
         cD2OhdjtyA8IaFH1XFEoXBnP+kDssVL/sMoxO3OjAyeTbI2U/AG3Bip36lO0d0onS0lh
         DgZoS2s8xmdBFsdetzKBSwXQy/83cQuXVKyV0IqqjQottlyBuVE6xLjUap9L/rffTMn1
         JlR/XIkK8GYmZOXoS8pq4g4oguIVdbyspED5tJ6H5G5KfvbPrKBjw2MDmISwX1QmzOFj
         j9G1kffsntSj8dUvKPhah20APjdBrXKmoQbN+MyaCCii3KkOAG0X52InbXaS6ntXs/QC
         MQIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721548644; x=1722153444;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hyQz2Ns66mgvWpxSfqn/FqrN5K/JDuDi/DmSKkr9CpA=;
        b=pSsHfb/nPJ1/u/kF110tPpPi3evYk8ZfCyIv+yDCKczQg3YX83FnLtZ78d1gnrAkz2
         sf9WRvGbnkcAO8Y6+cEEzdLqIj1oVqOIevH5sudotae8ZsDEnphhRD5os5vtCo3O/aRY
         uXqDdUM8FBBjndo2+BLAF5N2s66if96vDKaa0+l/jitAbenRQHln2idZyKpDTd10XK8f
         8xsbjnz1nXSTZfIwWA636nv0oIetyHSPhSWF/t9GMORm//974VTU8OVZdExLhrFXOshK
         mBFpcX9SjvHstKqudWnzUuZIb4anN1qbiUFWXsZ8036p8J4jYiqgNSNMgToPeGlZY3re
         TG2g==
X-Forwarded-Encrypted: i=1; AJvYcCVWCJpR9LiwMzdqkfmBwml/P87E8GHG5wnvpT4x86Pc2/n+SmkKdxrBGT0K/v4xEBTGzXnhnP6vLgtKAn9fJrYnOjZO31k3yamwEQ==
X-Gm-Message-State: AOJu0Yx09I7RqqwCmhaTH/TiYUSvlKDiKEw3nrl8xGLyGx3XhPD1RYwm
	lMzfs9Gh+NYRaE42XUd+pupeswBpcy/+Qq6vYzXJfmBuy7DlXWuS7y1cAxTA8A==
X-Google-Smtp-Source: AGHT+IERUkgk9IVWEdkvqOOdRMakPjOZKnaunfxav2UdDTQ2WsxGK8Rz6HmUXynq1p6YcDsh3CF0RA==
X-Received: by 2002:a17:902:d50e:b0:1fb:59e6:b0e1 with SMTP id d9443c01a7336-1fd7457e63cmr41518775ad.32.1721548644189;
        Sun, 21 Jul 2024 00:57:24 -0700 (PDT)
Received: from thinkpad ([120.56.206.118])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fd6f2a4801sm32369595ad.113.2024.07.21.00.57.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jul 2024 00:57:23 -0700 (PDT)
Date: Sun, 21 Jul 2024 13:27:17 +0530
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
	devicetree@vger.kernel.org
Subject: Re: [PATCH v7 06/10] PCI: imx6: Improve comment for workaround
 ERR010728
Message-ID: <20240721075717.GD1908@thinkpad>
References: <20240708-pci2_upstream-v7-0-ac00b8174f89@nxp.com>
 <20240708-pci2_upstream-v7-6-ac00b8174f89@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240708-pci2_upstream-v7-6-ac00b8174f89@nxp.com>

On Mon, Jul 08, 2024 at 01:08:10PM -0400, Frank Li wrote:
> Improve comment about workaround ERR010728 by using official errata
> document content(https://www.nxp.com/webapp/Download?colCode=IMX7DS_2N09P).
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 23 ++++++++++++++++++++---
>  1 file changed, 20 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 2c60858b74a09..2b95c41f8907e 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -714,9 +714,26 @@ static int imx7d_pcie_core_reset(struct imx_pcie *imx_pcie, bool assert)
>  		return 0;
>  
>  	/*
> -	 * Workaround for ERR010728, failure of PCI-e PLL VCO to
> -	 * oscillate, especially when cold. This turns off "Duty-cycle
> -	 * Corrector" and other mysterious undocumented things.
> +	 * Workaround for ERR010728 (IMX7DS_2N09P, Rev. 1.1, 4/2023):
> +	 *
> +	 * PCIe: PLL may fail to lock under corner conditions.
> +	 *
> +	 * Initial VCO oscillation may fail under corner conditions such as
> +	 * cold temperature which will cause the PCIe PLL fail to lock in the
> +	 * initialization phase.
> +	 *
> +	 * The Duty-cycle Corrector calibration must be disabled.
> +	 *
> +	 * 1. De-assert the G_RST signal by clearing
> +	 *    SRC_PCIEPHY_RCR[PCIEPHY_G_RST].
> +	 * 2. De-assert DCC_FB_EN by writing data “0x29” to the register
> +	 *    address 0x306d0014 (PCIE_PHY_CMN_REG4).
> +	 * 3. Assert RX_EQS, RX_EQ_SEL by writing data “0x48” to the register
> +	 *    address 0x306d0090 (PCIE_PHY_CMN_REG24).
> +	 * 4. Assert ATT_MODE by writing data “0xbc” to the register
> +	 *    address 0x306d0098 (PCIE_PHY_CMN_REG26).
> +	 * 5. De-assert the CMN_RST signal by clearing register bit
> +	 *    SRC_PCIEPHY_RCR[PCIEPHY_BTN]
>  	 */
>  
>  	if (likely(imx_pcie->phy_base)) {
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

