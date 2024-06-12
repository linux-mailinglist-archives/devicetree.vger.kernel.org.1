Return-Path: <devicetree+bounces-75173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D9736905BA0
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 21:05:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4AA6FB21B7A
	for <lists+devicetree@lfdr.de>; Wed, 12 Jun 2024 19:05:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C8FC82860;
	Wed, 12 Jun 2024 19:05:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C4nXj5/o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE7FB2F3B
	for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 19:05:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718219110; cv=none; b=BwV6/J8ZQpW/7IztBd+fF3dIp2mrcKq5+c9mVITeCvFeqig6ZcOKSf91taF66P44hj3rwmamz9savjbHr6VHHaVWDRyfauHIyV/5QkOqpukH6kWLKm8vzhv5q7e865oLJTfGwGgL23BOXU4Jx6ZWSTDvdOf+qr7h1k1WAjb4U8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718219110; c=relaxed/simple;
	bh=o29J1h+958oSIVbTpGXXy4Yly7aJHs5CuoQNkKcVz6o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=By729NcisdBJbUdIQv5GgvWeBzgDs5uvFPh3BzAakMyx0i/wpIk1F62QKGR03Vtd3tt+FBduAcqhYgMG17BMpB8bkIpvogRcdQDLgdkTV6P9C84YxxTwhj7/rDGDOUsDG1+rkrkU67r190WsYL4I8vs6fWDvnz2rQkcFzj0rCJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C4nXj5/o; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-52bbdc237f0so310453e87.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jun 2024 12:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1718219106; x=1718823906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=mVn0gUr8jwuVMGQACKErKUFq31rOO6g1SOd15vC3Cks=;
        b=C4nXj5/oQXBJiuCP2IwcUa6fyvvA9tWAGe+73ibjIW/GtI0DdxxEBv97Bx0ggqZaJ1
         qZqodj+9LFzR3zcGR9EAd03HLz7OMPFdimn5AJo7Bk2vSoJYSoCkMf87eqkdmBwUj9BA
         ks9nKfMlOeRDeZbpg8u6ELuQ+2oR1OUghuvgUbHYReqaMWIlMlpkUjb2qtYcJp3ursZw
         Q7yZVcRFHk/YqJqSF05beWHzEENrixUJwlZnI/0whcgRCldgkWXj6DO7Dw4BwSrpT9C/
         b5NHdevPOFtzB30FQUMH3WtYQ+OpbqjPCmI22weDbXJIQ0t9iI83aBuxHM+Z83Lmk2jQ
         e0AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718219106; x=1718823906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mVn0gUr8jwuVMGQACKErKUFq31rOO6g1SOd15vC3Cks=;
        b=IKQ82o5eXKpPx6SzCkqmCgxNojClTjl4XlDs0cK8ezAFA+mvRP9zcuHM3+lxh05BUw
         c/Fi5e0wlvtrSFO89hA2B1ffm7RTM/OiNG8EhyQO95m+nhjtQwOgiQ8oUzS/uR+g4CPz
         UiYEqlpyn2inzpr0PSncv+H+KfQT7SuM2900yZjUvNZaUOm/6TcGvztOuTnovDpFWVH5
         5robSwp0hTL8oRGJch4L6K427OxKNuf/sgEaPGsSaN8JrnWeW5qeYKwXwrukeoPmMFy0
         12h2TlugF8WQgT8c+UM86JDk+pO/xrB0Du/fWdlMQmTtA2BAQf73BO0lIjlwJ2BXn7qi
         Q9nQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZhOJRvuwf4e7A3NM1/SHjuuZvseaMqpBqV3m2gVddhPvoDa/XRT1BgtaUkreYTxLflMJ+Ybohml1/QLUljs1pD4Fxyq29LCjjUA==
X-Gm-Message-State: AOJu0YyguR35yQFTE60Y0Y1lZe6RsDEmhxHnG64cTLw5l/zyPQQGufjL
	6+go37PxeuD7atNXFnyx03T2O6pB4SNHDuFjQbhNoM4qI21D69wq33IbbkZVjU0=
X-Google-Smtp-Source: AGHT+IGykt0YUd4KoCQDPLnbKvOevsXXuj+TXY3BeFiPg46EyDmTIi4o32Gf4o4QJDGIBDrqpGJfXA==
X-Received: by 2002:a05:6512:799:b0:52b:befb:24ad with SMTP id 2adb3069b0e04-52c9a3c7449mr2080284e87.20.1718219105792;
        Wed, 12 Jun 2024 12:05:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb423dd68sm2601311e87.210.2024.06.12.12.05.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Jun 2024 12:05:05 -0700 (PDT)
Date: Wed, 12 Jun 2024 22:05:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Danila Tikhonov <danila@jiaxyga.com>
Cc: robdclark@gmail.com, quic_abhinavk@quicinc.com, sean@poorly.run, 
	marijn.suijten@somainline.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, airlied@gmail.com, daniel@ffwll.ch, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, quic_rmccann@quicinc.com, 
	konrad.dybcio@linaro.org, neil.armstrong@linaro.org, jonathan@marek.ca, 
	swboyd@chromium.org, quic_khsieh@quicinc.com, quic_jesszhan@quicinc.com, 
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/4] drm/msm/dpu: Add SM7150 support
Message-ID: <qinrviffefuy77tmk5itgiyapgpnfpzupggb6bgvlxk6kybxjn@h4wmocovtdch>
References: <20240612184336.11794-1-danila@jiaxyga.com>
 <20240612184336.11794-5-danila@jiaxyga.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240612184336.11794-5-danila@jiaxyga.com>

On Wed, Jun 12, 2024 at 09:43:36PM +0300, Danila Tikhonov wrote:
> Add definitions for the display hardware used on the Qualcomm SM7150
> platform.
> 
> Signed-off-by: Danila Tikhonov <danila@jiaxyga.com>
> ---
>  .../msm/disp/dpu1/catalog/dpu_5_2_sm7150.h    | 349 ++++++++++++++++++
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.c    |   1 +
>  .../gpu/drm/msm/disp/dpu1/dpu_hw_catalog.h    |   1 +
>  drivers/gpu/drm/msm/disp/dpu1/dpu_kms.c       |   1 +
>  4 files changed, 352 insertions(+)
>  create mode 100644 drivers/gpu/drm/msm/disp/dpu1/catalog/dpu_5_2_sm7150.h
> 

[...]

> +static const struct dpu_sspp_cfg sm7150_sspp[] = {
> +	{
> +		.name = "sspp_0", .id = SSPP_VIG0,
> +		.base = 0x4000, .len = 0x1f0,
> +		.features = VIG_SDM845_MASK,
> +		.sblk = &dpu_vig_sblk_qseed3_1_4,

dpu_vig_sblk_qseed3_2_4 (and further on).

> +		.xin_id = 0,
> +		.type = SSPP_TYPE_VIG,
> +		.clk_ctrl = DPU_CLK_CTRL_VIG0,
> +	}, {
> +		.name = "sspp_1", .id = SSPP_VIG1,
> +		.base = 0x6000, .len = 0x1f0,
> +		.features = VIG_SDM845_MASK,
> +		.sblk = &dpu_vig_sblk_qseed3_1_4,
> +		.xin_id = 4,
> +		.type = SSPP_TYPE_VIG,
> +		.clk_ctrl = DPU_CLK_CTRL_VIG1,
> +	}, {
> +		.name = "sspp_2", .id = SSPP_DMA0,
> +		.base = 0x24000, .len = 0x1f0,
> +		.features = DMA_SDM845_MASK,
> +		.sblk = &dpu_dma_sblk,
> +		.xin_id = 1,
> +		.type = SSPP_TYPE_DMA,
> +		.clk_ctrl = DPU_CLK_CTRL_DMA0,
> +	}, {
> +		.name = "sspp_9", .id = SSPP_DMA1,
> +		.base = 0x26000, .len = 0x1f0,
> +		.features = DMA_SDM845_MASK,
> +		.sblk = &dpu_dma_sblk,
> +		.xin_id = 5,
> +		.type = SSPP_TYPE_DMA,
> +		.clk_ctrl = DPU_CLK_CTRL_DMA1,
> +	}, {
> +		.name = "sspp_10", .id = SSPP_DMA2,
> +		.base = 0x28000, .len = 0x1f0,
> +		.features = DMA_CURSOR_SDM845_MASK,
> +		.sblk = &dpu_dma_sblk,
> +		.xin_id = 9,
> +		.type = SSPP_TYPE_DMA,
> +		.clk_ctrl = DPU_CLK_CTRL_DMA2,
> +	},
> +};
> +
> +static const struct dpu_lm_cfg sm7150_lm[] = {
> +	{
> +		.name = "lm_0", .id = LM_0,
> +		.base = 0x44000, .len = 0x320,
> +		.features = MIXER_SDM845_MASK,
> +		.sblk = &sdm845_lm_sblk,
> +		.lm_pair = LM_1,
> +		.pingpong = PINGPONG_0,
> +		.dspp = DSPP_0,
> +	}, {
> +		.name = "lm_1", .id = LM_1,
> +		.base = 0x45000, .len = 0x320,
> +		.features = MIXER_SDM845_MASK,
> +		.sblk = &sdm845_lm_sblk,
> +		.lm_pair = LM_0,
> +		.pingpong = PINGPONG_1,
> +		.dspp = DSPP_1,
> +	}, {
> +		.name = "lm_2", .id = LM_2,
> +		.base = 0x46000, .len = 0x320,
> +		.features = MIXER_SDM845_MASK,
> +		.sblk = &sdm845_lm_sblk,
> +		.lm_pair = LM_3,
> +		.pingpong = PINGPONG_2,
> +	}, {
> +		.name = "lm_3", .id = LM_3,
> +		.base = 0x47000, .len = 0x320,
> +		.features = MIXER_SDM845_MASK,
> +		.sblk = &sdm845_lm_sblk,
> +		.lm_pair = LM_2,
> +		.pingpong = PINGPONG_3,
> +	}, {
> +		.name = "lm_4", .id = LM_4,
> +		.base = 0x0, .len = 0x320,
> +		.features = MIXER_SDM845_MASK,
> +		.sblk = &sdm845_lm_sblk,
> +		.lm_pair = 0,
> +		.pingpong = PINGPONG_4,
> +	}, {
> +		.name = "lm_5", .id = LM_5,
> +		.base = 0x0, .len = 0x320,
> +		.features = MIXER_SDM845_MASK,
> +		.sblk = &sdm845_lm_sblk,
> +		.lm_pair = 0,
> +		.pingpong = PINGPONG_5,
> +	},

Please drop LM_4 and LM_5, I don't think they are really a part of the
hardware (especially with base = 0).

> +};
> +

-- 
With best wishes
Dmitry

