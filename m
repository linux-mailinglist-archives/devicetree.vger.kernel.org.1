Return-Path: <devicetree+bounces-122043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E0859CD72C
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 07:38:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7A742835C3
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 06:38:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23F6E1885AA;
	Fri, 15 Nov 2024 06:38:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D/8S7oQ2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB9517BEC5
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 06:38:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731652711; cv=none; b=EpohH5bYenrS8AOBs8jMo0mCu9SqaBwyjUpoAMUHmX2zPti2IidTwZRcsrgmiHNoZbYTTBXtAMbOMLpqbnAA8RvSkEXjWmFq7V2Fk94t0H0aXh2J+4TzFvYRVEi+v1yncnIosvEbjjrkBOJbuG+WcOENwwy/o1uumimlX9j7clE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731652711; c=relaxed/simple;
	bh=rNXtr4YimcmppNnAP0ClgueGOcouCPS66vY3HdKZhcA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JDhc1VoaVJv48kfKbGChDwn5nwuZjXgt69gA0UzNrxLqY8YF/anTEaevsf0VBE1Er9FokcMJdNLYm57z8qOT5sse3ZHiKb/1bwXJqMeuvr6RUtMXUl4AF1R4a8RBe4Z4vNjvKJpFFQCCoeoLJnzzm6fFPMrUB2yUwf57hXdi+jQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D/8S7oQ2; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-20ce65c8e13so3942685ad.1
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 22:38:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731652707; x=1732257507; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3ASYot59pnFaxW/GHMyz8Y0KBxe3S70/tiXkzx5jQ+Y=;
        b=D/8S7oQ2CUyMbx5SNleM3iK5SKXdEl+ryUHH3mI+wSImOGNoIAON8i3rn/OzsUyJws
         y3Iaijyv8h7IklSnb8jJov9CgZ1wAPnJlZSO7mMWCzD/BqkpIrBaNMoHs8QT2n/9jbh8
         ikOQ+Hh+gM0frWEomec6LP25Isk1fYw6CrZzJqbPkDQFijLpIh5tZcq4jxrDDLsXIRaa
         EqKyce8XU22gYCK3ZUDJCjRDX/lp1Bgudoa3ObJJHbkvQPfcLVz+yg3pFpRl0cfD6i71
         s/K6VlF7i6ajoghIKOctxik9HOM5i2DvBXyCaLWsd16xdNLh0F4Fs7MNgjvWh6/0nK35
         jqAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731652707; x=1732257507;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3ASYot59pnFaxW/GHMyz8Y0KBxe3S70/tiXkzx5jQ+Y=;
        b=SHxxdGwiC6l/1p2CdhjoVl89U8ZNCttu77acShTT8vPAgvPdRbpxNomVG/K7/heAQc
         uZYMzHEJrwsfLcZaYrTy3VibuBc/0J5eSIkazpgqlTInaKGxI8qCoVWOh2WYXFlgvKhv
         5gPquDcb9XpwRjMZmzaxm/+Zp/ZPlBlFvm5gajryjt8NG5tcA7Mma2BzbrHiBMmgafY2
         hH3Xa6yGN4oUASTN7MtInSj0AfZQi+jM2fZQ6WhovGgHR9TuCotd+irO0Ltc0dQWV4IQ
         0/IHjx+mh+cI4UyMbnHWH5E6/Er7o97D/uGhQ+93uxJoX9slAlm0fy0iYiAYVQCpIyMu
         Ehkw==
X-Forwarded-Encrypted: i=1; AJvYcCVjpfbyQXs1OHZjVLyEuunzVGbOWKFKC0Buvox185gfW+fD2BDZ/zgHBi4VbbJ3O19BpXsS6o287V1k@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxk9j7XmGNc+IkBW8yohY5wjFHjP8qNc0HfK/7vaKP0ydUwa90
	W1HAXfU1uvucLNlUZfISkMcY1eV++T34Kxy9QpBbxyFu556cJ8AaHDmxQVEFsA==
X-Google-Smtp-Source: AGHT+IHmK/K9KtNXF8MAKgzWlqq1Xbvw08TMatRS4xdoCN6jQH4adnR3wRNRA42mwN6r478Ju/K5qw==
X-Received: by 2002:a17:902:ecc1:b0:20c:c631:d81f with SMTP id d9443c01a7336-211d0d71690mr17005295ad.21.1731652707497;
        Thu, 14 Nov 2024 22:38:27 -0800 (PST)
Received: from thinkpad ([117.193.208.47])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-211d0ec7bc7sm6089015ad.68.2024.11.14.22.38.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Nov 2024 22:38:27 -0800 (PST)
Date: Fri, 15 Nov 2024 12:08:16 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Richard Zhu <hongxing.zhu@nxp.com>
Cc: l.stach@pengutronix.de, bhelgaas@google.com, lpieralisi@kernel.org,
	kw@linux.com, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, shawnguo@kernel.org, frank.li@nxp.com,
	s.hauer@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	kernel@pengutronix.de, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 02/10] PCI: imx6: Add ref clock for i.MX95 PCIe
Message-ID: <20241115063816.xpjqgm2j34enhe7s@thinkpad>
References: <20241101070610.1267391-1-hongxing.zhu@nxp.com>
 <20241101070610.1267391-3-hongxing.zhu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241101070610.1267391-3-hongxing.zhu@nxp.com>

On Fri, Nov 01, 2024 at 03:06:02PM +0800, Richard Zhu wrote:
> Add "ref" clock to enable reference clock. To avoid the DT
> compatibility, i.MX95 REF clock might be optional.

Your wording is not correct. Perhaps you wanted to say, "To avoid breaking DT
backwards compatibility"?

> Replace the
> devm_clk_bulk_get() by devm_clk_bulk_get_optional() to fetch
> i.MX95 PCIe optional clocks in driver.
> 
> If use external clock, ref clock should point to external reference.
> 
> If use internal clock, CREF_EN in LAST_TO_REG controls reference output,
> which implement in drivers/clk/imx/clk-imx95-blk-ctl.c.
> 
> Signed-off-by: Richard Zhu <hongxing.zhu@nxp.com>
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pci-imx6.c | 19 +++++++++++++------
>  1 file changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pci-imx6.c b/drivers/pci/controller/dwc/pci-imx6.c
> index 808d1f105417..bc8567677a67 100644
> --- a/drivers/pci/controller/dwc/pci-imx6.c
> +++ b/drivers/pci/controller/dwc/pci-imx6.c
> @@ -82,6 +82,7 @@ enum imx_pcie_variants {
>  #define IMX_PCIE_FLAG_HAS_SERDES		BIT(6)
>  #define IMX_PCIE_FLAG_SUPPORT_64BIT		BIT(7)
>  #define IMX_PCIE_FLAG_CPU_ADDR_FIXUP		BIT(8)
> +#define IMX_PCIE_FLAG_CUSTOM_PME_TURNOFF	BIT(9)
>  
>  #define imx_check_flag(pci, val)	(pci->drvdata->flags & val)
>  
> @@ -98,6 +99,7 @@ struct imx_pcie_drvdata {
>  	const char *gpr;
>  	const char * const *clk_names;
>  	const u32 clks_cnt;
> +	const u32 clks_optional_cnt;
>  	const u32 ltssm_off;
>  	const u32 ltssm_mask;
>  	const u32 mode_off[IMX_PCIE_MAX_INSTANCES];
> @@ -1278,9 +1280,8 @@ static int imx_pcie_probe(struct platform_device *pdev)
>  	struct device_node *np;
>  	struct resource *dbi_base;
>  	struct device_node *node = dev->of_node;
> -	int ret;
> +	int ret, i, req_cnt;
>  	u16 val;
> -	int i;
>  
>  	imx_pcie = devm_kzalloc(dev, sizeof(*imx_pcie), GFP_KERNEL);
>  	if (!imx_pcie)
> @@ -1330,7 +1331,10 @@ static int imx_pcie_probe(struct platform_device *pdev)
>  		imx_pcie->clks[i].id = imx_pcie->drvdata->clk_names[i];
>  
>  	/* Fetch clocks */
> -	ret = devm_clk_bulk_get(dev, imx_pcie->drvdata->clks_cnt, imx_pcie->clks);
> +	req_cnt = imx_pcie->drvdata->clks_cnt - imx_pcie->drvdata->clks_optional_cnt;
> +	ret = devm_clk_bulk_get(dev, req_cnt, imx_pcie->clks);
> +	ret |= devm_clk_bulk_get_optional(dev, imx_pcie->drvdata->clks_optional_cnt,
> +					  imx_pcie->clks + req_cnt);

Why do you need to use 'clk_bulk' API to get a single reference clock? Just use
devm_clk_get_optional(dev, "ref")

And who is going to supply the reference clock in the absence of this clockn in
DT?

- Mani

>  	if (ret)
>  		return ret;
>  
> @@ -1480,6 +1484,7 @@ static const char * const imx8mm_clks[] = {"pcie_bus", "pcie", "pcie_aux"};
>  static const char * const imx8mq_clks[] = {"pcie_bus", "pcie", "pcie_phy", "pcie_aux"};
>  static const char * const imx6sx_clks[] = {"pcie_bus", "pcie", "pcie_phy", "pcie_inbound_axi"};
>  static const char * const imx8q_clks[] = {"mstr", "slv", "dbi"};
> +static const char * const imx95_clks[] = {"pcie_bus", "pcie", "pcie_phy", "pcie_aux", "ref"};
>  
>  static const struct imx_pcie_drvdata drvdata[] = {
>  	[IMX6Q] = {
> @@ -1592,9 +1597,11 @@ static const struct imx_pcie_drvdata drvdata[] = {
>  	},
>  	[IMX95] = {
>  		.variant = IMX95,
> -		.flags = IMX_PCIE_FLAG_HAS_SERDES,
> -		.clk_names = imx8mq_clks,
> -		.clks_cnt = ARRAY_SIZE(imx8mq_clks),
> +		.flags = IMX_PCIE_FLAG_HAS_SERDES |
> +			 IMX_PCIE_FLAG_SUPPORTS_SUSPEND,
> +		.clk_names = imx95_clks,
> +		.clks_cnt = ARRAY_SIZE(imx95_clks),
> +		.clks_optional_cnt = 1,
>  		.ltssm_off = IMX95_PE0_GEN_CTRL_3,
>  		.ltssm_mask = IMX95_PCIE_LTSSM_EN,
>  		.mode_off[0]  = IMX95_PE0_GEN_CTRL_1,
> -- 
> 2.37.1
> 

-- 
மணிவண்ணன் சதாசிவம்

