Return-Path: <devicetree+bounces-114336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1079AB4E0
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 19:21:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 62A161F24461
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 17:21:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2BBBA1BDA87;
	Tue, 22 Oct 2024 17:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jVpD6zsT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com [209.85.214.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3E171BD4E5
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 17:21:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729617668; cv=none; b=cMzW0akNGgn5Za6u236AWDdl68+n72J3zyiBc70/+BRX9wclH0fZYjiGeoyuGM3duaekpEbIpQDtGRNEf/t78+k89ECgEwSBa2PsWoAAWrvAeaszSYI1VqCM9Pws2WtISOS36BmKoBU1RtrJIdb8Sq+5GTtJLgMQp//VoSPrtBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729617668; c=relaxed/simple;
	bh=ROz6wyxkN00RlAqx/HywNHHOFDd4bvEy70xBiafp8II=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z4qxiVbEuAfnTV/SeU79HD8ZPa9U6D6myeUPO4oahI9L8ISA8V29nzcI5F2N+0G7Lzb0ACDLVqx3UVoRHqalWGz9UVmtbV3RZbcrRG8WDVH9CsLdKtR3B60xVSjKW06/lh5zJVC/guvXsH3tzZCCNkqoLRhH/VMGLslADz04LvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jVpD6zsT; arc=none smtp.client-ip=209.85.214.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f171.google.com with SMTP id d9443c01a7336-20cd76c513cso49581435ad.3
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 10:21:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729617666; x=1730222466; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=EYyTRaKGn0PVJQtdVRYtFHSxQ4TFBsfP/i6X4tjAirc=;
        b=jVpD6zsT5sIRfE+LsqQR3PG94TPbxqKODIw1x40UNimrCAjYq1XGAmGQnXfY6NCJMk
         WrvleReAbyQeQd3+qnEQPS8to6NrzgOJrAWNsJE/OCRdjatoIdguxmTV1UAyTyHArmaX
         oAXUbk3Qj9GMZgSbR5Bov1KqdU7uNqiPBr3tsxgqDb8tFqq2TThaMb6sRmzAmnIj9HAW
         M7oxfMsnjyjVXV4FBis876K5tH+Iy9fQzA/9Zrc3VhBZUhQs7gUBWzefL7Gz5CRQMF/Y
         BGaSW03sBAqAnbp0BGFWgHvuKCqxiWEn/57ejEwaDalcBqKhUD7Pqtv0CFOQLukK9Jkk
         qaOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729617666; x=1730222466;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EYyTRaKGn0PVJQtdVRYtFHSxQ4TFBsfP/i6X4tjAirc=;
        b=ST83XZCpBBguXLI2ePNke9wUlnkCsu0A292bf3VTgUX/OCq+zWmJzr4fZH2pAXJxh6
         C8vfjieCASv3NhXfsDMoqAiErWF/7J0F7PaqhP/17tynlN9koUCJoV9QKK9OuojGVQ1q
         YyDYUvboqsJxCO+8cYxkFa7OjYfdhmwS8MP1DyNUL2KVyGs2QEME+Q9byc8TUWzegwgV
         a5uETAyDefE4Q+Njeq6voPfXlGP0GdSlFooZUXigdcSvKp+BiDKG7xFo6zZ5y0+Cj35t
         172ZRKLLXtNqBrNAw0JqPIGTlE24rILJ8ED5Jet3GLvD2F0k6305GrH433DXu+2nZPf8
         0EBg==
X-Forwarded-Encrypted: i=1; AJvYcCUhdf/GnFikr18D4V0EGDJKjLLnlu/SiCoz6uSMwIJ4OfZGA5adK5/ektRKN1tHVLR7J/k9TFovnYhK@vger.kernel.org
X-Gm-Message-State: AOJu0YzLIu85hs8/nTyvILPuh4IEUm2e2aQQSMzqRftGxe6vc2/pdqLn
	yQ3PyKJAd4ZqvYQVatNA8nNwnvKm/7LstxqeEivwbuzHmkDsYCe2POpvPCMbzw==
X-Google-Smtp-Source: AGHT+IEFhMlMl+SifAdPrVg99u83uazLX/A9KcHRvv7Tuv35akUo2976i/YilQVOuBqYd19nUmnDHQ==
X-Received: by 2002:a17:902:da85:b0:20b:6f04:486f with SMTP id d9443c01a7336-20e9489afa8mr44178795ad.18.1729617666017;
        Tue, 22 Oct 2024 10:21:06 -0700 (PDT)
Received: from thinkpad ([36.255.17.224])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20e7eeef535sm45591245ad.44.2024.10.22.10.21.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 10:21:05 -0700 (PDT)
Date: Tue, 22 Oct 2024 22:50:59 +0530
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
Subject: Re: [PATCH v4 9/9] arm64: dts: imx95: Add ref clock for i.MX95 PCIe
Message-ID: <20241022172059.wuw5xel7m4vobarq@thinkpad>
References: <1728981213-8771-1-git-send-email-hongxing.zhu@nxp.com>
 <1728981213-8771-10-git-send-email-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1728981213-8771-10-git-send-email-hongxing.zhu@nxp.com>

On Tue, Oct 15, 2024 at 04:33:33PM +0800, Richard Zhu wrote:
> Add ref clock for i.MX95 PCIe.
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
> +			power-domains = <&scmi_devpd IMX95_PD_HSIO_TOP>;
> +		};

This is an internal reference clock, right? Please mention it in patch
description since the controller supports external reference clock also.

- Mani

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

