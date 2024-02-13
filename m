Return-Path: <devicetree+bounces-41159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 046EE852A7D
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:05:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 94695B21EF2
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:05:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8D3217983;
	Tue, 13 Feb 2024 08:05:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b="uFon58O1";
	dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b="T0PjJTTC"
X-Original-To: devicetree@vger.kernel.org
Received: from honk.sigxcpu.org (honk.sigxcpu.org [24.134.29.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3045F182BE
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:05:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=24.134.29.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707811541; cv=none; b=UT/sAuDmR5tTY65QLz1Yi0b48rTvi2bmxLVqqqpL37vJTQl+LTLqglt95uGk60LfzAoOhC5Q0fqy4uon8uU7Vf8H/WoYOvugQEIohsj8zwuJ3cHvNak/scOjNOtgYASsg5oWfrapqki79IH/PnjSw/QzU4JWdBJfsDFxcs0qelg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707811541; c=relaxed/simple;
	bh=KRuuw7YzU7/CW38+mXRnIoY4ogV8wheL/KaqE7yovF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EItzS5rKV+tNOFXVqGjTlHxylNI5I06CAWfrMHiBj4EwmQoCVAJQDXAGIq534n58d2Ne7suPRmUeldH4HkcPHoHCm79wXSBBjavIMCxbTSAVDm7YdOvSlOKD7P713+zIGJdrHG+ohcHvaPxmB2a2TWqWaiNDQWvYnxwGxqQKxY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sigxcpu.org; spf=pass smtp.mailfrom=sigxcpu.org; dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b=uFon58O1; dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b=T0PjJTTC; arc=none smtp.client-ip=24.134.29.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sigxcpu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sigxcpu.org
Received: from localhost (localhost [127.0.0.1])
	by honk.sigxcpu.org (Postfix) with ESMTP id D6A6AFB06;
	Tue, 13 Feb 2024 09:05:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811538; bh=KRuuw7YzU7/CW38+mXRnIoY4ogV8wheL/KaqE7yovF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uFon58O1DvfPx32KLoXpPxq4qeeHDGEBv8gniIc2KoFx93xU61/OkOxtb0pxN7/Ti
	 2eVnPfUU+V8jqxIUP8aG+Xu/GPxQ5mFFQtiMJPHlP29VsyZSCK8Oxpfo7AG7yq5/1C
	 Q1SpvL6Zp6Xumt+KlhpVkOnNDb3A/r+nEgrWKI/IaXRxTlBoJIybl2UuFtzYavQwyh
	 1r2yWNnPLTKIagBbHAOn/ICBvcQCQd058F0fT9ALftdcZNn+3dPTt1Zae9EExRuuGe
	 oNNOrzvm7C7qzHWMv4YCFV2F6hmF62hqLepyAcKHPaQWXdjGKsu3VIj6RzcSP9Eg+f
	 rCzCGMJJ1iWEA==
Received: from honk.sigxcpu.org ([127.0.0.1])
	by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id EdovbXp8vkH5; Tue, 13 Feb 2024 09:05:36 +0100 (CET)
Date: Tue, 13 Feb 2024 09:05:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811536; bh=KRuuw7YzU7/CW38+mXRnIoY4ogV8wheL/KaqE7yovF0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=T0PjJTTCKwcEYxG9bEmKTWBhYhtb6RilEBkrOc0r3g1HzDvG7AZWWhJk3vJJMwbG2
	 +VOBuz8jpvi64umw4MDceS409oBwx043J2SrfkBnulQ4oI/4eH1cfIYkR5UdqKM1QB
	 xhIB0Aqa2YeARY95cJRrO8UiVYc+hzSHELyyJNpab8xxHMUSntGQAlvXptd6hMbLKQ
	 3+dIuQWYG15rFGjEQhzizsMHk4cJoOd/DghYrgd1wR7D6voA1btw9iE10kk2Appa/R
	 QAYJY1eslbduDQRlkU/yBlN5a/hRDPBxe+nAZiakbu+pedWvWcD4ejeoOVt700mGZB
	 ZnSnDAoptc3LA==
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org, tzimmermann@suse.de,
	mripard@kernel.org, maarten.lankhorst@linux.intel.com,
	daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
	quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, megi@xff.cz,
	kernel@puri.sm, heiko@sntech.de, conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/7] drm/panel: st7703: Add Panel Rotation Support
Message-ID: <ZcsizkRuBPdmG_Qy@qwark.sigxcpu.org>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-5-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240212184950.52210-5-macroalpha82@gmail.com>

Hi,
On Mon, Feb 12, 2024 at 12:49:47PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for panel rotation to ST7703 based devices.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/gpu/drm/panel/panel-sitronix-st7703.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> index 939ba05c9b58..a3e142f156d5 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> @@ -62,6 +62,7 @@ struct st7703 {
>  
>  	struct dentry *debugfs;
>  	const struct st7703_panel_desc *desc;
> +	enum drm_panel_orientation orientation;
>  };
>  
>  struct st7703_panel_desc {
> @@ -743,12 +744,20 @@ static int st7703_get_modes(struct drm_panel *panel,
>  	return 1;
>  }
>  
> +static enum drm_panel_orientation st7703_get_orientation(struct drm_panel *panel)
> +{
> +	struct st7703 *st7703 = panel_to_st7703(panel);
> +
> +	return st7703->orientation;
> +}
> +
>  static const struct drm_panel_funcs st7703_drm_funcs = {
>  	.disable   = st7703_disable,
>  	.unprepare = st7703_unprepare,
>  	.prepare   = st7703_prepare,
>  	.enable	   = st7703_enable,
>  	.get_modes = st7703_get_modes,
> +	.get_orientation = st7703_get_orientation,
>  };
>  
>  static int allpixelson_set(void *data, u64 val)
> @@ -817,6 +826,10 @@ static int st7703_probe(struct mipi_dsi_device *dsi)
>  		return dev_err_probe(dev, PTR_ERR(ctx->iovcc),
>  				     "Failed to request iovcc regulator\n");
>  
> +	ret = of_drm_get_panel_orientation(dsi->dev.of_node, &ctx->orientation);
> +	if (ret < 0)
> +		return dev_err_probe(&dsi->dev, ret, "Failed to get orientation\n");
> +
>  	drm_panel_init(&ctx->panel, dev, &st7703_drm_funcs,
>  		       DRM_MODE_CONNECTOR_DSI);

Reviewed-by: Guido Günther <agx@sigxcpu.org>
Cheers,
 -- Guido

>  
> -- 
> 2.34.1
> 

