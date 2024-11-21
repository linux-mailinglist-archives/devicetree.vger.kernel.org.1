Return-Path: <devicetree+bounces-123602-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2489D566C
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 00:52:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 267A51F237AC
	for <lists+devicetree@lfdr.de>; Thu, 21 Nov 2024 23:52:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C6FF91CBEB9;
	Thu, 21 Nov 2024 23:52:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DR31Wdlg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E591C9DC9
	for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 23:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732233172; cv=none; b=HwlLSNovZCSo8aEUok6ViCAbnsJQbJIV1WupbG6r0SCR1P++2+uct8+1JpNVAHAi6W3Z9VFvGE6yh+/ceqsyuouacVyHnOqivvQ07tOhImIo8XcKfYNSEjk2A0W4hVJje20mm9yiYpsLiKrvmCnbrTsC8rDtmIQzPoOnl/sO1/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732233172; c=relaxed/simple;
	bh=+lY6wNaz+nQJXPftd7VBnQkZz8BjKsEAt0DqhrpVW4g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YKld6CDr44eY22CqoZLcCjqkq+sNDz+ItMRjRtt6/szm5+fwr950YNOu+lvFpVSKa5pPwdH9zcnpE/aVATWktXjBPjYm3yr4Vv/ZgFUUtx1zUt+iiNgfY80QQ31p15/diJ1hAwJC4fG2E0hxdSz1CHdPMlGmy1nP7V3YmYK6WIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DR31Wdlg; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-53da3b911b9so1705496e87.2
        for <devicetree@vger.kernel.org>; Thu, 21 Nov 2024 15:52:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1732233167; x=1732837967; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1dGbg8XWeATOvdTd6+2921VvuwqqROopRxtGYAYJXik=;
        b=DR31WdlgRGdJc+y4SGmf9jqpqm16FDbSwrHJsN+hBjEOfslpyn/ZUZDq1wVohW2RGv
         4meU4oq/iU/4tCTaPnkiYPedQkE1/C36DSZD6QmZYL9ZWdajEJV/9Q49zWIBadVJwnOp
         Mtd4MvA+e3jeT/DQsauT3QM63c2nG6HSLfqb52yVI/AtVUJ2j6uKYBmyvS5PQRu+8GEq
         4S2ysl8/UQ8+2T2Tvq4iSakj1Xj1wrrSQlbmI3/Wldyb+gS666v0K9DOT3g7aSD/LOkY
         ZXa6hkGDUChcjP9O+UvHlu7L157Yv105NgnG3vVa41l5fQpUfwQJXl301Bu2+xTL1Z4Y
         JXHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732233167; x=1732837967;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1dGbg8XWeATOvdTd6+2921VvuwqqROopRxtGYAYJXik=;
        b=Ak+9KOx4xAjCtro7CH52DRmr0U4V1D37F6+sly/P6UZc8/9whp5lk/uM9Jc6akRIGG
         lFYvRBhiDaRrevUYn3DYtBe7rdun2FjWjk1ryb/V8QmyyVPpuv6n3QZ2exOlnZ59qcOH
         nmMA5P0BWDiv4V+tw4hxyxhHuu9WWfy9SgP5iVrfAN0p3U17XNrxcALWQe6nXF0TdzVi
         1x6YoW/NqU3kGUEeL61f/+pOiJeTD8hi1KJp1flDCiix32ehV4+p2yUDqFPmBwZacbkY
         FypEXHWjV63bT+SuoVwcOQuZaCUGO7xWyUyNA6jwtSK04MC02U/ZQD9XWNj3mNVjZt1/
         NENw==
X-Gm-Message-State: AOJu0YxmUz4txq6yeCwWIL8Il9XaKQ82iope8etgID3lFApYuKrpj726
	wV+8DTtIszKlrcxKm8s0SEstbu53ae66QcVyxA/dzb46tzmlXcQXABBUVv9Vs/Q=
X-Gm-Gg: ASbGnctymyJYY8g6x5YWG/2Ct7s5+fkwfCyyvXpODvarG/AzkuKxvixUcqXnBVdg5Pr
	oAc8tjuqWA2jN/X7Cn/keo1yBclqLBD7xVNYPbfQbv7cK4Q9fSFqFvMy0ssfgPotVexRoEJZK3C
	aqdgnHhTbsm8kHgdXwmOGtAZBesysg9fFIf4BW4jEeW7VydqW21kG0gmh0GcTaWZZvVtFo3c5Rx
	Vtb4wiKAcbh59F/fnkSii4R6r/Nco8U/oBa+AGMpFqehbgethgS9Dw/HZg4ajtQUhTmfhsvl1hR
	xsOm2QJGwrnXO9G5yrbQNrcegP2yew==
X-Google-Smtp-Source: AGHT+IGb0vknrTnf+JMzXff3r1j+DTk28jw9S6a2F6J/kg4l2vDcvq5319jb+XwY+CeIieedE5cINg==
X-Received: by 2002:a05:6512:1590:b0:53d:d417:bf88 with SMTP id 2adb3069b0e04-53dd417bfe1mr122935e87.35.1732233166898;
        Thu, 21 Nov 2024 15:52:46 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53dd4141b45sm30002e87.146.2024.11.21.15.52.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2024 15:52:45 -0800 (PST)
Date: Fri, 22 Nov 2024 01:52:43 +0200
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
Subject: Re: [PATCH v5 8/9] drm/vs: Add Innosilicon HDMI Support
Message-ID: <mylbhlnochbuyggol2xmwpwd2hhg6vuxkvyz4aduyewsnbhpa7@smerjwsdrubn>
References: <20241120061848.196754-1-keith.zhao@starfivetech.com>
 <20241120061848.196754-9-keith.zhao@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241120061848.196754-9-keith.zhao@starfivetech.com>

On Wed, Nov 20, 2024 at 02:18:47PM +0800, keith zhao wrote:
> This commit adds the Innosilicon HDMI driver,

Documentation/process/submitting-patches.rst, look for "This patch..."

> designed to interface with the VS display controller.
> 
> The driver leverages the APIs provided by the Innosilicon HDMI bridge.

Please describe design decisions, features supported by HW but not yet
implemented (to give you an idea: CSC, YUV, infoframes, etc).

> 
> Signed-off-by: keith zhao <keith.zhao@starfivetech.com>
> ---
>  drivers/gpu/drm/verisilicon/Kconfig           |  19 +
>  drivers/gpu/drm/verisilicon/Makefile          |   1 +
>  .../gpu/drm/verisilicon/inno_hdmi-starfive.c  | 553 ++++++++++++++++++
>  .../gpu/drm/verisilicon/inno_hdmi-starfive.h  | 194 ++++++
>  4 files changed, 767 insertions(+)
>  create mode 100644 drivers/gpu/drm/verisilicon/inno_hdmi-starfive.c
>  create mode 100644 drivers/gpu/drm/verisilicon/inno_hdmi-starfive.h
> 
> diff --git a/drivers/gpu/drm/verisilicon/Kconfig b/drivers/gpu/drm/verisilicon/Kconfig
> index 874e8bcde5d5..49648a3a6deb 100644
> --- a/drivers/gpu/drm/verisilicon/Kconfig
> +++ b/drivers/gpu/drm/verisilicon/Kconfig
> @@ -11,3 +11,22 @@ config DRM_VERISILICON_DC8200
>  	  This driver provides VeriSilicon kernel mode
>  	  setting and buffer management. It does not
>  	  provide 2D or 3D acceleration.
> +
> +config DRM_INNO_STARFIVE_HDMI
> +	bool "Starfive JH7110 specific extensions for Innosilicon HDMI"
> +	depends on DRM_VERISILICON_DC8200
> +	select DRM_INNO_HDMI
> +	select DRM_DISPLAY_HELPER
> +	select DRM_BRIDGE_CONNECTOR
> +	help
> +          This configuration option enables support for StarFive SoC
> +          specific extensions for the Innosilicon HDMI driver.
> +
> +          Enabling this option is essential for proper functionality
> +          of HDMI on JH7110 based SoCs. If you are using a StarFive
> +          JH7110 SoC and require HDMI output functionalities,
> +          you should select this option to ensure that the driver is
> +          compiled with the necessary extensions and dependencies.
> +
> +          This option may enable additional features and capabilities
> +          specific to StarFive's implementation of the HDMI technology.
> diff --git a/drivers/gpu/drm/verisilicon/Makefile b/drivers/gpu/drm/verisilicon/Makefile
> index 1a0e46f38ae8..a602630c2416 100644
> --- a/drivers/gpu/drm/verisilicon/Makefile
> +++ b/drivers/gpu/drm/verisilicon/Makefile
> @@ -5,4 +5,5 @@ vs_drm-objs := vs_dc_hw.o \
>  	       vs_crtc.o \
>  	       vs_plane.o
>  
> +vs_drm-$(CONFIG_DRM_INNO_STARFIVE_HDMI) += inno_hdmi-starfive.o
>  obj-$(CONFIG_DRM_VERISILICON_DC8200) += vs_drm.o
> diff --git a/drivers/gpu/drm/verisilicon/inno_hdmi-starfive.c b/drivers/gpu/drm/verisilicon/inno_hdmi-starfive.c
> new file mode 100644
> index 000000000000..6923f789bcc0
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/inno_hdmi-starfive.c
> @@ -0,0 +1,553 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) StarFive Technology Co., Ltd.
> + */
> +
> +#include <linux/component.h>
> +#include <linux/clk.h>
> +#include <linux/i2c.h>
> +#include <linux/media-bus-format.h>
> +#include <linux/module.h>
> +#include <linux/reset.h>
> +
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_drv.h>
> +#include <drm/drm_edid.h>
> +#include <drm/drm_managed.h>
> +#include <drm/drm_of.h>
> +#include <drm/drm_simple_kms_helper.h>
> +#include <drm/bridge/inno_hdmi.h>
> +#include <drm/drm_bridge_connector.h>
> +#include <drm/drm_bridge.h>
> +
> +#include <sound/hdmi-codec.h>
> +
> +#include "inno_hdmi-starfive.h"
> +#include "vs_crtc.h"
> +
> +enum hdmi_clk {
> +	CLK_SYS = 0,
> +	CLK_M,
> +	CLK_B,
> +	CLK_HDMI_NUM
> +};
> +
> +struct pre_pll_config {
> +	unsigned long pixclock;
> +	unsigned long tmdsclock;
> +	u8 prediv;
> +	u16 fbdiv;
> +	u8 tmds_div_a;
> +	u8 tmds_div_b;
> +	u8 tmds_div_c;
> +	u8 pclk_div_a;
> +	u8 pclk_div_b;
> +	u8 pclk_div_c;
> +	u8 pclk_div_d;
> +	u8 vco_div_5_en;
> +	u32 fracdiv;
> +};
> +
> +struct post_pll_config {
> +	unsigned long tmdsclock;
> +	u8 prediv;
> +	u16 fbdiv;
> +	u8 postdiv;
> +	u8 post_div_en;
> +	u8 version;
> +};
> +
> +struct stf_inno_hdmi {
> +	struct drm_encoder	encoder;
> +	struct drm_connector	*connector;
> +	struct inno_hdmi inno_hdmi;
> +	struct clk_bulk_data clk_hdmi[CLK_HDMI_NUM];
> +	struct reset_control *tx_rst;
> +	int	nclks;
> +	unsigned long tmds_rate;
> +	struct pre_pll_config pre_cfg;
> +	const struct post_pll_config *post_cfg;
> +};
> +
> +static inline struct stf_inno_hdmi *to_starfive_inno_hdmi(struct drm_encoder *encoder)
> +{
> +	return container_of(encoder, struct stf_inno_hdmi, encoder);
> +}
> +
> +static struct inno_hdmi *encoder_to_inno_hdmi(struct drm_encoder *encoder)
> +{
> +	struct stf_inno_hdmi *stf_hdmi = to_starfive_inno_hdmi(encoder);
> +
> +	return &stf_hdmi->inno_hdmi;
> +}
> +
> +static const struct post_pll_config post_pll_cfg_table[] = {
> +	{25200000, 1, 80, 13, 3, 1},
> +	{27000000, 1, 40, 11, 3, 1},
> +	{33750000, 1, 40, 11, 3, 1},
> +	{49000000, 1, 20, 1, 3, 3},
> +	{241700000, 1, 20, 1, 3, 3},
> +	{297000000, 4, 20, 0, 0, 3},
> +	{ /* sentinel */ }
> +};
> +
> +static int inno_hdmi_starfive_enable_clk_rst(struct device *dev,
> +					     struct stf_inno_hdmi *stf_inno_hdmi)
> +{
> +	int ret;
> +
> +	ret = clk_bulk_prepare_enable(stf_inno_hdmi->nclks, stf_inno_hdmi->clk_hdmi);
> +	if (ret) {
> +		dev_err(dev, "failed to enable clocks\n");
> +		return ret;
> +	}
> +
> +	ret = reset_control_deassert(stf_inno_hdmi->tx_rst);
> +	if (ret < 0) {
> +		dev_err(dev, "failed to deassert tx_rst\n");
> +		return ret;
> +	}
> +	return 0;
> +}
> +
> +static void inno_hdmi_starfive_disable_clk_rst(struct device *dev,
> +					       struct stf_inno_hdmi *stf_inno_hdmi)
> +{
> +	int ret;
> +
> +	ret = reset_control_assert(stf_inno_hdmi->tx_rst);
> +	if (ret < 0)
> +		dev_err(dev, "failed to assert tx_rst\n");
> +
> +	clk_bulk_disable_unprepare(stf_inno_hdmi->nclks, stf_inno_hdmi->clk_hdmi);
> +}
> +
> +static void inno_hdmi_starfive_config_pll(struct stf_inno_hdmi *stf_inno_hdmi)
> +{
> +	u32 val;
> +	struct inno_hdmi *hdmi;
> +
> +	hdmi = &stf_inno_hdmi->inno_hdmi;
> +	u8 reg_1ad_value = stf_inno_hdmi->post_cfg->post_div_en ?
> +			   stf_inno_hdmi->post_cfg->postdiv : 0x00;
> +	u8 reg_1aa_value = stf_inno_hdmi->post_cfg->post_div_en ?
> +			   0x0e : 0x02;
> +
> +	hdmi_writeb(hdmi, STF_INNO_PRE_PLL_CONTROL, STF_INNO_PRE_PLL_POWER_DOWN);
> +	hdmi_writeb(hdmi, STF_INNO_POST_PLL_DIV_1,
> +		    STF_INNO_POST_PLL_POST_DIV_ENABLE |
> +		    STF_INNO_POST_PLL_REFCLK_SEL_TMDS |
> +		    STF_INNO_POST_PLL_POWER_DOWN);

This kind of code begs to be reimplemented using regmap. Then the base
driver can also use regmap instead of exporting hdmi_writeb() /
_readb().

> +	hdmi_writeb(hdmi, STF_INNO_PRE_PLL_DIV_1,
> +		    STF_INNO_PRE_PLL_PRE_DIV(stf_inno_hdmi->pre_cfg.prediv));
> +
> +	val = STF_INNO_SPREAD_SPECTRUM_MOD_DISABLE | STF_INNO_SPREAD_SPECTRUM_MOD_DOWN;
> +	if (!stf_inno_hdmi->pre_cfg.fracdiv)
> +		val |= STF_INNO_PRE_PLL_FRAC_DIV_DISABLE;
> +	hdmi_writeb(hdmi, STF_INNO_PRE_PLL_DIV_2,
> +		    STF_INNO_PRE_PLL_FB_DIV_11_8(stf_inno_hdmi->pre_cfg.fbdiv) | val);
> +	hdmi_writeb(hdmi, STF_INNO_PRE_PLL_DIV_3,
> +		    STF_INNO_PRE_PLL_FB_DIV_7_0(stf_inno_hdmi->pre_cfg.fbdiv));
> +	hdmi_writeb(hdmi, STF_INNO_PRE_PLL_DIV_4,
> +		    STF_INNO_PRE_PLL_TMDSCLK_DIV_C(stf_inno_hdmi->pre_cfg.tmds_div_c) |
> +		    STF_INNO_PRE_PLL_TMDSCLK_DIV_A(stf_inno_hdmi->pre_cfg.tmds_div_a) |
> +		    STF_INNO_PRE_PLL_TMDSCLK_DIV_B(stf_inno_hdmi->pre_cfg.tmds_div_b));
> +
> +	if (stf_inno_hdmi->pre_cfg.fracdiv) {
> +		hdmi_writeb(hdmi, STF_INNO_PRE_PLL_FRAC_DIV_L,
> +			    STF_INNO_PRE_PLL_FRAC_DIV_7_0(stf_inno_hdmi->pre_cfg.fracdiv));
> +		hdmi_writeb(hdmi, STF_INNO_PRE_PLL_FRAC_DIV_M,
> +			    STF_INNO_PRE_PLL_FRAC_DIV_15_8(stf_inno_hdmi->pre_cfg.fracdiv));
> +		hdmi_writeb(hdmi, STF_INNO_PRE_PLL_FRAC_DIV_H,
> +			    STF_INNO_PRE_PLL_FRAC_DIV_23_16(stf_inno_hdmi->pre_cfg.fracdiv));
> +	}
> +
> +	hdmi_writeb(hdmi, STF_INNO_PRE_PLL_DIV_5,
> +		    STF_INNO_PRE_PLL_PCLK_DIV_A(stf_inno_hdmi->pre_cfg.pclk_div_a) |
> +		    STF_INNO_PRE_PLL_PCLK_DIV_B(stf_inno_hdmi->pre_cfg.pclk_div_b));
> +	hdmi_writeb(hdmi, STF_INNO_PRE_PLL_DIV_6,
> +		    STF_INNO_PRE_PLL_PCLK_DIV_C(stf_inno_hdmi->pre_cfg.pclk_div_c) |
> +		    STF_INNO_PRE_PLL_PCLK_DIV_D(stf_inno_hdmi->pre_cfg.pclk_div_d));
> +
> +	/*pre-pll power down*/
> +	hdmi_modb(hdmi, STF_INNO_PRE_PLL_CONTROL, STF_INNO_PRE_PLL_POWER_DOWN, 0);
> +
> +	hdmi_modb(hdmi, STF_INNO_POST_PLL_DIV_2, STF_INNO_POST_PLL_Pre_DIV_MASK,
> +		  STF_INNO_POST_PLL_PRE_DIV(stf_inno_hdmi->post_cfg->prediv));
> +	hdmi_writeb(hdmi, STF_INNO_POST_PLL_DIV_3, stf_inno_hdmi->post_cfg->fbdiv & 0xff);
> +	hdmi_writeb(hdmi, STF_INNO_POST_PLL_DIV_4, reg_1ad_value);
> +	hdmi_writeb(hdmi, STF_INNO_POST_PLL_DIV_1, reg_1aa_value);
> +}
> +
> +static void inno_hdmi_starfive_tmds_driver_on(struct inno_hdmi *hdmi)
> +{
> +	hdmi_modb(hdmi, STF_INNO_TMDS_CONTROL,
> +		  STF_INNO_TMDS_DRIVER_ENABLE, STF_INNO_TMDS_DRIVER_ENABLE);
> +}
> +
> +static void inno_hdmi_starfive_sync_tmds(struct inno_hdmi *hdmi)
> +{
> +	/*first send 0 to this bit, then send 1 and keep 1 into this bit*/
> +	hdmi_writeb(hdmi, HDMI_SYNC, 0x0);
> +	hdmi_writeb(hdmi, HDMI_SYNC, 0x1);
> +}
> +
> +static void inno_hdmi_starfive_phy_get_pre_pll_cfg(struct stf_inno_hdmi *hdmi)
> +{
> +	if (hdmi->tmds_rate > 30000000) {
> +		hdmi->pre_cfg.pixclock = hdmi->tmds_rate;
> +		hdmi->pre_cfg.tmdsclock = hdmi->tmds_rate;
> +		hdmi->pre_cfg.prediv = 1;
> +		hdmi->pre_cfg.fbdiv = hdmi->tmds_rate / 3000000;
> +		hdmi->pre_cfg.tmds_div_a = 0;
> +		hdmi->pre_cfg.tmds_div_b = 1;
> +		hdmi->pre_cfg.tmds_div_c = 1;
> +		hdmi->pre_cfg.pclk_div_a = 1;
> +		hdmi->pre_cfg.pclk_div_b = 0;
> +		hdmi->pre_cfg.pclk_div_c = 2;
> +		hdmi->pre_cfg.pclk_div_d = 2;
> +		hdmi->pre_cfg.vco_div_5_en = hdmi->tmds_rate % 3000000 ? 1 : 0;
> +
> +		if (hdmi->pre_cfg.vco_div_5_en) {
> +			hdmi->pre_cfg.fracdiv = (hdmi->tmds_rate % 3000000) *
> +						 0xffffff / 1000000;
> +		}
> +	} else {
> +		hdmi->pre_cfg.pixclock = hdmi->tmds_rate;
> +		hdmi->pre_cfg.tmdsclock = hdmi->tmds_rate;
> +		hdmi->pre_cfg.prediv = 1;
> +		hdmi->pre_cfg.fbdiv = hdmi->tmds_rate / 1000000;
> +		hdmi->pre_cfg.tmds_div_a = 2;
> +		hdmi->pre_cfg.tmds_div_b = 1;
> +		hdmi->pre_cfg.tmds_div_c = 1;
> +		hdmi->pre_cfg.pclk_div_a = 3;
> +		hdmi->pre_cfg.pclk_div_b = 0;
> +		hdmi->pre_cfg.pclk_div_c = 3;
> +		hdmi->pre_cfg.pclk_div_d = 4;
> +		hdmi->pre_cfg.vco_div_5_en = hdmi->tmds_rate % 1000000 ? 1 : 0;
> +
> +		if (hdmi->pre_cfg.vco_div_5_en) {
> +			hdmi->pre_cfg.fracdiv = (hdmi->tmds_rate % 1000000) *
> +						 0xffffff / 1000000;
> +		}
> +	}
> +}
> +
> +static int inno_hdmi_starfive_phy_clk_set_rate(struct stf_inno_hdmi *stf_inno_hdmi)
> +{
> +	stf_inno_hdmi->post_cfg = post_pll_cfg_table;
> +
> +	inno_hdmi_starfive_phy_get_pre_pll_cfg(stf_inno_hdmi);
> +
> +	for (; stf_inno_hdmi->post_cfg->tmdsclock != 0; stf_inno_hdmi->post_cfg++)
> +		if (stf_inno_hdmi->tmds_rate <= stf_inno_hdmi->post_cfg->tmdsclock)
> +			break;
> +
> +	inno_hdmi_starfive_config_pll(stf_inno_hdmi);
> +
> +	return 0;
> +}
> +
> +static int inno_hdmi_starfive_config_video_timing(struct inno_hdmi *hdmi,
> +						  struct drm_display_mode *mode)
> +{
> +	int value;
> +
> +	/* Set detail external video timing polarity and interlace mode */
> +	value = v_EXTERANL_VIDEO(1);
> +
> +	value |= mode->flags & DRM_MODE_FLAG_PHSYNC ?
> +		 v_HSYNC_POLARITY_SF(1) : v_HSYNC_POLARITY_SF(0);
> +	value |= mode->flags & DRM_MODE_FLAG_PVSYNC ?
> +		 v_VSYNC_POLARITY_SF(1) : v_VSYNC_POLARITY_SF(0);
> +
> +	value |= mode->flags & DRM_MODE_FLAG_INTERLACE ?
> +		 v_INETLACE(1) : v_INETLACE(0);

I don't see .interlace_allowed = true

> +	hdmi_writeb(hdmi, HDMI_VIDEO_TIMING_CTL, value);
> +
> +	/* Set detail external video timing */
> +	value = mode->htotal;
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HTOTAL_L, value & 0xFF);
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HTOTAL_H, (value >> 8) & 0xFF);
> +
> +	value = mode->htotal - mode->hdisplay;
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_L, value & 0xFF);
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HBLANK_H, (value >> 8) & 0xFF);
> +
> +	value = mode->htotal - mode->hsync_start;
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_L, value & 0xFF);
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDELAY_H, (value >> 8) & 0xFF);
> +
> +	value = mode->hsync_end - mode->hsync_start;
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDURATION_L, value & 0xFF);
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_HDURATION_H, (value >> 8) & 0xFF);
> +
> +	value = mode->vtotal;
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VTOTAL_L, value & 0xFF);
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VTOTAL_H, (value >> 8) & 0xFF);
> +
> +	value = mode->vtotal - mode->vdisplay;
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VBLANK, value & 0xFF);
> +
> +	value = mode->vtotal - mode->vsync_start;
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDELAY, value & 0xFF);
> +
> +	value = mode->vsync_end - mode->vsync_start;
> +	hdmi_writeb(hdmi, HDMI_VIDEO_EXT_VDURATION, value & 0xFF);
> +
> +	return 0;
> +}

This is mostly the same as Rockchip's implementation. Please use common
code instead.

> +
> +static void inno_hdmi_starfive_sys_power(struct inno_hdmi *hdmi, bool enable)
> +{
> +	if (enable)
> +		hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_ON);
> +	else
> +		hdmi_modb(hdmi, HDMI_SYS_CTRL, m_POWER, v_PWR_OFF);
> +}
> +
> +static int inno_hdmi_starfive_setup(struct inno_hdmi *hdmi, struct drm_display_mode *mode)
> +{
> +	struct stf_inno_hdmi *stf_inno_hdmi = dev_get_drvdata(hdmi->dev);
> +	int ret;
> +	u32 val;
> +
> +	hdmi_modb(hdmi, STF_INNO_BIAS_CONTROL, STF_INNO_BIAS_ENABLE, STF_INNO_BIAS_ENABLE);
> +	hdmi_writeb(hdmi, STF_INNO_RX_CONTROL, STF_INNO_RX_ENABLE);
> +
> +	stf_inno_hdmi->tmds_rate = mode->clock * 1000;

Should not be necessary, use drm_connector_hdmi_state::tmds_char_rate
which is already set for you.

> +	inno_hdmi_starfive_phy_clk_set_rate(stf_inno_hdmi);
> +
> +	ret = readx_poll_timeout(readl_relaxed,
> +				 hdmi->regs + (STF_INNO_PRE_PLL_LOCK_STATUS) * 0x04,
> +				 val, val & 0x1, 1000, 100000);
> +	if (ret < 0) {
> +		dev_err(hdmi->dev, "failed to wait pre-pll lock\n");
> +		return ret;
> +	}
> +
> +	ret = readx_poll_timeout(readl_relaxed,
> +				 hdmi->regs + (STF_INNO_POST_PLL_LOCK_STATUS) * 0x04,
> +				 val, val & 0x1, 1000, 100000);
> +	if (ret < 0) {
> +		dev_err(hdmi->dev, "failed to wait post-pll lock\n");
> +		return ret;
> +	}
> +
> +	/*turn on LDO*/
> +	hdmi_writeb(hdmi, STF_INNO_LDO_CONTROL, STF_INNO_LDO_ENABLE);
> +	/*turn on serializer*/
> +	hdmi_writeb(hdmi, STF_INNO_SERIALIER_CONTROL, STF_INNO_SERIALIER_ENABLE);
> +
> +	inno_hdmi_starfive_sys_power(hdmi, false);
> +	inno_hdmi_starfive_config_video_timing(hdmi, mode);
> +	inno_hdmi_starfive_sys_power(hdmi, true);
> +
> +	inno_hdmi_starfive_tmds_driver_on(hdmi);
> +	inno_hdmi_starfive_sync_tmds(hdmi);
> +
> +	return 0;
> +}
> +
> +static enum drm_mode_status
> +inno_hdmi_starfive_mode_valid(struct inno_hdmi *hdmi, const struct drm_display_mode *mode)
> +{
> +	int pclk = mode->clock * 1000;

This is drm_hdmi_compute_mode_clock().

> +	bool valid = false;
> +
> +	if (pclk <= PIXCLOCK_4K_30FPS)
> +		valid = true;

This looks like .tmds_char_rate_valid()

> +
> +	return (valid) ? MODE_OK : MODE_BAD;
> +}
> +
> +static void inno_hdmi_starfive_encoder_enable(struct drm_encoder *encoder,
> +					      struct drm_atomic_state *state)
> +{
> +	struct stf_inno_hdmi *sft_hdmi = to_starfive_inno_hdmi(encoder);
> +	struct drm_connector_state *conn_state;
> +	struct drm_crtc_state *crtc_state;
> +
> +	conn_state = drm_atomic_get_new_connector_state(state, sft_hdmi->connector);

Use drm_atomic_get_new_connector_for_encoder() to get connector.

> +	if (WARN_ON(!conn_state))
> +		return;
> +
> +	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
> +	if (WARN_ON(!crtc_state))
> +		return;
> +
> +	inno_hdmi_starfive_setup(&sft_hdmi->inno_hdmi, &crtc_state->adjusted_mode);
> +}
> +
> +static void inno_hdmi_starfive_encoder_disable(struct drm_encoder *encoder,
> +					       struct drm_atomic_state *state)
> +{
> +	struct inno_hdmi *hdmi = encoder_to_inno_hdmi(encoder);
> +
> +	inno_hdmi_starfive_sys_power(hdmi, false);
> +}
> +
> +static int
> +inno_hdmi_starfive_encoder_atomic_check(struct drm_encoder *encoder,
> +					struct drm_crtc_state *crtc_state,
> +					struct drm_connector_state *conn_state)
> +{
> +	struct vs_crtc_state *vs_crtc_state = to_vs_crtc_state(crtc_state);
> +
> +	vs_crtc_state->encoder_type = encoder->encoder_type;
> +	vs_crtc_state->output_fmt = MEDIA_BUS_FMT_RGB888_1X24;
> +
> +	return 0;
> +}
> +
> +static const struct drm_encoder_helper_funcs stf_inno_encoder_helper_funcs = {
> +	.atomic_check   = inno_hdmi_starfive_encoder_atomic_check,
> +	.atomic_enable  = inno_hdmi_starfive_encoder_enable,
> +	.atomic_disable = inno_hdmi_starfive_encoder_disable,
> +};
> +
> +static int inno_hdmi_starfive_get_clk_rst(struct device *dev, struct stf_inno_hdmi *stf_hdmi)
> +{
> +	int ret;
> +
> +	stf_hdmi->nclks = ARRAY_SIZE(stf_hdmi->clk_hdmi);
> +
> +	ret = devm_clk_bulk_get(dev, stf_hdmi->nclks, stf_hdmi->clk_hdmi);
> +	if (ret) {
> +		dev_err(dev, "Failed to get clk controls\n");
> +		return ret;
> +	}
> +
> +	stf_hdmi->tx_rst = devm_reset_control_get_by_index(dev, 0);
> +	if (IS_ERR(stf_hdmi->tx_rst)) {
> +		dev_err(dev, "failed to get tx_rst reset\n");
> +		return PTR_ERR(stf_hdmi->tx_rst);
> +	}
> +
> +	return 0;
> +}
> +
> +static int inno_hdmi_starfive_bind(struct device *dev, struct device *master, void *data)
> +{
> +	struct platform_device *pdev = to_platform_device(dev);
> +	struct drm_device *drm = dev_get_drvdata(master);
> +	struct stf_inno_hdmi *stf_hdmi;
> +	struct inno_hdmi *hdmi;
> +	struct drm_encoder *encoder;
> +
> +	int ret;
> +	unsigned long long rate;
> +
> +	stf_hdmi = drmm_simple_encoder_alloc(drm, struct stf_inno_hdmi,
> +					     encoder, DRM_MODE_ENCODER_TMDS);
> +	if (IS_ERR(stf_hdmi))
> +		return PTR_ERR(stf_hdmi);
> +
> +	hdmi = &stf_hdmi->inno_hdmi;
> +	hdmi->dev = dev;
> +
> +	hdmi->plat_data = (struct inno_hdmi_plat_data *)of_device_get_match_data(dev);
> +	if (!hdmi->plat_data)
> +		return -ENODEV;
> +
> +	hdmi->regs = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(hdmi->regs))
> +		return PTR_ERR(hdmi->regs);
> +
> +	ret = inno_hdmi_starfive_get_clk_rst(dev, stf_hdmi);
> +	if (ret < 0)
> +		return ret;
> +
> +	ret = inno_hdmi_starfive_enable_clk_rst(dev, stf_hdmi);
> +	if (ret)
> +		return ret;
> +
> +	rate = clk_get_rate(stf_hdmi->clk_hdmi[CLK_SYS].clk);
> +	inno_hdmi_i2c_init(hdmi, rate);
> +
> +	ret = inno_hdmi_bind(drm, hdmi, &stf_hdmi->encoder);
> +	if (ret)
> +		goto err_disable_clk;
> +
> +	encoder = &stf_hdmi->encoder;
> +
> +	encoder->possible_crtcs = drm_of_find_possible_crtcs(drm, dev->of_node);
> +
> +	/*
> +	 * If we failed to find the CRTC(s) which this encoder is
> +	 * supposed to be connected to, it's because the CRTC has
> +	 * not been registered yet.  Defer probing, and hope that
> +	 * the required CRTC is added later.
> +	 */
> +	if (encoder->possible_crtcs == 0)
> +		return -EPROBE_DEFER;
> +
> +	drm_encoder_helper_add(encoder, &stf_inno_encoder_helper_funcs);
> +
> +	ret = drm_bridge_attach(encoder, &hdmi->bridge, NULL, DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> +	if (ret)
> +		return ret;
> +
> +	stf_hdmi->connector = drm_bridge_connector_init(drm, encoder);
> +	if (IS_ERR(stf_hdmi->connector)) {
> +		dev_err(dev, "Unable to create bridge connector\n");
> +		ret = PTR_ERR(stf_hdmi->connector);
> +		return ret;
> +	}
> +
> +	drm_connector_attach_encoder(stf_hdmi->connector, encoder);

Please, don't store connector in your data.

> +
> +	dev_set_drvdata(dev, stf_hdmi);
> +
> +	return 0;
> +
> +err_disable_clk:
> +	inno_hdmi_starfive_disable_clk_rst(dev, stf_hdmi);
> +	return ret;
> +}
> +
> +static void inno_hdmi_starfive_unbind(struct device *dev, struct device *master, void *data)
> +{
> +	struct stf_inno_hdmi *stf_hdmi = dev_get_drvdata(dev);
> +
> +	inno_hdmi_starfive_disable_clk_rst(dev, stf_hdmi);
> +}
> +
> +static const struct component_ops inno_hdmi_starfive_ops = {
> +	.bind	= inno_hdmi_starfive_bind,
> +	.unbind	= inno_hdmi_starfive_unbind,
> +};
> +
> +static int inno_hdmi_starfive_probe(struct platform_device *pdev)
> +{
> +	return component_add(&pdev->dev, &inno_hdmi_starfive_ops);
> +}
> +
> +static void inno_hdmi_starfive_remove(struct platform_device *pdev)
> +{
> +	component_del(&pdev->dev, &inno_hdmi_starfive_ops);
> +}
> +
> +static const struct inno_hdmi_plat_data stf_inno_info = {
> +	.vendor = "STARFIVE",
> +	.product = "INNO HDMI",
> +	.mode_valid = inno_hdmi_starfive_mode_valid,

No infoframes support, really?

> +};
> +
> +static const struct of_device_id starfive_hdmi_dt_ids[] = {
> +	{ .compatible = "starfive,jh7110-inno-hdmi", .data = &stf_inno_info,},
> +	{},
> +};
> +MODULE_DEVICE_TABLE(of, starfive_hdmi_dt_ids);
> +
> +struct platform_driver starfive_hdmi_driver = {
> +	.probe  = inno_hdmi_starfive_probe,
> +	.remove = inno_hdmi_starfive_remove,
> +	.driver = {
> +		.name = "starfive-hdmi",
> +		.of_match_table = starfive_hdmi_dt_ids,
> +	},
> +};
> +
> +MODULE_AUTHOR("StarFive Corporation");
> +MODULE_DESCRIPTION("Starfive Specific INNO-HDMI Driver");
> diff --git a/drivers/gpu/drm/verisilicon/inno_hdmi-starfive.h b/drivers/gpu/drm/verisilicon/inno_hdmi-starfive.h
> new file mode 100644
> index 000000000000..db4d4578490d
> --- /dev/null
> +++ b/drivers/gpu/drm/verisilicon/inno_hdmi-starfive.h
> @@ -0,0 +1,194 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (C) StarFive Technology Co., Ltd.
> + */
> +
> +#ifndef __STARFIVE_HDMI_H__
> +#define __STARFIVE_HDMI_H__
> +
> +#include <linux/bitfield.h>
> +#include <linux/bits.h>
> +
> +#define HDMI_SYNC			0xce
> +
> +#define UPDATE(x, h, l)			FIELD_PREP(GENMASK(h, l), x)

No extra wrappers

> +#define HDMI_SYS_CTRL			0x00
> +#define m_RST_ANALOG			(1 << 6)
> +#define v_RST_ANALOG			(0 << 6)
> +#define v_NOT_RST_ANALOG		(1 << 6)
> +#define m_RST_DIGITAL			(1 << 5)
> +#define v_RST_DIGITAL			(0 << 5)
> +#define v_NOT_RST_DIGITAL		(1 << 5)
> +#define m_REG_CLK_INV			(1 << 4)
> +#define v_REG_CLK_NOT_INV		(0 << 4)
> +#define v_REG_CLK_INV			(1 << 4)
> +#define m_VCLK_INV			(1 << 3)
> +#define v_VCLK_NOT_INV			(0 << 3)
> +#define v_VCLK_INV			(1 << 3)
> +#define m_REG_CLK_SOURCE		(1 << 2)
> +#define v_REG_CLK_SOURCE_TMDS		(0 << 2)
> +#define v_REG_CLK_SOURCE_SYS		(1 << 2)
> +#define m_POWER				(1 << 1)
> +#define v_PWR_ON			(0 << 1)
> +#define v_PWR_OFF			(1 << 1)
> +#define m_INT_POL			(1 << 0)
> +#define v_INT_POL_HIGH			1
> +#define v_INT_POL_LOW			0
> +
> +#define HDMI_VIDEO_TIMING_CTL		0x08
> +#define v_VSYNC_POLARITY_SF(n)		((n) << 3)
> +#define v_HSYNC_POLARITY_SF(n)		((n) << 2)
> +#define v_INETLACE(n)			((n) << 1)
> +#define v_EXTERANL_VIDEO(n)		((n) << 0)
> +
> +#define HDMI_VIDEO_EXT_HTOTAL_L		0x09
> +#define HDMI_VIDEO_EXT_HTOTAL_H		0x0a
> +#define HDMI_VIDEO_EXT_HBLANK_L		0x0b
> +#define HDMI_VIDEO_EXT_HBLANK_H		0x0c
> +#define HDMI_VIDEO_EXT_HDELAY_L		0x0d
> +#define HDMI_VIDEO_EXT_HDELAY_H		0x0e
> +#define HDMI_VIDEO_EXT_HDURATION_L	0x0f
> +#define HDMI_VIDEO_EXT_HDURATION_H	0x10
> +#define HDMI_VIDEO_EXT_VTOTAL_L		0x11
> +#define HDMI_VIDEO_EXT_VTOTAL_H		0x12
> +#define HDMI_VIDEO_EXT_VBLANK		0x13
> +#define HDMI_VIDEO_EXT_VDELAY		0x14
> +#define HDMI_VIDEO_EXT_VDURATION	0x15

Which of these registers are common? Defined them in a single header
file that can be used by all the drivers.

> +
> +/* REG: 0x1a0 */
> +#define STF_INNO_PRE_PLL_CONTROL			0x1a0
> +#define STF_INNO_PCLK_VCO_DIV_5_MASK			BIT(1)
> +#define STF_INNO_PCLK_VCO_DIV_5(x)			UPDATE(x, 1, 1)
> +#define STF_INNO_PRE_PLL_POWER_DOWN			BIT(0)
> +
> +/* REG: 0x1a1 */
> +#define STF_INNO_PRE_PLL_DIV_1				0x1a1
> +#define STF_INNO_PRE_PLL_PRE_DIV_MASK			GENMASK(5, 0)
> +#define STF_INNO_PRE_PLL_PRE_DIV(x)			UPDATE(x, 5, 0)
> +
> +/* REG: 0x1a2 */
> +#define STF_INNO_PRE_PLL_DIV_2					0x1a2
> +#define STF_INNO_SPREAD_SPECTRUM_MOD_DOWN		BIT(7)
> +#define STF_INNO_SPREAD_SPECTRUM_MOD_DISABLE		BIT(6)
> +#define STF_INNO_PRE_PLL_FRAC_DIV_DISABLE		UPDATE(3, 5, 4)
> +#define STF_INNO_PRE_PLL_FB_DIV_11_8_MASK		GENMASK(3, 0)
> +#define STF_INNO_PRE_PLL_FB_DIV_11_8(x)			UPDATE((x) >> 8, 3, 0)
> +
> +/* REG: 0x1a3 */
> +#define STF_INNO_PRE_PLL_DIV_3				0x1a3
> +#define STF_INNO_PRE_PLL_FB_DIV_7_0(x)			UPDATE(x, 7, 0)
> +
> +/* REG: 0x1a4*/
> +#define STF_INNO_PRE_PLL_DIV_4				0x1a4
> +#define STF_INNO_PRE_PLL_TMDSCLK_DIV_C_MASK		GENMASK(1, 0)
> +#define STF_INNO_PRE_PLL_TMDSCLK_DIV_C(x)		UPDATE(x, 1, 0)
> +#define STF_INNO_PRE_PLL_TMDSCLK_DIV_B_MASK		GENMASK(3, 2)
> +#define STF_INNO_PRE_PLL_TMDSCLK_DIV_B(x)		UPDATE(x, 3, 2)
> +#define STF_INNO_PRE_PLL_TMDSCLK_DIV_A_MASK		GENMASK(5, 4)
> +#define STF_INNO_PRE_PLL_TMDSCLK_DIV_A(x)		UPDATE(x, 5, 4)
> +
> +/* REG: 0x1a5 */
> +#define STF_INNO_PRE_PLL_DIV_5				0x1a5
> +#define STF_INNO_PRE_PLL_PCLK_DIV_B_SHIFT		5
> +#define STF_INNO_PRE_PLL_PCLK_DIV_B_MASK		GENMASK(6, 5)
> +#define STF_INNO_PRE_PLL_PCLK_DIV_B(x)			UPDATE(x, 6, 5)
> +#define STF_INNO_PRE_PLL_PCLK_DIV_A_MASK		GENMASK(4, 0)
> +#define STF_INNO_PRE_PLL_PCLK_DIV_A(x)			UPDATE(x, 4, 0)
> +
> +/* REG: 0x1a6 */
> +#define STF_INNO_PRE_PLL_DIV_6				0x1a6
> +#define STF_INNO_PRE_PLL_PCLK_DIV_C_SHIFT		5
> +#define STF_INNO_PRE_PLL_PCLK_DIV_C_MASK		GENMASK(6, 5)
> +#define STF_INNO_PRE_PLL_PCLK_DIV_C(x)			UPDATE(x, 6, 5)
> +#define STF_INNO_PRE_PLL_PCLK_DIV_D_MASK		GENMASK(4, 0)
> +#define STF_INNO_PRE_PLL_PCLK_DIV_D(x)			UPDATE(x, 4, 0)
> +
> +/* REG: 0x1a9 */
> +#define STF_INNO_PRE_PLL_LOCK_STATUS			0x1a9
> +
> +/* REG: 0x1aa */
> +#define STF_INNO_POST_PLL_DIV_1				0x1aa
> +#define STF_INNO_POST_PLL_POST_DIV_ENABLE		GENMASK(3, 2)
> +#define STF_INNO_POST_PLL_REFCLK_SEL_TMDS		BIT(1)
> +#define STF_INNO_POST_PLL_POWER_DOWN			BIT(0)
> +#define STF_INNO_POST_PLL_FB_DIV_8(x)			UPDATE(((x) >> 8) << 4, 4, 4)
> +
> +/* REG:0x1ab */
> +#define STF_INNO_POST_PLL_DIV_2				0x1ab
> +#define STF_INNO_POST_PLL_Pre_DIV_MASK			GENMASK(5, 0)
> +#define STF_INNO_POST_PLL_PRE_DIV(x)			UPDATE(x, 5, 0)
> +
> +/* REG: 0x1ac */
> +#define STF_INNO_POST_PLL_DIV_3				0x1ac
> +#define STF_INNO_POST_PLL_FB_DIV_7_0(x)			UPDATE(x, 7, 0)
> +
> +/* REG: 0x1ad */
> +#define STF_INNO_POST_PLL_DIV_4				0x1ad
> +#define STF_INNO_POST_PLL_POST_DIV_MASK			GENMASK(2, 0)
> +#define STF_INNO_POST_PLL_POST_DIV_2			0x0
> +#define STF_INNO_POST_PLL_POST_DIV_4			0x1
> +#define STF_INNO_POST_PLL_POST_DIV_8			0x3
> +
> +/* REG: 0x1af */
> +#define STF_INNO_POST_PLL_LOCK_STATUS			0x1af
> +
> +/* REG: 0x1b0 */
> +#define STF_INNO_BIAS_CONTROL				0x1b0
> +#define STF_INNO_BIAS_ENABLE				BIT(2)
> +
> +/* REG: 0x1b2 */
> +#define STF_INNO_TMDS_CONTROL				0x1b2
> +#define STF_INNO_TMDS_CLK_DRIVER_EN			BIT(3)
> +#define STF_INNO_TMDS_D2_DRIVER_EN			BIT(2)
> +#define STF_INNO_TMDS_D1_DRIVER_EN			BIT(1)
> +#define STF_INNO_TMDS_D0_DRIVER_EN			BIT(0)
> +#define STF_INNO_TMDS_DRIVER_ENABLE			(STF_INNO_TMDS_CLK_DRIVER_EN | \
> +							 STF_INNO_TMDS_D2_DRIVER_EN | \
> +							 STF_INNO_TMDS_D1_DRIVER_EN | \
> +							 STF_INNO_TMDS_D0_DRIVER_EN)
> +
> +/* REG: 0x1b4 */
> +#define STF_INNO_LDO_CONTROL				0x1b4
> +#define STF_INNO_LDO_D2_EN				BIT(2)
> +#define STF_INNO_LDO_D1_EN				BIT(1)
> +#define STF_INNO_LDO_D0_EN				BIT(0)
> +#define STF_INNO_LDO_ENABLE				(STF_INNO_LDO_D2_EN | \
> +							 STF_INNO_LDO_D1_EN | \
> +							 STF_INNO_LDO_D0_EN)
> +
> +/* REG: 0x1be */
> +#define STF_INNO_SERIALIER_CONTROL			0x1be
> +#define STF_INNO_SERIALIER_D2_EN			BIT(6)
> +#define STF_INNO_SERIALIER_D1_EN			BIT(5)
> +#define STF_INNO_SERIALIER_D0_EN			BIT(4)
> +#define STF_INNO_SERIALIER_EN				BIT(0)
> +
> +#define STF_INNO_SERIALIER_ENABLE			(STF_INNO_SERIALIER_D2_EN | \
> +							 STF_INNO_SERIALIER_D1_EN | \
> +							 STF_INNO_SERIALIER_D0_EN | \
> +							 STF_INNO_SERIALIER_EN)
> +
> +/* REG: 0x1cc */
> +#define STF_INNO_RX_CONTROL				0x1cc
> +#define STF_INNO_RX_EN					BIT(3)
> +#define STF_INNO_RX_CHANNEL_2_EN			BIT(2)
> +#define STF_INNO_RX_CHANNEL_1_EN			BIT(1)
> +#define STF_INNO_RX_CHANNEL_0_EN			BIT(0)
> +#define STF_INNO_RX_ENABLE				(STF_INNO_RX_EN | \
> +							 STF_INNO_RX_CHANNEL_2_EN | \
> +							 STF_INNO_RX_CHANNEL_1_EN | \
> +							 STF_INNO_RX_CHANNEL_0_EN)
> +
> +/* REG: 0x1d1 */
> +#define STF_INNO_PRE_PLL_FRAC_DIV_H			0x1d1
> +#define STF_INNO_PRE_PLL_FRAC_DIV_23_16(x)		UPDATE((x) >> 16, 7, 0)
> +/* REG: 0x1d2 */
> +#define STF_INNO_PRE_PLL_FRAC_DIV_M			0x1d2
> +#define STF_INNO_PRE_PLL_FRAC_DIV_15_8(x)		UPDATE((x) >> 8, 7, 0)
> +/* REG: 0x1d3 */
> +#define STF_INNO_PRE_PLL_FRAC_DIV_L			0x1d3
> +#define STF_INNO_PRE_PLL_FRAC_DIV_7_0(x)		UPDATE(x, 7, 0)
> +
> +#define PIXCLOCK_4K_30FPS				297000000
> +
> +#endif /* __STARFIVE_HDMI_H__ */
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

