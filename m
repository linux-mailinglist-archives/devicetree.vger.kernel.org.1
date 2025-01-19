Return-Path: <devicetree+bounces-139510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF62CA160A5
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 08:03:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E0963A6B66
	for <lists+devicetree@lfdr.de>; Sun, 19 Jan 2025 07:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5976918C928;
	Sun, 19 Jan 2025 07:02:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m4xguhQA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A60B16BB5B
	for <devicetree@vger.kernel.org>; Sun, 19 Jan 2025 07:02:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737270177; cv=none; b=ggmsDmu8d987NMHfnHyEqcS7MYW48SDUI+0CSKpFpopFKeQ4on59/AHUYnlloGOF1PV1IuFmDkpEUD+tyCYiezxK16EQw8jJNSjGe1Y8vbA5Me9yzBHc/Mxrja4m/h1+TdGKQxEse67G4eoLFVH3/vNmG82EgjYWRWRuk+Ntt9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737270177; c=relaxed/simple;
	bh=9Uyh20Bo/JCrzKWgQJoe3V6rjzekT4NllWMa1CNe8Dc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GHzEALOIiD110kJAZhk32GrQj2eHcZiVzjYaQwsl3q79tFjV0K3cfz3YeUZzbwjQ6llayccrxU8UfxormtzvABpG9kpjdXHwBq0dDD0OO0MRHlDbbjcXjYQ8B8xWQqy6gmrlhREdJlEmHYEzhjAO5ZcY8QOlD9y8M8XnNEAtD+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m4xguhQA; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2166360285dso66987865ad.1
        for <devicetree@vger.kernel.org>; Sat, 18 Jan 2025 23:02:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737270174; x=1737874974; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vMJ3GX6dkOYZdUXVc1wm3huqORVLg1qLuaKka3o+Bqk=;
        b=m4xguhQA6zslWXCZ5CAn+/vmjYGO3NoYP0VoMkFvompl8Lau2cJ4gmWpTXhMGyVSv7
         vsBFlgUejqWLwKdhcSrGggJ4XCDC9O1Ng3aci/ZLtqulrOvK7QR6e50ezOxo42hImoTs
         SirAHKYEEokNYVLadGULUGttsMDvvqCkaV3ul9LBaVVpQsBAHyTkhnQS8Rt1+KfIItB6
         KnYjpOReHHKbJJd5iQp8EnmxGBibKtExd3pBEk8WUg1zP1lK6HPKc5gtdixOxTOA5oJU
         II1QaRGhBQLwLztPpob1TMWZd9Y7bBYj6SOIs9shmrEyQ5OkzixGyL1rJ+5WC0O4p5Hq
         d6LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737270174; x=1737874974;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vMJ3GX6dkOYZdUXVc1wm3huqORVLg1qLuaKka3o+Bqk=;
        b=V+gTyn6SuL5A2I8RUDj6Y9injkByCT1VGO7JoQN0aWb+ug1IfnZ8DULSLizPkiwSkw
         8H7AlC6bhrDm0c8YRZfbqLpu6/WMa1sw+LqrUo1lgR9N3DqPxDBwR/nEgLCtXySkvCUa
         avoj2cx7w6ofG0hlYA0glBm8OcyXeh9u55N//Gx/iwKSrdYrBz+oCdf2+Ug5zlPD4DQT
         dg7YSG9zvz8sfRd+vOROUL0fkPlaW7GhxUd3Xg00nqcMy5cPQsA05+WR99TN6hYBsI/h
         o/GC6Gg/pOfOLBk1hf8AfF42YIXwktSJjW8ExdM+mq9ZSzUILlFkCn4Zk6BhARFSIiBY
         zQGA==
X-Forwarded-Encrypted: i=1; AJvYcCU4mdJPLUXEF7/WCicd2LVzXZSW2691d1ea+VCgmuPolz70b43uB3FQcl+fKbiOsQr9bSR3dBdThuH5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+gzgC70oNQ+8saW8qNe9ogfNBGGFD07JtEiHh8V85m5k6x0yC
	PE1b9e0YUdlOXPQc2kPjwiLtIA9X+wZCeAdaCw92xTJ0EAcb1dj93YbBoA3A8yIiPreUnaiBz9U
	=
X-Gm-Gg: ASbGnct6E16LmRwrZWEdzPx4uVVfgSbJziJRvQCXABPALHP+/j0SJgl2fqCpsqiUjzL
	wdkQ7jbNtBQ6WErna+ocV+pQT5UHrGeUSvM4R3Ku0hSxvD9XL0hxrSTT+/pGBuRNLN5zYl9+cXS
	isMKy84zXaFdKWJ5Ww+C8GBB9rHfdVaG9kUFOFkjXpZH976JyJxmw1bZcuamq9+c7NLiCcT2Oa3
	8ENE2vkDGzbKAqvAVvXIjo8nfupwtiuXrxFoU2K5OVPuV/qCqAtUzpGWSQu8VQj15/gFOzW6qUn
	kQll4Q==
X-Google-Smtp-Source: AGHT+IEeTs48whwEN7rNg39TN9hpGQKSWq0W/VdR6tyAMeUyYliEEBAyt6ics9gbcWZ/8208wLwfuw==
X-Received: by 2002:a17:903:22cb:b0:21b:d105:26a5 with SMTP id d9443c01a7336-21c355becd3mr125597245ad.38.1737270173884;
        Sat, 18 Jan 2025 23:02:53 -0800 (PST)
Received: from thinkpad ([120.56.195.253])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21c2d3dd93esm40763455ad.164.2025.01.18.23.02.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Jan 2025 23:02:53 -0800 (PST)
Date: Sun, 19 Jan 2025 12:32:46 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lpieralisi@kernel.org,
	kw@linux.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, frank.li@nxp.com,
	s.hauer@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	kernel@pengutronix.de, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v7 02/10] PCI: imx6: Add ref clock for i.MX95 PCIe
Message-ID: <20250119070246.yfxogn4vv3jqfvzb@thinkpad>
References: <20241126075702.4099164-1-hongxing.zhu@nxp.com>
 <20241126075702.4099164-3-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241126075702.4099164-3-hongxing.zhu@nxp.com>

On Tue, Nov 26, 2024 at 03:56:54PM +0800, Richard Zhu wrote:
> Add "ref" clock to enable reference clock. To avoid breaking DT
> backwards compatibility, i.MX95 REF clock might be optional. Use
> devm_clk_get_optional() to fetch i.MX95 PCIe optional clocks in driver.
> 
> If use external clock, ref clock should point to external reference.
> 
> If use internal clock, CREF_EN in LAST_TO_REG controls reference output,
> which implement in drivers/clk/imx/clk-imx95-blk-ctl.c.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 16 +++++++++++-----
>  1 file changed, 11 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 385f6323e3ca..f7e928e0a018 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -103,6 +103,7 @@ struct imx_pcie_drvdata {
>  	const char *gpr;
>  	const char * const *clk_names;
>  	const u32 clks_cnt;
> +	const u32 clks_optional_cnt;
>  	const u32 ltssm_off;
>  	const u32 ltssm_mask;
>  	const u32 mode_off[IMX_PCIE_MAX_INSTANCES];
> @@ -1306,9 +1307,8 @@ static int imx_pcie_probe(struct platform_device *pdev)
>  	struct device_node *np;
>  	struct resource *dbi_base;
>  	struct device_node *node = dev->of_node;
> -	int ret;
> +	int i, ret, req_cnt;
>  	u16 val;
> -	int i;
>  
>  	imx_pcie = devm_kzalloc(dev, sizeof(*imx_pcie), GFP_KERNEL);
>  	if (!imx_pcie)
> @@ -1358,9 +1358,13 @@ static int imx_pcie_probe(struct platform_device *pdev)
>  		imx_pcie->clks[i].id = imx_pcie->drvdata->clk_names[i];
>  
>  	/* Fetch clocks */
> -	ret = devm_clk_bulk_get(dev, imx_pcie->drvdata->clks_cnt, imx_pcie->clks);
> +	req_cnt = imx_pcie->drvdata->clks_cnt - imx_pcie->drvdata->clks_optional_cnt;
> +	ret = devm_clk_bulk_get(dev, req_cnt, imx_pcie->clks);
>  	if (ret)
>  		return ret;
> +	imx_pcie->clks[req_cnt].clk = devm_clk_get_optional(dev, "ref");
> +	if (IS_ERR(imx_pcie->clks[req_cnt].clk))
> +		return PTR_ERR(imx_pcie->clks[req_cnt].clk);

I think you should just switch to devm_clk_bulk_get_all() instead of getting the
clks separately. As I told previously, the DT binding should ensure that correct
clocks for the platforms are defined in DT and the driver has no business in
validating it. Driver should trust the DT instead (unless there is a valid
reason to not do so).

>  
>  	if (imx_check_flag(imx_pcie, IMX_PCIE_FLAG_HAS_PHYDRV)) {
>  		imx_pcie->phy = devm_phy_get(dev, "pcie-phy");
> @@ -1509,6 +1513,7 @@ static const char * const imx8mm_clks[] = {"pcie_bus", "pcie", "pcie_aux"};
>  static const char * const imx8mq_clks[] = {"pcie_bus", "pcie", "pcie_phy", "pcie_aux"};
>  static const char * const imx6sx_clks[] = {"pcie_bus", "pcie", "pcie_phy", "pcie_inbound_axi"};
>  static const char * const imx8q_clks[] = {"mstr", "slv", "dbi"};
> +static const char * const imx95_clks[] = {"pcie_bus", "pcie", "pcie_phy", "pcie_aux", "ref"};

And these static clock defines will go away too.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

