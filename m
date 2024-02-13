Return-Path: <devicetree+bounces-41156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EF60A852A63
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 09:01:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DAD15B2128D
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 08:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 766F11775F;
	Tue, 13 Feb 2024 08:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b="WYoDU8TW";
	dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b="Z4B5jkGS"
X-Original-To: devicetree@vger.kernel.org
Received: from honk.sigxcpu.org (honk.sigxcpu.org [24.134.29.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB6A13AC3
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 08:01:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=24.134.29.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707811298; cv=none; b=VkzEpz+fEGk4Jmk4mUv4rx/HxpSpbVbqKNa8f00nT7553MIqP8Pe0WzaR+DG3x98eydvrFeowIf3NlLOyqCFnXTo7JV0FwNmnrVN2AVYeO5ctKPBZ1pNqGs0KWDbMs/vgJty1qUmGim4RkZ601q+rmLS67VxysZ/pNZbwOgSL9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707811298; c=relaxed/simple;
	bh=zeKubpMsuCXJyQYrTd1/88mpjpWRwgNxpYKe5gj3mBQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tSedjI/E9jfrzWOxiwGww+kT4WATt8XQMbhUH75S/2Dpk06uBFONCXKicRlwtp1d3Z57Bhz32m3/N9BfKSJUSEFn5ohPbmM5rsGYczvyVmI+xC+JIXuPeHIRI0mdOlqDxzGYvkNrNJCuQhDkAa6+NA3UXNii3JcrMjwP5v9sz7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sigxcpu.org; spf=pass smtp.mailfrom=sigxcpu.org; dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b=WYoDU8TW; dkim=pass (2048-bit key) header.d=sigxcpu.org header.i=@sigxcpu.org header.b=Z4B5jkGS; arc=none smtp.client-ip=24.134.29.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sigxcpu.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sigxcpu.org
Received: from localhost (localhost [127.0.0.1])
	by honk.sigxcpu.org (Postfix) with ESMTP id D2B90FB04;
	Tue, 13 Feb 2024 09:01:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811291; bh=zeKubpMsuCXJyQYrTd1/88mpjpWRwgNxpYKe5gj3mBQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WYoDU8TWj5roAEi9PQVieA3uIKR+kkWorzOR/JjZA+tvTzoh+EkiKuqVFV3doi59j
	 gNc0uwVEq25LZ0oashrJhQTLymCeQVEi9RvkFK9Ea7tXPkcRo6ujdGiXywYsd4wjkR
	 Hzj9uJAt+5SZiLb/ITm5Jhtcbqz9aLFW/R0qIOTmBWBNogdZYMhISDloYDZNKQl68d
	 JA76248qwkvsmhe/aFAwX3KvdUn/aKa0OSPUc4ft72cMiFnAgg5/KnrZBIeYwt4Okt
	 XGhlYXTLgFpTQQhB0LZJpZF0R03iQqJFph5yNT8aVqleSYRELwptY92UTcJkoeE2T0
	 eFn2tauX1D2aw==
Received: from honk.sigxcpu.org ([127.0.0.1])
	by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id soK-6wyGQ1bt; Tue, 13 Feb 2024 09:01:30 +0100 (CET)
Date: Tue, 13 Feb 2024 09:01:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=sigxcpu.org; s=2024;
	t=1707811290; bh=zeKubpMsuCXJyQYrTd1/88mpjpWRwgNxpYKe5gj3mBQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Z4B5jkGSnB9KJmVskLPldMMoiASbXZb3vYk9FoH0cFibjVSN6P/RSA/jOAXrPAjlQ
	 BwcSncYhjGLYiK0uLQ4sWb3Eg+Xcm31Lze5nBED/+wFiS5ro1MnylLOMrojjJ1tp8u
	 HUmgDiPBcc4e3+8XOnE3Df8k1XwL1Z+n/bdVznoHkyqYsKNKBK6DYtz/t4b+p7FhpX
	 AY4k2fXhaWgkhZKlUf0fJftZyjwcTSRAyEmhSWG56elc4N6Dr2p4EDIYV2OPdsf1PX
	 0TrH/aXaNQxLb7oK+z7dP5azSRgS99K0TotBq7SasITjDiRxqtsgh6i3x/Gjqu+bmV
	 Zy0mkVhG5DCyg==
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
Subject: Re: [PATCH 2/7] drm/panel: st7703: Add Powkiddy RGB10MAX3 Panel
 Support
Message-ID: <Zcsh2E4aS8U_5vmY@qwark.sigxcpu.org>
References: <20240212184950.52210-1-macroalpha82@gmail.com>
 <20240212184950.52210-3-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240212184950.52210-3-macroalpha82@gmail.com>

Hi,
On Mon, Feb 12, 2024 at 12:49:45PM -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> The Powkiddy RGB10MAX3 is a handheld device with a 5 inch 720x1280
> display panel with a Sitronix ST7703 display controller. The panel
> is installed rotated 270 degrees.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  drivers/gpu/drm/panel/panel-sitronix-st7703.c | 91 +++++++++++++++++++
>  1 file changed, 91 insertions(+)
> 
> diff --git a/drivers/gpu/drm/panel/panel-sitronix-st7703.c b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> index b55bafd1a8be..939ba05c9b58 100644
> --- a/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> +++ b/drivers/gpu/drm/panel/panel-sitronix-st7703.c
> @@ -521,6 +521,96 @@ static const struct st7703_panel_desc rgb30panel_desc = {
>  	.init_sequence = rgb30panel_init_sequence,
>  };
>  
> +static int rgb10max3_panel_init_sequence(struct st7703 *ctx)
> +{
> +	struct mipi_dsi_device *dsi = to_mipi_dsi_device(ctx->dev);
> +
> +	/* Init sequence extracted from Powkiddy RGB10MAX3 BSP kernel. */
> +
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEXTC, 0xf1, 0x12, 0x83);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETAPID, 0x00, 0x00, 0x00, 0xda,
> +			       0x80);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETDISP, 0xc8, 0x02, 0x30);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETRGBIF, 0x10, 0x10, 0x28,
> +			       0x28, 0x03, 0xff, 0x00, 0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCYC, 0x80);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETBGP, 0x04, 0x04);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVCOM, 0x78, 0x78);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER_EXT, 0x25, 0x22, 0xf0,
> +			       0x63);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETMIPI, 0x33, 0x81, 0x05, 0xf9,
> +			       0x0e, 0x0e, 0x20, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x44, 0x25, 0x00, 0x90, 0x0a, 0x00,
> +			       0x00, 0x01, 0x4f, 0x01, 0x00, 0x00, 0x37);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETVDC, 0x47);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_BF, 0x02, 0x11, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETSCR, 0x73, 0x73, 0x50, 0x50,
> +			       0x00, 0x00, 0x12, 0x70, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPOWER, 0x25, 0x00, 0x32,
> +			       0x32, 0x77, 0xe1, 0xff, 0xff, 0xcc, 0xcc, 0x77,
> +			       0x77);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETECO, 0x82, 0x00, 0xbf, 0xff,
> +			       0x00, 0xff);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETIO, 0xb8, 0x00, 0x0a, 0x00,
> +			       0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETCABC, 0x10, 0x40, 0x1e,
> +			       0x02);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETPANEL, 0x0b);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGAMMA, 0x00, 0x04, 0x07,
> +			       0x2a, 0x39, 0x3f, 0x36, 0x31, 0x06, 0x0b, 0x0e,
> +			       0x12, 0x14, 0x12, 0x13, 0x0f, 0x17, 0x00, 0x04,
> +			       0x07, 0x2a, 0x39, 0x3f, 0x36, 0x31, 0x06, 0x0b,
> +			       0x0e, 0x12, 0x14, 0x12, 0x13, 0x0f, 0x17);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETEQ, 0x03, 0x03, 0x03, 0x03,
> +			       0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0xff, 0x80,
> +			       0xc0, 0x10);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP1, 0xc8, 0x10, 0x08, 0x00,
> +			       0x00, 0x41, 0xf8, 0x12, 0x31, 0x23, 0x37, 0x86,
> +			       0x11, 0xc8, 0x37, 0x2a, 0x00, 0x00, 0x0c, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x0c, 0x00, 0x00, 0x00,
> +			       0x88, 0x20, 0x46, 0x02, 0x88, 0x88, 0x88, 0x88,
> +			       0x88, 0x88, 0xff, 0x88, 0x31, 0x57, 0x13, 0x88,
> +			       0x88, 0x88, 0x88, 0x88, 0x88, 0xff, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_SETGIP2, 0x00, 0x1a, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x8f, 0x13, 0x31, 0x75, 0x88, 0x88, 0x88, 0x88,
> +			       0x88, 0x88, 0xf8, 0x8f, 0x02, 0x20, 0x64, 0x88,
> +			       0x88, 0x88, 0x88, 0x88, 0x88, 0xf8, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
> +			       0x00);
> +	mipi_dsi_dcs_write_seq(dsi, ST7703_CMD_UNKNOWN_EF, 0xff, 0xff, 0x01);
> +
> +	return 0;
> +}
> +
> +static const struct drm_display_mode rgb10max3_panel_mode = {
> +	.hdisplay	= 720,
> +	.hsync_start	= 720 + 40,
> +	.hsync_end	= 720 + 40 + 10,
> +	.htotal		= 720 + 40 + 10 + 40,
> +	.vdisplay	= 1280,
> +	.vsync_start	= 1280 + 16,
> +	.vsync_end	= 1280 + 16 + 4,
> +	.vtotal		= 1280 + 16 + 4 + 14,
> +	.clock		= 63800,
> +	.flags		= DRM_MODE_FLAG_NHSYNC | DRM_MODE_FLAG_NVSYNC,
> +	.width_mm	= 62,
> +	.height_mm	= 109,
> +};
> +
> +static const struct st7703_panel_desc rgb10max3_panel_desc = {
> +	.mode = &rgb10max3_panel_mode,
> +	.lanes = 4,
> +	.mode_flags = MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BURST |
> +		      MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_MODE_LPM,
> +	.format = MIPI_DSI_FMT_RGB888,
> +	.init_sequence = rgb10max3_panel_init_sequence,
> +};
> +
>  static int st7703_enable(struct drm_panel *panel)
>  {
>  	struct st7703 *ctx = panel_to_st7703(panel);
> @@ -784,6 +874,7 @@ static void st7703_remove(struct mipi_dsi_device *dsi)
>  
>  static const struct of_device_id st7703_of_match[] = {
>  	{ .compatible = "anbernic,rg353v-panel-v2", .data = &rg353v2_desc },
> +	{ .compatible = "powkiddy,rgb10max3-panel", .data = &rgb10max3_panel_desc },
>  	{ .compatible = "powkiddy,rgb30-panel", .data = &rgb30panel_desc },
>  	{ .compatible = "rocktech,jh057n00900", .data = &jh057n00900_panel_desc },
>  	{ .compatible = "xingbangda,xbd599", .data = &xbd599_desc },

Reviewed-by: Guido Günther <agx@sigxcpu.org>
Cheers,
 -- Guido

> -- 
> 2.34.1
> 

