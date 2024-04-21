Return-Path: <devicetree+bounces-61217-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 79A608AC044
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 19:24:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E636D1F2100A
	for <lists+devicetree@lfdr.de>; Sun, 21 Apr 2024 17:24:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E54F2C853;
	Sun, 21 Apr 2024 17:24:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a9OGZHDQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92BB21BC4B
	for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 17:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713720271; cv=none; b=HRDg1nfibMkQ6itXA56WiAYQcQl9WiYOmX5PryO/tzTfh44ZbanTGAE8vQJqfJN1M3Naxa8CJ+YF7GuOJXtzEFd4RNE+pFrKvZZsXm+zv5fn4wXayr+WHZABPFAzSktHwSVPXjqCQHutxkDQmCX3muZFFsLIEg5y8tzb8qBRwK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713720271; c=relaxed/simple;
	bh=yHL0DbIQLkmeGdlCKpk8kjyfuAXLVJzOnT87LUKVr0U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AXidNYAOaLmMBhRJ0FAJ6XDOH2P5q2fCqAxinGlGMq4fGTqiAdWfzAJwCT6BvZE1CB/dYOTEf9SbdIJnHzR0Umhk2I4u8Rt5H3XmHG7ax8TtqdLArbYRHII+bD50khoAdBBuTaQ4niL//GWokk864WIh7kC9+fAVNEH4Tn5qmuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a9OGZHDQ; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5176f217b7bso6018671e87.0
        for <devicetree@vger.kernel.org>; Sun, 21 Apr 2024 10:24:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713720268; x=1714325068; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=qP4QRJgU1BApHuToLH0DTtNB0ZEyDCq59t66ZEJwTQg=;
        b=a9OGZHDQKWoxmfR7m45beg+jR3nuU52r4x5ykQE4fxp7OoS6kxSYpU/aQTZfFvFPRi
         J0870j/SaQQMdTImnJXA3uhKdKD8wwJIjkMPLC5RS/FVElwAnJUsjdR+PuOITZ1Nb8lA
         fxCbd3TniFqIgN9Fy+QU45F+7iM2q2Bzpg3RoDMhElJ67A0TxwoVpIBdjyBYUaQf+S3j
         VDTYTP/6H9ev7LTUJVxsAaABxN71S9KlDBItG+2qL0LdFFr1mI/230u5IFcQNJyZ7UCW
         6nlsthjy4AE/hLCn9eaIlYOuedRuB0uwpSKQJp0tVLabcSdO14mIjYuFI15moToDNWLA
         1hnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713720268; x=1714325068;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qP4QRJgU1BApHuToLH0DTtNB0ZEyDCq59t66ZEJwTQg=;
        b=a0s47uLMZTiRoMsHvLpoNEpca6xfG2MWBpTMF6g+7bJnVCV6gg1tMQqoOIDcgirgZj
         nkK5UkOO46J6Sf+yK1mDEp8WH9hUmd9LfsiXAHUVCkKZ9V0lZlszUTPWNbBk0hn4S1jU
         zN0bBtlewUM5XCSoMEbyJekUnIKYOcwcepQnRUa4NMwNsPxt/NPAy590EOwvXJSndP2Z
         YoKys3WDsjxrUD+3UB0fwHlOgObCN5G8JHzPqOpjVIdyzH1hcyLyt5kTZyJTC9tQI0DU
         20SYzYHt6IaMS31R7KFFtc6VuNE1btbqtNUCEJr3qMB/enKCI0WGk6fnAlUMJcN+Cad0
         hIlg==
X-Forwarded-Encrypted: i=1; AJvYcCVAIi9T3CiRpwgp5ry7PlbatBF1UjPagTnukO3wm8V2tC90cYkWqDS0wZOq3igTun63PAgJPynnP+c3S4h/wjdG3gDXfn0BIsfZ1Q==
X-Gm-Message-State: AOJu0YxriaWN63FdvutDY7V+nXM1G5O5H1dIefVWtv8t6BT9b24WlnMu
	bhcYXa89S2Hm/CFBLc3+vFupAye4Z6wqu4Eu+rzX5dpgQY5XWNTbkwDUfwNhrQA=
X-Google-Smtp-Source: AGHT+IFLvHBYF/HR8/m7asEk356ewfwQEIZ3ux1d+BGEv1g/KRonZRM89ywg48Iy/h82lTw96asb1w==
X-Received: by 2002:a05:6512:370f:b0:518:c8e1:478 with SMTP id z15-20020a056512370f00b00518c8e10478mr5802469lfr.58.1713720267513;
        Sun, 21 Apr 2024 10:24:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::8a5])
        by smtp.gmail.com with ESMTPSA id u18-20020ac25192000000b00518d5c5740esm1507389lfi.180.2024.04.21.10.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Apr 2024 10:24:26 -0700 (PDT)
Date: Sun, 21 Apr 2024 20:24:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Dharma Balasubiramani <dharma.b@microchip.com>
Cc: "andrzej . hajda @ intel . com" <andrzej.hajda@intel.com>, 
	"neil . armstrong @ linaro . org" <neil.armstrong@linaro.org>, "rfoss @ kernel . org" <rfoss@kernel.org>, 
	"Laurent . pinchart @ ideasonboard . com" <Laurent.pinchart@ideasonboard.com>, "jonas @ kwiboo . se" <jonas@kwiboo.se>, 
	"jernej . skrabec @ gmail . com" <jernej.skrabec@gmail.com>, 
	"maarten . lankhorst @ linux . intel . com" <maarten.lankhorst@linux.intel.com>, "mripard @ kernel . org" <mripard@kernel.org>, 
	"tzimmermann @ suse . de" <tzimmermann@suse.de>, "airlied @ gmail . com" <airlied@gmail.com>, 
	"daniel @ ffwll . ch" <daniel@ffwll.ch>, "robh+dt @ kernel . org" <robh+dt@kernel.org>, 
	"krzysztof . kozlowski+dt @ linaro . org" <krzysztof.kozlowski+dt@linaro.org>, "conor+dt @ kernel . org" <conor+dt@kernel.org>, 
	"linux @ armlinux . org . uk" <linux@armlinux.org.uk>, 
	"Nicolas . Ferre @ microchip . com" <Nicolas.Ferre@microchip.com>, 
	"alexandre . belloni @ bootlin . com" <alexandre.belloni@bootlin.com>, "claudiu . beznea @ tuxon . dev" <claudiu.beznea@tuxon.dev>, 
	"Manikandan . M @ microchip . com" <Manikandan.M@microchip.com>, "arnd @ arndb . de" <arnd@arndb.de>, 
	"geert+renesas @ glider . be" <geert+renesas@glider.be>, "Jason @ zx2c4 . com" <Jason@zx2c4.com>, 
	"mpe @ ellerman . id . au" <mpe@ellerman.id.au>, "gerg @ linux-m68k . org" <gerg@linux-m68k.org>, 
	"rdunlap @ infradead . org" <rdunlap@infradead.org>, "vbabka @ suse . cz" <vbabka@suse.cz>, 
	"dri-devel @ lists . freedesktop . org" <dri-devel@lists.freedesktop.org>, "devicetree @ vger . kernel . org" <devicetree@vger.kernel.org>, 
	"linux-kernel @ vger . kernel . org" <linux-kernel@vger.kernel.org>, 
	"oe-kbuild-all @ lists . linux . dev" <oe-kbuild-all@lists.linux.dev>, 
	"Hari . PrasathGE @ microchip . com" <Hari.PrasathGE@microchip.com>
Subject: Re: [PATCH v8 2/4] drm/bridge: add lvds controller support for sam9x7
Message-ID: <2ct5tav52onwd6ceuzqbbam4qsqfvxdjpsrbn72jbsyjtcgtsl@j3d7piqqheel>
References: <20240421011050.43265-1-dharma.b@microchip.com>
 <20240421011050.43265-3-dharma.b@microchip.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240421011050.43265-3-dharma.b@microchip.com>

On Sun, Apr 21, 2024 at 06:40:48AM +0530, Dharma Balasubiramani wrote:
> Add a new LVDS controller driver for sam9x7 which does the following:
> - Prepares and enables the LVDS Peripheral clock
> - Defines its connector type as DRM_MODE_CONNECTOR_LVDS and adds itself
> to the global bridge list.
> - Identifies its output endpoint as panel and adds it to the encoder
> display pipeline
> - Enables the LVDS serializer
> 
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>
> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
> Acked-by: Hari Prasath Gujulan Elango <hari.prasathge@microchip.com>
> ---
> Changelog
> v7 -> v8
> - Assign ret variable properly before checking it for err.
> v6 -> v7
> - Remove setting encoder type from bridge driver.
> - Drop clk_disable() from pm_runtime_get_sync() error handling.
> - Use devm_clk_get() instead of prepared version.
> - Hence use clk_prepare_enable() and clk_disable_unprepare().
> - Use devm_drm_of_get_bridge() instead of devm_drm_panel_bridge_add().
> - Add error check for devm_pm_runtime_enable().
> - Use dev_err() instead of DRM_DEV_ERROR() as it is deprecated.
> - Add missing Acked-by tag.
> v5 -> v6
> - No Changes.
> v4 -> v5
> - Drop the unused variable 'format'.
> - Use DRM wrapper for dev_err() to maintain uniformity.
> - return -ENODEV instead of -EINVAL to maintain consistency with other DRM
>   bridge drivers.
> v3 -> v4
> - No changes.
> v2 ->v3
> - Correct Typo error "serializer".
> - Consolidate get() and prepare() functions and use devm_clk_get_prepared().
> - Remove unused variable 'ret' in probe().
> - Use devm_pm_runtime_enable() and drop the mchp_lvds_remove().
> v1 -> v2
> - Drop 'res' variable and combine two lines into one.
> - Handle deferred probe properly, use dev_err_probe().
> - Don't print anything on deferred probe. Dropped print.
> - Remove the MODULE_ALIAS and add MODULE_DEVICE_TABLE().
> - symbol 'mchp_lvds_driver' was not declared. It should be static.
> ---
>  drivers/gpu/drm/bridge/Kconfig          |   7 +
>  drivers/gpu/drm/bridge/Makefile         |   1 +
>  drivers/gpu/drm/bridge/microchip-lvds.c | 229 ++++++++++++++++++++++++
>  3 files changed, 237 insertions(+)
>  create mode 100644 drivers/gpu/drm/bridge/microchip-lvds.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

