Return-Path: <devicetree+bounces-28077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC2881CB7B
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 15:46:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 41F261F210B6
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 14:46:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 548EA22F11;
	Fri, 22 Dec 2023 14:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tfNCGd+o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9919A22F0B
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 14:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5e7467eb93aso15103547b3.1
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 06:45:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703256357; x=1703861157; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=X5aKN360JjsKDYNBN+XtA40DpitxGOEQzYpjBK6DPwo=;
        b=tfNCGd+o8lk4MCVUCUoKGrOTWdvnssfwZfnig9magpoZzIHpB6+zXxHFwyTkgZpowG
         j0s6Nf064i2tNon1H3g/Y8S3bfLQ5vrw8G5wnyOSCx15+YQdVEHj2JBeFUzrDHgZZem8
         XgxmghpoSQqExxcDNs1+N36ZfcqNXvh5sgqv2pJzI4gn9nD1K3iBkDKwwhouq2tDAx95
         yYlrEAA47yjE0EOi4lGznSf+vQ4CGiuV4cjbRdY4faV8SDPayZsOpYbVkni5jGCuHZM1
         vmXT6sadUHbFniOm4v26f7i8bczc8ZFWEVFEMA5F0u9FTmRzjRrvNbwZEMyasGcClkKL
         BUhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703256357; x=1703861157;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X5aKN360JjsKDYNBN+XtA40DpitxGOEQzYpjBK6DPwo=;
        b=liP0r4m8CmTcHMUbf74/CG7IONR12WVrcZ+5dtiIXhBA8fKWmyuyh3wPTsVsr9tvQi
         eaIGd6AGVkYwkyAVP8MqAZHb+Vkoao7GLN3oUPa8wgtww8qloFOYlKLLvf/9uaFWWvUb
         yecehITUEAXxGlAYkL/WUXGGSMgvcFplP+TKU7fUBEY0yRC1RKd+oHwgBo4uNLJTLlAf
         xvJYxSwpBGPZCgrxbm6ihMVWnKS8FYIkmEhTH5g2pFV2HbCIVu/k9XSW+SlfViyl6HNe
         +w0GWd9tXN90BwODkgLndUMRogrPQW+8bE2WvjqAZ+OrQPqjpjLEr7fBNCOSimUF5DxU
         yOCg==
X-Gm-Message-State: AOJu0YxRkzbNQwN+4qwuEAeUFnI+zons0+12Ajhvqu5xwXZ74zwJrTzK
	M99rba040GcYjUYQZrRjhjZ6REa/Tlhbp46n4sF5QXDs7Y7ZNA==
X-Google-Smtp-Source: AGHT+IFgdAnI8wwdkjon9iGs5E7wL5s4K7uoY6vrW0njQ+C898eXih0nAoTxA9J/8JClt58StVDTyf51M5XSr7eofPg=
X-Received: by 2002:a0d:d656:0:b0:5e8:851f:77d1 with SMTP id
 y83-20020a0dd656000000b005e8851f77d1mr1067697ywd.35.1703256357545; Fri, 22
 Dec 2023 06:45:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231222-x1e80100-phy-edp-compatible-refactor-v2-0-ab5786c2359f@linaro.org>
 <20231222-x1e80100-phy-edp-compatible-refactor-v2-2-ab5786c2359f@linaro.org>
In-Reply-To: <20231222-x1e80100-phy-edp-compatible-refactor-v2-2-ab5786c2359f@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 22 Dec 2023 16:45:47 +0200
Message-ID: <CAA8EJpqPNzvA0yTqqSuXGHKxXoofJUQpAiHazoULru8A85YXHA@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] phy: qcom: edp: Add set_mode op for configuring
 eDP/DP submode
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Johan Hovold <johan@kernel.org>, linux-phy@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 Dec 2023 at 15:01, Abel Vesa <abel.vesa@linaro.org> wrote:
>
> Future platforms should not use different compatibles to differentiate
> between eDP and DP mode. Instead, they should use a single compatible as the
> IP block is the same. It will be the job of the controller to set the submode
> of the PHY accordingly. Rework the device match config data so that it only
> keeps the different knobs rather than swing and pre-emphasis tables.
>
> The existing platforms will remain with separate compatibles for each mode.
>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 90 ++++++++++++++++++++++++++++---------
>  1 file changed, 69 insertions(+), 21 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index 8e5078304646..efd7015c73ec 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -14,6 +14,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/phy/phy.h>
> +#include <linux/phy/phy-dp.h>
>  #include <linux/platform_device.h>
>  #include <linux/regulator/consumer.h>
>  #include <linux/reset.h>
> @@ -68,19 +69,21 @@
>
>  #define TXn_TRAN_DRVR_EMP_EN                    0x0078
>
> -struct qcom_edp_cfg {
> -       bool is_dp;
> -
> -       /* DP PHY swing and pre_emphasis tables */
> +struct qcom_edp_swing_pre_emph_cfg {
>         const u8 (*swing_hbr_rbr)[4][4];
>         const u8 (*swing_hbr3_hbr2)[4][4];
>         const u8 (*pre_emphasis_hbr_rbr)[4][4];
>         const u8 (*pre_emphasis_hbr3_hbr2)[4][4];
>  };
>
> +struct qcom_edp_phy_cfg {
> +       bool is_edp;
> +       bool needs_swing_pre_emph_cfg;

I think something like needs_voltage_config sounds simpler and prettier.

> +};
> +
>  struct qcom_edp {
>         struct device *dev;
> -       const struct qcom_edp_cfg *cfg;
> +       const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
>
>         struct phy *phy;
>
> @@ -96,6 +99,8 @@ struct qcom_edp {
>
>         struct clk_bulk_data clks[2];
>         struct regulator_bulk_data supplies[2];
> +
> +       bool is_edp;
>  };
>
>  static const u8 dp_swing_hbr_rbr[4][4] = {
> @@ -126,8 +131,7 @@ static const u8 dp_pre_emp_hbr2_hbr3[4][4] = {
>         { 0x04, 0xff, 0xff, 0xff }
>  };
>
> -static const struct qcom_edp_cfg dp_phy_cfg = {
> -       .is_dp = true,
> +static const struct qcom_edp_swing_pre_emph_cfg dp_phy_swing_pre_emph_cfg = {
>         .swing_hbr_rbr = &dp_swing_hbr_rbr,
>         .swing_hbr3_hbr2 = &dp_swing_hbr2_hbr3,
>         .pre_emphasis_hbr_rbr = &dp_pre_emp_hbr_rbr,
> @@ -162,18 +166,29 @@ static const u8 edp_pre_emp_hbr2_hbr3[4][4] = {
>         { 0x00, 0xff, 0xff, 0xff }
>  };
>
> -static const struct qcom_edp_cfg edp_phy_cfg = {
> -       .is_dp = false,
> +static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
>         .swing_hbr_rbr = &edp_swing_hbr_rbr,
>         .swing_hbr3_hbr2 = &edp_swing_hbr2_hbr3,
>         .pre_emphasis_hbr_rbr = &edp_pre_emp_hbr_rbr,
>         .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
>  };
>
> +static struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
> +};
> +
> +static struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
> +       .needs_swing_pre_emph_cfg = true,
> +};
> +
> +static struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
> +       .is_edp = true,
> +       .needs_swing_pre_emph_cfg = true,
> +};
> +
>  static int qcom_edp_phy_init(struct phy *phy)
>  {
>         struct qcom_edp *edp = phy_get_drvdata(phy);
> -       const struct qcom_edp_cfg *cfg = edp->cfg;
> +       const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->swing_pre_emph_cfg;
>         int ret;
>         u8 cfg8;
>
> @@ -200,7 +215,7 @@ static int qcom_edp_phy_init(struct phy *phy)
>                DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
>                edp->edp + DP_PHY_PD_CTL);
>
> -       if (cfg && cfg->is_dp)
> +       if (cfg && !edp->is_edp)
>                 cfg8 = 0xb7;
>         else
>                 cfg8 = 0x37;
> @@ -234,7 +249,7 @@ static int qcom_edp_phy_init(struct phy *phy)
>
>  static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configure_opts_dp *dp_opts)
>  {
> -       const struct qcom_edp_cfg *cfg = edp->cfg;
> +       const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->swing_pre_emph_cfg;
>         unsigned int v_level = 0;
>         unsigned int p_level = 0;
>         u8 ldo_config;
> @@ -261,7 +276,7 @@ static int qcom_edp_set_voltages(struct qcom_edp *edp, const struct phy_configur
>         if (swing == 0xff || emph == 0xff)
>                 return -EINVAL;
>
> -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> +       ldo_config = edp->is_edp ? 0x0 : 0x1;
>
>         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
>         writel(swing, edp->tx0 + TXn_TX_DRV_LVL);
> @@ -447,10 +462,10 @@ static int qcom_edp_set_vco_div(const struct qcom_edp *edp, unsigned long *pixel
>  static int qcom_edp_phy_power_on(struct phy *phy)
>  {
>         const struct qcom_edp *edp = phy_get_drvdata(phy);
> -       const struct qcom_edp_cfg *cfg = edp->cfg;
> +       const struct qcom_edp_swing_pre_emph_cfg *cfg = edp->swing_pre_emph_cfg;
>         u32 bias0_en, drvr0_en, bias1_en, drvr1_en;
>         unsigned long pixel_freq;
> -       u8 ldo_config;
> +       u8 ldo_config = 0x0;
>         int timeout;
>         int ret;
>         u32 val;
> @@ -468,7 +483,8 @@ static int qcom_edp_phy_power_on(struct phy *phy)
>                 return timeout;
>
>
> -       ldo_config = (cfg && cfg->is_dp) ? 0x1 : 0x0;
> +       if (cfg && !edp->is_edp)
> +               ldo_config = 0x1;
>
>         writel(ldo_config, edp->tx0 + TXn_LDO_CONFIG);
>         writel(ldo_config, edp->tx1 + TXn_LDO_CONFIG);
> @@ -589,6 +605,31 @@ static int qcom_edp_phy_power_off(struct phy *phy)
>         return 0;
>  }
>
> +static int qcom_edp_phy_set_mode(struct phy *phy, enum phy_mode mode, int submode)
> +{
> +       struct qcom_edp *edp = phy_get_drvdata(phy);
> +
> +       if (mode != PHY_MODE_DP)
> +               return -EINVAL;
> +
> +       switch (submode) {
> +       case PHY_SUBMODE_DP:
> +               edp->swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg;
> +               edp->is_edp = false;
> +               break;
> +
> +       case PHY_SUBMODE_EDP:
> +               edp->swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg;

Won't this override the sc7280 config which doesn't set the
.needs_swing_pre_emph_cfg?
So even

> +               edp->is_edp = true;
> +               break;
> +
> +       default:
> +               return -EINVAL;
> +       }
> +
> +       return 0;
> +}
> +
>  static int qcom_edp_phy_exit(struct phy *phy)
>  {
>         struct qcom_edp *edp = phy_get_drvdata(phy);
> @@ -604,6 +645,7 @@ static const struct phy_ops qcom_edp_ops = {
>         .configure      = qcom_edp_phy_configure,
>         .power_on       = qcom_edp_phy_power_on,
>         .power_off      = qcom_edp_phy_power_off,
> +       .set_mode       = qcom_edp_phy_set_mode,
>         .exit           = qcom_edp_phy_exit,
>         .owner          = THIS_MODULE,
>  };
> @@ -770,6 +812,7 @@ static int qcom_edp_clks_register(struct qcom_edp *edp, struct device_node *np)
>
>  static int qcom_edp_phy_probe(struct platform_device *pdev)
>  {
> +       const struct qcom_edp_phy_cfg *cfg = of_device_get_match_data(&pdev->dev);
>         struct phy_provider *phy_provider;
>         struct device *dev = &pdev->dev;
>         struct qcom_edp *edp;
> @@ -780,7 +823,12 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>                 return -ENOMEM;
>
>         edp->dev = dev;
> -       edp->cfg = of_device_get_match_data(&pdev->dev);
> +       edp->is_edp = cfg->is_edp;
> +
> +       if (cfg->needs_swing_pre_emph_cfg)
> +               edp->swing_pre_emph_cfg = edp->is_edp ?
> +                                               &edp_phy_swing_pre_emph_cfg :
> +                                               &dp_phy_swing_pre_emph_cfg;
>
>         edp->edp = devm_platform_ioremap_resource(pdev, 0);
>         if (IS_ERR(edp->edp))
> @@ -839,10 +887,10 @@ static int qcom_edp_phy_probe(struct platform_device *pdev)
>  }
>
>  static const struct of_device_id qcom_edp_phy_match_table[] = {
> -       { .compatible = "qcom,sc7280-edp-phy" },
> -       { .compatible = "qcom,sc8180x-edp-phy" },
> -       { .compatible = "qcom,sc8280xp-dp-phy", .data = &dp_phy_cfg },
> -       { .compatible = "qcom,sc8280xp-edp-phy", .data = &edp_phy_cfg },
> +       { .compatible = "qcom,sc7280-edp-phy" , .data = &sc7280_dp_phy_cfg, },
> +       { .compatible = "qcom,sc8180x-edp-phy", .data = &sc7280_dp_phy_cfg, },
> +       { .compatible = "qcom,sc8280xp-dp-phy", .data = &sc8280xp_dp_phy_cfg, },
> +       { .compatible = "qcom,sc8280xp-edp-phy", .data = &sc8280xp_edp_phy_cfg, },
>         { }
>  };
>  MODULE_DEVICE_TABLE(of, qcom_edp_phy_match_table);
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

