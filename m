Return-Path: <devicetree+bounces-256488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D1E9D39553
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 14:36:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 84BF830021E6
	for <lists+devicetree@lfdr.de>; Sun, 18 Jan 2026 13:36:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31E7532B998;
	Sun, 18 Jan 2026 13:36:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OmJvJjvi"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E0731E531;
	Sun, 18 Jan 2026 13:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768743367; cv=none; b=spnQs7LwWV7SAdDHfcoQqfVxjxgnAokRbtpi1sMkI/dBhupBN/UDtdKr2At3/wq3GIft4YTs+zD6e5XR0EpkLNb1iJuQwlz0UCkI3dLPf1RL8GGXVfG3xt2EF/P5asQ0P8921F4ryE34eDRl2g4zwH/843SOPBXijVTRhl5iJKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768743367; c=relaxed/simple;
	bh=ja+dnipH53AlTtKs9+FniT/yNEbDZimoOF27PN0Mxv8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A1qwkl5DzjSDm1cAxpBofo6wW6Q3too4gVmgVJIAq6ciD0x5ZoqcZj/MUAYuiJzCgNoEeyRo3oDP1gj0LAlvaPWHNCpHpPkIOQVQo09/TwSL3lCMFjqrCm4xQ0oUmrJU6/gxqszxR6cX3q5Yu8r+EVzulvYoNV5B0OQtR6VoZkg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OmJvJjvi; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 86D90C116D0;
	Sun, 18 Jan 2026 13:36:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768743366;
	bh=ja+dnipH53AlTtKs9+FniT/yNEbDZimoOF27PN0Mxv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OmJvJjviCcHUxI0hiBl15KkI9QG4ZzSOomWHuka+smSgPcKxhoy1rkdpNPeK+PIaD
	 3KX6C92rJ8lMu88e71gSJielOoICyzqA2FOjBs7SFE5HM38jxayDjzGoDy31OAY3tN
	 BPE0d7L71R9SD2t38X/OP4QcpUfoDKQuQ1ThoGyozDVi/lffbrAtLA5RrBRY1i7OI4
	 /SLI0gcMbTYIGhh8F2mSv0MUGNUewfBf4sq8XnINXUjfxnuymR6ZRLWgOzuuzjazl+
	 eKXRLPmrB69ZakQ6ED0PIU46v30BcM3FiLzYpm8F69miQ5vOkk/3x3yyLW05sqsX+J
	 RMnCuWJpv3T5A==
Date: Sun, 18 Jan 2026 19:06:03 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Yulin Lu <luyulin@eswincomputing.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
	conor+dt@kernel.org, p.zabel@pengutronix.de,
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, ningyu@eswincomputing.com,
	zhengyu@eswincomputing.com, linmin@eswincomputing.com,
	huangyifeng@eswincomputing.com, fenglin@eswincomputing.com,
	lianghujun@eswincomputing.com
Subject: Re: Re: [PATCH v7 2/2] phy: eswin: Create eswin directory and add
 EIC7700 SATA PHY driver
Message-ID: <aWzhw65QEoLj2XE7@vaman>
References: <20260106062944.1529-1-luyulin@eswincomputing.com>
 <20260106063309.241-1-luyulin@eswincomputing.com>
 <aWeH5fn8nGOzjDpP@vaman>
 <133c22d5.2674.19bc5ff735f.Coremail.luyulin@eswincomputing.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <133c22d5.2674.19bc5ff735f.Coremail.luyulin@eswincomputing.com>

On 16-01-26, 16:50, Yulin Lu wrote:
> > > +static int eic7700_sata_phy_init(struct phy *phy)
> > > +{
> > > +	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
> > > +	u32 val;
> > > +	int ret;
> > > +
> > > +	ret = clk_prepare_enable(sata_phy->clk);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	regmap_write(sata_phy->regmap, SATA_REF_CTRL1, SATA_CLK_RST_SOURCE_PHY);
> > > +
> > > +	val = FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN1_MASK, 0x42) |
> > > +	      FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN2_MASK, 0x46) |
> > > +	      FIELD_PREP(SATA_P0_PHY_TX_AMPLITUDE_GEN3_MASK, 0x73);
> > > +	regmap_write(sata_phy->regmap, SATA_PHY_CTRL0, val);
> > > +
> > > +	val = FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN1_MASK, 0x5) |
> > > +	      FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN2_MASK, 0x5) |
> > > +	      FIELD_PREP(SATA_P0_PHY_TX_PREEMPH_GEN3_MASK, 0x8);
> > 
> > Where are the magic values you are writing coming from..?
> > 
> 
> Hi Vinod,
> 
> These values set the TX preemphasis and amplitude parameters for the SATA PHY.
> The actual numbers come from eye‑diagram tuning results on different hardware
> development boards.
> The current code reflects the settings for the Sifive HiFive Premier P550 board.
> In the next patch I plan to move these into the devicetree (DTS).
> Would that be acceptable?

So this would change wrt each board the device is...? Maybe DT should be
better choice. Please check with DT folks on the approach

> 
> > > +	regmap_write(sata_phy->regmap, SATA_PHY_CTRL1, val);
> > > +
> > > +	val = FIELD_PREP(SATA_LOS_LEVEL_MASK, 0x9) |
> > > +	      FIELD_PREP(SATA_LOS_BIAS_MASK, 0x2);
> > > +	regmap_write(sata_phy->regmap, SATA_LOS_IDEN, val);
> > > +
> > > +	val = SATA_M_CSYSREQ | SATA_S_CSYSREQ;
> > > +	regmap_write(sata_phy->regmap, SATA_AXI_LP_CTRL, val);
> > > +
> > > +	val = SATA_REF_REPEATCLK_EN | SATA_REF_USE_PAD;
> > > +	regmap_write(sata_phy->regmap, SATA_REF_CTRL, val);
> > > +
> > > +	val = FIELD_PREP(SATA_MPLL_MULTIPLIER_MASK, 0x3c);
> > > +	regmap_write(sata_phy->regmap, SATA_MPLL_CTRL, val);
> > > +
> > > +	usleep_range(15, 20);
> > > +
> > > +	ret = reset_control_deassert(sata_phy->rst);
> > > +	if (ret)
> > > +		goto disable_clk;
> > > +
> > > +	ret = wait_for_phy_ready(sata_phy->regmap, SATA_P0_PHY_STAT,
> > > +				 SATA_P0_PHY_READY, 1);
> > > +	if (ret < 0) {
> > > +		dev_err(&sata_phy->phy->dev, "PHY READY check failed\n");
> > > +		goto disable_clk;
> > > +	}
> > > +
> > > +	return 0;
> > > +
> > > +disable_clk:
> > > +	clk_disable_unprepare(sata_phy->clk);
> > > +	return ret;
> > > +}
> > > +
> > > +static int eic7700_sata_phy_exit(struct phy *phy)
> > > +{
> > > +	struct eic7700_sata_phy *sata_phy = phy_get_drvdata(phy);
> > > +	int ret;
> > > +
> > > +	ret = reset_control_assert(sata_phy->rst);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	clk_disable_unprepare(sata_phy->clk);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static const struct phy_ops eic7700_sata_phy_ops = {
> > > +	.init		= eic7700_sata_phy_init,
> > > +	.exit		= eic7700_sata_phy_exit,
> > > +	.owner		= THIS_MODULE,
> > > +};
> > > +
> > > +static int eic7700_sata_phy_probe(struct platform_device *pdev)
> > > +{
> > > +	struct eic7700_sata_phy *sata_phy;
> > > +	struct phy_provider *phy_provider;
> > > +	struct device *dev = &pdev->dev;
> > > +	struct resource *res;
> > > +	void __iomem *regs;
> > > +
> > > +	sata_phy = devm_kzalloc(dev, sizeof(*sata_phy), GFP_KERNEL);
> > > +	if (!sata_phy)
> > > +		return -ENOMEM;
> > > +
> > > +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > > +	if (!res)
> > > +		return -ENOENT;
> > > +
> > > +	regs = devm_ioremap(dev, res->start, resource_size(res));
> > > +	if (IS_ERR(regs))
> > > +		return PTR_ERR(regs);
> > 
> > devm_platform_get_and_ioremap_resource() please
> > 
> 
> As explained in my “v6 → v5” changes in the cover‑letter:
> “Map the I/O resource with platform_get_resource and devm_ioremap
> instead of the devm_platform_ioremap_resource API,
> because the address region of the SATA‑PHY falls into the region of
> the HSP clock & reset that has already been obtained by the HSP
> clock‑and‑reset driver.”
> The HSP clock-and-reset driver uses devm_platform_get_and_ioremap_resource(),
> meaning this region has already been requested.
> The HSP clock-and-reset driver is also currently being upstreamed.

Worth adding a comment here for that

-- 
~Vinod

