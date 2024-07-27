Return-Path: <devicetree+bounces-88534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DAA93E025
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 18:30:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3E668B20C6B
	for <lists+devicetree@lfdr.de>; Sat, 27 Jul 2024 16:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2011518308E;
	Sat, 27 Jul 2024 16:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mKcdaFyu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FD6416C6A7
	for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 16:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722097809; cv=none; b=nWYNfSNMUQhmva0lR5ksQSXFTw41rEiQEjLf0RhHwsgV5PX2+EXZ/gefvGxb//dR77p7ZJYraeQDzgKRjTdH/xqd4E/bYDUCtws3F5Rid4xUyNqJMIz4NEIuPXH1gMkHY5fai/PHVvv2u0arPpoWTD4BNo3fM9hrJEz4lWtHCFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722097809; c=relaxed/simple;
	bh=jGKbXghqkFM9etHgdKZFDWtotlOJyKu0i+EMBRHOMPY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D3aeTnAxowbTceBjJPdjIPmOUOjXInUi9HM6ClF7WfjZ2Fc8dNZqaY35KvfyEHdJUs88QlJ+FI7mStfs5vDxUt1Cjt9RWrFAl3kbdBNScmKAPgqvJXtZXeatYpQEgeC5B5TXOkiY6BFlHnpabaqE1CjEFRmKkNJP+LbKtbdpHM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mKcdaFyu; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52f0277daa5so3404782e87.0
        for <devicetree@vger.kernel.org>; Sat, 27 Jul 2024 09:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722097805; x=1722702605; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rwPysPuhnkmaEjn6CcykM4ouSRM+5WG4t7eyGLaduGo=;
        b=mKcdaFyuCtd2+oJURqO1FF/xzWsjO78GQNrNFAhDECAVm7He1WJgAi6Pq0YeejRKCE
         km2L3VG7AL8BlrXO540xO0SymRZjyzoLcgFz0oOE/J7oZ642tXjQivvJzSJrOCRWRXtp
         Et1UxD8mF+qyHvfPwI9fiOr8Y5QWoeF+XrTVvQk39/zV26jISW7oVPKJoyNBnjW5D1UD
         DdXPmmVR7+FS0a5Yu6RZyQmnf50ErZnDZpVZ9KZxGJP+GDFbcGf1eymBqkUbpbiAYqBo
         H37+wJ5FopAtuzxNGWVYgKno7764CSivjfr0kT942LnuRlQp1QRNMEeBTLI64MrK91ty
         oJnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722097805; x=1722702605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rwPysPuhnkmaEjn6CcykM4ouSRM+5WG4t7eyGLaduGo=;
        b=b+cHfSgQFe7L2vL/a2Vk2T6sKuWTN6MuW2c6w2JiOYXdCzs/kUk5xkl8IpkjbcNxVh
         s4Yq29YTIhD38wbeCnfEviS4h86oLD0TIUjpYDOgDTRW8iDEWdGTxQZ0ugGGy8Cl3Awf
         QzwrhB6prXPdxJSjI7JRBcj8g/hgO7epKg692HfVXydBkkeVzELrY3l0Vf2TRcqb85hu
         Yg9vDoQ0KfGWq2TseevkhsFEip4xelLfT/N0/QRs2m+kXck0OAXINUy6OVqQpQGjE2V7
         9/qOuEsS1fnJhu5CQ4O42/WpuX9JvqmxAcZ4Kt9zQQU1KR8y/aBt67yB0luLecHh4oMt
         +DuA==
X-Forwarded-Encrypted: i=1; AJvYcCUQZjwYGZSojMLDjzBWyfh6AyDYin17RP8ZNPe0vK7FQCQrOGehqev4jiPII1T2DaOYHvX220fcH/NLi9A60keBx7JyX6L4MjMqiA==
X-Gm-Message-State: AOJu0YwhpFZp++fHbUdf/ON6sgNqJ3tm/b1a+DAd4/nG35yKIYalhADR
	GsGxZuW+p7WIrs+uLMwq1JsY4qHWPrlWyE15/JwMi1awmW4VlIE3PXaXCGgRM7I=
X-Google-Smtp-Source: AGHT+IF0ZZZLVBWv4n2WKHFnGygyG9CSl3O3Tr7GfUbZPDKiG3MLj1M7l4iXtIPz5Tx3gdtYP8XrHQ==
X-Received: by 2002:ac2:4c96:0:b0:52c:8e00:486a with SMTP id 2adb3069b0e04-5309b2c7552mr2178218e87.55.1722097804284;
        Sat, 27 Jul 2024 09:30:04 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyybrhy-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52fd5bc40b6sm806029e87.62.2024.07.27.09.30.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Jul 2024 09:30:03 -0700 (PDT)
Date: Sat, 27 Jul 2024 19:30:02 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, daniel@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, francesco@dolcini.it, 
	frank.li@nxp.com
Subject: Re: [PATCH v2 09/16] drm/imx: Add i.MX8qxp Display Controller KMS
Message-ID: <reuwtcszfrh5vtkuckkng5zejbj3nh7ahgf2igy2kpyskxrgox@oigld6uy55aw>
References: <20240712093243.2108456-1-victor.liu@nxp.com>
 <20240712093243.2108456-10-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240712093243.2108456-10-victor.liu@nxp.com>

On Fri, Jul 12, 2024 at 05:32:36PM GMT, Liu Ying wrote:
> i.MX8qxp Display Controller(DC) is comprised of three main components that
> include a blit engine for 2D graphics accelerations, display controller for
> display output processing, as well as a command sequencer.  Add kernel
> mode setting support for the display controller part with two CRTCs and
> two primary planes(backed by FetchLayer and FetchWarp respectively).  The
> registers of the display controller are accessed without command sequencer
> involved, instead just by using CPU.  The command sequencer is supposed to
> be used by the blit engine.

Generic comment: please consider moving dc_plane / dc_crtc defines to
the source files and dropping the headers.

> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v2:
> * Find next bridge from TCon's port.
> * Drop drm/drm_module.h include from dc-drv.c.
> 
>  drivers/gpu/drm/imx/dc/Kconfig    |   2 +
>  drivers/gpu/drm/imx/dc/Makefile   |   5 +-
>  drivers/gpu/drm/imx/dc/dc-crtc.c  | 578 ++++++++++++++++++++++++++++++
>  drivers/gpu/drm/imx/dc/dc-crtc.h  |  67 ++++
>  drivers/gpu/drm/imx/dc/dc-de.h    |   3 +
>  drivers/gpu/drm/imx/dc/dc-drv.c   | 236 ++++++++++++
>  drivers/gpu/drm/imx/dc/dc-drv.h   |  21 ++
>  drivers/gpu/drm/imx/dc/dc-kms.c   | 143 ++++++++
>  drivers/gpu/drm/imx/dc/dc-kms.h   |  15 +
>  drivers/gpu/drm/imx/dc/dc-plane.c | 227 ++++++++++++
>  drivers/gpu/drm/imx/dc/dc-plane.h |  37 ++
>  11 files changed, 1332 insertions(+), 2 deletions(-)
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-crtc.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-crtc.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-kms.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-kms.h
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-plane.c
>  create mode 100644 drivers/gpu/drm/imx/dc/dc-plane.h
> 
> diff --git a/drivers/gpu/drm/imx/dc/Kconfig b/drivers/gpu/drm/imx/dc/Kconfig
> index b66b815fbdf1..dac0de009273 100644
> --- a/drivers/gpu/drm/imx/dc/Kconfig
> +++ b/drivers/gpu/drm/imx/dc/Kconfig
> @@ -1,6 +1,8 @@
>  config DRM_IMX8_DC
>  	tristate "Freescale i.MX8 Display Controller Graphics"
>  	depends on DRM && COMMON_CLK && OF && (ARCH_MXC || COMPILE_TEST)
> +	select DRM_GEM_DMA_HELPER
> +	select DRM_KMS_HELPER
>  	select GENERIC_IRQ_CHIP
>  	help
>  	  enable Freescale i.MX8 Display Controller(DC) graphics support
> diff --git a/drivers/gpu/drm/imx/dc/Makefile b/drivers/gpu/drm/imx/dc/Makefile
> index 1ce3e8a8db22..b9d33c074984 100644
> --- a/drivers/gpu/drm/imx/dc/Makefile
> +++ b/drivers/gpu/drm/imx/dc/Makefile
> @@ -1,6 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0
>  
> -imx8-dc-drm-objs := dc-cf.o dc-de.o dc-drv.o dc-ed.o dc-fg.o dc-fl.o dc-fu.o \
> -		    dc-fw.o dc-ic.o dc-lb.o dc-pe.o dc-tc.o
> +imx8-dc-drm-objs := dc-cf.o dc-crtc.o dc-de.o dc-drv.o dc-ed.o dc-fg.o dc-fl.o \
> +		    dc-fu.o dc-fw.o dc-ic.o dc-kms.o dc-lb.o dc-pe.o \
> +		    dc-plane.o dc-tc.o
>  
>  obj-$(CONFIG_DRM_IMX8_DC) += imx8-dc-drm.o
> diff --git a/drivers/gpu/drm/imx/dc/dc-crtc.c b/drivers/gpu/drm/imx/dc/dc-crtc.c
> new file mode 100644
> index 000000000000..e151e14a6677
> --- /dev/null
> +++ b/drivers/gpu/drm/imx/dc/dc-crtc.c
> @@ -0,0 +1,578 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2024 NXP
> + */
> +
> +#include <linux/completion.h>
> +#include <linux/interrupt.h>
> +#include <linux/irqreturn.h>
> +#include <linux/pm_runtime.h>
> +#include <linux/spinlock.h>
> +
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_atomic_state_helper.h>
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_device.h>
> +#include <drm/drm_drv.h>
> +#include <drm/drm_managed.h>
> +#include <drm/drm_modes.h>
> +#include <drm/drm_modeset_helper_vtables.h>
> +#include <drm/drm_plane.h>
> +#include <drm/drm_vblank.h>
> +
> +#include "dc-crtc.h"
> +#include "dc-de.h"
> +#include "dc-drv.h"
> +#include "dc-pe.h"
> +#include "dc-plane.h"
> +
> +#define DC_CRTC_WAIT_FOR_COMPLETION_TIMEOUT(c)				\
> +do {									\
> +	unsigned long ret;						\
> +	ret = wait_for_completion_timeout(&dc_crtc->c, HZ);		\
> +	if (ret == 0)							\
> +		dc_crtc_err(crtc, "%s: wait for " #c " timeout\n",	\
> +							__func__);	\
> +} while (0)
> +
> +#define DC_CRTC_CHECK_FRAMEGEN_FIFO(fg)					\
> +do {									\
> +	typeof(fg) _fg = (fg);						\
> +	if (dc_fg_secondary_requests_to_read_empty_fifo(_fg)) {		\
> +		dc_fg_secondary_clear_channel_status(_fg);		\
> +		dc_crtc_err(crtc, "%s: FrameGen FIFO empty\n",		\
> +							__func__);	\
> +	}								\
> +} while (0)
> +
> +#define DC_CRTC_WAIT_FOR_FRAMEGEN_SECONDARY_SYNCUP(fg)			\
> +do {									\
> +	if (dc_fg_wait_for_secondary_syncup(fg))			\
> +		dc_crtc_err(crtc,					\
> +			"%s: FrameGen secondary channel isn't syncup\n",\
> +							__func__);	\
> +} while (0)
> +
> +static u32 dc_crtc_get_vblank_counter(struct drm_crtc *crtc)
> +{
> +	struct dc_crtc *dc_crtc = to_dc_crtc(crtc);
> +
> +	return dc_fg_get_frame_index(dc_crtc->fg);
> +}
> +
> +static int dc_crtc_enable_vblank(struct drm_crtc *crtc)
> +{
> +	struct dc_crtc *dc_crtc = to_dc_crtc(crtc);
> +
> +	enable_irq(dc_crtc->irq_dec_framecomplete);
> +
> +	return 0;
> +}
> +
> +static void dc_crtc_disable_vblank(struct drm_crtc *crtc)
> +{
> +	struct dc_crtc *dc_crtc = to_dc_crtc(crtc);
> +
> +	disable_irq_nosync(dc_crtc->irq_dec_framecomplete);
> +}
> +
> +static irqreturn_t
> +dc_crtc_dec_framecomplete_irq_handler(int irq, void *dev_id)
> +{
> +	struct dc_crtc *dc_crtc = dev_id;
> +	struct drm_crtc *crtc = &dc_crtc->base;
> +	unsigned long flags;
> +
> +	drm_crtc_handle_vblank(crtc);
> +
> +	spin_lock_irqsave(&crtc->dev->event_lock, flags);
> +	if (dc_crtc->event) {
> +		drm_crtc_send_vblank_event(crtc, dc_crtc->event);
> +		dc_crtc->event = NULL;
> +		drm_crtc_vblank_put(crtc);
> +	}
> +	spin_unlock_irqrestore(&crtc->dev->event_lock, flags);
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static irqreturn_t dc_crtc_common_irq_handler(int irq, void *dev_id)
> +{
> +	struct dc_crtc *dc_crtc = dev_id;
> +	struct drm_crtc *crtc = &dc_crtc->base;
> +
> +	if (irq == dc_crtc->irq_dec_seqcomplete) {
> +		complete(&dc_crtc->dec_seqcomplete_done);
> +	} else if (irq == dc_crtc->irq_dec_shdld) {
> +		complete(&dc_crtc->dec_shdld_done);
> +	} else if (irq == dc_crtc->irq_ed_cont_shdld) {
> +		complete(&dc_crtc->ed_cont_shdld_done);
> +	} else if (irq == dc_crtc->irq_ed_safe_shdld) {
> +		complete(&dc_crtc->ed_safe_shdld_done);
> +	} else {
> +		dc_crtc_err(crtc, "invalid CRTC irq(%u)\n", irq);
> +		return IRQ_NONE;

And this is a counter-example to my previous questions. If you had 4
separate handlers, there would have been no need for the futile "invalid
CRTC" error, because it would not be possible at all.

> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
> +static const struct drm_crtc_funcs dc_crtc_funcs = {
> +	.reset			= drm_atomic_helper_crtc_reset,
> +	.destroy		= drm_crtc_cleanup,
> +	.set_config		= drm_atomic_helper_set_config,
> +	.page_flip		= drm_atomic_helper_page_flip,
> +	.atomic_duplicate_state	= drm_atomic_helper_crtc_duplicate_state,
> +	.atomic_destroy_state	= drm_atomic_helper_crtc_destroy_state,
> +	.get_vblank_counter	= dc_crtc_get_vblank_counter,
> +	.enable_vblank		= dc_crtc_enable_vblank,
> +	.disable_vblank		= dc_crtc_disable_vblank,
> +	.get_vblank_timestamp	= drm_crtc_vblank_helper_get_vblank_timestamp,
> +};
> +
> +static void dc_crtc_queue_state_event(struct drm_crtc_state *crtc_state)
> +{
> +	struct drm_crtc *crtc = crtc_state->crtc;
> +	struct dc_crtc *dc_crtc = to_dc_crtc(crtc);
> +
> +	spin_lock_irq(&crtc->dev->event_lock);
> +	if (crtc_state->event) {
> +		WARN_ON(drm_crtc_vblank_get(crtc));
> +		WARN_ON(dc_crtc->event);
> +		dc_crtc->event = crtc_state->event;
> +		crtc_state->event = NULL;
> +	}
> +	spin_unlock_irq(&crtc->dev->event_lock);
> +}
> +
> +static enum drm_mode_status
> +dc_crtc_check_clock(struct dc_crtc *dc_crtc, int clk_khz)
> +{
> +	return dc_fg_check_clock(dc_crtc->fg, clk_khz);
> +}
> +
> +static enum drm_mode_status
> +dc_crtc_mode_valid(struct drm_crtc *crtc, const struct drm_display_mode *mode)
> +{
> +	struct dc_crtc *dc_crtc = to_dc_crtc(crtc);
> +	enum drm_mode_status status;
> +
> +	status = dc_crtc_check_clock(dc_crtc, mode->clock);
> +	if (status != MODE_OK)
> +		return status;
> +
> +	if (mode->crtc_clock > DC_FRAMEGEN_MAX_CLOCK_KHZ)
> +		return MODE_CLOCK_HIGH;
> +
> +	return MODE_OK;
> +}
> +
> +static int
> +dc_crtc_atomic_check(struct drm_crtc *crtc, struct drm_atomic_state *state)
> +{
> +	struct drm_crtc_state *new_crtc_state =
> +				drm_atomic_get_new_crtc_state(state, crtc);
> +	struct drm_display_mode *adj = &new_crtc_state->adjusted_mode;
> +	struct dc_crtc *dc_crtc = to_dc_crtc(crtc);
> +	enum drm_mode_status status;
> +
> +	status = dc_crtc_check_clock(dc_crtc, adj->clock);
> +	if (status != MODE_OK)
> +		return -EINVAL;
> +
> +	return 0;
> +}
> +
> +static void
> +dc_crtc_atomic_begin(struct drm_crtc *crtc, struct drm_atomic_state *state)
> +{
> +	struct drm_crtc_state *new_crtc_state =
> +				drm_atomic_get_new_crtc_state(state, crtc);
> +	struct dc_drm_device *dc_drm = to_dc_drm_device(crtc->dev);
> +	struct dc_crtc *dc_crtc = to_dc_crtc(crtc);
> +	int idx, ret;
> +
> +	if (!drm_atomic_crtc_needs_modeset(new_crtc_state) ||
> +	    !new_crtc_state->active)
> +		return;

Why? Can it be called under such conditions?

> +
> +	if (!drm_dev_enter(crtc->dev, &idx))
> +		return;

Can you please give an example of a driver using drm_dev_enter()/_exit()
in DRM callbacks?

> +
> +	/* request pixel engine power-on when CRTC starts to be active */
> +	ret = pm_runtime_resume_and_get(dc_crtc->pe->dev);

This function doesn't return an error. So if pm_runtime_resume_and_get()
didn't increment the counter, corresponding pm_runtime_put() might cause
an underflow. Instead void functions should use pm_runtime_get_sync()

Also can any of the code running afterwards result in the unclocked
exception if resume fails?

> +	if (ret)
> +		dc_crtc_err(crtc, "failed to get DC pixel engine RPM: %d\n",
> +			    ret);
> +
> +	atomic_inc(&dc_drm->pe_rpm_count);

Why do you need a separate RPM count? RPM code already has one.

> +
> +	drm_dev_exit(idx);
> +}
> +


[...]

> +
> +static int
> +dc_crtc_request_irq(struct dc_crtc *dc_crtc, struct device *dev,
> +		    unsigned int irq,
> +		    irqreturn_t (*irq_handler)(int irq, void *dev_id))
> +{
> +	int ret;
> +
> +	ret = request_irq(irq, irq_handler, IRQF_NO_AUTOEN, dev_name(dev),
> +			  dc_crtc);
> +	if (ret < 0)
> +		dev_err(dev, "failed to request irq(%u): %d\n", irq, ret);
> +
> +	return ret;
> +}
> +
> +static int dc_crtc_request_irqs(struct drm_device *drm, struct dc_crtc *dc_crtc)
> +{
> +	struct {
> +		struct device *dev;
> +		unsigned int irq;
> +		irqreturn_t (*irq_handler)(int irq, void *dev_id);
> +	} irqs[] = {
> +		{
> +			dc_crtc->de->dev,
> +			dc_crtc->irq_dec_framecomplete,
> +			dc_crtc_dec_framecomplete_irq_handler,
> +		}, {
> +			dc_crtc->de->dev,
> +			dc_crtc->irq_dec_seqcomplete,
> +			dc_crtc_common_irq_handler,
> +		}, {
> +			dc_crtc->de->dev,
> +			dc_crtc->irq_dec_shdld,
> +			dc_crtc_common_irq_handler,
> +		}, {
> +			dc_crtc->ed_cont->dev,
> +			dc_crtc->irq_ed_cont_shdld,
> +			dc_crtc_common_irq_handler,
> +		}, {
> +			dc_crtc->ed_safe->dev,
> +			dc_crtc->irq_ed_safe_shdld,
> +			dc_crtc_common_irq_handler,
> +		},
> +	};
> +	struct drm_crtc *crtc = &dc_crtc->base;
> +	int i, ret;
> +
> +	dc_crtc->irqs = drmm_kcalloc(drm, ARRAY_SIZE(irqs),
> +				     sizeof(*dc_crtc->irqs), GFP_KERNEL);

Using array would remove the necessity to call drmm_kcalloc here().

> +	if (!dc_crtc->irqs) {
> +		dev_err(drm->dev, "failed to allocate CRTC%u irqs\n",
> +			crtc->index);
> +		return -ENOMEM;
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(irqs); i++) {
> +		struct dc_crtc_irq *irq = &dc_crtc->irqs[i];
> +
> +		ret = dc_crtc_request_irq(dc_crtc, irqs[i].dev, irqs[i].irq,
> +					  irqs[i].irq_handler);
> +		if (ret)
> +			return ret;
> +
> +		irq->dc_crtc = dc_crtc;
> +		irq->irq = irqs[i].irq;
> +
> +		ret = drmm_add_action_or_reset(drm, dc_crtc_free_irq, irq);

Can you use devm_request_irq() instead?

> +		if (ret)
> +			return ret;
> +	}
> +
> +	return 0;
> +}
> +

[...]

> +
> +static int dc_kms_init_encoder_per_crtc(struct dc_drm_device *dc_drm,
> +					int crtc_index)
> +{
> +	struct dc_crtc *dc_crtc = &dc_drm->dc_crtc[crtc_index];
> +	struct drm_device *drm = &dc_drm->base;
> +	struct drm_crtc *crtc = &dc_crtc->base;
> +	struct drm_connector *connector;
> +	struct device *dev = drm->dev;
> +	struct drm_encoder *encoder;
> +	struct device_node *remote;
> +	struct drm_bridge *bridge;
> +	int ret = 0;
> +
> +	remote = of_graph_get_remote_node(dc_crtc->de->tc->dev->of_node, 0, -1);
> +	if (!of_device_is_available(remote))
> +		goto out;
> +
> +	bridge = of_drm_find_bridge(remote);

drm_of_find_panel_or_bridge() instead.

> +	if (!bridge) {
> +		ret = -EPROBE_DEFER;
> +		dev_err_probe(dev, ret, "failed to find bridge for CRTC%u\n",
> +			      crtc->index);
> +		goto out;
> +	}
> +
> +	encoder = &dc_drm->encoder[crtc_index];
> +	ret = drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_NONE);
> +	if (ret) {
> +		dev_err(dev, "failed to initialize encoder for CRTC%u: %d\n",
> +			crtc->index, ret);
> +		goto out;
> +	}
> +
> +	encoder->possible_crtcs = drm_crtc_mask(crtc);
> +
> +	ret = drm_bridge_attach(encoder, bridge, NULL,
> +				DRM_BRIDGE_ATTACH_NO_CONNECTOR);
> +	if (ret) {
> +		dev_err(dev,
> +			"failed to attach bridge to encoder for CRTC%u: %d\n",
> +			crtc->index, ret);
> +		goto out;
> +	}
> +
> +	connector = drm_bridge_connector_init(drm, encoder);
> +	if (IS_ERR(connector)) {
> +		ret = PTR_ERR(connector);
> +		dev_err(dev, "failed to init bridge connector for CRTC%u: %d\n",
> +			crtc->index, ret);
> +		goto out;
> +	}
> +
> +	ret = drm_connector_attach_encoder(connector, encoder);
> +	if (ret)
> +		dev_err(dev,
> +			"failed to attach encoder to connector for CRTC%u: %d\n",
> +			crtc->index, ret);
> +
> +out:
> +	of_node_put(remote);
> +	return ret;
> +}
> +
> +int dc_kms_init(struct dc_drm_device *dc_drm)
> +{
> +	struct drm_device *drm = &dc_drm->base;
> +	int ret, i;
> +
> +	ret = drmm_mode_config_init(drm);
> +	if (ret)
> +		return ret;
> +
> +	atomic_set(&dc_drm->pe_rpm_count, 0);
> +
> +	drm->mode_config.min_width = 60;
> +	drm->mode_config.min_height = 60;
> +	drm->mode_config.max_width = 8192;
> +	drm->mode_config.max_height = 8192;
> +	drm->mode_config.funcs = &dc_drm_mode_config_funcs;
> +
> +	drm->vblank_disable_immediate = true;
> +	drm->max_vblank_count = DC_FRAMEGEN_MAX_FRAME_INDEX;
> +
> +	for (i = 0; i < DC_CRTCS; i++) {
> +		ret = dc_crtc_init(dc_drm, i);
> +		if (ret)
> +			return ret;
> +
> +		ret = dc_kms_init_encoder_per_crtc(dc_drm, i);
> +		if (ret)
> +			return ret;
> +	}
> +
> +	ret = drm_vblank_init(drm, DC_CRTCS);
> +	if (ret) {
> +		dev_err(drm->dev, "failed to init vblank support: %d\n", ret);
> +		return ret;
> +	}
> +
> +	drm_mode_config_reset(drm);
> +
> +	drm_kms_helper_poll_init(drm);
> +
> +	return 0;
> +}
> +
> +void dc_kms_uninit(struct dc_drm_device *dc_drm)
> +{
> +	drm_kms_helper_poll_fini(&dc_drm->base);
> +}
> diff --git a/drivers/gpu/drm/imx/dc/dc-kms.h b/drivers/gpu/drm/imx/dc/dc-kms.h
> new file mode 100644
> index 000000000000..4f66b11c106a
> --- /dev/null
> +++ b/drivers/gpu/drm/imx/dc/dc-kms.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright 2024 NXP
> + */
> +
> +#ifndef __DC_KMS_H__
> +#define __DC_KMS_H__
> +
> +#include "dc-de.h"
> +
> +#define DC_CRTCS	DC_DISPLAYS
> +#define DC_ENCODERS	DC_DISPLAYS
> +#define DC_PRIMARYS	DC_DISPLAYS

If they are all equal, why do you need separate defines?

> +
> +#endif /* __DC_KMS_H__ */
> diff --git a/drivers/gpu/drm/imx/dc/dc-plane.c b/drivers/gpu/drm/imx/dc/dc-plane.c
> new file mode 100644
> index 000000000000..a49b043ca167
> --- /dev/null
> +++ b/drivers/gpu/drm/imx/dc/dc-plane.c
> @@ -0,0 +1,227 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * Copyright 2024 NXP
> + */
> +
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_atomic_state_helper.h>
> +#include <drm/drm_crtc.h>
> +#include <drm/drm_drv.h>
> +#include <drm/drm_fb_dma_helper.h>
> +#include <drm/drm_fourcc.h>
> +#include <drm/drm_framebuffer.h>
> +#include <drm/drm_gem_atomic_helper.h>
> +#include <drm/drm_plane_helper.h>
> +
> +#include "dc-drv.h"
> +#include "dc-fu.h"
> +#include "dc-plane.h"
> +
> +#define DC_PLANE_MAX_PITCH	0x10000
> +#define DC_PLANE_MAX_PIX_CNT	8192
> +
> +static const uint32_t dc_plane_formats[] = {
> +	DRM_FORMAT_XRGB8888,
> +};
> +
> +static const struct drm_plane_funcs dc_plane_funcs = {
> +	.update_plane		= drm_atomic_helper_update_plane,
> +	.disable_plane		= drm_atomic_helper_disable_plane,
> +	.destroy		= drm_plane_cleanup,
> +	.reset			= drm_atomic_helper_plane_reset,
> +	.atomic_duplicate_state	= drm_atomic_helper_plane_duplicate_state,
> +	.atomic_destroy_state	= drm_atomic_helper_plane_destroy_state,
> +};
> +
> +static int dc_plane_check_no_off_screen(struct drm_plane_state *state,
> +					struct drm_crtc_state *crtc_state)
> +{
> +	if (state->dst.x1 < 0 || state->dst.y1 < 0 ||
> +	    state->dst.x2 > crtc_state->adjusted_mode.hdisplay ||
> +	    state->dst.y2 > crtc_state->adjusted_mode.vdisplay) {
> +		dc_plane_dbg(state->plane, "no off screen\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int dc_plane_check_max_source_resolution(struct drm_plane_state *state)
> +{
> +	int src_h = drm_rect_height(&state->src) >> 16;
> +	int src_w = drm_rect_width(&state->src) >> 16;
> +
> +	if (src_w > DC_PLANE_MAX_PIX_CNT || src_h > DC_PLANE_MAX_PIX_CNT) {
> +		dc_plane_dbg(state->plane, "invalid source resolution\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int dc_plane_check_fb(struct drm_plane_state *state)
> +{
> +	struct drm_framebuffer *fb = state->fb;
> +	dma_addr_t baseaddr = drm_fb_dma_get_gem_addr(fb, state, 0);
> +
> +	/* base address alignment */
> +	if (baseaddr & 0x3) {
> +		dc_plane_dbg(state->plane, "fb bad baddr alignment\n");
> +		return -EINVAL;
> +	}
> +
> +	/* pitches[0] range */
> +	if (fb->pitches[0] > DC_PLANE_MAX_PITCH) {
> +		dc_plane_dbg(state->plane, "fb pitches[0] is out of range\n");
> +		return -EINVAL;
> +	}
> +
> +	/* pitches[0] alignment */
> +	if (fb->pitches[0] & 0x3) {
> +		dc_plane_dbg(state->plane, "fb bad pitches[0] alignment\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int
> +dc_plane_atomic_check(struct drm_plane *plane, struct drm_atomic_state *state)
> +{
> +	struct drm_plane_state *plane_state =
> +				drm_atomic_get_new_plane_state(state, plane);
> +	struct drm_crtc_state *crtc_state;
> +	int ret;
> +
> +	/* ok to disable */
> +	if (!plane_state->fb)
> +		return 0;
> +
> +	if (!plane_state->crtc) {
> +		dc_plane_dbg(plane, "no CRTC in plane state\n");
> +		return -EINVAL;
> +	}
> +
> +	crtc_state =
> +		drm_atomic_get_existing_crtc_state(state, plane_state->crtc);
> +	if (WARN_ON(!crtc_state))
> +		return -EINVAL;
> +
> +	ret = drm_atomic_helper_check_plane_state(plane_state, crtc_state,
> +						  DRM_PLANE_NO_SCALING,
> +						  DRM_PLANE_NO_SCALING,
> +						  true, false);
> +	if (ret) {
> +		dc_plane_dbg(plane, "failed to check plane state: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = dc_plane_check_no_off_screen(plane_state, crtc_state);
> +	if (ret)
> +		return ret;
> +
> +	ret = dc_plane_check_max_source_resolution(plane_state);
> +	if (ret)
> +		return ret;
> +
> +	return dc_plane_check_fb(plane_state);
> +}
> +
> +static void
> +dc_plane_atomic_update(struct drm_plane *plane, struct drm_atomic_state *state)
> +{
> +	struct drm_plane_state *new_state =
> +				drm_atomic_get_new_plane_state(state, plane);
> +	struct dc_plane *dplane = to_dc_plane(plane);
> +	struct drm_framebuffer *fb = new_state->fb;
> +	const struct dc_fu_ops *fu_ops;
> +	struct dc_lb *lb = dplane->lb;
> +	struct dc_fu *fu = dplane->fu;
> +	dma_addr_t baseaddr;
> +	int src_w, src_h;
> +	int idx;
> +
> +	if (!drm_dev_enter(plane->dev, &idx))
> +		return;
> +
> +	src_w = drm_rect_width(&new_state->src) >> 16;
> +	src_h = drm_rect_height(&new_state->src) >> 16;
> +
> +	baseaddr = drm_fb_dma_get_gem_addr(fb, new_state, 0);
> +
> +	fu_ops = dc_fu_get_ops(dplane->fu);
> +
> +	fu_ops->set_layerblend(fu, lb);
> +	fu_ops->set_burstlength(fu, baseaddr);
> +	fu_ops->set_src_stride(fu, fb->pitches[0]);
> +	fu_ops->set_src_buf_dimensions(fu, src_w, src_h);
> +	fu_ops->set_fmt(fu, fb->format);
> +	fu_ops->set_framedimensions(fu, src_w, src_h);
> +	fu_ops->set_baseaddress(fu, baseaddr);
> +	fu_ops->enable_src_buf(fu);

Are you expecting that these ops might change? Can you call the function
directly?

> +
> +	dc_plane_dbg(plane, "uses %s\n", fu_ops->get_name(fu));
> +
> +	dc_lb_pec_dynamic_prim_sel(lb, dc_cf_get_link_id(dplane->cf));
> +	dc_lb_pec_dynamic_sec_sel(lb, fu_ops->get_link_id(fu));
> +	dc_lb_mode(lb, LB_BLEND);
> +	dc_lb_blendcontrol(lb);
> +	dc_lb_position(lb, new_state->dst.x1, new_state->dst.y1);
> +	dc_lb_pec_clken(lb, CLKEN_AUTOMATIC);
> +
> +	dc_plane_dbg(plane, "uses LayerBlend%u\n", dc_lb_get_id(lb));
> +
> +	/* set ExtDst's source to LayerBlend */
> +	dc_ed_pec_src_sel(dplane->ed, dc_lb_get_link_id(lb));
> +
> +	drm_dev_exit(idx);
> +}
> +
> +static void dc_plane_atomic_disable(struct drm_plane *plane,
> +				    struct drm_atomic_state *state)
> +{
> +	struct dc_plane *dplane = to_dc_plane(plane);
> +	const struct dc_fu_ops *fu_ops;
> +	int idx;
> +
> +	if (!drm_dev_enter(plane->dev, &idx))
> +		return;
> +
> +	/* disable fetchunit in shadow */
> +	fu_ops = dc_fu_get_ops(dplane->fu);
> +	fu_ops->disable_src_buf(dplane->fu);
> +
> +	/* set ExtDst's source to ConstFrame */
> +	dc_ed_pec_src_sel(dplane->ed, dc_cf_get_link_id(dplane->cf));
> +
> +	drm_dev_exit(idx);
> +}
> +
> +static const struct drm_plane_helper_funcs dc_plane_helper_funcs = {
> +	.atomic_check = dc_plane_atomic_check,
> +	.atomic_update = dc_plane_atomic_update,
> +	.atomic_disable = dc_plane_atomic_disable,
> +};
> +
> +int dc_plane_init(struct dc_drm_device *dc_drm, struct dc_plane *dc_plane)
> +{
> +	struct drm_plane *plane = &dc_plane->base;
> +	int ret;
> +
> +	ret = drm_universal_plane_init(&dc_drm->base, plane, 0, &dc_plane_funcs,
> +				       dc_plane_formats,
> +				       ARRAY_SIZE(dc_plane_formats),
> +				       NULL, DRM_PLANE_TYPE_PRIMARY, NULL);
> +	if (ret)
> +		return ret;
> +
> +	drm_plane_helper_add(plane, &dc_plane_helper_funcs);
> +
> +	dc_plane->fu = dc_drm->pe->fu_disp[plane->index];
> +	dc_plane->cf = dc_drm->pe->cf_cont[plane->index];
> +	dc_plane->lb = dc_drm->pe->lb[plane->index];
> +	dc_plane->ed = dc_drm->pe->ed_cont[plane->index];
> +
> +	return 0;
> +}
> diff --git a/drivers/gpu/drm/imx/dc/dc-plane.h b/drivers/gpu/drm/imx/dc/dc-plane.h
> new file mode 100644
> index 000000000000..e72c3a7cb66f
> --- /dev/null
> +++ b/drivers/gpu/drm/imx/dc/dc-plane.h
> @@ -0,0 +1,37 @@
> +/* SPDX-License-Identifier: GPL-2.0+ */
> +/*
> + * Copyright 2024 NXP
> + */
> +
> +#ifndef __DC_PLANE_H__
> +#define __DC_PLANE_H__
> +
> +#include <linux/container_of.h>
> +
> +#include <drm/drm_plane.h>
> +#include <drm/drm_print.h>
> +
> +#include "dc-fu.h"
> +#include "dc-pe.h"
> +
> +#define dc_plane_dbg(plane, fmt, ...)					\
> +do {									\
> +	typeof(plane) _plane = (plane);					\
> +	drm_dbg_kms(_plane->dev, "[PLANE:%d:%s] " fmt,			\
> +		    _plane->base.id, _plane->name, ##__VA_ARGS__);	\
> +} while (0)
> +
> +struct dc_plane {
> +	struct drm_plane base;
> +	struct dc_fu *fu;
> +	struct dc_cf *cf;
> +	struct dc_lb *lb;
> +	struct dc_ed *ed;
> +};
> +
> +static inline struct dc_plane *to_dc_plane(struct drm_plane *plane)
> +{
> +	return container_of(plane, struct dc_plane, base);
> +}
> +
> +#endif /* __DC_PLANE_H__ */
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

