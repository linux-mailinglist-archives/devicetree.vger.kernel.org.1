Return-Path: <devicetree+bounces-123606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 78E279D568E
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 01:08:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 38EEE281048
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 00:08:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E2FB17C;
	Fri, 22 Nov 2024 00:08:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jZwGUJCI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E28B635
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 00:08:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732234130; cv=none; b=MfzdG3ciZdDr4AfnpN19HXlGNPKzbhQeah+eyqzK/lsIy6WD0ElAWboHkLwhM/chcYZX7Q1Qfdwm2oS7eitlyLj98ZwWgwNy9GphbCQzbAq+sjh0EnFLT48Vil8B27gyf5I5dTRpFWFs79WEKK3FllFY71BMQnBEkNYtQqJOXiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732234130; c=relaxed/simple;
	bh=8QY0OoK99j6oVx8eixrtqtZjvjlLwAKj9WJXGC3Ants=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BkSdKECWq4qpj2tIslVaiGa4Yv+1EhlaVVFjAUi9v/AnPyy5P7m9ni+k083T7omR+Zwf9mUxyqCWTO8vl6LSueWXrq+ZCeNdsh0w+EpqQHQyxm8KsiGKbUziPts4rE0o7Uix9QAoXXEcpKnoE5NSfrt2YsafxSE1n0AV6dmvkT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jZwGUJCI; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-53da4fd084dso2732752e87.0
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 16:08:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732234126; x=1732838926; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Pb10zmYHQSv3I83zcr7E+6kREcna9ZYNd5sNu4/LV7s=;
        b=jZwGUJCIjy/OBiAsXU38+IsoIlXzBW8rfsWcdDAujRNQKPpqGun8d7sho4EXpxV/EI
         uJt4Y8IJpLsWzaMpRyqu+0ox+jDr6DJ3c3CycRy7hmAlusl05HMEmnt8m0dB2ZPMoVzM
         u5P9LbP/BiUeXTc+s5BQRAW3Dg4egTLNGu5FNDl5OHJwhWj/6wg1HWJYhh8K4SxG+1pY
         r5sm8gmIHvf5+I0E70gxOXv5gzTn8EOoiDYj4CrqiH6gguR4OJmpg4kADRxrx7TzAvhs
         qoshMs8cuxFf/oZkqyAnrXHSMI2kb2uD0dYDZG1Cam5MfzdBuNd0iYa/bo9ofNrJ6bmg
         eJOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732234126; x=1732838926;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pb10zmYHQSv3I83zcr7E+6kREcna9ZYNd5sNu4/LV7s=;
        b=O1F3tRUE4qk4WwRp3RWVnKu8YMD8BRdrBmuY12Bam3sdRsYbbvEWdOBni+sLcI74ZI
         jVyBUWrxZr9DwJrJIiJQPH8a0TIouW6uNonOVY2hzANF9DyjxuA3TMKx/C4Motn4QExW
         HQmhdY8ibl9RD+VVTLRK9j8crrHIlmaGU4yfTG2BICjLUCsU3CA9bWDz6pLbV+5zv1dD
         mzhy1FLPpVwGBmSxC4E5PKpuM7KuRGxKG43BeY67qF7HgNI92rGLauzmu1vaizb26z6O
         4grqbEvr77cz42FAj1X6gcL0/PFVwNVKRxDgadPsuh9GiDxKxzbk0jgGAz4pQ+SRUdR9
         g5hw==
X-Gm-Message-State: AOJu0Yzv3d0wLfNEICTp8aqzVC3ljmfEW1QJQAOk4kiIyscXB4OerJA2
	GIZ9fnIemZ0yQ3wKkEY/bvH+EI6Ie7cYl7cigqFbL8LSd2/a/+ILmhvWKoz7ofQ=
X-Gm-Gg: ASbGncsTG31uGoP9BRiW/hsGtkpw+bZYivBjNiHcVz8UFpLBM7I91sJcDeFAx1ylxUk
	msKGag6kmfn8DKWyit9F4tnHZHD9XwZNeX7RCHPdKdxLaAeRaWun7nAJkNFOlmfGVGsa3tnNfRE
	7/Y8a7P2TEer0SrGJwJVZMwgAX/LktP099JEDwF0HAPnwl/IZHMEGjb8O4inzy3FN8ILXqglvi+
	YMJvReYhJDNq6QEmcMEPzkQAOAJEKMaIhxbJouUewXd4YynbwzbsEOB+gaq1laRKFIzRhhqb4v8
	fRr3U7xeixYM/T99BAcmPv5WBP9pvQ==
X-Google-Smtp-Source: AGHT+IEuYo3TXwIBAta2+QFFKa258N+W0wLgiRkvqaQO6FoTfco4TU0xkpE/1Qfqy0nPr2pRscBPLQ==
X-Received: by 2002:a05:6512:2247:b0:53d:d06c:cdf8 with SMTP id 2adb3069b0e04-53dd06ccfbamr1006096e87.1.1732234126460;
        Thu, 21 Nov 2024 16:08:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd2489841sm120742e87.178.2024.11.21.16.08.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 16:08:44 -0800 (PST)
Date: Fri, 22 Nov 2024 02:08:42 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: keith zhao <keith.zhao@starfivetech.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, 
	simona@ffwll.ch, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com, 
	william.qiu@starfivetech.com, xingyu.wu@starfivetech.com, kernel@esmil.dk, 
	paul.walmsley@sifive.com, palmer@dabbelt.com, aou@eecs.berkeley.edu, 
	p.zabel@pengutronix.de, changhuang.liang@starfivetech.com, jack.zhu@starfivetech.com, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 5/9] drm/vs: Add Base API for VS Mode Configuration
Message-ID: <6nztdhkgx5wm5byq46jbhivws4kvwpnmnc7r5jsqaqm5rlzb2k@dz7ohbcirnd4>
References: <20241120061848.196754-1-keith.zhao@starfivetech.com>
 <20241120061848.196754-6-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241120061848.196754-6-keith.zhao@starfivetech.com>

On Wed, Nov 20, 2024 at 02:18:44PM +0800, keith zhao wrote:
> This commit adds a base API for configuring VS modes,
> which will streamline the setup and management of display modes
> in the VS DRM subsystem.
> 
> In this implementation, we are using drm_atomic_helper_commit_tail_rpm()
> instead of drm_atomic_helper_commit_tail() to ensure that
> we skip planes related to inactive CRTCs.
> 
> This helps to optimize the commit process and reduces unnecessary overhead
> when dealing with inactive display resources.

 * This is an alternative implementation for the
 * &drm_mode_config_helper_funcs.atomic_commit_tail hook, for drivers
 * that support runtime_pm or need the CRTC to be enabled to perform a
 * commit. Otherwise, one should use the default implementation
 * drm_atomic_helper_commit_tail().

Neither of the cases seem to apply here. Please use
drm_atomic_helper_commit_tail().

> Signed-off-by: keith zhao <keith.zhao@starfivetech.com>
> ---
>  drivers/gpu/drm/verisilicon/Makefile     |  3 ++-
>  drivers/gpu/drm/verisilicon/vs_modeset.c | 31 ++++++++++++++++++++++++
>  drivers/gpu/drm/verisilicon/vs_modeset.h | 10 ++++++++
>  3 files changed, 43 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_modeset.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_modeset.h
> 
> diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/verisilicon/Makefile
> index 7da54b259940..842867dad4cb 100644
> --- a/drivers/gpu/drm/verisilicon/Makefile
> +++ b/drivers/gpu/drm/verisilicon/Makefile
> @@ -1,5 +1,6 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
> -vs_drm-objs := vs_dc_hw.o
> +vs_drm-objs := vs_dc_hw.o \
> +	       vs_modeset.o
>  
>  obj-$(CONFIG_DRM_VERISILICON_DC8200) += vs_drm.o
> diff --git a/drivers/gpu/drm/verisilicon/vs_modeset.c b/drivers/gpu/drm/verisilicon/vs_modeset.c
> new file mode 100644
> index 000000000000..0873a3465143
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_modeset.c
> @@ -0,0 +1,31 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) VeriSilicon Holdings Co., Ltd.
> + */
> +#include <drm/drm_atomic_helper.h>
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

There is no point in having single-function headers, please find
something more global.

> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

