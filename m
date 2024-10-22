Return-Path: <devicetree+bounces-114316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 914499AB448
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 18:46:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA981B214D4
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 16:46:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56DC71A3AB8;
	Tue, 22 Oct 2024 16:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JEHAGO7t"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDF9139CE2
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 16:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729615572; cv=none; b=ugJFZCcDSvrgZHTe0Ly816N4b66TR148D6+yfXxDK30YGsrx28+z4xZ1kGLnWaAwDah7FbIkbA698erKIxHsBMD1sgnFnq5Ew+pHAPv0Lbfs7pM3B+L6qmltknlzTnwMfW2gU3Ut7LOfkonFXle8IIZvj8WdDbOC7rlQtZOEGCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729615572; c=relaxed/simple;
	bh=Lj6PNMCNIu8hj4OyaUbUFkAeau2NGIb0esj+zs559b4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rNo3nZSxZvXIoXUrZ7o1MJjF8SqzVfejk6Vs9t2voMO0F41OHmdW7DkjyBxpMVQHZgrYg285R2JY8mXu1ayi4ZcFG8YQ/TSV+3yddSX7OpxWidrY+l1niJo0JPHco1tEaGK8tPaeKSwPjiYRNv9A/95Of/lj+14OdGge/kwJoCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JEHAGO7t; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-71e4e481692so4824248b3a.1
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 09:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729615570; x=1730220370; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pPeTnArfy3kVD9qdVEi17t1QYmpfbQ/+MP9HcRzS7Mw=;
        b=JEHAGO7t9ZbxGNMC34L2qNsuOY6jYy5CbdJV4rHwsDt4APCLljxpPcXJDzubAdwDcg
         Q2SUUjAAnWGodDVdBqR/R6fbV3fDZw3ffIDykc8fNZWVOl+Jq/SKh8VhFN0mYQCI6qXs
         x3XVYG99yZaV7UUOQLrNcYudD3vHwgIrNbThgb6hxwTkmBdmgLDAtluB7MP/2EaEioyO
         kazudFNF3wbt2r+YNpPgAwvs+jCudWdA76cMrlgng6Pf6qK6zwpRw5moH5gEIclXAeu1
         3w21u7Jg5oeQ7q+miDvhGX6gi7uSSjJHyn/VYZqT6PX9Sz2t+J7g+VPoMnCZJ4TssW1X
         MLfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729615570; x=1730220370;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pPeTnArfy3kVD9qdVEi17t1QYmpfbQ/+MP9HcRzS7Mw=;
        b=IZtbfLgkcSlWqiCLf5sFD8IU6nkCYMJBs+HS/U4WMDhhUhDf/AunD/q/DzEbBn6gB+
         iG7ljHL3zDqswFB4DJmb28sHjCY1HslSFeWk4U+WqZCXinUIbT7JBsOSo39jEQw27c+M
         HU8te/RIIpnVIkwNG1S1MZ+BtGQMeVbRBa2S0Q4Ml7v+mDTR1dIdM6UpkmQi54shnVjv
         X2ihSqLiTE+0156b3N5V2rGv1zlhfUsJSkUlzOPkM9BZKaebFlphpY685GDNED3LVZKG
         Xwmwt58T1FQniPPmC/YIdaYOZawrqqdXqq3cBhFc+eDoED6O3CO7g8lhmbz1e6nmvOxe
         dPQA==
X-Forwarded-Encrypted: i=1; AJvYcCX/JC30wF1vab9+tyGkl6PLvtOeaKpIhdYb6d9GNeVaoE/vxGex9VdfjpiJDAJAYOKXAUWSdPTn795O@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7SkCafyXd2nNi9f3mm3iHa/cyQJL3Rq7L1aKG9CJrPoqU8uRF
	oOxDu06X84fSEvnvGGTnsJ96sFw4Ku/mbn3BPaNQbFib/J6mreoimR5m1V9Ehw==
X-Google-Smtp-Source: AGHT+IHTS9yyMdGSpDBkN1ZywG4L881bK6lpw9juFK/sdg8K6E7YS49sKlIWRIuG+HaxSkMO8HbgaA==
X-Received: by 2002:aa7:88d4:0:b0:71e:b8:1930 with SMTP id d2e1a72fcca58-71ea321e7famr21475298b3a.16.1729615569937;
        Tue, 22 Oct 2024 09:46:09 -0700 (PDT)
Received: from thinkpad ([36.255.17.224])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ec13336d1sm4966249b3a.56.2024.10.22.09.46.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 09:46:09 -0700 (PDT)
Date: Tue, 22 Oct 2024 22:16:03 +0530
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
Subject: Re: [PATCH v4 2/9] PCI: imx6: Add ref clock for i.MX95 PCIe
Message-ID: <20241022164603.gndz4vgbm2sgwtfj@thinkpad>
References: <1728981213-8771-1-git-send-email-hongxing.zhu@nxp.com>
 <1728981213-8771-3-git-send-email-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1728981213-8771-3-git-send-email-hongxing.zhu@nxp.com>

On Tue, Oct 15, 2024 at 04:33:26PM +0800, Richard Zhu wrote:
> Add "ref" clock to enable reference clock.
> 
> If use external clock, ref clock should point to external reference.
> 
> If use internal clock, CREF_EN in LAST_TO_REG controls reference output,
> which implement in drivers/clk/imx/clk-imx95-blk-ctl.c.
> 

So this means the driver won't work with old devicetrees. Am I right? Then you
are breaking the DT compatibility.

You should make the clock optional in the driver.

- Mani

> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 808d1f105417..52a8b2dc828a 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -1480,6 +1480,7 @@ static const char * const imx8mm_clks[] = {"pcie_bus", "pcie", "pcie_aux"};
>  static const char * const imx8mq_clks[] = {"pcie_bus", "pcie", "pcie_phy", "pcie_aux"};
>  static const char * const imx6sx_clks[] = {"pcie_bus", "pcie", "pcie_phy", "pcie_inbound_axi"};
>  static const char * const imx8q_clks[] = {"mstr", "slv", "dbi"};
> +static const char * const imx95_clks[] = {"pcie_bus", "pcie", "pcie_phy", "pcie_aux", "ref"};
>  
>  static const struct imx_pcie_drvdata drvdata[] = {
>  	[IMX6Q] = {
> @@ -1593,8 +1594,8 @@ static const struct imx_pcie_drvdata drvdata[] = {
>  	[IMX95] = {
>  		.variant = IMX95,
>  		.flags = IMX_PCIE_FLAG_HAS_SERDES,
> -		.clk_names = imx8mq_clks,
> -		.clks_cnt = ARRAY_SIZE(imx8mq_clks),
> +		.clk_names = imx95_clks,
> +		.clks_cnt = ARRAY_SIZE(imx95_clks),
>  		.ltssm_off = IMX95_PE0_GEN_CTRL_3,
>  		.ltssm_mask = IMX95_PCIE_LTSSM_EN,
>  		.mode_off[0]  = IMX95_PE0_GEN_CTRL_1,
> -- 
> 2.37.1
> 

-- 
மணிவண்ணன் சதாசிவம்

