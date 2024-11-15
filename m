Return-Path: <devicetree+bounces-122059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5C39CD9B6
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 08:13:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BC1401F21526
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 07:13:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D2F187561;
	Fri, 15 Nov 2024 07:13:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fgnh4i6C"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE3B183CC7
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 07:13:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731654790; cv=none; b=E2IUSGhaHOD+85wBv0NeD57Q8MlZ7RTmkdshlcIb1XTdrjnIGONoDFMsb3k7yWkiqeA7KsIJX+TaeRbJaSmO/3Bv1dnzGRsOx5eJWyiXAq2TE18qZ7xy0b5Z9WnDF9cnDCVsMa0RLzNSMTYM8+ORC5D6AaOHxhEvAfq5XeJmn8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731654790; c=relaxed/simple;
	bh=hW+xKYnvERyaDsTFLZMZ1tONEaJp5t202N+XMS1PyZg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DMdzLhuzIwTBYHR/HInLfFFkw4E4frJby8xriMqJy2A+lf7JlyIwoumCSmutA9IU2cydIYdSQB84ockYFXr7hn7f83aP2X/FK5+8vdQTVCdPfXmbic4cX1R2g/gYBZnogecuBxi+y8AwqQngeecJhIBp22rj0JqbgGsCdMvHLhY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fgnh4i6C; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-20c803787abso12642895ad.0
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 23:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731654788; x=1732259588; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+1Dz/OYJenLwT42NvbYgc5y6jl1Qc/DY1ubS7Ysj0ds=;
        b=fgnh4i6CBkH0XuzUq7QfxiKTzpAIKK+ByAXda6eyrKt8fosdq6vQ2K5Jv6ddLSbx2I
         o9PnFQFfjUvXZ2m8BtTUVcFnxvHxLA+FdXQtAbF4w//UMRDnLNZf63cxtaMTDYlzu3W5
         SD3sUCwD5uoxqJuKhJWLrSjdPoao4rHxfBzj/j1s6XtBSnAqje3cDGdbZl4DaJds8m9/
         Xv1dRyiOflKA5IHKKLiDHGbFCUq1RMqYs3D9g+3C7Cz5OznroLP9IIrsUlh0h6l1MyZn
         EV8oczbpnWtVJX07nlFr551iB0XyTptUdEJkzFPiJRwziDPD09nDsFhzpV9geBlXHBLk
         qmSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731654788; x=1732259588;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+1Dz/OYJenLwT42NvbYgc5y6jl1Qc/DY1ubS7Ysj0ds=;
        b=JXsDJZLT0BLcG/kc4rN7WaDisO0rIbtfwxGIoElyRz8aACC5M+BBwAgGjZxGKGOftI
         mN/N37kIv+wRPIa36EMQOTOG8+otev0JW2vKKq9JYlCkqMp56X3il/DX/YWUqUQZBKhX
         wpOTM+iFJ4tnUiHLNijOgaFtzRg2wPuaKcB1y0oFgIjT7OSmV6lIo0CP61hULF6lRkr7
         1JEcOPjQOmE7D3i2OQC9d4DuGresCvoq4h1C2aHDYHYqUaiuAsOR6VO95mRXHl1D3v2Y
         vw3W3SK9tP14eUgwiv4QnH4DgW5alKIo5U2Zpcn/x1WW5lCX6zw30wa2stnRC68JlnIy
         dGGg==
X-Forwarded-Encrypted: i=1; AJvYcCW+BqB6hGMgyE9dC/E5chQsOkBRuCxLc7W+M7ak0HAoMT2XXw37SBxg/x9/ybiVcZe7WKWS++nvX+X2@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6124+G3bkP1xW84hL+shMLIPkNgN4QAlRJXJoplkeQJIf7JVX
	nvTaeDa72GEi29+y9qQ/pVIfn6yCyIjhH+YqiXubdDjm3Y/f4m0NcmFt3IAibA==
X-Google-Smtp-Source: AGHT+IGXzZZGlt+G0O4qFrwjzRuyPJCE0eMc4484n4Is2j1zfs167pZc2pf+Scw0xdwwWEA3jG14tw==
X-Received: by 2002:a17:903:2282:b0:20c:7196:a1e9 with SMTP id d9443c01a7336-211d06f44acmr34058055ad.13.1731654788551;
        Thu, 14 Nov 2024 23:13:08 -0800 (PST)
Received: from thinkpad ([117.193.208.47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211d0f56dd3sm6529845ad.263.2024.11.14.23.13.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 23:13:08 -0800 (PST)
Date: Fri, 15 Nov 2024 12:42:57 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lpieralisi@kernel.org,
	kw@linux.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, frank.li@nxp.com,
	s.hauer@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	kernel@pengutronix.de, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 09/10] PCI: imx6: Add i.MX8MQ i.MX8Q and i.MX95 PCIe
 PM support
Message-ID: <20241115071257.ihticiqzmyn5c3lu@thinkpad>
References: <20241101070610.1267391-1-hongxing.zhu@nxp.com>
 <20241101070610.1267391-10-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241101070610.1267391-10-hongxing.zhu@nxp.com>

On Fri, Nov 01, 2024 at 03:06:09PM +0800, Richard Zhu wrote:

In subject, do not use "PCIe PM" as it could imply "PCI-PM". Just use "PM"
instead. Prefix already mentioned that it is a PCIe driver.

> Add iMX8MQ i.MX8Q and i.MX95 PCIe suspend/resume support.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 3c074cc2605f..cf2a9918537e 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -1498,7 +1498,8 @@ static const struct imx_pcie_drvdata drvdata[] = {
>  	[IMX8MQ] = {
>  		.variant = IMX8MQ,
>  		.flags = IMX_PCIE_FLAG_HAS_APP_RESET |
> -			 IMX_PCIE_FLAG_HAS_PHY_RESET,
> +			 IMX_PCIE_FLAG_HAS_PHY_RESET |
> +			 IMX_PCIE_FLAG_SUPPORTS_SUSPEND,
>  		.gpr = "fsl,imx8mq-iomuxc-gpr",
>  		.clk_names = imx8mq_clks,
>  		.clks_cnt = ARRAY_SIZE(imx8mq_clks),
> @@ -1536,7 +1537,8 @@ static const struct imx_pcie_drvdata drvdata[] = {
>  	[IMX8Q] = {
>  		.variant = IMX8Q,
>  		.flags = IMX_PCIE_FLAG_HAS_PHYDRV |
> -			 IMX_PCIE_FLAG_CPU_ADDR_FIXUP,
> +			 IMX_PCIE_FLAG_CPU_ADDR_FIXUP |
> +			 IMX_PCIE_FLAG_SUPPORTS_SUSPEND,
>  		.clk_names = imx8q_clks,
>  		.clks_cnt = ARRAY_SIZE(imx8q_clks),
>  	},
> -- 
> 2.37.1
> 

-- 
மணிவண்ணன் சதாசிவம்

