Return-Path: <devicetree+bounces-134715-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C5DC9FE5D3
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 13:30:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5181C7A113D
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 12:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D728419ABC3;
	Mon, 30 Dec 2024 12:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="m4LlZvCa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8C3A3C39
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 12:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735561845; cv=none; b=YFANIwfsKEtKsRyfH2o00vLUetbtMnStqId4vr/cZAFXqnRWh6tPFnfbgvDL4yL/p7TcTlwa7MvDQd96eKgngoH3lzwgNz5EJGxyhNqt8uxgPoeMM3WCKJfXkMNTSvt3/iw3WZsPta9z61h3pHTIev4wKnToYWDE52x8S0bevk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735561845; c=relaxed/simple;
	bh=1Da+aWYWjUDDOnKx0JPqyCvQMJnsbX+TLRKFOsYKlyY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KrS1Ze8CQMnCOB1ox1oABwzwgL0Hy45O+vmfo84bWjL4SVronspvnIw2WDxwJvpzqhPDBzzwACeRCcISAAOXD5MmPFlv1Otf2Xm4gaEXyPdIVvNqaOSK8ndODFQScW+9ygDtKGUCbY1Pz3IfTRkL2Cc4uNAB+YlvVVXv+drsc3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=m4LlZvCa; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5401c68b89eso11363092e87.0
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 04:30:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735561842; x=1736166642; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=vwalPoVfhXMCQGFYr9ryIpasntXwzfLlG4s9wl797Go=;
        b=m4LlZvCaer64MC10062eyNnl6w6HmOVUqFz+fz3I4gCPUMc8Xepbi4eithAe6NS4Sv
         qiGXPvxXcRXmeuXtm/mTepF2+7OiVbdIp9F380o7iCcsWGt1AWmU55usB0zoFoOS8Ily
         hnWaJLHQ4W4Bhx6Tb0UfapCK2uus1ZbjKssy17BWZcZ3nHa6hWtCX71+fA/y7jqAQsM2
         0gN5qDCDU8AYf1mccZyBFvoJzDRkIrG1FM82Tl/UEYFU3RtKKhR5hHc8RCS8W2VbsUyF
         q66DWJUM97Nh6uG9USGk4V1eqgw+nvI3rBwzuDJv1H6yujPixpg6stKfvv0iZBbJtLkb
         f/aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735561842; x=1736166642;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vwalPoVfhXMCQGFYr9ryIpasntXwzfLlG4s9wl797Go=;
        b=aNFIujL+g9n8iHxpCLQVIvC/EyXTabwYLG1N0kn4jDkAC6K66tE3rWvAScRERxAb6y
         a2ZJkYh5MCakbeOnFMmMunh/MkghcidPkkGfISUNZzacXCPobi/POpkqX+hKqWO9VBgr
         lJnHQxQA9kYRQNgxvRsC45dYA9hbC1CrGV+m82EBZs0TcWUegqrUGZV2NbtX10TlfuA8
         RUo2whH1wS+WlyhDtsww7KirhvJNl1SPSBx+lI+p6wJIEtHRb/y74lNeRqfstgztMTJ6
         ztVVI1NawspWkdf3eyV06jShuY3Tq4S02pG+90KQxqAbZ2c2c25wx58AXbPFhmUFBxyY
         IjJQ==
X-Forwarded-Encrypted: i=1; AJvYcCXweCLaLFf3w8w6oNezFJieSpjiVZFv2OpsCG4GwGkWAZzz6lm8ZPz2UCCHMDgMy3iZDUj8K0W1HJ+r@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2gXwlx3iE45iDzmB9mPfiC3GjhNhs5HYsIsIS7VUtUrUFIdWb
	by+A/MuHApaE6qKKF+xzhnz5rQNtvn6xq3Nk7ScEOEAIUPkyaV5XCFtjebxHtqQ=
X-Gm-Gg: ASbGncspBpWHSGtZVC557b5R8WT79FVZ7qCITSGDzg4s2LFDNqaKygPdA8pjCTbQlvF
	oa0D2gMCR3jNOOjc+ULZKtSNcRv3q9cKQCXlCnHnSPT50S4MjUJg69sfrcuB/IMvYZ22KMWvhCi
	v9cM/ym/A/iFN3AOIk37GaOzgEGJ8LJcsdE7qS+LnixPZ6OaG626TeE1Yw54xbJIJEeK1Xi0lRq
	VGvTbbSewM32bqZBpk9Ct5+0E2gmcI3gzPqNmu4WU5FcF1jXu9nU+NA3wGhNd3iTtvHdGWkETjB
	767mV47sK/Q6D+VM4oaOnQeRwVWZXxe8uL8U
X-Google-Smtp-Source: AGHT+IGs664Z6a1VXnL1IU1qIYV7pMmpsbWRxTp2wEqrbi2vMMk6KM7ZX9fIIcaItp6yhkS4k5KJrg==
X-Received: by 2002:a05:6512:10ce:b0:540:2fbb:22fe with SMTP id 2adb3069b0e04-54229474ebcmr9865558e87.26.1735561841796;
        Mon, 30 Dec 2024 04:30:41 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235f6073sm3157778e87.27.2024.12.30.04.30.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Dec 2024 04:30:40 -0800 (PST)
Date: Mon, 30 Dec 2024 14:30:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, 
	u.kleine-koenig@baylibre.com, francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v8 09/19] drm/imx: Add i.MX8qxp Display Controller
 display engine
Message-ID: <kwipz3wzydihroelii6enzxv63yyfuidmrua2fzhdvjdbjpqqp@s66fwhbbvcs5>
References: <20241230021207.220144-1-victor.liu@nxp.com>
 <20241230021207.220144-10-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241230021207.220144-10-victor.liu@nxp.com>

On Mon, Dec 30, 2024 at 10:11:57AM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller display engine consists of all processing
> units that operate in a display clock domain.  Add minimal feature
> support with FrameGen and TCon so that the engine can output display
> timings.  The FrameGen driver, TCon driver and display engine driver
> are components to be aggregated by a master registered in the upcoming
> DRM driver.
> 
> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v8:
> * Get DE/FG/TC device instance numbers through register start addresses of the
>   devices, instead of compatible strings. (Dmitry)
> * s/shdld/shdload/ for DE IRQs. (Dmitry)
> * Drop id member from struct dc_de. (Dmitry)
> * Add dc_de_post_bind(), to avoid dependency on the component helper's way of
>   implementing component binding order. (Dmitry)
> 
> v7:
> * Add kernel doc for struct dc_drm_device. (Dmitry)
> * Fix regmap_config definitions by correcting name field, correcting read
>   ranges and setting max_register field.
> * Get instance numbers from device data(compatible strings) instead of OF
>   aliases.
> * Collect Maxime's R-b tag.
> * Trivial tweaks.
> 
> v6:
> * No change.
> 
> v5:
> * Replace .remove_new with .remove in dc-{de,fg,tc}.c. (Uwe)
> * Select REGMAP and REGMAP_MMIO Kconfig options.
> * Fix commit message to state that display engine driver is a component driver
>   instead of a master/aggregate driver.
> 
> v4:
> * Use regmap to define register map for all registers. (Dmitry)
> * Use regmap APIs to access registers. (Dmitry)
> * Inline some small functions. (Dmitry)
> * Move dc_fg_displaymode() and dc_fg_panic_displaymode() function calls from
>   KMS routine to initialization stage. (Dmitry)
> * Use devm_kzalloc() to drmm_kzalloc() to allocate dc_* data strutures.
> * Drop unnecessary private struct dc_*_priv.
> * Set suppress_bind_attrs driver flag to true to avoid unnecessary sys
>   interfaces to bind/unbind the drivers.
> 
> v3:
> * No change.
> 
> v2:
> * Use OF alias id to get instance id.
> * Add dev member to struct dc_tc.
> 
>  drivers/gpu/drm/imx/Kconfig     |   1 +
>  drivers/gpu/drm/imx/Makefile    |   1 +
>  drivers/gpu/drm/imx/dc/Kconfig  |   7 +
>  drivers/gpu/drm/imx/dc/Makefile |   5 +
>  drivers/gpu/drm/imx/dc/dc-de.c  | 177 +++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-de.h  |  56 +++++
>  drivers/gpu/drm/imx/dc/dc-drv.c |  32 +++
>  drivers/gpu/drm/imx/dc/dc-drv.h |  57 +++++
>  drivers/gpu/drm/imx/dc/dc-fg.c  | 376 ++++++++++++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-tc.c  | 141 ++++++++++++
>  10 files changed, 853 insertions(+)
>  create mode 100644 drivers/gpu/drm/imx/dc/Kconfig
>  create mode 100644 drivers/gpu/drm/imx/dc/Makefile
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fg.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-tc.c
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

