Return-Path: <devicetree+bounces-89863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B915794310D
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 15:38:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 52BCDB21E2D
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 13:38:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BC521B0125;
	Wed, 31 Jul 2024 13:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d6sZZsJu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E7EF1AD3FE
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 13:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722433080; cv=none; b=lfi09PGdYbtGCvSHbF6aVWbic6DyhpU2qFuQZ3pwfRm8beO6PEs46OnvZuwFHHi3Adw30MdRWq13AC3mXB6scwe8L1+FelwrQuVhks37UR+8heHxMgiyxDgSz+qxyq6NMWgdyMJ2AgMqKTrBfB0uEi7vuyT3Q+wQJA3Nv30shhw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722433080; c=relaxed/simple;
	bh=dbeHCvj1LXtunZ/gnKxJeegOc4G+aHOzoQ0sTv+iuNM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gXcUBPwDYXd5VfpRn6tH99ookbSlPaAwT7PgbQmKP/6LgycXBsq+zalUx/7pUA5pKkakY4RokjoSAoDgHZtn7UJ9vrDL+B21tCA56WaZfKsugjpSyNpD/36ZyoraL9zbrQg8shZTmg4XPvOrBVuimyTyYTcfo1UWlkD3iMe0WMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d6sZZsJu; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-52f025bc147so8155991e87.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 06:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722433077; x=1723037877; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=euZqe8MZJ1dwlC2Y71IAY6QKt2ZvC3bSg9scHU/4CGE=;
        b=d6sZZsJu0cTU201VFh/elzRfdK9znsIFzwDptKcUsFxiX1cXzJKZgGa4Qcyut/z0cr
         pQhUlO80dZB90Ff4G/1ZrIRtDTltQD6bHh7gxgWQK5Tb3UT17sMjw+ti++6wZ9z4m2M2
         VzWAQKl9yGUTr18ADF7e0MaEzu7Gx2c11OGZdp0t8P1mRcV4RivXXMcGJQJuP0vxRN0Z
         Tu6HEgYDmqo2YiMz33PrZRvktgRsJd25WifGWHv4a96hw1StgShd+dAWEduJS7ON4cnI
         9OW4gFqzQTtzfEDZsVPJ36zMd9dVrm1WW6QbehF3afy2kXBJSuKZlyG44wTjgmmNThma
         bgcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722433077; x=1723037877;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=euZqe8MZJ1dwlC2Y71IAY6QKt2ZvC3bSg9scHU/4CGE=;
        b=TMWA1F/sUr3/38JlqZZ9WdmHq7Ztzhq3NxStHCmt4u/4LtQrjiI1uumwHoVg2BcMaS
         fYQKOPUx9iJiR5nayHmwE+hcpo/sDxYb/1SCVepZgEUYghf0OSPx5/9vyR1VQwCs0N7p
         zmAGBvR8w9FwQ6RvhA3IOHzKfAsOWElLYBN1D0XFg3fuPSAAgenmADT+jnmmtfIgOb2w
         rK6BteoYwdUCGnTnVr9HCmxeUFPYG9yS+IYxTKI5RuUBBe7MTmHC6MAnxFUg+Er2MBgE
         X9kp/wzxPrFYeSWgVaW6kfwsopu9s/OcQmVRiLfun0Bp1qpHmvMr3yXk+qC3EOyCmHpn
         DI/w==
X-Forwarded-Encrypted: i=1; AJvYcCWLbrsyA8bK50Wzc3wecWyuf7SPwOtJZ86ilsZHYI346NELKzIu8a6SDXS1aF081yA39U/2oBh+J6etHb17xqzSN0z12ZhUHjMmaA==
X-Gm-Message-State: AOJu0YwGROjl8QJBUcq9TUxhWNEpI7qwgy38Iqb211N9jnAXdfm6j3GL
	hTx1tHiwfyAwOX3owRvOmzc9kNXeAgCMeuyTjQ40go70haCUC1PXHMMIjGwFkDU=
X-Google-Smtp-Source: AGHT+IGKaoo2n5sBYtF5hcWxbazPmSsCMpENigLQEchBKSKDBDseQvdPfye9t44dyqo8bVsTDtKSeQ==
X-Received: by 2002:ac2:5968:0:b0:52f:d090:6dae with SMTP id 2adb3069b0e04-5309b2ce519mr9386789e87.52.1722433076670;
        Wed, 31 Jul 2024 06:37:56 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5c19d5fsm2231849e87.204.2024.07.31.06.37.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Jul 2024 06:37:56 -0700 (PDT)
Date: Wed, 31 Jul 2024 16:37:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Philipp Zabel <p.zabel@pengutronix.de>
Cc: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Chris Healy <cphealy@gmail.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 00/12] drm/imx/ipuv3: switch LDB and parallel-display
 driver to use drm_bridge_connector
Message-ID: <pagkojyl72by6mru6ky5niiffqrt2dpny5jqmw4z5aedmr23h7@qmzbbt4laikx>
References: <20240602-drm-imx-cleanup-v3-0-e549e2a43100@linaro.org>
 <uqsnphe2pm366xenpdvtsxvpkiewgmxoqyv2zvbgc3ewlx23mp@guesbce35jcm>
 <e4cf5a6a2be51fe9c7fff54e30cf3bd6f1d3534e.camel@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e4cf5a6a2be51fe9c7fff54e30cf3bd6f1d3534e.camel@pengutronix.de>

On Wed, Jul 31, 2024 at 03:12:44PM GMT, Philipp Zabel wrote:
> Hi Dmitry,
> 
> On Sa, 2024-07-27 at 14:17 +0300, Dmitry Baryshkov wrote:
> > On Sun, Jun 02, 2024 at 03:04:40PM GMT, Dmitry Baryshkov wrote:
> > > The IPUv3 DRM i.MX driver contains several codepaths for different
> > > usescases: both LDB and paralllel-display drivers handle next-bridge,
> > > panel and the legacy display-timings DT node on their own.
> > > 
> > > Drop unused ddc-i2c-bus and edid handling (none of the DT files merged
> > > upstream ever used these features), switch to panel-bridge driver,
> > > removing the need to handle drm_panel codepaths separately and finally
> > > switch to drm_bridge_connector, removing requirement for the downstream
> > > bridges to create drm_connector on their own.
> > > 
> > > This has been tested on the iMX53 with the DPI panel attached to LDB via
> > > LVDS decoder, using all possible usecases (lvds-codec + panel, panel
> > > linked directly to LDB node and the display-timings node).
> > > 
> > > To be able to test on the iMX53 QSRB with the HDMI cape apply [1], [2]
> > > 
> > > [1] https://lore.kernel.org/all/20240514030718.533169-1-victor.liu@nxp.com/
> > > [2] https://lore.kernel.org/all/20240602-imx-sii902x-defconfig-v1-1-71a6c382b422@linaro.org/
> > > 
> > > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > > ---
> > > Changes in v3:
> > > - Notice (soft) dependencies in the cover letter (Chris)
> > > - Select DRM_BRIDGE instead of depending on it (Philipp)
> > > - Dropped unused selection of DRM_PANEL (Philipp)
> > > - Added missing include of <drm/bridge/imx.h> to parallel-display.c
> > >   (Philipp)
> > > - Link to v2: https://lore.kernel.org/r/20240331-drm-imx-cleanup-v2-0-d81c1d1c1026@linaro.org
> > > 
> > > Changes in v2:
> > > - Fixed drm_bridge_attach flags in imx/parallel-display driver.
> > > - Moved the legacy bridge to drivers/gpu/drm/bridge
> > > - Added missing EXPORT_SYMBOL_GPL to the iMX legacy bridge
> > > - Link to v1: https://lore.kernel.org/r/20240311-drm-imx-cleanup-v1-0-e104f05caa51@linaro.org
> > 
> > Just a gracious ping, this has been without maintainer's review for
> > nearly two months.
> 
> I don't have any active i.MX6 projects right now, which increases
> latency. I'll get around to reviewing the remaining changes and testing
> on i.MX6 this week or next.

Thanks!

-- 
With best wishes
Dmitry

