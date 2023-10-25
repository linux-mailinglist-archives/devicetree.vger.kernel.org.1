Return-Path: <devicetree+bounces-11639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9D67D6471
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 10:04:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CDC221C20DAE
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 08:04:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4F241C6A9;
	Wed, 25 Oct 2023 08:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CDiM+9dX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58AD71C6A1
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 08:04:08 +0000 (UTC)
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com [IPv6:2607:f8b0:4864:20::729])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 680FFDD
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:04:06 -0700 (PDT)
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-7788fb06997so368616085a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 01:04:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698221045; x=1698825845; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=3fwMcGLJ7nYe8SSHVZ+HO50S7Dp0i12qC/S3ZP8EfBY=;
        b=CDiM+9dXsbvNBq3WCDpmCfSt+wkCcMLRtqFNSex86M/v+poUyKiI5q6TNrS6dvKTcT
         CyPwr0+xE4NuSNm3WRnYdP/qib1fR77KaPezmaefiWfr9Ne1KD3Sxn61glEMI64ItfZu
         J/ikwQ4jbJgC82LZnX4zm38sYUUIn3J2AveNg35ctYJ1pn5pJoVmhd9cMJbWV7lxKMum
         dJAYcijmJfCvzKOQZygsdwqbcTsJrpVTVR4bhrBPZeVX7T92dthEZSzOnK7GPptMHWu9
         TeN8C2N5IVpg99dmDvPAV4QWbTVRrO396IHP8tnuKkFFTJtO8CCGF0MCCsLxSlt9TeuN
         mFoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698221045; x=1698825845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3fwMcGLJ7nYe8SSHVZ+HO50S7Dp0i12qC/S3ZP8EfBY=;
        b=JTcmXJshvYZd/5r9y3F/zO+tRU81jIoIpumGCgDKXPazkccS0XIzXSAd/hCuyRxhCT
         acm6tfUyHiPDbcE0lZEIP0rwE4Xx4c39g+dEVXNg7w7Mn4oCAuu7cKKozy2pM1Wl2yGp
         20oj9fSgQUn7GCU+j59qNniskXlwtngbgUpAy248FEK2mDY32jJaxZ7brbTkSqOLXn7Y
         LMqBIZys9w0x/G1g5HFqs5oNkFy1XTgwSWkVWPB4HiFBw2iyWYyQYVtBXgBUbyJpO1D4
         9A4WVYoLfaK6UsuErY1pODaCQ5gldy+vs0Dg2SiTMcs2NGo44PbaKhKTQ5gaVP3DW0T4
         9lAA==
X-Gm-Message-State: AOJu0YwmMLxD/ROb55ntj/DxazISkD9f2NLSr8BBek8AgOMlKQc5SD7c
	Bv2cm21BumEx4c38yTavGGABY5DmOowDmdW4rJiVLw==
X-Google-Smtp-Source: AGHT+IHGl11EIegvL/m7wJAmFPHRjo9ndjP1xqa+xYpJHUe09/aZADzdf21iKb/J6OYzZwnVFQxLUhc6iEzbpmkMiPM=
X-Received: by 2002:a05:620a:164a:b0:778:96eb:e7d9 with SMTP id
 c10-20020a05620a164a00b0077896ebe7d9mr14770645qko.19.1698221045386; Wed, 25
 Oct 2023 01:04:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231025-topic-sm8650-upstream-mdss-v1-0-bb219b8c7a51@linaro.org> <20231025-topic-sm8650-upstream-mdss-v1-7-bb219b8c7a51@linaro.org>
In-Reply-To: <20231025-topic-sm8650-upstream-mdss-v1-7-bb219b8c7a51@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 25 Oct 2023 11:03:54 +0300
Message-ID: <CAA8EJpr+QGBFchG9aXJLxyhbMwMWZF6RjSVOpORkP_KFrV=P1A@mail.gmail.com>
Subject: Re: [PATCH 7/8] drm/msm: dsi: add support for DSI-PHY on SM8650
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	Sean Paul <sean@poorly.run>, Marijn Suijten <marijn.suijten@somainline.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Marek <jonathan@marek.ca>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Oct 2023 at 10:35, Neil Armstrong <neil.armstrong@linaro.org> wrote:
>
> Add DSI PHY support for the SM8650 platform.
>
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.c     |  2 ++
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy.h     |  1 +
>  drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c | 27 +++++++++++++++++++++++++++
>  3 files changed, 30 insertions(+)
>
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> index 05621e5e7d63..7612be6c3618 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.c
> @@ -585,6 +585,8 @@ static const struct of_device_id dsi_phy_dt_match[] = {
>           .data = &dsi_phy_5nm_8450_cfgs },
>         { .compatible = "qcom,sm8550-dsi-phy-4nm",
>           .data = &dsi_phy_4nm_8550_cfgs },
> +       { .compatible = "qcom,sm8650-dsi-phy-4nm",
> +         .data = &dsi_phy_4nm_8650_cfgs },
>  #endif
>         {}
>  };
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> index 8b640d174785..e4275d3ad581 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy.h
> @@ -62,6 +62,7 @@ extern const struct msm_dsi_phy_cfg dsi_phy_7nm_7280_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_5nm_8350_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_5nm_8450_cfgs;
>  extern const struct msm_dsi_phy_cfg dsi_phy_4nm_8550_cfgs;
> +extern const struct msm_dsi_phy_cfg dsi_phy_4nm_8650_cfgs;
>
>  struct msm_dsi_dphy_timing {
>         u32 clk_zero;
> diff --git a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> index 3b1ed02f644d..c66193f2dc0d 100644
> --- a/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> +++ b/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c
> @@ -1121,6 +1121,10 @@ static const struct regulator_bulk_data dsi_phy_7nm_37750uA_regulators[] = {
>         { .supply = "vdds", .init_load_uA = 37550 },
>  };
>
> +static const struct regulator_bulk_data dsi_phy_7nm_98000uA_regulators[] = {
> +       { .supply = "vdds", .init_load_uA = 98000 },
> +};
> +
>  static const struct regulator_bulk_data dsi_phy_7nm_97800uA_regulators[] = {
>         { .supply = "vdds", .init_load_uA = 97800 },
>  };
> @@ -1281,3 +1285,26 @@ const struct msm_dsi_phy_cfg dsi_phy_4nm_8550_cfgs = {
>         .num_dsi_phy = 2,
>         .quirks = DSI_PHY_7NM_QUIRK_V5_2,
>  };
> +
> +const struct msm_dsi_phy_cfg dsi_phy_4nm_8650_cfgs = {

So, this is the same as sm8550 config, just using 400 uA less? I
wonder if it makes sense to go for setting the regulator mode instead
of setting the load.

Nevertheless (unless you'd like to reuse sm8550 config entry):

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> +       .has_phy_lane = true,
> +       .regulator_data = dsi_phy_7nm_98000uA_regulators,
> +       .num_regulators = ARRAY_SIZE(dsi_phy_7nm_98000uA_regulators),
> +       .ops = {
> +               .enable = dsi_7nm_phy_enable,
> +               .disable = dsi_7nm_phy_disable,
> +               .pll_init = dsi_pll_7nm_init,
> +               .save_pll_state = dsi_7nm_pll_save_state,
> +               .restore_pll_state = dsi_7nm_pll_restore_state,
> +               .set_continuous_clock = dsi_7nm_set_continuous_clock,
> +       },
> +       .min_pll_rate = 600000000UL,
> +#ifdef CONFIG_64BIT
> +       .max_pll_rate = 5000000000UL,
> +#else
> +       .max_pll_rate = ULONG_MAX,
> +#endif
> +       .io_start = { 0xae95000, 0xae97000 },
> +       .num_dsi_phy = 2,
> +       .quirks = DSI_PHY_7NM_QUIRK_V5_2,
> +};
>
> --
> 2.34.1
>


-- 
With best wishes
Dmitry

