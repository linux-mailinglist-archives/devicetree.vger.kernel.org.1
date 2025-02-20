Return-Path: <devicetree+bounces-148972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E06DA3DDE6
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 16:11:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D0758161C77
	for <lists+devicetree@lfdr.de>; Thu, 20 Feb 2025 15:08:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71E661FBCB6;
	Thu, 20 Feb 2025 15:08:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="bY4xgWWN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4911D1FA14B
	for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 15:07:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740064080; cv=none; b=dgBZfuLyxaq6n3tyQcEiXt1kMRI8xwepe5uFt784U3CZrqeZJjgeZYPxb4E2Dtf75y6VSli9LFQgEh6iY2Ui2h4VDpv1bB+8CPXoTYoxtTEevE0JDo1QgJ/18DhWmAReXX9ucJdjRwlUbgfqVPj6UbXeYVJ7tzqihvSQtstGAp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740064080; c=relaxed/simple;
	bh=DskybEvK/iMXKPAa/BMagEJdXgaU1LnkK2tQcrWpJyw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kjVQd0IHDbItkdw+kNnZAMDVy+gzTzOvZ2r0dsO8rBj3VVgOFuHZOwvJJ+uUFQnSnQ5Mf4VFX7yfToAwrMZL3UKQAISqjZR6KnsgzqplB2CL1L3xjMUUNsLXTmdrdUQfh3stIDmBSmnIDcxct4sDQIP9X+0m5ioYPdTv7Je7a90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=bY4xgWWN; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-543d8badc30so1291387e87.0
        for <devicetree@vger.kernel.org>; Thu, 20 Feb 2025 07:07:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740064076; x=1740668876; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cEJSeCFqx2jIiUOzyT1xW8iWa5v32DCCHFMZB/CCGbQ=;
        b=bY4xgWWNr//Up4tIfv8XRSz7cnXLIedd8FZPSy3EUSxfCWNb+j3N3McmfJXGpOqlRw
         1J4FqJ1IpcAYKEFbIct8UYcmQerIlyjrRh1IY50eEgRehJq6Z1TY2byQduNv5XqBLfQo
         86IC+6nn7qb0KIjbjwTlcCn1l29ePc3p79LYUrFOxnR39kDtAr26EYwsEgSgKFRZe3cv
         oLOFghU5ly/RefaGDtom76Rhx25HrfHcgTd8kFniu0gBlyQUjVBAt1YeTzk+XRynq+8+
         8jzZfG4SYCCOmp3qBV4JblUruAb0R112Gua9AF0DzH8KnAAgdiXjGTnNk2BDrdB1VVOB
         lNvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740064076; x=1740668876;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cEJSeCFqx2jIiUOzyT1xW8iWa5v32DCCHFMZB/CCGbQ=;
        b=bus1EB+ha29Hiy8Xfse/fRbQpZR9K7/PyANXekTZGeslzKC38NYvTNvwNonlcKi/Mg
         yrKiLJHZ5XsYDS9BAzhiTLp1iPDA9Mf6Ol6/J7pnQn0ybCFdqIXhIC3qKfw3c3v/s4Xq
         vEcZcpEEPlC55w/8TlFluFLvyW9e466J92/phBQ7fQbwKDzAMkrLtQGPFC/k+DrArbi/
         4ipxhqtjxc9sIJPDRMU7NtsiyPxoezV/YHc5e592+lzur/Vihv3BYmmxCXuS/qV2onHo
         l11q8sj3ZUSiWAZTuJ8VC1OGM9RJEXMJfHZdbxfrd5hr/qGrPS0rXhdezzCvDxuTtkfY
         FnWA==
X-Forwarded-Encrypted: i=1; AJvYcCUhNArvn5RMrRow3PIWb7lK07ogcyXLn/gvU+OGivLmpUu9lY8AYum0cx5abpOMpqF+/Ks5pfYGorqr@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0+0IRyC2ggpp/nuTr3LhJFSbOm519p/ZTeeshtFRQfrX+8pPI
	83HU+cFjM6xdD7d8GA13s4DZ2vfgHqo0bik/KD3DdlTQ+Ip6q0LYBYrbD82dPJk=
X-Gm-Gg: ASbGncsZyZsFsU+8VCt++oFXrhxcYfGJ3XVEU/ddvHB3sfM4jSBEPbQqkkRID45OP7B
	CgiBJnYk9CAdBwK8nif5Ob5UyzN9Y92O08dSc/B8WaOSml9U5mhZbifOHBMl9ii8YcHLut8UoA1
	/Pnhp9gox5DEKTN7ZDhtHXOWIPdb7noBd468lFytZPRW+4p3Ctp7ORcqP0zjEH8CkxfYeLEACfK
	ZTBAYMhaBvfeVmGHXdulgYAbAh1bdAdXkv1jTH+HqfQjWW5t3t8xWPxnBbO0+vVoeCEEhqLexiq
	UROvUlA3+SBznBvAE0OM+llNFUf9VDqA6QnSWuKQD4J6WnlHDsx9fOTyAAFG+mmiXB5NZm0=
X-Google-Smtp-Source: AGHT+IHJX5t7ip2QzH5cblh1WHfilz6lVgI355L9ZI6OwFdPInUsiQ0UXYlmnzSJSJ6tJWRrMS2Y1w==
X-Received: by 2002:a05:6512:2214:b0:545:2474:2c98 with SMTP id 2adb3069b0e04-5452fe5be3emr8203069e87.23.1740064076194;
        Thu, 20 Feb 2025 07:07:56 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5452771c15esm2158841e87.190.2025.02.20.07.07.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2025 07:07:54 -0800 (PST)
Date: Thu, 20 Feb 2025 17:07:52 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] drm: bridge: Add support for Solomon SSD2825
 RGB/DSI bridge
Message-ID: <eard52ujlocxwshi6ynoimmvfyktpx6f5gcwfn2chaxul2l7my@e24kauxjsw2a>
References: <20250217140910.108175-1-clamor95@gmail.com>
 <20250217140910.108175-3-clamor95@gmail.com>
 <zmwn3dnnmwhms2qxqwb6ksshx27fcq2i4wujz5utuldaiqs6oz@idvy3dirrmuo>
 <CAPVz0n3bqLhuC0gxXD-=L0ETMmhOv1Ku0PrWUb_Yn09v3UNuOA@mail.gmail.com>
 <hemnpzzz3ddibdbqwkazwuoalmvuc2mekebqxfrnxiod6futni@sgdjgtrbcwza>
 <CAPVz0n24o5yar-0oO5dPb3vLzuK=Ln8+JKuaooSRwPfiaLQ9vA@mail.gmail.com>
 <jo7nnxrzwi43qqii7wtekdbc6vluakkvg4ndw266ajgkpe3y52@whd5nly34nju>
 <CAPVz0n3HsXJeyRJGP=_UMhs7d4OA-P_yXx5B9EQDU7vQCz8qoA@mail.gmail.com>
 <3lms6xzzu3hfhkncikcmvl6btzdcc2cwoh4kwhw53hdakecrij@yqoyl3bqmm5m>
 <CAPVz0n3YZass3Bns1m0XrFxtAC0DKbEPiW6vXimQx97G243sXw@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAPVz0n3YZass3Bns1m0XrFxtAC0DKbEPiW6vXimQx97G243sXw@mail.gmail.com>

On Thu, Feb 20, 2025 at 02:26:22PM +0200, Svyatoslav Ryhel wrote:
> т, 20 лют. 2025 р. о 13:35 Dmitry Baryshkov <dmitry.baryshkov@linaro.org> пише:
> >
> > On Thu, Feb 20, 2025 at 09:37:18AM +0200, Svyatoslav Ryhel wrote:
> > > ср, 19 лют. 2025 р. о 15:34 Dmitry Baryshkov <dmitry.baryshkov@linaro.org> пише:
> > > >
> > > > On Tue, Feb 18, 2025 at 04:36:17PM +0200, Svyatoslav Ryhel wrote:
> > > > > вт, 18 лют. 2025 р. о 16:20 Dmitry Baryshkov <dmitry.baryshkov@linaro.org> пише:
> > > > > >
> > > > > > On Tue, Feb 18, 2025 at 02:45:19PM +0200, Svyatoslav Ryhel wrote:
> > > > > > > вт, 18 лют. 2025 р. о 14:31 Dmitry Baryshkov <dmitry.baryshkov@linaro.org> пише:
> > > > > > > >
> > > > > > > > On Mon, Feb 17, 2025 at 04:09:10PM +0200, Svyatoslav Ryhel wrote:
> > > > > > > > > SSD2825 is a cost-effective MIPI Bridge Chip solution targeting mainly
> > > > > > > > > smartphones. It can convert 24bit RGB interface into 4-lane MIPI-DSI
> > > > > > > > > interface to drive display modules of up to 800 x 1366, while supporting
> > > > > > > > > AMOLED, a-si LCD or LTPS panel technologies for smartphone applications.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > > > > > > > > ---
> > > > > > > > >  drivers/gpu/drm/bridge/Kconfig   |  14 +
> > > > > > > > >  drivers/gpu/drm/bridge/Makefile  |   1 +
> > > > > > > > >  drivers/gpu/drm/bridge/ssd2825.c | 824 +++++++++++++++++++++++++++++++
> > > > > > > > >  3 files changed, 839 insertions(+)
> > > > > > > > >  create mode 100644 drivers/gpu/drm/bridge/ssd2825.c
> > > > > > > > >
> ...
> > > > > > > >
> > > > > > > > From v1:
> > > > > > > >
> > > > > > > > Most of these flags should be set depending on the
> > > > > > > > mipi_dsi_device.mode_flags.
> > > > > > > >
> > > > > > > > > +             ssd2825_write_reg(priv, SSD2825_PLL_CTRL_REG, 0x0001);
> > > > > > > > > +             ssd2825_write_reg(priv, SSD2825_VC_CTRL_REG, 0x0000);
> > > > > > > >
> > > > > > > > Why? Why do you need this special handling for the
> > > > > > > > MIPI_DCS_SET_DISPLAY_ON? Why can't it just go to .atomic_enable()?
> > > > > > > >
> > > > > > >
> > > > > > > This has to be called after panel init dsi sequence completes, is
> > > > > > > atomic_enable called after panel init dsi seq is completed? Maybe you
> > > > > > > can suggest where to place it.
> > > > > >
> > > > > > That depends on a panel. Significant number of panel drivers call all
> > > > > > DSI programming in .prepare because some DSI hosts can not transfer
> > > > > > commands after starting DSI video stream.
> > > > > >
> > > > > > So these commands should go to your .enable().
> > > > > >
> > > > >
> > > > > This is weird and counter intuitive to send dsi commands in prepare,
> > > > > there should be smth like enable_post. Oh well, fine, I will try to
> > > > > fit this somehow.
> > > > >
> > >
> > > Who had made this cursed framework?
> > >
> > > Functions are called in the next seq
> > >
> > > panel_prepare > bridge_pre_enable > bridge_enable > panel_enable
> >
> > Use drm_bridge.pre_enable_prev_first or drm_panel.prepare_prev_first. I
> > think that fixes your order issues.
> >
> 
> This seems to have no effect. I have set panel.prepare_prev_first =
> true in the panel probe, which should result in
> bridge_atomic_pre_enable be called before panel prepare,
> and yet I still have this:

I've cc'ed you on the patch that should fix this behaviour.

> 
> [   45.280653] renesas_r61307_prepare start
> [   45.300873] renesas_r61307_prepare end
> [   45.301070] ssd2825_bridge_atomic_pre_enable start
> [   45.317248] ssd2825_bridge_atomic_pre_enable end
> [   45.317287] ssd2825_bridge_atomic_enable start
> [   45.331650] ssd2825_bridge_atomic_enable end
> [   45.331677] renesas_r61307_enable start
> [   45.520959] renesas_r61307_enable end
> 
> With or without the flag it is same
> 
> > > There is no gap in between bridge_pre_enable and bridge enable, hence
> > > I cannot call dsi commands in panel_prepare since bridge is not even
> > > pre_enabled, and if I call then in panel_enable, I cannot complete
> > > bridge configuration since bridge enable is called before. like WTF!
> > >
> > > I enclose log with function call seq
> > >
> > > DSI commands in panel prepare
> > > [   75.149700] ssd2825_dsi_host_transfer start  << this is panel prepare
> > > [   75.149737] ssd2825 spi0.2: Bridge is not enabled
> > > [   75.149750] panel-renesas-r61307 spi0.2.1: Failed to exit sleep mode: -19
> > > [   75.149779] ssd2825_bridge_atomic_pre_enable start
> > > [   75.178518] ssd2825_bridge_atomic_pre_enable end
> > > [   75.178552] ssd2825_bridge_atomic_enable start
> > > [   75.179026] ssd2825_bridge_atomic_enable end
> > >
> > > DSI commands in panel enable
> > >
> > > [  102.821580] ssd2825_bridge_atomic_pre_enable start
> > > [  102.852000] ssd2825_bridge_atomic_pre_enable end
> > > [  102.852057] ssd2825_bridge_atomic_enable start
> > > [  102.852840] ssd2825_bridge_atomic_enable end
> > > [  102.852866] ssd2825_dsi_host_transfer start  << panel enable
> > > [  102.853876] ssd2825_dsi_host_transfer end
> > > [  102.948420] ssd2825_dsi_host_transfer start
> > > [  102.949289] ssd2825_dsi_host_transfer end
> > > [  102.978389] ssd2825_dsi_host_transfer start
> > > [  102.979567] ssd2825_dsi_host_transfer end
> > > [  102.980117] ssd2825_dsi_host_transfer start
> > > [  102.981248] ssd2825_dsi_host_transfer end
> > > [  102.981809] ssd2825_dsi_host_transfer start
> > > [  102.982851] ssd2825_dsi_host_transfer end
> > > [  102.983537] ssd2825_dsi_host_transfer start
> > > [  102.984556] ssd2825_dsi_host_transfer end
> > > [  102.986743] ssd2825_dsi_host_transfer start
> > > [  102.988078] ssd2825_dsi_host_transfer end
> > > [  102.989445] ssd2825_dsi_host_transfer start
> > > [  102.990411] ssd2825_dsi_host_transfer end
> > > [  102.990912] ssd2825_dsi_host_transfer start
> > > [  102.992274] ssd2825_dsi_host_transfer end
> > >
> > > In both cases there is no gap in between bridge pre_enable and enable
> > >
> > > > > > But what is the case for these calls? Are you manually implementing the
> > > > > > MIPI_DSI_MODE_LPM flag? What exactly do they do? What happens if the
> > > > > > panel driver asks for the MIPI_DCS_SET_DISPLAY_ON command after you've
> > > > > > programmed those registers? What happens if the panel asks for the
> > > > > > backlight control?
> > > > > >
> > > > >
> > > > > Backlight is externally controlled, at least on my device, so I cannot
> > > > > test other cases. If I configure those registers before dsi sequence
> > > > > is completed panel stays black. If I simply remove those
> > > > > configuration, panel stays black.
> > > > >

-- 
With best wishes
Dmitry

