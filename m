Return-Path: <devicetree+bounces-68178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 481288CB12C
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 17:25:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE88D1F24FC7
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2024 15:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78DFF1448E2;
	Tue, 21 May 2024 15:25:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k9kSksGw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A31C1442F0
	for <devicetree@vger.kernel.org>; Tue, 21 May 2024 15:25:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716305109; cv=none; b=S0LdRhM/QhkKyI3YJD5ZnuRfU9UVXs6vnCURp7fq0LoOpxAFcMhWm3LqGpGtpQMsiq+gtux+3kwEeFgJFuvBdMuiJvPLzmFjtl10S8r6XDYTFK9KmC8H9y4uuIabiho+yIfFR04yPDJDL/L/ynkcM+bSzh8vzaKWbpj/WWzpGT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716305109; c=relaxed/simple;
	bh=N909/jYUBOF77kMTLcm6D6mBRd3K1pIODTOJI2DxZo4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BxKkBHfhTp02adOtdAHvn7Rz/ODtGWN0iU9H17HGq9Sa4nxiKweUUvSHPa7Mm4RSyVPCR8N7ahTuMwq1LrBUrMsAjUmW7RuTz7ca+UHtPZorY0inRnR8sWg4vZrC6r+T1sCvO8wXcHWDq2cY566VR5WHQAVCaf00+ofDbJ0GYzU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k9kSksGw; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-51f2ebbd8a7so6852092e87.2
        for <devicetree@vger.kernel.org>; Tue, 21 May 2024 08:25:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716305106; x=1716909906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rOC2cvHHsCfE/XZDQOspaP8vFm7DFyYrnaEnVeU9qAQ=;
        b=k9kSksGw4rj2mUqweuu/mzXizEo1vXkmMfu9fDH7ncNb3+oNX8ilFSNqgEi0R5p2NL
         sb05fGN21UnBQ/Hpg9AauAPTFIyEZBOk9zceJ9WwRyYiMMkJG1y7QAIezcEgNIYgVytv
         MCfare1YdJcTp1eYiznj+zPqpOBRS1HmcwRCAh1OZrz2qowtZ5MKXFs+CcB+w2fqJTCc
         K14TlEiZXgWktVSkPwh3K+j6hCZ3dbOBeXlmpqA+0RskQbdV6Q7LDRmuXIhkpmWiJgAJ
         pDf1ixZajd9+uVYgH71hb169SfV1DTozS7g5aaTpHectkpvFn6xKsZwYMvAjSJ5zfDkd
         c/mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716305106; x=1716909906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rOC2cvHHsCfE/XZDQOspaP8vFm7DFyYrnaEnVeU9qAQ=;
        b=q50cPO4AbsVn6JXAG/h/RoABz9vETWqDbc54H61R9WtBpCsrM6VXhQNW/6JBMlwyRi
         kr7HYCkUoEdQmZ5MME36EhUTN2OoF9Btmq3pC/qPNwc10wWIj7M5kXMBbj/vFlfU3eiu
         MOYbSGMBY6imYg2h0U3Cqe8yBkdDwoIoRSZkn82+qN0CmapXXT4+WqyApSCxXHv17aVY
         Ppg5RaTvbuvs4/F+eumoyQ/8AZCTDqGgxLm6wBQgywQTpf/si3BM233n59tAjfYHnVTG
         gwqubLCHDYiEAZ5KWdxJPuVpJ6fGmF/snPZP7C4AnshfHw56Q21R6BgEbqpNhdSACfHJ
         PKFw==
X-Forwarded-Encrypted: i=1; AJvYcCWGykeWU2kpg14BXevAcwl8kO6+rq28ugCe2ENh/T0knw7Yi83EM6ofZOm15yH523y1xEBEdLPK4Nlj9oblrFOfs7jRXwgyipe1TQ==
X-Gm-Message-State: AOJu0YxZgbbyeUVqAIt/CsePgddSp2MdSjfUJI9taFUxZC0juXvjl/bS
	S7Byn/4oiB6NkX8t0DUV75TFOgFM7rzPZPddRRcw9vHzZeOjxR6iR7m3fq50VSI=
X-Google-Smtp-Source: AGHT+IEGx09qqQZGznwGLK2bUqHiwP3SooCwqZgFFp68n5i919CsAWusJO9RSDejXheh0g79t6XsdQ==
X-Received: by 2002:a05:6512:3b0c:b0:51d:4af6:bb86 with SMTP id 2adb3069b0e04-5220f666ad9mr23745352e87.0.1716305105449;
        Tue, 21 May 2024 08:25:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5238aba8438sm2540161e87.94.2024.05.21.08.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 May 2024 08:25:04 -0700 (PDT)
Date: Tue, 21 May 2024 18:25:02 +0300
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
Subject: Re: [PATCH v4 10/10] drm/vs: add simple dsi encoder
Message-ID: <cej2d72e6bacbjabyjecoqhjlhz4sxx4bgn2w43rgl3cfyyuwt@jq5kq4egj2wo>
References: <20240521105817.3301-1-keith.zhao@starfivetech.com>
 <20240521105817.3301-11-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240521105817.3301-11-keith.zhao@starfivetech.com>

On Tue, May 21, 2024 at 06:58:17PM +0800, keith wrote:
> add encoder to match cdns dsi driver
> 
> Signed-off-by: keith <keith.zhao@starfivetech.com>

Please fix your git configuration to include your full name into the
S-o-B and Author fields.

> ---
>  drivers/gpu/drm/verisilicon/Makefile        |   3 +-
>  drivers/gpu/drm/verisilicon/vs_drv.c        |   1 +
>  drivers/gpu/drm/verisilicon/vs_drv.h        |   1 +
>  drivers/gpu/drm/verisilicon/vs_simple_enc.c | 190 ++++++++++++++++++++
>  drivers/gpu/drm/verisilicon/vs_simple_enc.h |  25 +++
>  5 files changed, 219 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_simple_enc.c
>  create mode 100644 drivers/gpu/drm/verisilicon/vs_simple_enc.h
> 
> diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/verisilicon/Makefile
> index 2d02b4a3a567..c35ba9bd6f81 100644
> --- a/drivers/gpu/drm/verisilicon/Makefile
> +++ b/drivers/gpu/drm/verisilicon/Makefile
> @@ -4,7 +4,8 @@ vs_drm-objs := vs_dc_hw.o \
>  		vs_modeset.o \
>  		vs_plane.o \
>  		vs_crtc.o \
> -		vs_drv.o
> +		vs_drv.o \
> +		vs_simple_enc.o
>  
>  vs_drm-$(CONFIG_DRM_INNO_STARFIVE_HDMI) += inno_hdmi-starfive.o
>  obj-$(CONFIG_DRM_VERISILICON_DC8200) += vs_drm.o
> diff --git a/drivers/gpu/drm/verisilicon/vs_drv.c b/drivers/gpu/drm/verisilicon/vs_drv.c
> index 6f04102b05b3..2748d48f2c7e 100644
> --- a/drivers/gpu/drm/verisilicon/vs_drv.c
> +++ b/drivers/gpu/drm/verisilicon/vs_drv.c
> @@ -612,6 +612,7 @@ static struct platform_driver *drm_sub_drivers[] = {
>  #ifdef CONFIG_DRM_INNO_STARFIVE_HDMI
>  	&starfive_hdmi_driver,
>  #endif
> +	&simple_encoder_driver,
>  };
>  
>  static struct component_match *vs_add_external_components(struct device *dev)
> diff --git a/drivers/gpu/drm/verisilicon/vs_drv.h b/drivers/gpu/drm/verisilicon/vs_drv.h
> index c3c08ed5f8ac..f3f0f170777d 100644
> --- a/drivers/gpu/drm/verisilicon/vs_drv.h
> +++ b/drivers/gpu/drm/verisilicon/vs_drv.h
> @@ -17,6 +17,7 @@
>  #include <drm/drm_managed.h>
>  
>  #include "vs_dc_hw.h"
> +#include "vs_simple_enc.h"
>  
>  /*@pitch_alignment: buffer pitch alignment required by sub-devices.*/
>  struct vs_drm_device {
> diff --git a/drivers/gpu/drm/verisilicon/vs_simple_enc.c b/drivers/gpu/drm/verisilicon/vs_simple_enc.c
> new file mode 100644
> index 000000000000..d0b1755d77d2
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_simple_enc.c
> @@ -0,0 +1,190 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2020 VeriSilicon Holdings Co., Ltd.

Now it is 2024, so the copyright should probably cover the range.

> + */
> +#include <linux/component.h>
> +#include <linux/of_device.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +#include <linux/media-bus-format.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/platform_device.h>
> +#include <linux/of.h>
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_bridge.h>
> +#include <drm/drm_crtc_helper.h>
> +#include <drm/drm_of.h>
> +
> +#include "vs_crtc.h"
> +#include "vs_simple_enc.h"
> +
> +static const struct simple_encoder_priv dsi_priv = {
> +	.encoder_type = DRM_MODE_ENCODER_DSI

So, is it 'simple' aka something generic or DSI? In the latter case,
please rename it accordingly.

> +};
> +
> +static inline struct vs_simple_encoder *to_simple_encoder(struct drm_encoder *enc)
> +{
> +	return container_of(enc, struct vs_simple_encoder, encoder);
> +}
> +
> +static int encoder_parse_dt(struct device *dev)
> +{
> +	struct vs_simple_encoder *simple = dev_get_drvdata(dev);
> +	unsigned int args[2];
> +
> +	simple->dss_regmap = syscon_regmap_lookup_by_phandle_args(dev->of_node,
> +								  "starfive,syscon",
> +								  2, args);
> +
> +	if (IS_ERR(simple->dss_regmap)) {
> +		return dev_err_probe(dev, PTR_ERR(simple->dss_regmap),
> +				     "getting the regmap failed\n");
> +	}
> +
> +	simple->offset = args[0];
> +	simple->mask = args[1];

Is the value that you've read platform dependent or use case dependent?
What is the actual value being written? Why are you using syscon for it?

> +
> +	return 0;
> +}
> +
> +static void vs_encoder_atomic_enable(struct drm_encoder *encoder, struct drm_atomic_state *state)
> +{
> +	struct vs_simple_encoder *simple = to_simple_encoder(encoder);
> +
> +	regmap_update_bits(simple->dss_regmap, simple->offset, simple->mask, simple->mask);


A purist in me would ask to have separate mask and value to write.

> +}

Is it necessary to clear those bits when stopping the stream?


[skipped the rest]

> +
> +
> +struct platform_driver simple_encoder_driver = {
> +	.probe = vs_encoder_probe,
> +	.remove = vs_encoder_remove,
> +	.driver = {
> +		.name = "vs-simple-encoder",
> +		.of_match_table = of_match_ptr(simple_encoder_dt_match),
> +	},
> +};
> +
> +MODULE_DESCRIPTION("Simple Encoder Driver");

VeriSilicon DSI Encoder

> +MODULE_LICENSE("GPL");
> diff --git a/drivers/gpu/drm/verisilicon/vs_simple_enc.h b/drivers/gpu/drm/verisilicon/vs_simple_enc.h
> new file mode 100644
> index 000000000000..73e356bfeb2c
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/vs_simple_enc.h
> @@ -0,0 +1,25 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Copyright (C) 2022 VeriSilicon Holdings Co., Ltd.
> + */
> +
> +#ifndef __VS_SIMPLE_ENC_H_
> +#define __VS_SIMPLE_ENC_H_
> +
> +#include <drm/drm_encoder.h>
> +
> +struct simple_encoder_priv {
> +	unsigned char encoder_type;
> +};
> +
> +struct vs_simple_encoder {
> +	struct drm_encoder encoder;
> +	struct device *dev;
> +	const struct simple_encoder_priv *priv;
> +	struct regmap *dss_regmap;
> +	unsigned int offset;
> +	unsigned int mask;
> +};

Is there a need for aheader for the encoder? Can you move the
definitions to the source file?

> +
> +extern struct platform_driver simple_encoder_driver;
> +#endif /* __VS_SIMPLE_ENC_H_ */
> -- 
> 2.27.0
> 

-- 
With best wishes
Dmitry

