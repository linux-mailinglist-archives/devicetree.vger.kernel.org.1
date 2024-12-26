Return-Path: <devicetree+bounces-134170-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0190A9FCD8E
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 21:19:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1D1318824EE
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 20:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 823FE149C42;
	Thu, 26 Dec 2024 20:19:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Gt/Y3b/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF82773176
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 20:19:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735244384; cv=none; b=eAuM47ATIhU5qmT/NL0ctH27be2ZgCrZdAsa7NoYgUYEdMSlEFrwAFSexVg1Ral/MkmQiNEo8WhAvDi9ziek75V/wsHAAEnR7SuIkR7jiXI0Onk6P45IIiXFCeXmkLkbcWlN2StAYapiZaUqCtoXDjA+LJGFy3CI7g2tVMoLOac=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735244384; c=relaxed/simple;
	bh=TVS+vm40f/mpxvJRtzWcOHfhrK9nycHvNxQB9JavOPQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=U3lm6+1EXKrOtxCgP9wxBH1rN+xrxLIWHkvDNHpGcSOSByy8432TAv1RtUpn9y0LNgfexULlOAfPXZ8g4S7bmKFl95fBrvzFrNyp3tk5TQuas4Ad5RpMmD6d/ch6JEBiOOUJcy4/dS2qJyp2CUMDHMbm88zj2i7Rl9HUYyNLH54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Gt/Y3b/u; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e455bf1f4d3so5976260276.2
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 12:19:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735244381; x=1735849181; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Sb98FCKmeyAT2DVLwKOv3zAbNwq73exSEOZGxjhvBeY=;
        b=Gt/Y3b/uTrEVJeFftHbOpwCKQd54lOHoRWWNXWH+9wpHHmBObfIZhR4I3u+kyP+O26
         UXTbMFlibPcB5bc+A0PZVMJiUe8UB+5Lez1yCsUvKAK8NRTy0sHIDhiYK2goyxl3f4Is
         BcDxx0m10WTPlJQQdXsAUGPGE67VYXWrhmBQOzyJ56hHsvBJEaJCGZ3nEEj38r8oI/f0
         UhtmHgyQvWgQgIak5nJLIBTWsRt6eOwH92IPuRLkpMdZu0ZNSLah5YfIlF0KkD+sr9Io
         ZB6tKTlWU/tMstDzFlhJ4+a0suoD7kWGTcCKAWZYnZNajVlbfvX2AQcI+GYM+GOP6ruZ
         T9ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735244381; x=1735849181;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Sb98FCKmeyAT2DVLwKOv3zAbNwq73exSEOZGxjhvBeY=;
        b=P8cMqwPHcTeorK7zzZ3LnMnHtFjp4ZzG7eO0uCzItipok7vdjHIwAR2CybbPVn8pVf
         qTrZZbWgpJteo55vAdrcbdCsY9Ewq5s+6nlOYyhxUCP6FBjB+n57M3fYD/zqrtUMmbS1
         6xuTNpeV4Xb1lmDoxcio9Die0EFINms4FhF2rF6AjGTt3WtEe4X5X5yYnZQIcktF5na2
         OWOqrW8XzFxKSPQdnKaBLgPWhJG1zcfSUAgDj3xv6zIMkAMy0pViDHffmksIWkpa8ZdL
         Jnso7lQiVK5THy6RzxKS6oEcQvGmrU08t20iKQs9ybB62pzS4Lnx5GsEr9s+LsWEIhIF
         ip/g==
X-Forwarded-Encrypted: i=1; AJvYcCXmXrrhmj+kbTF6MulupDQzlY8w19uBorfXr+Y3Z7+Q8geWRjr8S7VA3ukJlvz0vQn1X8oto+PC8VUL@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwx0Ssx2YkNU2zplO6jLmH77V3C/zodvYuBQ1n/XHiIwCCEdnh
	gA3MToU0tkPqrPl4fkylkcjL0R3PPAJNb+XojMwuoZU5V8RSQtzlnzjB+SQLKjfrkZaomeUfjia
	5qrqnlkNTgowDp54oIVLx+Tci4y2GppYvUDCe1A==
X-Gm-Gg: ASbGncuYy6AMINOF11kPf8jmipUBZGJHkqEwMR8YxgKs2wjJdy4v9UwYFWkwtn8NWYo
	ekPK6w59psFGpSgEenXPs9ZtFWwNA+kUMtJEfoiqKiFj9U6o1hhiYyPvkxeimp2q8DZU3uQ==
X-Google-Smtp-Source: AGHT+IGoBxXuv5ahv6Ndnqrf1Xf1S/+gYnZ7NrPaaZ39WftDOcJ5Lr0nHUjNy/jMupZW6W2JyistA+0q73RmPyQIxNE=
X-Received: by 2002:a05:690c:62c6:b0:6ef:59ef:f194 with SMTP id
 00721157ae682-6f3f80de678mr165847907b3.4.1735244380669; Thu, 26 Dec 2024
 12:19:40 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241223064147.3961652-1-victor.liu@nxp.com> <20241223064147.3961652-13-victor.liu@nxp.com>
 <wpxxedxabgo2kxf5wuosu76i5ud3ce2tywm2imhvad4nyy5u2d@qgfhev2hndba> <77540387-b1ac-46c1-a3c0-afbd34337d61@nxp.com>
In-Reply-To: <77540387-b1ac-46c1-a3c0-afbd34337d61@nxp.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 26 Dec 2024 22:19:29 +0200
Message-ID: <CAA8EJpqwRfkjGCYfeRPj7u5hb_8fkMFDtcK1+YDG4nsez1WNXw@mail.gmail.com>
Subject: Re: [PATCH v7 12/19] drm/imx: Add i.MX8qxp Display Controller KMS
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	tglx@linutronix.de, vkoul@kernel.org, kishon@kernel.org, aisheng.dong@nxp.com, 
	agx@sigxcpu.org, u.kleine-koenig@baylibre.com, francesco@dolcini.it, 
	frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"

On Wed, 25 Dec 2024 at 09:18, Liu Ying <victor.liu@nxp.com> wrote:
>
> On 12/23/2024, Dmitry Baryshkov wrote:
> > On Mon, Dec 23, 2024 at 02:41:40PM +0800, Liu Ying wrote:
> >> i.MX8qxp Display Controller(DC) is comprised of three main components that
> >> include a blit engine for 2D graphics accelerations, display controller for
> >> display output processing, as well as a command sequencer.  Add kernel
> >> mode setting support for the display controller part with two CRTCs and
> >> two primary planes(backed by FetchLayer and FetchWarp respectively).  The
> >> registers of the display controller are accessed without command sequencer
> >> involved, instead just by using CPU.  The command sequencer is supposed to
> >> be used by the blit engine.
> >>
> >> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> >> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> >> ---
> >> v7:
> >> * Drop using typeof in macros and explicitly define variable types. (Dmitry)
> >> * Add a comment for disable_irq_nosync() to explain why _nosync. (Dmitry)
> >> * Inline dc_crtc_check_clock(). (Dmitry)
> >> * Use global drm_dc->pe. (Dmitry)
> >> * Drop dc_crtc_disable_at_unbind(). (Dmitry)
> >> * Add kernel doc for struct dc_{crtc,drm_device,plane}. (Dmitry)
> >> * Define common IRQ handlers separately for each IRQs. (Dmitry)
> >> * Rebase this patch upon next-20241220, so drop date entry from drm_driver
> >>   and correctly include drm/clients/drm_client_setup.h.
> >> * Collect Maxime's R-b tag.
> >>
> >> v6:
> >> * No change.
> >>
> >> v5:
> >> * Replace .remove_new with .remove in dc-drv.c. (Uwe)
> >>
> >> v4:
> >> * Move dc_fg_displaymode(), dc_fg_panic_displaymode() and dc_lb_blendcontrol()
> >>   function calls from KMS routine to initialization stage. (Dmitry)
> >> * Drop dc-crtc.h and dc-plane.h header files and move relevant defines to
> >>   appropriate .h header files or .c source files. (Dmitry)
> >> * Drop futile "else" clause from dc_crtc_common_irq_handler(). (Dmitry)
> >> * Drop dc_drm->pe_rpm_count. (Dmitry)
> >> * Drop DC_{CRTCS,ENCODERS,PRIMARYS} macros and only use DC_DISPLAYS. (Dmitry)
> >> * Drop drmm_kcalloc() function call to allocate an array for storing IRQs.
> >>   Instead, put it in struct dc_crtc.  (Dmitry)
> >> * Call devm_request_irq() to request IRQs, instead of using drmm action.
> >>   (Dmitry)
> >> * Call devm_drm_of_get_bridge() to find the next bridge. (Dmitry)
> >> * Select DRM_CLIENT_SELECTION due to rebase.
> >> * Select the missing DRM_DISPLAY_HELPER and DRM_BRIDGE_CONNECTOR.
> >> * Use DRM_FBDEV_DMA_DRIVER_OPS due to rebase.
> >> * Replace drm_fbdev_dma_setup() with drm_client_setup_with_fourcc() due to
> >>   rebase.
> >> * Replace drmm_add_action_or_reset() with devm_add_action_or_reset() to
> >>   register dc_drm_component_unbind_all() action.
> >> * Request interrupts in dc_crtc_post_init() after encoder initialization to
> >>   make sure next bridge is found first.
> >>
> >> v3:
> >> * No change.
> >>
> >> v2:
> >> * Find next bridge from TCon's port.
> >> * Drop drm/drm_module.h include from dc-drv.c.
> >>
> >>  drivers/gpu/drm/imx/dc/Kconfig    |   5 +
> >>  drivers/gpu/drm/imx/dc/Makefile   |   5 +-
> >>  drivers/gpu/drm/imx/dc/dc-crtc.c  | 556 ++++++++++++++++++++++++++++++
> >>  drivers/gpu/drm/imx/dc/dc-de.h    |   3 +
> >>  drivers/gpu/drm/imx/dc/dc-drv.c   | 238 +++++++++++++
> >>  drivers/gpu/drm/imx/dc/dc-drv.h   |  22 ++
> >>  drivers/gpu/drm/imx/dc/dc-kms.c   | 143 ++++++++
> >>  drivers/gpu/drm/imx/dc/dc-kms.h   | 131 +++++++
> >>  drivers/gpu/drm/imx/dc/dc-plane.c | 241 +++++++++++++
> >>  9 files changed, 1342 insertions(+), 2 deletions(-)
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-crtc.c
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-kms.c
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-kms.h
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-plane.c
> >>
> >
> >
> >> +
> >> +static int dc_plane_check_no_off_screen(struct drm_plane_state *state,
> >> +                                    struct drm_crtc_state *crtc_state)
> >> +{
> >> +    if (state->dst.x1 < 0 || state->dst.y1 < 0 ||
> >> +        state->dst.x2 > crtc_state->adjusted_mode.hdisplay ||
> >> +        state->dst.y2 > crtc_state->adjusted_mode.vdisplay) {
> >> +            dc_plane_dbg(state->plane, "no off screen\n");
> >> +            return -EINVAL;
> >> +    }
> >
> > Nit: doesn't drm_atomic_helper_check_plane_state() ensure in this already?
>
> The can_position argument is set to true, though it is a bit unusual
> for primary plane.  If can_position is false, I think this should be
> ensured already by drm_atomic_helper_check_plane_state().

The function still calls drm_rect_clip_scaled() to clip the
plane_state->dst, does it not?

> > With that in mind
> >
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>
> Thanks.



-- 
With best wishes
Dmitry

