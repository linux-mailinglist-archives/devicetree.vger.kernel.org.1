Return-Path: <devicetree+bounces-102676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F711977EB2
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 13:43:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D1C4C1F25E10
	for <lists+devicetree@lfdr.de>; Fri, 13 Sep 2024 11:43:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F38EC1D86C3;
	Fri, 13 Sep 2024 11:43:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gvyT8Q1M"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC041865EC
	for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 11:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726227790; cv=none; b=HjT0EZNMnOPQjyo0igoK/0czmYAFK/0Mzn3aM/OXwIrqlsmuBnrU+8XQDXF2Pimn5nLd/f8xwlZN7O2fdEBY6g+A5q6MrD1/BUbTzVytsYOw+xN2NI/lQMciHcTHABZuL1ZWiBuhX22m5CFL3KuzIUKC453ah9nr3a7GI4jzCl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726227790; c=relaxed/simple;
	bh=97YoPWO30aOmzmIGDrW8k0PQ1PFGfCeF0Ju6v6syArU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NBfX3YeBW+YcQhTORHsKG8F7BqOOGXMn8J0pHARc1iygjRouVZiQqHWsO5aQhoWDYu4jDJwvKekso/CG0gAmMIjWnFH9OsKNWSjnOGIMHRxB7ERyutMTEPBdZd3gB6YyyflfZO2KK2UCRACw9JRYyyRp7cHYWGuzwJhIam8U9u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gvyT8Q1M; arc=none smtp.client-ip=209.85.219.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-e05f25fb96eso825728276.1
        for <devicetree@vger.kernel.org>; Fri, 13 Sep 2024 04:43:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726227788; x=1726832588; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9UwhSpacqWbNrpzy9OkkjEtHbhA7k4WWF7GmkMMBnJM=;
        b=gvyT8Q1MRV0KSAr1VAax5qpoJqKqtPzYNR7N8Lz65ABFbWCZkapCibKjWeVQPk7CDL
         j4Q2j5zdEow7qKBwFdEksxcgcHHt4IuPUIoV8UwC5GNGdHiYISPlpJuwcCaFN+h0ELuf
         B8cPowTmtw5vSFPrBfU429sh+zIlDV4ujLsJzzJJf6DL0fwnQz/QnIK1QVJSs7mYdMjD
         zGp4/R5NVxHT+C/CEhPbYm07SDqvBCdk/HHPpJJrt5g+Yl9PKpwAXl76ts7KTnbL35nD
         +/PpT75zbrhxOEsB6/QdQTlwPFBB1tI0BHlPgsAQsqdVUQkywm+4wajr0BDT6VscowhU
         BMow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726227788; x=1726832588;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9UwhSpacqWbNrpzy9OkkjEtHbhA7k4WWF7GmkMMBnJM=;
        b=Pdnda0LLVvM+w0RjeJntrWtM9TuXajUU9l/hdK8BRyEyZMGqGEPN46wngVa55CxF6l
         bdaDTxT1cnBkqjOSqtIkogfOgEQkKU6jOH5iVHGBUXfXGgX+kOS2z3peNS9sYCFljGLp
         PrTvTZszMyRdxuyBXjsZW7Zny/+L7Jxqe4nvcpQ6LrBvs+f3sTy5s5W5sABRGJr/MFO4
         Uk8w5zCJFsf6vmXecCkKjSJ6VMycvT8mPZR2laAiHO22tpRDOpqI/jtjbm/9dOr5iX82
         5MakIiRY6EiahXj04EwhO8OozVboLvi7na17SN7fIux0Lty0nKsCC+7PuItGZYc3vinD
         yOBg==
X-Forwarded-Encrypted: i=1; AJvYcCVOQZUupmpZLIzsZEhyUqkeMm/RuMeouR1tq604nfmuOB8T1Xi9ZRdo80O6poHlYMt3p+l1Hahf4Nh0@vger.kernel.org
X-Gm-Message-State: AOJu0YxcPgieNX93aPvXLUXr41uPF1b0cZlbqjfJaxjRhna75EB7XyVm
	+wT+BonLWhEV7NiV5nxpp/dBqjbpqAPYfNXYT0nnRBDwyPpbY68HYDrWRo0kO+rF7i+GZJyTd7t
	6TX10NQ2bKBopY1aKTXo8zh5JSyYJGk+wMSJpVg==
X-Google-Smtp-Source: AGHT+IE1TLnxU5IuXLszG0sh4Cmeh/NG3k6A0NeL7GYbVv4i0eJleu/njbaWM0plHlg4dpg3DlaBntAGY4GvPCDnoFM=
X-Received: by 2002:a05:690c:ec9:b0:632:5b24:c0c with SMTP id
 00721157ae682-6dbcc23000fmr21070177b3.5.1726227787870; Fri, 13 Sep 2024
 04:43:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240913103755.7290-1-quic_mukhopad@quicinc.com> <20240913103755.7290-3-quic_mukhopad@quicinc.com>
In-Reply-To: <20240913103755.7290-3-quic_mukhopad@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 13 Sep 2024 14:42:56 +0300
Message-ID: <CAA8EJppddLmzJ9WSkLLr-nwM-qe647Sm6jV8SpHdB=0vRQT-=Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] phy: qcom: edp: Introduce aux_cfg array for
 version specific aux settings
To: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
Cc: vkoul@kernel.org, kishon@kernel.org, konradybcio@kernel.org, 
	andersson@kernel.org, simona@ffwll.ch, abel.vesa@linaro.org, 
	robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, airlied@gmail.com, daniel@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	quic_khsieh@quicinc.com, konrad.dybcio@linaro.org, quic_parellan@quicinc.com, 
	quic_bjorande@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, quic_riteshk@quicinc.com, 
	quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 13 Sept 2024 at 13:38, Soutrik Mukhopadhyay
<quic_mukhopad@quicinc.com> wrote:
>
> In order to support different HW versions, introduce aux_cfg array
> to move v4 specific aux configuration settings.
>
> Signed-off-by: Soutrik Mukhopadhyay <quic_mukhopad@quicinc.com>
> ---
> v2: Fixed review comments from Bjorn and Dmitry
>         - Made aux_cfg array as const.
>
> ---
>  drivers/phy/qualcomm/phy-qcom-edp.c | 37 ++++++++++++++++++-----------
>  1 file changed, 23 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
> index da2b32fb5b45..bcd5aced9e06 100644
> --- a/drivers/phy/qualcomm/phy-qcom-edp.c
> +++ b/drivers/phy/qualcomm/phy-qcom-edp.c
> @@ -90,6 +90,7 @@ struct phy_ver_ops {
>
>  struct qcom_edp_phy_cfg {
>         bool is_edp;
> +       const u8 *aux_cfg;
>         const struct qcom_edp_swing_pre_emph_cfg *swing_pre_emph_cfg;
>         const struct phy_ver_ops *ver_ops;
>  };
> @@ -186,11 +187,15 @@ static const struct qcom_edp_swing_pre_emph_cfg edp_phy_swing_pre_emph_cfg = {
>         .pre_emphasis_hbr3_hbr2 = &edp_pre_emp_hbr2_hbr3,
>  };
>
> +static const u8 edp_phy_aux_cfg_v4[10] = {
> +       0x00, 0x13, 0x24, 0x00, 0x0a, 0x26, 0x0a, 0x03, 0x37, 0x03
> +};
> +
>  static int qcom_edp_phy_init(struct phy *phy)
>  {
>         struct qcom_edp *edp = phy_get_drvdata(phy);
> +       u8 aux_cfg[10];

Please define 10, so that there are no magic numbers (and less chance
of damaging the stack if it gets changed in one place only.

>         int ret;
> -       u8 cfg8;
>
>         ret = regulator_bulk_enable(ARRAY_SIZE(edp->supplies), edp->supplies);
>         if (ret)
> @@ -200,6 +205,8 @@ static int qcom_edp_phy_init(struct phy *phy)
>         if (ret)
>                 goto out_disable_supplies;
>
> +       memcpy(aux_cfg, edp->cfg->aux_cfg, sizeof(aux_cfg));
> +
>         writel(DP_PHY_PD_CTL_PWRDN | DP_PHY_PD_CTL_AUX_PWRDN |
>                DP_PHY_PD_CTL_PLL_PWRDN | DP_PHY_PD_CTL_DP_CLAMP_EN,
>                edp->edp + DP_PHY_PD_CTL);
> @@ -222,22 +229,20 @@ static int qcom_edp_phy_init(struct phy *phy)
>          * even needed.
>          */
>         if (edp->cfg->swing_pre_emph_cfg && !edp->is_edp)
> -               cfg8 = 0xb7;
> -       else
> -               cfg8 = 0x37;
> +               aux_cfg[8] = 0xb7;
>
>         writel(0xfc, edp->edp + DP_PHY_MODE);
>
> -       writel(0x00, edp->edp + DP_PHY_AUX_CFG0);
> -       writel(0x13, edp->edp + DP_PHY_AUX_CFG1);
> -       writel(0x24, edp->edp + DP_PHY_AUX_CFG2);
> -       writel(0x00, edp->edp + DP_PHY_AUX_CFG3);
> -       writel(0x0a, edp->edp + DP_PHY_AUX_CFG4);
> -       writel(0x26, edp->edp + DP_PHY_AUX_CFG5);
> -       writel(0x0a, edp->edp + DP_PHY_AUX_CFG6);
> -       writel(0x03, edp->edp + DP_PHY_AUX_CFG7);
> -       writel(cfg8, edp->edp + DP_PHY_AUX_CFG8);
> -       writel(0x03, edp->edp + DP_PHY_AUX_CFG9);
> +       writel(aux_cfg[0], edp->edp + DP_PHY_AUX_CFG0);
> +       writel(aux_cfg[1], edp->edp + DP_PHY_AUX_CFG1);
> +       writel(aux_cfg[2], edp->edp + DP_PHY_AUX_CFG2);
> +       writel(aux_cfg[3], edp->edp + DP_PHY_AUX_CFG3);
> +       writel(aux_cfg[4], edp->edp + DP_PHY_AUX_CFG4);
> +       writel(aux_cfg[5], edp->edp + DP_PHY_AUX_CFG5);
> +       writel(aux_cfg[6], edp->edp + DP_PHY_AUX_CFG6);
> +       writel(aux_cfg[7], edp->edp + DP_PHY_AUX_CFG7);
> +       writel(aux_cfg[8], edp->edp + DP_PHY_AUX_CFG8);
> +       writel(aux_cfg[9], edp->edp + DP_PHY_AUX_CFG9);

Replace this with a loop?

>
>         writel(PHY_AUX_STOP_ERR_MASK | PHY_AUX_DEC_ERR_MASK |
>                PHY_AUX_SYNC_ERR_MASK | PHY_AUX_ALIGN_ERR_MASK |
> @@ -519,16 +524,19 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v4 = {
>  };
>
>  static const struct qcom_edp_phy_cfg sc7280_dp_phy_cfg = {
> +       .aux_cfg = edp_phy_aux_cfg_v4,
>         .ver_ops = &qcom_edp_phy_ops_v4,
>  };
>
>  static const struct qcom_edp_phy_cfg sc8280xp_dp_phy_cfg = {
> +       .aux_cfg = edp_phy_aux_cfg_v4,
>         .swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
>         .ver_ops = &qcom_edp_phy_ops_v4,
>  };
>
>  static const struct qcom_edp_phy_cfg sc8280xp_edp_phy_cfg = {
>         .is_edp = true,
> +       .aux_cfg = edp_phy_aux_cfg_v4,
>         .swing_pre_emph_cfg = &edp_phy_swing_pre_emph_cfg,
>         .ver_ops = &qcom_edp_phy_ops_v4,
>  };
> @@ -707,6 +715,7 @@ static const struct phy_ver_ops qcom_edp_phy_ops_v6 = {
>  };
>
>  static struct qcom_edp_phy_cfg x1e80100_phy_cfg = {
> +       .aux_cfg = edp_phy_aux_cfg_v4,
>         .swing_pre_emph_cfg = &dp_phy_swing_pre_emph_cfg,
>         .ver_ops = &qcom_edp_phy_ops_v6,
>  };
> --
> 2.17.1
>


-- 
With best wishes
Dmitry

