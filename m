Return-Path: <devicetree+bounces-36111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7042D83FF99
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 09:06:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DCD10B22E93
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 08:06:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 819A651C43;
	Mon, 29 Jan 2024 08:06:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jCbTeCkS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5775952F6D
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 08:06:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706515568; cv=none; b=K/ke6bxsA1IvQBkcD3y+nBz02AyvFB+I1sx0/reswSNj88hZmGfjmmDzCzsf3sC9lychhyPx06bIRmTViJiteSWzo/b3Px5LQXfrB8mdcSxnQCH+0/E0rrnNIJpI1fWF1HuHvt5AtPQ5mxBGygSb0mglEWBprq13qz8CF+UPDQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706515568; c=relaxed/simple;
	bh=4pXk49IB5CwKgTL61jTjpDJ1jl+8OkYK/AUXSjEopmU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AsMH1Lrkf22k4H2SoZNRqNFzIckRVXMAZvqPckUa4xCDmTgwKC8m8J8yD/d1VfqtJjeHQPNK8O9/wW58+c4p7psWP37cIeCpznjyKpa2oVBslZ8CwMcGiiJ5sPhhEvRlBQnBQx+r3U0ykhvB7w01P+2Iql2eMeCySSP2Seaei6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jCbTeCkS; arc=none smtp.client-ip=209.85.208.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-55c33773c0aso2167741a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 00:06:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706515564; x=1707120364; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=J6XKhZscTxsQU4GzOsBbdyY4KIBVonjhMKJORrtVihc=;
        b=jCbTeCkSPAGBhEos4VXyrHZ48xzrMK+wE7Z44sf34zLuY+DNC6z353BOZL2/oOpe3q
         mF5oTV4oBY/yDIdEUt1XVLLzxa6zk+MnP6aXDcgvCYfusqHyP9DG1u1bRA/T67Niej4Q
         d7HRG/Ue0Yhm/VdJg/0iV6smGNBhMNLzM5e7yz1PrlpifGOYYumT+/E5nz0Wnf4kwZjo
         GbefK2uNJQYc++D3jOFSfEKvwl4e9dHKpCv9A9mkRD+RJPPjPUaVbvqLb5SRL1eWJesS
         V7RU9YG7RT5MtCOpuIRTZv1WrqG8Kvx520DzRohZw4Sxjf8okyyOZUUHIXuChphvBNpS
         MfXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706515564; x=1707120364;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J6XKhZscTxsQU4GzOsBbdyY4KIBVonjhMKJORrtVihc=;
        b=IpYCh+vegxQrOwHQyPru0M4iCxsaKno/FcRZdbNw5MTj+aPgajOc+R1rZnSOsGxcAi
         GDlxqrmlXae0RrN8mYO4MeudMCryApeV0Es+I9PENzN4gghIA/StvJny5q13kFYsAlwW
         lkqOcL6ipZ+p+ELhUKwRCojbjgshrHqaS4keFVkfH/0ovV/e6MJGTK1v+Q/dnHLpNv04
         A6qeKBhHtk6ELqiHtR+otOLQN5WB/6vd9NJBQw6EwLpj9/0c6A9K9US0Hnn+PrgBsoCm
         2g5v6V35jRcErb0dIumyJgqZ/8NRbvcJAon8ImrgOQ2KkTCWvawvaRfiDfu4tVLozhXF
         Gm6w==
X-Gm-Message-State: AOJu0YyHFxo/yOvpe8BuqquTO8IO1rrFKCbi2Ho9Qj/eexgIJ1wMwOSa
	w5pQt1pUy2RQ56ioivt/nQAnVuAToJGFWU5u1+FdTE1GGF83QBv4Q+W3QlfmenY=
X-Google-Smtp-Source: AGHT+IFktROB9tF2JvFHAmVmUNen9W7BcqiaOplUB2PFOvyREKrG61os2XrCnqG/J29h7TR86gicog==
X-Received: by 2002:a05:6402:358b:b0:55d:2ecf:7ba7 with SMTP id y11-20020a056402358b00b0055d2ecf7ba7mr4019567edc.2.1706515564435;
        Mon, 29 Jan 2024 00:06:04 -0800 (PST)
Received: from linaro.org ([79.115.23.25])
        by smtp.gmail.com with ESMTPSA id m3-20020a50cc03000000b0055cda996b63sm3387507edi.20.2024.01.29.00.06.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jan 2024 00:06:04 -0800 (PST)
Date: Mon, 29 Jan 2024 10:06:02 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/2] phy: qcom: edp: Add set_mode op for configuring
 eDP/DP submode
Message-ID: <Zbdcao0emQyBodCK@linaro.org>
References: <20240129-x1e80100-phy-edp-compatible-refactor-v3-0-e71f3359c535@linaro.org>
 <20240129-x1e80100-phy-edp-compatible-refactor-v3-2-e71f3359c535@linaro.org>
 <CAA8EJpr5Ci7M92ibsCMec3wcQTVqFkaVgRQUhKUSdhg66YhW1Q@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAA8EJpr5Ci7M92ibsCMec3wcQTVqFkaVgRQUhKUSdhg66YhW1Q@mail.gmail.com>

On 24-01-29 06:05:09, Dmitry Baryshkov wrote:
> On Mon, 29 Jan 2024 at 02:26, Abel Vesa <abel.vesa@linaro.org> wrote:
> >
> > Future platforms should not use different compatibles to differentiate
> > between eDP and DP mode. Instead, they should use a single compatible as the
> > IP block is the same. It will be the job of the controller to set the submode
> > of the PHY accordingly.
> >
> > The existing platforms will remain with separate compatibles for each mode.
> >
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  drivers/phy/qualcomm/phy-qcom-edp.c | 71 ++++++++++++++++++++++++++-----------
> >  1 file changed, 51 insertions(+), 20 deletions(-)
> >
> > diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> > index 8e5078304646..af941d6c5588 100644
> > --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> > +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> > @@ -14,6 +14,7 @@
> >  #include <linux/module.h>
> >  #include <linux/of.h>
> >  #include <linux/phy/phy.h>
> > +#include <linux/phy/phy-dp.h>
> >  #include <linux/platform_device.h>
> >  #include <linux/regulator/consumer.h>
> >  #include <linux/reset.h>
> > @@ -68,19 +69,21 @@
> >
> >  #define TXn_TRAN_DRVR_EMP_EN                    0x0078
> >
> > -struct qcom_edp_cfg {
> > -       bool is_dp;
> > -
> > -       /* DP PHY swing and pre_emphasis tables */
> > +struct qcom_edp_swing_pre_emph_cfg {
> >         const u8 (*swing_hbr_rbr)[4][4];
> >         const u8 (*swing_hbr3_hbr2)[4][4];
> >         const u8 (*pre_emphasis_hbr_rbr)[4][4];
> >         const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
> >  };
> >
> > +struct qcom_edp_phy_cfg {
> > +       bool is_edp;
> > +       const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
> > +};
> > +
> >  struct qcom_edp {
> >         struct device *dev;
> > -       const struct qcom_edp_cfg *cfg;
> > +       const struct qcom_edp_phy_cfg *cfg;
> >
> >         struct phy *phy;
> >
> > @@ -96,6 +99,8 @@ struct qcom_edp {
> >
> >         struct clk_bulk_data clks[2];
> >         struct regulator_bulk_data supplies[2];
> > +
> > +       bool is_edp;
> >  };
> >
> >  static const u8 dp_swing_hbr_rbr[4][4] = {
> > @@ -126,8 +131,7 @@ static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
> >         { 0x04, 0xff, 0xff, 0xff }
> >  };
> >
> > -static const struct qcom_edp_cfg dp_phy_cfg = {
> > -       .is_dp = true,
> > +static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
> >         .swing_hbr_rbr = &dp_swing_hbr_rbr,
> >         .swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
> >         .pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
> > @@ -162,18 +166,28 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
> >         { 0x00, 0xff, 0xff, 0xff }
> >  };
> >
> > -static const struct qcom_edp_cfg edp_phy_cfg = {
> > -       .is_dp = false,
> > +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
> >         .swing_hbr_rbr = &edp_swing_hbr_rbr,
> >         .swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
> >         .pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
> >         .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
> >  };
> >
> > +static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
> > +};
> > +
> > +static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
> > +       .swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
> > +};
> > +
> > +static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
> > +       .is_edp = true,
> > +       .swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
> > +};
> > +
> >  static int qcom_edp_phy_init(struct phy *phy)
> >  {
> >         struct qcom_edp *edp = phy_get_drvdata(phy);
> > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> >         int ret;
> >         u8 cfg8;
> >
> > @@ -200,7 +214,7 @@ static int qcom_edp_phy_init(struct phy *phy)
> >                DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
> >                edp->edp + DP_PHY_PD_CTL);
> >
> > -       if (cfg && cfg->is_dp)
> > +       if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
> 
> I think (!edp->is_edp) should be enough here.

Actually, in case of DP, the cfg8 needs to be 0xb7 for sc8280xp, while for sc7280 it should be 0x37.

So to differentiate between first and second we check if the config
provides a swing_pre_emph_cfg

> 
> >                 cfg8 = 0xb7;
> >         else
> >                 cfg8 = 0x37;
> > @@ -234,7 +248,7 @@ static int qcom_edp_phy_init(struct phy *phy)
> >
> >  static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
> >  {
> > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> > +       const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->cfg->swing_pre_emph_cfg;
> >         unsigned int v_level = 0;
> >         unsigned int p_level = 0;
> >         u8 ldo_config;
> > @@ -245,6 +259,9 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
> >         if (!cfg)
> >                 return 0;
> >
> > +       if (edp->is_edp)
> > +               cfg = &edp_phy_swing_pre_emph_cfg;
> > +
> >         for (i = 0; i < dp_opts->lanes; i++) {
> >                 v_level = max(v_level, dp_opts->voltage[i]);
> >                 p_level = max(p_level, dp_opts->pre[i]);
> > @@ -261,7 +278,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
> >         if (swing == 0xff || emph == 0xff)
> >                 return -EINVAL;
> >
> > -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> > +       ldo_config = edp->is_edp ? 0x0 : 0x1;
> >
> >         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
> >         writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
> > @@ -447,10 +464,9 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
> >  static int qcom_edp_phy_power_on(struct phy *phy)
> >  {
> >         const struct qcom_edp *edp = phy_get_drvdata(phy);
> > -       const struct qcom_edp_cfg *cfg = edp->cfg;
> >         u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
> >         unsigned long pixel_freq;
> > -       u8 ldo_config;
> > +       u8 ldo_config = 0x0;
> >         int timeout;
> >         int ret;
> >         u32 val;
> > @@ -468,7 +484,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
> >                 return timeout;
> >
> >
> > -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> > +       if (edp->cfg->swing_pre_emph_cfg && !edp->cfg->is_edp)
> 
> I'd assume this should be `if (!edp->is_edp)`, see qcom_edp_set_voltages()
> 

Yep. will fix.

> > +               ldo_config = 0x1;
> >
> >         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
> >         writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
> > @@ -589,6 +606,18 @@ static int qcom_edp_phy_power_off(struct phy *phy)
> >         return 0;
> >  }
> >
> > +static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> > +{
> > +       struct qcom_edp *edp = phy_get_drvdata(phy);
> > +
> > +       if (mode != PHY_MODE_DP)
> > +               return -EINVAL;
> > +
> > +       edp->is_edp = submode == PHY_SUBMODE_EDP ? true : false;
> > +
> > +       return 0;
> > +}
> > +
> >  static int qcom_edp_phy_exit(struct phy *phy)
> >  {
> >         struct qcom_edp *edp = phy_get_drvdata(phy);
> > @@ -604,6 +633,7 @@ static const struct phy_ops qcom_edp_ops = {
> >         .configure      = qcom_edp_phy_configure,
> >         .power_on       = qcom_edp_phy_power_on,
> >         .power_off      = qcom_edp_phy_power_off,
> > +       .set_mode       = qcom_edp_phy_set_mode,
> >         .exit           = qcom_edp_phy_exit,
> >         .owner          = THIS_MODULE,
> >  };
> > @@ -781,6 +811,7 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> >
> >         edp->dev = dev;
> >         edp->cfg = of_device_get_match_data(&pdev->dev);
> > +       edp->is_edp = edp->cfg->is_edp;
> >
> >         edp->edp = devm_platform_ioremap_resource(pdev, 0);
> >         if (IS_ERR(edp->edp))
> > @@ -839,10 +870,10 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
> >  }
> >
> >  static const struct of_device_id qcom_edp_phy_match_table[] = {
> > -       { .compatible = "qcom,sc7280-edp-phy" },
> > -       { .compatible = "qcom,sc8180x-edp-phy" },
> > -       { .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_phy_cfg },
> > -       { .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_phy_cfg },
> > +       { .compatible = "qcom,sc7280-edp-phy" , .data = &sc7280_dp_phy_cfg, },
> > +       { .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
> > +       { .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
> > +       { .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
> >         { }
> >  };
> >  MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
> >
> > --
> > 2.34.1
> >
> 
> 
> -- 
> With best wishes
> Dmitry

