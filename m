Return-Path: <devicetree+bounces-225856-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C1420BD18F4
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 07:59:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6D6903B2FBB
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 05:59:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA97E2DEA8E;
	Mon, 13 Oct 2025 05:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="Jve/6XfL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay58-hz1.antispameurope.com (mx-relay58-hz1.antispameurope.com [94.100.133.229])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B21622DEA6F
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 05:59:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.229
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760335147; cv=pass; b=P9ovw34OLOVGNZtnXkHf3ledpBxV3fuLWt72gt9m+j1Gd5uqJKcbAYwz0Wr7OvpWTBNy6ALt3PbuvflMdeMdfDWsRDvIRdgfkY37sfEdPN5SOrdvIF50CeVUVGvcxLIi3lXS+VYZHFA8NwEnOlEBulilvgll2vTz1WEu2bDXV5g=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760335147; c=relaxed/simple;
	bh=X8AGmIyFH62+8FCE1sx2DQx4ow/3aWax6JFtbnR28t8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QxVof+50i5UCZ+qPZYf5Em+KXLMx1OqMMwfmabVgr6QzW1fTM3vth0RkpKdpFHElb/Nfhi+kunMQ3Rga/hzwcc5sIIE/g4fsLl8paYk93UpCi3ihrOEB3PZnSNbK7BKfWjMLbDSvj1VcffbAak+ikcLKsd3oqKFDFfrTV/6Q3mo=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=Jve/6XfL; arc=pass smtp.client-ip=94.100.133.229
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate58-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=qVaz1zwGuDSR6vm0lLRYYp/IrSSmnl0g1UxK/5AowGY=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1760335103;
 b=Lq2V5msnpintQSeKaEdmmu7Li4W0rKjmt9+EKo+poAg9P+4ks/SXoLP8pnWSl3Wx8mVyPSxS
 zxuav+P9YuwNl7DVQaBqVsxPD2/UTJyEMA+nA4HsGGyNISQIh/BJE+KcfCOFxzgz7c90EwkcCEB
 vGuhWyJSHKcb0hB74zUeTnfzHXiDUDTHboBeWQBqwQI+rST/KpR+a0Vwa4oDbqJHph7oH8VcmgZ
 5Q6BQmsasMQgefopdnV06P94Z/5ryOqgPOkNadch6iq2MzhtUB7hq1GJj6UJsCjkYyc48YF1h/Q
 St6sK2yyS3bKnV9IokGWy9S51z+8g5bIhhtjv6oS28sXQ==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1760335103;
 b=p4TZ4MLfgo68XGVOCR+6p1towKzrqQlhWwISLtFm+CIC8mBnateqntm61n7UX46yTsuymMZm
 jI0uDyTeocrokcJG/gCsBOG3nPC+l5VKjb973IKsG7Kwul736eWMdD1uyxyxPPltSOogGjFT5xw
 h41UZIiOE1neuK7aNaoTO6+8Sfit5FX1Nd8UrXmVN9fe5iAhhWoFAM4amX1dDUwkj0oN1m1SMVS
 4Pl6zjzb56K6/2vGxaNtpQGemGJ9XM1veTAJRvz56PKphJsfp3EjAkdcmq5J3rndPvlSg7jv4kt
 hoSeCTmcrqEC1fASS5hFdPrQbE6zcZ/Mp4iMACx6G3alw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay58-hz1.antispameurope.com;
 Mon, 13 Oct 2025 07:58:22 +0200
Received: from steina-w.localnet (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: alexander.stein@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id DC35522054B;
	Mon, 13 Oct 2025 07:58:12 +0200 (CEST)
From: Alexander Stein <alexander.stein@ew.tq-group.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Li Jun <jun.li@nxp.com>,
 Abel Vesa <abelvesa@kernel.org>, Peng Fan <peng.fan@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Xu Yang <xu.yang_2@nxp.com>, Frank Li <Frank.Li@nxp.com>,
 Xu Yang <xu.yang_2@nxp.com>
Subject:
 Re: [PATCH v2 3/4] phy: fsl-imx8mq-usb: support alternate reference clock
Date: Mon, 13 Oct 2025 07:58:12 +0200
Message-ID: <2805917.mvXUDI8C0e@steina-w>
Organization: TQ-Systems GmbH
In-Reply-To: <20251010-usb-phy-alt-clk-support-v2-3-af4b78bb4ae8@nxp.com>
References:
 <20251010-usb-phy-alt-clk-support-v2-0-af4b78bb4ae8@nxp.com>
 <20251010-usb-phy-alt-clk-support-v2-3-af4b78bb4ae8@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-cloud-security-sender:alexander.stein@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: alexander.stein@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay58-hz1.antispameurope.com with 4clRTy0D7HzQkxm
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:7d5dfab00112230566df6a60cb391a85
X-cloud-security:scantime:2.228
DKIM-Signature: a=rsa-sha256;
 bh=qVaz1zwGuDSR6vm0lLRYYp/IrSSmnl0g1UxK/5AowGY=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1760335102; v=1;
 b=Jve/6XfLzd3w6J20RIRCZW9jvg+YA0KfPZtV1KLCd3QP5Ysc/l9nTPwbBDRLGHaOrDJguQuJ
 H7ZjoRA5IqNgK2amyVm0teDdCGJtyK+IJVliS7nriajV/8BiPvbgVMRInZ/Z3SqRuNuk1mhsWMB
 FmOyvQMic5mQ7N1RzI++6HJ/mAQeo8QT9RH0qkmDMGkc6PlGSvunaKyen1Hevwvk1HywxEsMu6z
 gCbVgBT3gj9+G6HVLQ40n9VD/O5mcs/9JDdAp+IOi4ky5HIR6z70I5XIvpXtFG1Y4a+xcyUVVyq
 2py4036QliWQU2e7u6kSrfd6Fciye23qnpGvAhscaFFUw==

Am Freitag, 10. Oktober 2025, 13:01:12 CEST schrieb Xu Yang:
> This phy supports both 24MHz and 100MHz clock inputs. By default it's
> using XTAL 24MHz and the 100MHz clock is a alternate reference clock.
> Add supports to use alternate reference clock in case 24MHz clock
> can't work well.

This driver supports imx8mx and imx8mp as well. Do these SoC also support
the alternative clock?

Best regards
Alexander

> 
> Reviewed-by: Frank Li <Frank.Li@nxp.com>
> Signed-off-by: Xu Yang <xu.yang_2@nxp.com>
> 
> ---
> Changes in v2:
>  - add Rb tag
> ---
>  drivers/phy/freescale/phy-fsl-imx8mq-usb.c | 23 +++++++++++++++++++++--
>  1 file changed, 21 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> index b94f242420fc733cd75abef8ba1cd4f59ac18eb5..ad8a55012e42f2c15496955d00c6d5fd85c5beb2 100644
> --- a/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> +++ b/drivers/phy/freescale/phy-fsl-imx8mq-usb.c
> @@ -16,6 +16,7 @@
>  #define PHY_CTRL0_REF_SSP_EN		BIT(2)
>  #define PHY_CTRL0_FSEL_MASK		GENMASK(10, 5)
>  #define PHY_CTRL0_FSEL_24M		0x2a
> +#define PHY_CTRL0_FSEL_100M		0x27
>  
>  #define PHY_CTRL1			0x4
>  #define PHY_CTRL1_RESET			BIT(0)
> @@ -108,6 +109,7 @@ struct tca_blk {
>  struct imx8mq_usb_phy {
>  	struct phy *phy;
>  	struct clk *clk;
> +	struct clk *alt_clk;
>  	void __iomem *base;
>  	struct regulator *vbus;
>  	struct tca_blk *tca;
> @@ -582,7 +584,8 @@ static int imx8mp_usb_phy_init(struct phy *phy)
>  	/* USB3.0 PHY signal fsel for 24M ref */
>  	value = readl(imx_phy->base + PHY_CTRL0);
>  	value &= ~PHY_CTRL0_FSEL_MASK;
> -	value |= FIELD_PREP(PHY_CTRL0_FSEL_MASK, PHY_CTRL0_FSEL_24M);
> +	value |= FIELD_PREP(PHY_CTRL0_FSEL_MASK, imx_phy->alt_clk ?
> +			    PHY_CTRL0_FSEL_100M : PHY_CTRL0_FSEL_24M);
>  	writel(value, imx_phy->base + PHY_CTRL0);
>  
>  	/* Disable alt_clk_en and use internal MPLL clocks */
> @@ -626,13 +629,24 @@ static int imx8mq_phy_power_on(struct phy *phy)
>  	if (ret)
>  		return ret;
>  
> -	return clk_prepare_enable(imx_phy->clk);
> +	ret = clk_prepare_enable(imx_phy->clk);
> +	if (ret)
> +		return ret;
> +
> +	ret = clk_prepare_enable(imx_phy->alt_clk);
> +	if (ret) {
> +		clk_disable_unprepare(imx_phy->clk);
> +		return ret;
> +	}
> +
> +	return ret;
>  }
>  
>  static int imx8mq_phy_power_off(struct phy *phy)
>  {
>  	struct imx8mq_usb_phy *imx_phy = phy_get_drvdata(phy);
>  
> +	clk_disable_unprepare(imx_phy->alt_clk);
>  	clk_disable_unprepare(imx_phy->clk);
>  	regulator_disable(imx_phy->vbus);
>  
> @@ -681,6 +695,11 @@ static int imx8mq_usb_phy_probe(struct platform_device *pdev)
>  		return PTR_ERR(imx_phy->clk);
>  	}
>  
> +	imx_phy->alt_clk = devm_clk_get_optional(dev, "alt");
> +	if (IS_ERR(imx_phy->alt_clk))
> +		return dev_err_probe(dev, PTR_ERR(imx_phy->alt_clk),
> +				    "Failed to get alt clk\n");
> +
>  	imx_phy->base = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(imx_phy->base))
>  		return PTR_ERR(imx_phy->base);
> 
> 





