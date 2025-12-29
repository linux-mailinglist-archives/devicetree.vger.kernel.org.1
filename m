Return-Path: <devicetree+bounces-250145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E54ECE680B
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:21:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E43063005A90
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:21:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3FF63009E4;
	Mon, 29 Dec 2025 11:21:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from m-r2.th.seeweb.it (m-r2.th.seeweb.it [5.144.164.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C402129BD85
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:21:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=5.144.164.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767007309; cv=none; b=o74gYVU0gYdYgVA6LUudgTeiVF0/1VM846YWpQ1TUI4kDDxpFG4G6at0oxqHd3lNMMNdc288F+Ye83tYIUef4gRs9RoE+zgIYsBDbw4ymW/KjorJwM2wNWuAQhwx9aOIvEbusZSFDoyH8mK+cq3kMHoWlriBYkFPxQGRACFAyFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767007309; c=relaxed/simple;
	bh=agYEede+/fgSDfkjPlKT5e7Q1lkltz+3JBet3qyHtuQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qFLfvdtbk/eemp5FBYI4XJYObDwLxcMtGg7zz42RUZkKHTEsVnCGDMhP5Tw6MVnuQ5MqG2ZKgnVupzrEO8jvXi55Tc/Kb92eu1i5nojkkutE76w13w/3thIr4T2S708FqvXLh9wZTao9EhPALgtpV5euz4mAYOaiSaOYE9/9wGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org; spf=pass smtp.mailfrom=somainline.org; arc=none smtp.client-ip=5.144.164.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=somainline.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=somainline.org
Received: from SoMainline.org (94-211-6-86.cable.dynamic.v4.ziggo.nl [94.211.6.86])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by m-r2.th.seeweb.it (Postfix) with ESMTPSA id 5D1A53F76C;
	Mon, 29 Dec 2025 12:21:39 +0100 (CET)
Date: Mon, 29 Dec 2025 12:21:37 +0100
From: Marijn Suijten <marijn.suijten@somainline.org>
To: Linus Walleij <linusw@kernel.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Andy Gross <agross@kernel.org>, 
	Bjorn Andersson <andersson@kernel.org>, Jessica Zhang <jesszhan0024@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Simona Vetter <simona@ffwll.ch>, 
	Casey Connolly <casey.connolly@linaro.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Simona Vetter <simona.vetter@ffwll.ch>, 
	~postmarketos/upstreaming@lists.sr.ht, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>, Martin Botka <martin.botka@somainline.org>, 
	Jami Kettunen <jami.kettunen@somainline.org>, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Abhinav Kumar <quic_abhinavk@quicinc.com>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Konrad Dybcio <konradybcio@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>
Subject: Re: [PATCH v2 03/11] drm/panel: Add LGD LH599QH3-EDB1 panel driver
 for Sony Xperia XZ3
Message-ID: <aVJh2xdCreGpi_f9@SoMainline.org>
References: <20251222-drm-panels-sony-v2-0-82a87465d163@somainline.org>
 <20251222-drm-panels-sony-v2-3-82a87465d163@somainline.org>
 <CAD++jL=c0AVm+BD_G_AJjiXYVyWdM_HscqyoNQ-tBByJ1Dp1jQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAD++jL=c0AVm+BD_G_AJjiXYVyWdM_HscqyoNQ-tBByJ1Dp1jQ@mail.gmail.com>

On 2025-12-26 14:12:25, Linus Walleij wrote:
...
> > +static int lgd_lh599qh3_edb1_program(struct lgd_lh599qh3_edb1 *ctx)
> > +{
> > +       struct mipi_dsi_multi_context dsi_ctx = { .dsi = ctx->dsi };
> > +
> > +       dsi_ctx.dsi->mode_flags |= MIPI_DSI_MODE_LPM;
> > +
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7f, 0x5a, 0x5a);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf1, 0x5a, 0x5a);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf2, 0x5a, 0x5a);
> 
> Clearly an "unlock" sequence.
> 
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x02, 0x01);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x59, 0x01);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_CONTROL_DISPLAY,
> > +                                    WRITE_CONTROL_DISPLAY_BACKLIGHT);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x57, 0x20, 0x80, 0xde, 0x60, 0x00);
> > +       mipi_dsi_dcs_set_column_address_multi(&dsi_ctx, 0, 1440 - 1);
> > +       mipi_dsi_dcs_set_page_address_multi(&dsi_ctx, 0, 2880 - 1);
> > +
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, MIPI_DCS_WRITE_POWER_SAVE, 0x00);
> > +
> > +       mipi_dsi_dcs_set_tear_on_multi(&dsi_ctx, MIPI_DSI_DCS_TEAR_MODE_VBLANK);
> > +
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0x7f, 0x5a, 0x5a);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf0, 0x5a, 0x5a);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf1, 0x5a, 0x5a);
> > +       mipi_dsi_dcs_write_seq_multi(&dsi_ctx, 0xf2, 0x5a, 0x5a);
> 
> Cleary another copy of the "unlock" sequence.
> 
> Can you break it out to a subroutine?
> lgd_lh599qh3_edb1_unlock()?

Sure, though unsure where the "lock" sequence resides (and why it needs to be
unlocked twice, unless this was autogenerated and is unnecessary, or implies a
"flush" of sorts) or why it looks so familiar to the Samsung panels.

Will rename it to lgd_lh599qh3_edb1_unlock_multi() and pass it a
mipi_dsi_multi_context so that no extra return-code handling needs to be
implemented.

> +/- this nitpick:
> Reviewed-by: Linus Walleij <linusw@kernel.org>

Just making sure, you reviewed the SOFEF01 driver with your Linaro address,
which one do you prefer or should I keep this distinction?

- Marijn

