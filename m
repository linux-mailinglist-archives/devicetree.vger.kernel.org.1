Return-Path: <devicetree+bounces-114330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8A79AB4A4
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 19:05:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1F990284DE6
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 17:05:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C851BC06E;
	Tue, 22 Oct 2024 17:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UVZb3sRX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f51.google.com (mail-pj1-f51.google.com [209.85.216.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 089EE1A08CB
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 17:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729616723; cv=none; b=t3H821Y8e53DSaO4Z6ZONusednUqymBhLeeUb1LJ7H0DTBnApEtwVZhXuk3loJacQJciP/0xfUq+IbMsvaN3sR04/5kfZOCrTRtsE4GT5T45ByvAcIp0gTRPb9g5Rb7PRoUFlFdTnqJ8y2cDqzAlNnVGtdLJG1L2p9Q9FH5fxho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729616723; c=relaxed/simple;
	bh=GIQYkP95DpNNqjHPx+GVVjcUxfLNLK4bVCRYu91sUN4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m72coXHl+1/0dNBnYJUspcRC/Cvk716bI8ruHVEUn124QTdrkFjybizh9pf1bi2KT4WFdIvXppwqYJD1i9x3GS4D5IteAXp7pmfTnO+kB40Y2o/G36xkiDRXrrDAMz58BghQnXVwO2wFUbSKJkWoH9Q4PF4ByY786wFkYGNHebk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UVZb3sRX; arc=none smtp.client-ip=209.85.216.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f51.google.com with SMTP id 98e67ed59e1d1-2e2ed59a35eso4814057a91.0
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 10:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729616721; x=1730221521; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ApU3fV+UtKxcEYZyM6H87gs38rNpBSSNhr/eTWWEXY4=;
        b=UVZb3sRXDRYymQ3279okG0TR5rjGPhTRkxEiKH3HKZM7D7H/wMUGdSiWQnG4dy9hCz
         tEsZTNR5k+X1pEtRKjQYH9J9OLraW8rbKIHh64w4kO6Jmr0ZMzGKQk3IJP19GNJY6P4g
         zraM0/mOFxy0iFpz3w+4gQ5VBnbbODwr2PY2zFLLRztJ5k9641VI6AXVAiJKZIY2V9Ha
         v4B58wZl6+AjUHkv5Pz5nTMXfPJM2RxhIGSJOz0G/JcJLi/yh8vetN/YczuavaHSKjcS
         GMxHBETdZ9V/Fob1fSqOwkRtb2j+3zKKOePN7je2f47a9kk7xdfO0q7dKpNtHrz/CiKf
         TH9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729616721; x=1730221521;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ApU3fV+UtKxcEYZyM6H87gs38rNpBSSNhr/eTWWEXY4=;
        b=pGRB12Nk9g35QOSprFpnXa4AK40TNaj3AnaCsSLZfgd/OalPcHCSyMLkQvBecTzXRj
         lR9Lgh8q5St088SeIEE8pStg/26V8gHXmx2TCpxIZMS3aP0mulcn38WmVd8JPouDQzEG
         78GqaXbYOTrlwwA+dX1V20JGrfsMSjgnsbSPKxl6M+F6mGenCObl9sCymUWvyS2Ioggi
         8FQZBDKTI19BhAxY5Yjgd41aTPCM8PzFOnddKBkiDTfIlEHMxNqOwmX9nFarSp8l3xHJ
         AIuDOJR7k+r9ob7LDaEzFjpz7S0yqoh3FhC08Nu7dw4MAqhwHXJRHzuC5SGzlZ8UNUOw
         AX/g==
X-Forwarded-Encrypted: i=1; AJvYcCUh26nvOcAbVKNHEiU4YDuTYRR9nTdDDRRapqqJXE067n8wg2LGO1tAeg8Jpc4u0GAmhEh9IasdFjzA@vger.kernel.org
X-Gm-Message-State: AOJu0YxvcdGc8W/kkQ6xAdExlNPhKoPau+u08DxYe7SC/AY8pJ3ql702
	YCZ+MWa8XAq1MUzTPpU4k4kpeFs2E8tfesljweTrNcF4npryfir9m+RJjsUahw==
X-Google-Smtp-Source: AGHT+IHRqsW0sRulSaBfDKEdAZUSpR9q80CX2UTyubbP2o+xbSDVjhZp8NPAD81dLI0BL9hvAVo41w==
X-Received: by 2002:a17:90b:1185:b0:2e2:cef9:4d98 with SMTP id 98e67ed59e1d1-2e561a01146mr16890078a91.25.1729616721232;
        Tue, 22 Oct 2024 10:05:21 -0700 (PDT)
Received: from thinkpad ([36.255.17.224])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e5ad389146sm6432096a91.26.2024.10.22.10.05.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 10:05:20 -0700 (PDT)
Date: Tue, 22 Oct 2024 22:35:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: kw@linux.com, bhelgaas@google.com, lpieralisi@kernel.org,
	frank.li@nxp.com, l.stach@pengutronix.de, robh+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, festevam@gmail.com,
	s.hauer@pengutronix.de, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, kernel@pengutronix.de,
	imx@lists.linux.dev
Subject: Re: [PATCH v4 6/9] PCI: imx6: Make *_enable_ref_clk() function
 symmetric
Message-ID: <20241022170514.s6ejwj2w64nivqui@thinkpad>
References: <1728981213-8771-1-git-send-email-hongxing.zhu@nxp.com>
 <1728981213-8771-7-git-send-email-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1728981213-8771-7-git-send-email-hongxing.zhu@nxp.com>

On Tue, Oct 15, 2024 at 04:33:30PM +0800, Richard Zhu wrote:
> Ensure the *_enable_ref_clk() function is symmetric by addressing missing
> disable parts on some platforms.

This warrants a Fixes tag. And the patch subject should be something like,

"PCI: imx6: Fix the missing reference clock disable logic"

> Also, remove the duplicate
> imx7d_pcie_init_phy() function as it is the same as
> imx7d_pcie_enable_ref_clk().
> 

This is a cleanup, so should be a separate patch.

> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 33 +++++++++++----------------
>  1 file changed, 13 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 93e2bcf9aa0a..161daad34a94 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -388,13 +388,6 @@ static int imx8mq_pcie_init_phy(struct imx_pcie *imx_pcie)
>  	return 0;
>  }
>  
> -static int imx7d_pcie_init_phy(struct imx_pcie *imx_pcie)
> -{
> -	regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR12, IMX7D_GPR12_PCIE_PHY_REFCLK_SEL, 0);
> -
> -	return 0;
> -}
> -
>  static int imx_pcie_init_phy(struct imx_pcie *imx_pcie)
>  {
>  	regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR12,
> @@ -593,13 +586,13 @@ static int imx_pcie_attach_pd(struct device *dev)
>  
>  static int imx6sx_pcie_enable_ref_clk(struct imx_pcie *imx_pcie, bool enable)
>  {
> -	if (enable)
> -		regmap_clear_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR12,
> -				  IMX6SX_GPR12_PCIE_TEST_POWERDOWN);
> -
> +	regmap_update_bits(imx_pcie->iomuxc_gpr, IOMUXC_GPR12,
> +			   IMX6SX_GPR12_PCIE_TEST_POWERDOWN,
> +			   enable ? 0 : IMX6SX_GPR12_PCIE_TEST_POWERDOWN);
>  	return 0;
>  }
>  
> +

Spurious change.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

