Return-Path: <devicetree+bounces-122060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AD42B9CD9BB
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 08:16:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 21D7C282AEC
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 07:16:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 226A617F4F2;
	Fri, 15 Nov 2024 07:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yvB6UEgy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 904D71DFFD
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 07:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731654978; cv=none; b=AuHT6HG23iH0ap3goQTOT2wVb19R8QS8l1wzgRj30DFpPR3p3W+5NgFEGDS61dLY0y4gzQVuY1vVLGrwKoCvMGgs4qbbfxrUFbEmGl4FVDWfrrOgLuCyejw4yUH00ClzAI31hDklTqh4rfmGkzz7BKoZyy4D7PYpEn9IxH0NcF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731654978; c=relaxed/simple;
	bh=/BFAzfbNwNggHRas2O0NhAg3XSMOblIbua33XQGyfkI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=n2WDygNK0G+iEyZZrMMBHqy0IXVnJlW/NQbUaREqxoN+5bR9pD+awNZlacV+gGntZTypvrcV4mW3nKChmvLrtlBIy1hBYwMevaC6weRLX/UGxRGRg+4fGEK577F+bnVOP0JXjSJWNb7CBPgIur6i51wyA0qdQbW43Z8/7ASonaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yvB6UEgy; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-723f37dd76cso422975b3a.0
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 23:16:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731654976; x=1732259776; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LiTwGr+7x8eq6OawzeIifFURDeSsU/2WLtRWg3Kwch8=;
        b=yvB6UEgy27lmSHNaw+JuHQhhvR0bbgF7exeXNK2Hc2MPJilqLYsqidJKKtdLjd1yGh
         xErbOzYFNW6ANFC2pG9XXlTcAQ0yXNblgNgu2IVVPkw3I3d2dG0j/kWm7vGJyJYpZmRQ
         CgnDDeJ507DqIiUW+nEOBwSClW3WQqPlXfVMfk2Nldz7nejSuNxtRvbeQGzEqROXpsIY
         rSi2MxFsgVHdzniAXVeaQE/kvjBezzzpmC1Ikq/eGjVhpbJb+/8nIxb6OrNq5lGPLMJo
         WFp81mVnf7WQZqpsMkovHVuFgrP6QWsgiziAKz/EKcdaamY7/cvOxAx7Mme4dUihknXw
         UhFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731654976; x=1732259776;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LiTwGr+7x8eq6OawzeIifFURDeSsU/2WLtRWg3Kwch8=;
        b=Fsc5RuGuwGMSCgolgeficeqd0TH1micO69YXIm4QxdXLwdHu8TYemZzmU2kRL2mwZU
         RYaj9BgCNQO0i3Cw94uZiNYKNnqWbcY5yary3fXG1N79esNHvgxn1nY11wCcL8lscFzE
         PmeNg+22o4eeIhZJuZ0d/JXGE7Ifh1JcC8T+dpEuly0YgEsY+5U2xw8dR+goGmpdGcEG
         igwaF9xkjxirBoTWXIvxeXRRH750Ck1jngXGRC8LyC+EUoDFooaaSv6aOWm9Kxnlwu33
         mPwhLvUs0wHJRmvYzJd82tPTruDIiEXJ2wGjO2DVrRfTtXqaM+h50mptAi+Kd/9gu7xj
         m/Fg==
X-Forwarded-Encrypted: i=1; AJvYcCW6ifz/whnzj1alE21mR9HGnc1XNHtfeJwwlVWnidGIydi1hzOb76k3lyen0CcmQbfbOlL54WfxesSe@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/wIXtt2PozyhWdKPl/n1z9hdlQ//oAUBSv+p7/VUL/ZJ042rT
	avccNVIlGtpVdt/+ILDJZu7vC9KBmjzd+5hgtcugp5rnixwCJmXucXZrN+76FQ==
X-Google-Smtp-Source: AGHT+IFUGFVKPN4BKyWiSKTekpGzXkV6s3Ozr7ZGuoQIwQMzFc7uRDlF/nAJCTwPmnCNLPy5shFpNg==
X-Received: by 2002:a05:6a00:c91:b0:71e:693c:107c with SMTP id d2e1a72fcca58-72476baf03bmr2003025b3a.11.1731654975730;
        Thu, 14 Nov 2024 23:16:15 -0800 (PST)
Received: from thinkpad ([117.193.208.47])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724770ee9dfsm718640b3a.9.2024.11.14.23.16.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 23:16:15 -0800 (PST)
Date: Fri, 15 Nov 2024 12:46:05 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lpieralisi@kernel.org,
	kw@linux.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, frank.li@nxp.com,
	s.hauer@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	kernel@pengutronix.de, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 10/10] arm64: dts: imx95: Add ref clock for i.MX95 PCIe
Message-ID: <20241115071605.qwy4hfqmrnaknokl@thinkpad>
References: <20241101070610.1267391-1-hongxing.zhu@nxp.com>
 <20241101070610.1267391-11-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241101070610.1267391-11-hongxing.zhu@nxp.com>

On Fri, Nov 01, 2024 at 03:06:10PM +0800, Richard Zhu wrote:
> Add ref clock for i.MX95 PCIe here, when the internal PLL is used as
> PCIe reference clock.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  arch/arm64/boot/dts/freescale/imx95.dtsi | 18 ++++++++++++++----
>  1 file changed, 14 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx95.dtsi b/arch/arm64/boot/dts/freescale/imx95.dtsi
> index 03661e76550f..5cb504b5f851 100644
> --- a/arch/arm64/boot/dts/freescale/imx95.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx95.dtsi
> @@ -1473,6 +1473,14 @@ smmu: iommu@490d0000 {
>  			};
>  		};
>  
> +		hsio_blk_ctl: syscon@4c0100c0 {
> +			compatible = "nxp,imx95-hsio-blk-ctl", "syscon";
> +			reg = <0x0 0x4c0100c0 0x0 0x4>;
> +			#clock-cells = <1>;
> +			clocks = <&dummy>;

What does this 'dummy' clock do? Looks like it doesn't have a frequency at all.
Is bootloader updating it? But the name looks wierd.

- Mani

> +			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
> +		};
> +
>  		pcie0: pcie@4c300000 {
>  			compatible = "fsl,imx95-pcie";
>  			reg = <0 0x4c300000 0 0x10000>,
> @@ -1500,8 +1508,9 @@ pcie0: pcie@4c300000 {
>  			clocks = <&scmi_clk IMX95_CLK_HSIO>,
>  				 <&scmi_clk IMX95_CLK_HSIOPLL>,
>  				 <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
> -				 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
> -			clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux";
> +				 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>,
> +				 <&hsio_blk_ctl 0>;
> +			clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux", "ref";
>  			assigned-clocks =<&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
>  					 <&scmi_clk IMX95_CLK_HSIOPLL>,
>  					 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
> @@ -1528,8 +1537,9 @@ pcie0_ep: pcie-ep@4c300000 {
>  			clocks = <&scmi_clk IMX95_CLK_HSIO>,
>  				 <&scmi_clk IMX95_CLK_HSIOPLL>,
>  				 <&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
> -				 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
> -			clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux";
> +				 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>,
> +				 <&hsio_blk_ctl 0>;
> +			clock-names = "pcie", "pcie_bus", "pcie_phy", "pcie_aux", "ref";
>  			assigned-clocks =<&scmi_clk IMX95_CLK_HSIOPLL_VCO>,
>  					 <&scmi_clk IMX95_CLK_HSIOPLL>,
>  					 <&scmi_clk IMX95_CLK_HSIOPCIEAUX>;
> -- 
> 2.37.1
> 

-- 
மணிவண்ணன் சதாசிவம்

