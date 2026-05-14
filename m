Return-Path: <devicetree+bounces-297830-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KPFrIEJGBmo3hwIAu9opvQ
	(envelope-from <devicetree+bounces-297830-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 00:01:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4675474AE
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2026 00:01:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E5951310A23B
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 21:56:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1A8B3D1CA1;
	Thu, 14 May 2026 21:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gBw7TGAo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEACA3D0BEC
	for <devicetree@vger.kernel.org>; Thu, 14 May 2026 21:55:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778795710; cv=none; b=FFdKkvagWWJHtx75zN7TRbICAbzhxhqTAjr96kaiaqRNWDRqPpNWm5oebyiCDDwLCFFkxrjGy9R216LDAK4ohUqsxCFiFMbvFLdyky83hTgJU8CYj+dQVOVvw+GjJcIvS68Nui/6BrF8Y6+DPVqGPiFDiPK4dytqYQbM6mffbLc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778795710; c=relaxed/simple;
	bh=4Pb3HD8qk3bHVDxmBR+c8HGUZxIY6XdKIAcPMGMLPmA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=PJQEbBZJqo0/Tgx01fKp2JmX2fKxA6eWARz0D53/5EwCxLtki5A64tON2TDXG2sZjow4QVYfqTZuxrc+b8ZngbJB41jtQP/PIB89Y/R/GD4zjtp0GuIehFjeH7BYQA8J64cAdnIUJwmcj5pB1I6rI1tvlutxwbANXy5Gylpt/4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gBw7TGAo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9C643C2BCB3;
	Thu, 14 May 2026 21:55:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778795710;
	bh=4Pb3HD8qk3bHVDxmBR+c8HGUZxIY6XdKIAcPMGMLPmA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=gBw7TGAonjGwnSUxhz3Gt0pBPNF9MmgilqX8smV+N+y0EYho2yNfUMGLM8Goid8WN
	 dVledA9qPG43VBa6Ct1WfgF276giKTCM45T8MdscCsCpoHKBIxe/aEGQCvSsGSRj3R
	 t4CPEkRpdoU06lj/dVZWovpW7UjGSuxx6q7jQXrO+9C5zhVd26P5UxxB9NrOIKwrMD
	 IPVfBXl3egmAghrK7O+S0RdJsYj+MYY1Bu+1J+bbIF+E/paxt7ybkA/b94MsvZZhok
	 yluV/UNdsQsVB0gCYVcoiNDzMz35w5V1ovdztXZb09omTVFUFWWlzzI4ghSwjCYUB5
	 Hg3N+qcFhE6ZA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 2/2] drm/panel: Add panel driver for Chipone ICNA35XX
 based panels
Reply-To: sashiko-reviews@lists.linux.dev
To: "Aaron Kling via B4 Relay" <devnull+webgeek1234.gmail.com@kernel.org>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260514-icna35xx-v3-2-c304f04c32c4@gmail.com>
References: <20260514-icna35xx-v3-2-c304f04c32c4@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 21:55:08 +0000
Message-Id: <20260514215509.9C643C2BCB3@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: CE4675474AE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sobir.in:email];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297830-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,webgeek1234.gmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 6 potential issue(=
s) to consider:
- [High] NULL pointer dereference in `icna35xx_get_current_mode()` due to u=
ninitialized `connector`.
- [High] State leak and data race in backlight operations modifying `dsi->m=
ode_flags`.
- [High] Incomplete static DSC configuration leads to invalid PPS payload a=
nd display failure.
- [High] Backlight callbacks attempt to send DSI commands when the panel is=
 suspended.
- [Medium] Unbalanced reset GPIO teardown in the `icna35xx_prepare()` error=
 path.
- [Low] Missing `select DRM_DISPLAY_DSC_HELPER` in Kconfig.
--

commit f579b883c0c01eb10daf710ef569cf31687d50a6
Author: Teguh Sobirin <teguh@sobir.in>

drm/panel: Add panel driver for Chipone ICNA35XX based panels

This adds support for the ICNA3512 and ICNA3520 DDICs used in AYN Odin 2
Portal, Ayaneo Pocket DS, AYN Odin 3, and AYN Thor top panels.

> diff --git a/drivers/gpu/drm/panel/Kconfig b/drivers/gpu/drm/panel/Kconfig
> --- a/drivers/gpu/drm/panel/Kconfig
> +++ b/drivers/gpu/drm/panel/Kconfig
> @@ -105,6 +105,17 @@ config DRM_PANEL_BOE_TV101WUM_LL2
>  	  Say Y here if you want to support for BOE TV101WUM-LL2
>  	  WUXGA PANEL DSI Video Mode panel
> =20
> +config DRM_PANEL_CHIPONE_ICNA35XX
> +	tristate "Chipone ICNA35XX panel driver"
> +	depends on OF
> +	depends on DRM_MIPI_DSI
> +	depends on BACKLIGHT_CLASS_DEVICE
> +	select DRM_DISPLAY_HELPER

Is a select DRM_DISPLAY_DSC_HELPER needed here? This driver uses
drm_dsc_pps_payload_pack(), which is guarded by CONFIG_DRM_DISPLAY_DSC_HELP=
ER.
Without it, could this cause a build error?

> diff --git a/drivers/gpu/drm/panel/panel-chipone-icna35xx.c b/drivers/gpu=
/drm/panel/panel-chipone-icna35xx.c
> new file mode 100644
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-chipone-icna35xx.c

[ ... ]

> +static int icna35xx_get_current_mode(struct panel_info *pinfo)
> +{
> +	struct drm_connector *connector =3D pinfo->connector;
> +	struct drm_crtc_state *crtc_state;
> +	int i;
> +
> +	/* Return the default (first) mode if no info available yet */
> +	if (!connector->state || !connector->state->crtc)

Can connector be NULL here if the panel is prepared before modes are explic=
itly
probed? Should this condition also check if (!connector) to prevent a
potential NULL pointer dereference?

[ ... ]

> +static struct panel_desc odin2portal_desc =3D {
> +	.modes =3D odin2portal_modes,
> +	.num_modes =3D ARRAY_SIZE(odin2portal_modes),
> +	.width_mm =3D 160,
> +	.height_mm =3D 89,
> +	.bpc =3D 8,
> +	.lanes =3D 4,
> +	.format =3D MIPI_DSI_FMT_RGB888,
> +	.mode_flags =3D MIPI_DSI_MODE_NO_EOT_PACKET | MIPI_DSI_CLOCK_NON_CONTIN=
UOUS |
> +			MIPI_DSI_MODE_LPM,
> +	.init_sequence =3D icna3512_init_sequence,
> +	.dsc =3D {
> +		.dsc_version_major =3D 0x1,
> +		.dsc_version_minor =3D 0x1,
> +		.slice_height =3D 20,
> +		.slice_width =3D 540,
> +		.slice_count =3D 2,
> +		.bits_per_component =3D 8,
> +		.bits_per_pixel =3D 8 << 4,
> +		.block_pred_enable =3D true,
> +	},
> +};

Are these static DSC configurations missing runtime parameters like pic_wid=
th,
pic_height, and Rate Control (RC) parameters?

When drm_dsc_pps_payload_pack() is called during the initialization sequenc=
e,
could it pack zeroed values into the Picture Parameter Set and cause the
display's DSC decoder to fail?

[ ... ]

> +static int icna35xx_prepare(struct drm_panel *panel)
> +{
> +	struct panel_info *pinfo =3D to_panel_info(panel);
> +	int ret;
> +
> +	ret =3D regulator_bulk_enable(ARRAY_SIZE(panel_supplies), pinfo->suppli=
es);
> +	if (ret < 0) {
> +		dev_err(panel->dev, "failed to enable regulators: %d\n", ret);
> +		return ret;
> +	}
> +
> +	icna35xx_reset(pinfo);
> +
> +	ret =3D pinfo->desc->init_sequence(pinfo);
> +	if (ret < 0) {
> +		regulator_bulk_disable(ARRAY_SIZE(panel_supplies), pinfo->supplies);

Does this error path need to assert the reset GPIO before returning? Leaving
the reset line driven out of reset while the power supplies are disabled mi=
ght
cause back-powering or current leakage into the panel IC.

[ ... ]

> +static int icna35xx_bl_update_status(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi =3D bl_get_data(bl);
> +	u16 brightness =3D backlight_get_brightness(bl);
> +	int ret;
> +
> +	dsi->mode_flags &=3D ~MIPI_DSI_MODE_LPM;
> +
> +	ret =3D mipi_dsi_dcs_set_display_brightness_large(dsi, brightness);
> +	if (ret < 0)
> +		return ret;

Are these backlight callbacks reachable from userspace via sysfs when the p=
anel
is suspended? If the display pipeline is suspended and regulators are
disabled, sending DSI DCS commands to powered-off hardware could result in
DSI host transmission timeouts.

Additionally, if mipi_dsi_dcs_set_display_brightness_large() fails and
returns early, does this leave the MIPI_DSI_MODE_LPM bit permanently cleare=
d?

Furthermore, since backlight sysfs callbacks execute without DRM subsystem
locks, could modifying dsi->mode_flags here race concurrently with DRM atom=
ic
commits and corrupt the DSI hardware configuration?

> +
> +	dsi->mode_flags |=3D MIPI_DSI_MODE_LPM;
> +
> +	return 0;
> +}
> +
> +static int icna35xx_bl_get_brightness(struct backlight_device *bl)
> +{
> +	struct mipi_dsi_device *dsi =3D bl_get_data(bl);
> +	u16 brightness;
> +	int ret;
> +
> +	dsi->mode_flags &=3D ~MIPI_DSI_MODE_LPM;
> +
> +	ret =3D mipi_dsi_dcs_get_display_brightness_large(dsi, &brightness);
> +	if (ret < 0)
> +		return ret;

Similarly, does this error path permanently alter the DSI mode flags and
potentially race with DRM atomic commits?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260514-icna35xx-v=
3-0-c304f04c32c4@gmail.com?part=3D2

