Return-Path: <devicetree+bounces-68232-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3055A8CB4EC
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 22:53:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA6252858E6
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 20:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B004F149C42;
	Tue, 21 May 2024 20:52:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wJ8inRPn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C9B763F1
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 20:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716324775; cv=none; b=bIDiajFY6QNOu0qqsJdFye5AuyDs+fsV6pqM9TwD2QLE3qnSy8mFyPXABFLHR5HPmh79tVay3j6sVant119Iju806cEmjV9hJNVCIki8XrkGZpb6pyL/ybfGAHMAZZyCaXKkSnqJxly0xzMf12e4az/n1AqW72FeKc0/G9C8+/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716324775; c=relaxed/simple;
	bh=T4r4UOzazpDwOoTNYJRsXcpEc54ba9FCpMQL7fJvH54=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XTfJgW0qLvzNo8kHn5GsMn7KPjn7RnLwYYl0L77kypgPtqjJRcPhy+DOQEAc4ro5u8/4IYYnViy+e01vT1Jwi0F2wL0vLA6xZaDKGQ5vh4h/kgwsX5XHU30Z/L9PzXWcDEz2toD5iuYkxnASEeGqpt8l12RDEpiLJyU+F4S/bWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wJ8inRPn; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2e724bc46bfso32427781fa.3
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 13:52:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716324771; x=1716929571; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=msxyCLm+NoD8gt9t5sc/sqtgLcdGE0LrYHv1PtdYhxE=;
        b=wJ8inRPnWrnor0k2WR/+fP0NB5O/XhLyq2tBQSvwEefb/YSFTZCljJjvC3Yemy4ILD
         EKprNoyNDyhSOg6c7/UCkcrHsSHDtwRGThMbi7F21Uz5udPJ3vtUCPMrRfNQLAg7ny76
         fyYMifTbEjRhb/pByyrAOQ/OFZMRtV6vz62Dgy1Sk+8VYWL7cO1/T1phj+1ZaHgAjWLu
         yo2HJ+lYStNV/tfPfLbywAyBud10Xw9avTnmgqebdkWh2OZ+J/OBOA/YuOjelwF6n59+
         5gWJJhxIkd1K+ph2drIpx4+1hatEAsk27hJrH9RirGHPwuqSkBOHTMDdc7RWIi/FemGH
         E1YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716324771; x=1716929571;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=msxyCLm+NoD8gt9t5sc/sqtgLcdGE0LrYHv1PtdYhxE=;
        b=RlXi4Aqu8KyOnsOlxNe42HqIf8LaxHh/px5TEdT9v1k3dMo30ZNJ3FxpDkz5DrOWeu
         EdizIHtGSOBZWBGEmHM+fd+brs0Ai3OQpIfHKpm1QfZFNKSrrqW1/n9TrlxtWo+aDDV7
         XH7Vhp994SdzhC2UkEBsYOPfD5L64eh6E39i77ne0NzeAuZbfNI787kYTFF8JJj67klo
         SZDLzy8T+1yR3DOqJML3GmTrUU/NT0DHRdUSlkwtqvaEyO2j/heulPh7faOcHI7GN/ew
         TcxKO5yaY/P/JJTLuM30LmnjVoIzxvAnappdKz43JB43U35QdPMcDZebsYgBlMPIIRbo
         Y72g==
X-Forwarded-Encrypted: i=1; AJvYcCUqHp7O7fXsqOclXBPq+in7PCqTueSOdvFLoiGCF8j4lDsknQmpDx0+kZnhWdv/gOG2xdd7MQFfgB8Mg5Bh41IJthcucxGkn+yy/Q==
X-Gm-Message-State: AOJu0YyRfkq8Yqv+BaDZnPsxT/KjwiWsJcxcpjTrCe3QlHQruXZIHUnY
	bnqbBncTkfrj+vqBrwHu1B12Cc2W69nVo8V+X8E68UjkS3O6rMql5EtF6jDl9/4=
X-Google-Smtp-Source: AGHT+IH9JnZ8CnZBbmaZFoXCSh2S7w8ZfIIRcaRrDzVz1afxLKCUvUcZ9fni8BZiKaLEuV2o297Qfw==
X-Received: by 2002:a05:6512:3147:b0:523:9747:4920 with SMTP id 2adb3069b0e04-52397475405mr10938328e87.36.1716324771258;
        Tue, 21 May 2024 13:52:51 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-521f38d87a5sm4800254e87.202.2024.05.21.13.52.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 13:52:50 -0700 (PDT)
Date: Tue, 21 May 2024 23:52:49 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: keith <keith.zhao@starfivetech.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	daniel@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	xingyu.wu@starfivetech.com, p.zabel@pengutronix.de, jack.zhu@starfivetech.com, 
	shengyang.chen@starfivetech.com, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 05/10] drm/vs: add vs mode config init
Message-ID: <ttjuehs6ui4dsnexhhodfd22okujx55mof5svxuk47gizhkv52@kdbdvwsamz6i>
References: <20240521105817.3301-1-keith.zhao@starfivetech.com>
 <20240521105817.3301-6-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240521105817.3301-6-keith.zhao@starfivetech.com>

On Tue, May 21, 2024 at 06:58:12PM +0800, keith wrote:
> add vs mode config base api

Commit message? Please describe e.g. why are you using
drm_atomic_helper_commit_tail_rpm() instead of
drm_atomic_helper_commit_tail().

> 
> Signed-off-by: keith <keith.zhao@starfivetech.com>

Name

> ---
>  drivers/gpu/drm/verisilicon/Makefile     |  3 +-
>  drivers/gpu/drm/verisilicon/vs_modeset.c | 36 ++++++++++++++++++++++++
>  drivers/gpu/drm/verisilicon/vs_modeset.h | 10 +++++++
>  3 files changed, 48 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_modeset.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_modeset.h
> 
> diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/verisilicon/Makefile
> index 7da54b259940..536091f37378 100644
> --- a/drivers/gpu/drm/verisilicon/Makefile
> +++ b/drivers/gpu/drm/verisilicon/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
> -vs_drm-objs := vs_dc_hw.o
> +vs_drm-objs := vs_dc_hw.o \
> +		vs_modeset.o
>  
>  obj-$(CONFIG_DRM_VERISILICON_DC8200) += vs_drm.o
> diff --git a/drivers/gpu/drm/verisilicon/vs_modeset.c b/drivers/gpu/drm/verisilicon/vs_modeset.c
> new file mode 100644
> index 000000000000..c71fe0d32504
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_modeset.c
> @@ -0,0 +1,36 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2023 VeriSilicon Holdings Co., Ltd.
> + */
> +#include <drm/drm_damage_helper.h>

I don't see anything concerning damage helpers being used here.

> +#include <drm/drm_fb_helper.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
> +
> +#include "vs_modeset.h"
> +
> +static const struct drm_mode_config_funcs vs_mode_config_funcs = {
> +	.fb_create			 = drm_gem_fb_create,
> +	.atomic_check		 = drm_atomic_helper_check,
> +	.atomic_commit		 = drm_atomic_helper_commit,
> +};
> +
> +static struct drm_mode_config_helper_funcs vs_mode_config_helpers = {
> +	.atomic_commit_tail = drm_atomic_helper_commit_tail_rpm,
> +};
> +
> +void vs_mode_config_init(struct drm_device *dev)
> +{
> +	int ret;
> +
> +	ret = drmm_mode_config_init(dev);
> +	if (ret)
> +		return;
> +
> +	dev->mode_config.min_width  = 0;
> +	dev->mode_config.min_height = 0;
> +	dev->mode_config.max_width  = 4096;
> +	dev->mode_config.max_height = 4096;
> +
> +	dev->mode_config.funcs = &vs_mode_config_funcs;
> +	dev->mode_config.helper_private = &vs_mode_config_helpers;
> +}
> diff --git a/drivers/gpu/drm/verisilicon/vs_modeset.h b/drivers/gpu/drm/verisilicon/vs_modeset.h
> new file mode 100644
> index 000000000000..bd04f81d2ad2
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_modeset.h
> @@ -0,0 +1,10 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2020 VeriSilicon Holdings Co., Ltd.
> + */
> +
> +#ifndef __VS_MODESET_H__
> +#define __VS_MODESET_H__
> +
> +void vs_mode_config_init(struct drm_device *dev);
> +#endif /* __VS_FB_H__ */
> -- 
> 2.27.0
> 

-- 
With best wishes
Dmitry

