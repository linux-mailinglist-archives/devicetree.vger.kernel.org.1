Return-Path: <devicetree+bounces-5280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 018917B5C7A
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 23:27:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A6DCE28132D
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 21:27:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B95220330;
	Mon,  2 Oct 2023 21:27:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB5F01DDC3
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 21:27:20 +0000 (UTC)
Received: from mail-ua1-x92d.google.com (mail-ua1-x92d.google.com [IPv6:2607:f8b0:4864:20::92d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C6700AD;
	Mon,  2 Oct 2023 14:27:16 -0700 (PDT)
Received: by mail-ua1-x92d.google.com with SMTP id a1e0cc1a2514c-7b08ac3ce7fso107394241.2;
        Mon, 02 Oct 2023 14:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696282036; x=1696886836; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=4tNkOteVS/UaA3JNDYOSsQf9478faNkt86P9y0gbwNo=;
        b=TerjjP8YmU0t/GnoHT3+bxYPXgTzhyf44lQETXtwj6VNG/j1I7QAm6zdf3TLQy3A9S
         rIXiBQu0GCX6asxQ/0z2JE36pdW2a2N51EJCXj8a6DRRD1QByGoGxYFs/FbNmv64bLxd
         F/xhqLOK4LiBg9bzPIbeAMUDvrNkzy6vXex2igiwanFwIv52OcqhLJQKPshqdHQgXFG6
         eWzkfabNIDXzzZUXVabib90XBb9G8QnXUHOOppppmUN3mR/01T5Rrv74VyBNM1DYYN7R
         u3rqVRr0Ni56CSlAIwOhYAU1Ra93ezi7aO2Ys6oN/LTGrH1PFd/1XvuYgWM05xc36rmJ
         4yhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696282036; x=1696886836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4tNkOteVS/UaA3JNDYOSsQf9478faNkt86P9y0gbwNo=;
        b=Qk9QbQ9HIlShrHoRbtpA9V4KJTUXUdWMuuwFl6Ocqg3dPlIl/e+HLZ6b0j3WXQos74
         8HlPmE13oZ/mrmX35+oiNw7pXFpzdHLKzkVmUI0U4hqLVljKXEb86Kya8IeSjSHtKje2
         Hk5KJhYSH/Fn5vidrSw4Yiy/UpcaHYOKu6JZ++lvL4alszK9PF7G/In6DQM/jPe9SyXp
         76uyFSk8+GgwF1zp/vRDzTQviuV+AKwx7G9GEpyB21eRb1svfZNVEYX1jqNQ9h7G8446
         7eUNETEje3gDkzxRN3/Hzfmqov+5eKxR/foQQ9i0MOD2aON9xWI7UMhoTJ8zGAnFNCki
         CMsg==
X-Gm-Message-State: AOJu0Yx5gi7YBj+uXPv5g03+132af2LRNg8e32/vzmCpPlevv/RnTjzP
	M5E1NKlpbQUkF9Tfqf4x2L8=
X-Google-Smtp-Source: AGHT+IGfcXn0kkMpQQ4lKn2ewW7zeEGedrPcMk1LY9cm9IBX+BrAm59deZ7oOIMqZU39gtqDFaJICA==
X-Received: by 2002:a1f:e041:0:b0:495:be1c:5be9 with SMTP id x62-20020a1fe041000000b00495be1c5be9mr9124261vkg.1.1696282035662;
        Mon, 02 Oct 2023 14:27:15 -0700 (PDT)
Received: from localhost ([2607:fea8:529e:7800::efbe])
        by smtp.gmail.com with ESMTPSA id k9-20020a0cf289000000b0064f53943626sm6472330qvl.89.2023.10.02.14.27.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Oct 2023 14:27:14 -0700 (PDT)
Date: Mon, 2 Oct 2023 17:27:13 -0400
From: Richard Acayan <mailingradian@gmail.com>
To: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Kuogee Hsieh <quic_khsieh@quicinc.com>,
	Vinod Polimera <quic_vpolimer@quicinc.com>,
	Ryan McCann <quic_rmccann@quicinc.com>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Liu Shixin <liushixin2@huawei.com>,
	Krishna Manikandan <quic_mkrishn@quicinc.com>,
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 5/6] drm/msm/dpu: Add hw revision 4.1 (SDM670)
Message-ID: <ZRs1se3P44_PjZ_P@radian>
References: <20230925232625.846666-9-mailingradian@gmail.com>
 <20230925232625.846666-14-mailingradian@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230925232625.846666-14-mailingradian@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 07:26:32PM -0400, Richard Acayan wrote:
> The Snapdragon 670 uses similar clocks (with one frequency added) to the
> Snapdragon 845 but reports DPU revision 4.1. Add support for this DPU
> with configuration from the Pixel 3a downstream kernel.
>
> Since revision 4.0 is SDM845, reuse some configuration from its catalog
> entry.
>
> Link: https://android.googlesource.com/kernel/msm/+/368478b0ae76566927a2769a2bf24dfe7f38bb78/arch/arm64/boot/dts/qcom/sdm670-sde.dtsi
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  .../msm/disp/dpu1/catalog/dpu_4_1_sdm670.h    | 105 ++++++++++++++++++
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    |   6 +
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   1 +
>  4 files changed, 113 insertions(+)
>  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_4_1_sdm670.h
>
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_4_1_sdm670.h b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_4_1_sdm670.h
> new file mode 100644
> index 000000000000..eaccb16b5db9
> --- /dev/null
> +++ b/drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_4_1_sdm670.h
> @@ -0,0 +1,105 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) 2015-2018, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2022. Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2023, Richard Acayan. All rights reserved.
> + */
> +
> +#ifndef _DPU_4_1_SDM670_H
> +#define _DPU_4_1_SDM670_H
> +
> +static const struct dpu_mdp_cfg sdm670_mdp = {
> +	.name = "top_0",
> +	.base = 0x0, .len = 0x45c,
> +	.features = BIT(DPU_MDP_AUDIO_SELECT),
> +	.clk_ctrls = {
> +		[DPU_CLK_CTRL_VIG0] = { .reg_off = 0x2ac, .bit_off = 0},
> +		[DPU_CLK_CTRL_VIG1] = { .reg_off = 0x2b4, .bit_off = 0},
> +		[DPU_CLK_CTRL_DMA0] = { .reg_off = 0x2ac, .bit_off = 8},
> +		[DPU_CLK_CTRL_DMA1] = { .reg_off = 0x2b4, .bit_off = 8},
> +		[DPU_CLK_CTRL_DMA2] = { .reg_off = 0x2bc, .bit_off = 8},
> +	},
> +};
> +
> +static const struct dpu_sspp_cfg sdm670_sspp[] = {
> +	{
> +		.name = "sspp_0", .id = SSPP_VIG0,
> +		.base = 0x4000, .len = 0x1c8,
> +		.features = VIG_SDM845_MASK_SDMA,
> +		.sblk = &sdm670_vig_sblk_0,
> +		.xin_id = 0,
> +		.type = SSPP_TYPE_VIG,
> +		.clk_ctrl = DPU_CLK_CTRL_VIG0,
> +	}, {
> +		.name = "sspp_1", .id = SSPP_VIG1,
> +		.base = 0x6000, .len = 0x1c8,
> +		.features = VIG_SDM845_MASK_SDMA,
> +		.sblk = &sdm670_vig_sblk_1,
> +		.xin_id = 4,
> +		.type = SSPP_TYPE_VIG,
> +		.clk_ctrl = DPU_CLK_CTRL_VIG0,
> +	}, {
> +		.name = "sspp_8", .id = SSPP_DMA0,
> +		.base = 0x24000, .len = 0x1c8,
> +		.features = DMA_SDM845_MASK_SDMA,
> +		.sblk = &sdm845_dma_sblk_0,
> +		.xin_id = 1,
> +		.type = SSPP_TYPE_DMA,
> +		.clk_ctrl = DPU_CLK_CTRL_DMA0,
> +	}, {
> +		.name = "sspp_9", .id = SSPP_DMA1,
> +		.base = 0x26000, .len = 0x1c8,
> +		.features = DMA_CURSOR_SDM845_MASK_SDMA,
> +		.sblk = &sdm845_dma_sblk_1,
> +		.xin_id = 5,
> +		.type = SSPP_TYPE_DMA,
> +		.clk_ctrl = DPU_CLK_CTRL_DMA1,
> +	}, {
> +		.name = "sspp_10", .id = SSPP_DMA2,
> +		.base = 0x28000, .len = 0x1c8,
> +		.features = DMA_CURSOR_SDM845_MASK_SDMA,
> +		.sblk = &sdm845_dma_sblk_2,
> +		.xin_id = 9,
> +		.type = SSPP_TYPE_DMA,
> +		.clk_ctrl = DPU_CLK_CTRL_DMA2,
> +	},
> +};
> +
> +static struct dpu_dsc_cfg sdm670_dsc[] = {
> +	{
> +		.name = "dsc_0", .id = DSC_0,
> +		.base = 0x80000, .len = 0x140,
> +	},
> +	{

Let's join these braces on the same line.

> +		.name = "dsc_1", .id = DSC_1,
> +		.base = 0x80400, .len = 0x140,
> +	},
> +};
> +
> +static struct dpu_mdss_version sdm670_mdss_ver = {
> +	.core_major_ver = 4,
> +	.core_minor_ver = 1,
> +};
> +
> +const struct dpu_mdss_cfg dpu_sdm670_cfg = {
> +	.mdss_ver = &sdm670_mdss_ver,
> +	.caps = &sdm845_dpu_caps,
> +	.mdp = &sdm670_mdp,
> +	.ctl_count = ARRAY_SIZE(sdm845_ctl),
> +	.ctl = sdm845_ctl,
> +	.sspp_count = ARRAY_SIZE(sdm670_sspp),
> +	.sspp = sdm670_sspp,
> +	.mixer_count = ARRAY_SIZE(sdm845_lm),
> +	.mixer = sdm845_lm,
> +	.pingpong_count = ARRAY_SIZE(sdm845_pp),
> +	.pingpong = sdm845_pp,
> +	.dsc_count = ARRAY_SIZE(sdm670_dsc),
> +	.dsc = sdm670_dsc,
> +	.intf_count = ARRAY_SIZE(sdm845_intf),
> +	.intf = sdm845_intf,
> +	.vbif_count = ARRAY_SIZE(sdm845_vbif),
> +	.vbif = sdm845_vbif,
> +	.perf = &sdm845_perf_data,
> +};
> +
> +#endif
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c
> index 713dfc079718..63b274ae032a 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c
> @@ -313,6 +313,11 @@ static const struct dpu_rotation_cfg dpu_rot_sc7280_cfg_v2 = {
>  	.rot_format_list = rotation_v2_formats,
>  };
>  
> +static const struct dpu_sspp_sub_blks sdm670_vig_sblk_0 =
> +				_VIG_SBLK(4, DPU_SSPP_SCALER_QSEED3);
> +static const struct dpu_sspp_sub_blks sdm670_vig_sblk_1 =
> +				_VIG_SBLK(5, DPU_SSPP_SCALER_QSEED3);
> +
>  static const struct dpu_sspp_sub_blks sdm845_vig_sblk_0 =
>  				_VIG_SBLK(5, DPU_SSPP_SCALER_QSEED3);
>  static const struct dpu_sspp_sub_blks sdm845_vig_sblk_1 =
> @@ -655,6 +660,7 @@ static const struct dpu_qos_lut_entry sc7180_qos_nrt[] = {
>  #include "catalog/dpu_3_0_msm8998.h"
>  
>  #include "catalog/dpu_4_0_sdm845.h"
> +#include "catalog/dpu_4_1_sdm670.h"
>  
>  #include "catalog/dpu_5_0_sm8150.h"
>  #include "catalog/dpu_5_1_sc8180x.h"
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> index 6c9634209e9f..dae5a1555e44 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h
> @@ -831,6 +831,7 @@ struct dpu_mdss_cfg {
>  
>  extern const struct dpu_mdss_cfg dpu_msm8998_cfg;
>  extern const struct dpu_mdss_cfg dpu_sdm845_cfg;
> +extern const struct dpu_mdss_cfg dpu_sdm670_cfg;
>  extern const struct dpu_mdss_cfg dpu_sm8150_cfg;
>  extern const struct dpu_mdss_cfg dpu_sc8180x_cfg;
>  extern const struct dpu_mdss_cfg dpu_sm8250_cfg;
> diff --git a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> index aa6ba2cf4b84..0049fb1de1e8 100644
> --- a/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> +++ b/drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c
> @@ -1362,6 +1362,7 @@ static const struct dev_pm_ops dpu_pm_ops = {
>  static const struct of_device_id dpu_dt_match[] = {
>  	{ .compatible = "qcom,msm8998-dpu", .data = &dpu_msm8998_cfg, },
>  	{ .compatible = "qcom,qcm2290-dpu", .data = &dpu_qcm2290_cfg, },
> +	{ .compatible = "qcom,sdm670-dpu", .data = &dpu_sdm670_cfg, },
>  	{ .compatible = "qcom,sdm845-dpu", .data = &dpu_sdm845_cfg, },
>  	{ .compatible = "qcom,sc7180-dpu", .data = &dpu_sc7180_cfg, },
>  	{ .compatible = "qcom,sc7280-dpu", .data = &dpu_sc7280_cfg, },
> -- 
> 2.42.0
>

