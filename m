Return-Path: <devicetree+bounces-254890-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2B3D1D75B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:19:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 032E630066F8
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:19:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9313B3876C5;
	Wed, 14 Jan 2026 09:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OqCJSNua"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60AF23876B1;
	Wed, 14 Jan 2026 09:19:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768382357; cv=none; b=DsuPAIXkmsi/YnDxGd/gN5WcWlmZOF7LeXJnNlcQrWNAvBtBXVE0Gs9QJ05PYCZNomke2vRwmZA1OE5PLMGlCaLdZlIk22z+er14gPUFLuEO0sSeYqQbAQVuisdbPFEQesYdyfe6f6j6QQ6c8w/CyELubtaoJB38qoewNEmnaw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768382357; c=relaxed/simple;
	bh=Xg1uHokVbkf/AB2//v/o26tM7fQq3fxLmTkHi/dCKX8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LRHTNuK60pup5Rbtl00Yk9mr+5pEiPkioo3mZjuNEHr52lABiKaBYhQe4BAPTOnD0mSSUL94qH/zpC2Eqcn3uC4JLF2XLRPhx8pLwPK68uI3xoSC1oOA51mkW1cvfM4Mbf45egkxcu2aeJyWA8DiyHbeQUexGGwdxRgT5oX+xMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OqCJSNua; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8CF66C4CEF7;
	Wed, 14 Jan 2026 09:19:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768382356;
	bh=Xg1uHokVbkf/AB2//v/o26tM7fQq3fxLmTkHi/dCKX8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OqCJSNuaAT78SEraUTtYh0fRVp8B6jlBxK2JyJV482UDQUwQdmzFk0qDMDkjSR35o
	 /CXRBt/4AamKHYyutIZOCn67NCiuL4ZMiGrpz9yof5z5hubpfJpWlXFvaTtiNyhB6T
	 gkTnlxFiLa6Ge+Lf4f2y514Gd7BlW/yvPpSaK+jS1u063ZfiwGGn5v0HJ6Ad4KlZmc
	 2pRFkbM7CRKADwD5KkjqSx6nxUvVNhpJXLa1HKaaMcf0sU3xtgNzF6Z3aDhK1gQUcJ
	 w6CwejK4wKGOl0TvBhHE0zAP3K7309Gm2kePd4c2iPpvRfttp+C5OXb/xpUjMWakw7
	 ClVCrhDBPmQcw==
Date: Wed, 14 Jan 2026 10:19:14 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <jessica.zhang@oss.qualcomm.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, kernel@pengutronix.de
Subject: Re: [PATCH 2/2] drm/panel: simple: add EDT ET057023UDBA panel
Message-ID: <20260114-keen-persimmon-salmon-8cf683@quoll>
References: <20260113-v6-18-topic-panel-simple-et057023udba-v1-0-54ad218ee52b@pengutronix.de>
 <20260113-v6-18-topic-panel-simple-et057023udba-v1-2-54ad218ee52b@pengutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260113-v6-18-topic-panel-simple-et057023udba-v1-2-54ad218ee52b@pengutronix.de>

On Tue, Jan 13, 2026 at 01:18:38PM +0100, Marco Felsch wrote:
> Add support for the EDT ET057023UDBA 5.7" 24-bit 640x480 DPI panel.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/gpu/drm/panel/panel-simple.c | 32 ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/panel-simple.c
> index 0019de93be1b663f55b04160606363cd043ab38b..0f135eb35aa4302e9a33d91f29d1ad5c9959ced0 100644
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -2096,6 +2096,35 @@ static const struct panel_desc edt_et057090dhu = {
>  	.connector_type = DRM_MODE_CONNECTOR_DPI,
>  };
>  
> +static const struct display_timing edt_et057023udba_timing = {
> +	.pixelclock = { 23200000, 24190000, 39640000 },
> +	.hactive = { 640, 640, 640 },
> +	.hfront_porch = { 20, 40, 200 },
> +	.hback_porch = { 87, 40, 1 },
> +	.hsync_len = { 1, 48, 87 },
> +	.vactive = { 480, 480, 480 },
> +	.vfront_porch = { 5, 13, 200 },
> +	.vback_porch = { 31, 31, 29 },
> +	.vsync_len = { 1, 1, 3 },
> +	.flags = DISPLAY_FLAGS_VSYNC_LOW | DISPLAY_FLAGS_HSYNC_LOW |
> +		 DISPLAY_FLAGS_DE_HIGH | DISPLAY_FLAGS_PIXDATA_POSEDGE |
> +		 DISPLAY_FLAGS_SYNC_POSEDGE,
> +};
> +
> +static const struct panel_desc edt_et057023udba = {
> +	.timings = &edt_et057023udba_timing,
> +	.num_timings = 1,
> +	.bpc = 8,
> +	.size = {
> +		.width = 115,
> +		.height = 86,
> +	},
> +	.bus_format = MEDIA_BUS_FMT_RGB888_1X24,
> +	.bus_flags = DRM_BUS_FLAG_DE_HIGH | DRM_BUS_FLAG_PIXDATA_DRIVE_POSEDGE |
> +		     DRM_BUS_FLAG_SYNC_DRIVE_POSEDGE,
> +	.connector_type = DRM_MODE_CONNECTOR_DPI,
> +};
> +
>  static const struct drm_display_mode edt_etm0700g0dh6_mode = {
>  	.clock = 33260,
>  	.hdisplay = 800,
> @@ -5112,6 +5141,9 @@ static const struct of_device_id platform_of_match[] = {
>  	}, {
>  		.compatible = "edt,et057090dhu",
>  		.data = &edt_et057090dhu,
> +	}, {
> +		.compatible = "edt,et057023udba",

again, why is it so hard to keep things ordered?

> +		.data = &edt_et057023udba,
>  	}, {
>  		.compatible = "edt,et070080dh6",
>  		.data = &edt_etm0700g0dh6,
> 
> -- 
> 2.47.3
> 

