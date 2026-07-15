Return-Path: <devicetree+bounces-326932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id l0GBEFp6V2qgOwEAu9opvQ
	(envelope-from <devicetree+bounces-326932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:17:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 299D375E008
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 14:17:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=LR6urBFg;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326932-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326932-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9B3383097FDB
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 12:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A800944C66E;
	Wed, 15 Jul 2026 12:02:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4129544C64B
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 12:02:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784116941; cv=none; b=gPJAKv/yn8UN0J7JlvOV8m/MurlAQQ2LvQzHwebjJnAhmq6MzwQ+LLyyxU5lSkWwpl4vwSux3lWvDN94Stet1y1uWlm08G/SPdC+yNfqQhCRaccU70CpYn+fLWCq8Z/V4dCEQGh1xdGi7m2+ZQ5yi1uNdsSiauCrsUl1m+HehdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784116941; c=relaxed/simple;
	bh=AbXAAZLpFeBzQR5BF6k6xlXBiZtjqFCESiFshir3n0g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=X6HB+YmNAvxvJrRhJYFHnucL7WaIYWLha7Ub+irquWkAECnWKGStn5S3zqd8NFfnKb51nAF2M8z+/YqP0vbEBtDhsW3uDl3+57e5OZoAbRqpodQguQbGgdFq+F+irIJM6fblQ9xDl/dDuG0KV2g7FrQae/5THfB+7oqLxzYn9s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LR6urBFg; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B11FD1F000E9;
	Wed, 15 Jul 2026 12:02:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784116939;
	bh=rPl8kv9fi72XcSNecqo8biSYfW1Br/DvpXR2qn6GGO8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=LR6urBFgB0bzLzRZZzrQ22mdgT+yJ/PmGi3B+xmzMW5YFNhbAAWGek+/exGxeNp1i
	 yTnZhCqfu46KnhuKlhjSD6NKzfkU6iOGm+17OE/g60HYH7AJbzCY6y0ziHNqu3AoVL
	 gayRX3k4kPCc1Ms8t8sCbHPJ3MRqgzKakRjo+/avaxqungqhgYK78fpK5YDScXxLDB
	 WHN+Aca6IkJ3Es8j9VD3wH6Co76vXJXoQjIjoLdnO0NGm+xFysfKM3qKlHEEf5BQEH
	 aJtSUylPgSY/NovxlnQ8s6uHCewD0n9y2jQTpclkPIH8R8fx0K69kZlB5lyvoRH8gS
	 YBaUztC++sWDA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 02/11] drm/mediatek: Implement Display Stream
 Compression support
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260715114916.19690-3-angelogioacchino.delregno@collabora.com>
References: <20260715114916.19690-1-angelogioacchino.delregno@collabora.com>
 <20260715114916.19690-3-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 12:02:19 +0000
Message-Id: <20260715120219.B11FD1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-326932-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,collabora.com:email,smtp.kernel.org:mid];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 299D375E008

Thank you for your contribution! Sashiko AI review found 7 potential issue(=
s) to consider:
- [High] Hardware Initialization Bypass due to skipped array element in DDP=
 component loop.
- [High] DSC configuration is written after the component is started, causi=
ng pipeline corruption.
- [High] State leak of `dsc_config_done` breaks non-DSC display modes.
- [High] DSI clock lane timing register `DSI_HSTX_CKL_WC` is destroyed by b=
eing overwritten with the pixel payload word count.
- [High] Hardcoded 2x multiplier for DSC slice count results in incorrect D=
SI payload word count.
- [High] Bandwidth calculations use uncompressed bits-per-pixel (bpp), fals=
ely rejecting valid DSC modes and misconfiguring PHY clocks.
- [Medium] Uninitialized variable `slice_chunk_size` is used for hardware c=
onfiguration during DSI power-on.
--

--- Patch [2]: [PATCH v5 02/11] drm/mediatek: Implement Display Stream Comp=
ression support ---
commit e5bc691dc168426274a3882d1ba1c028fccf77c4
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Subject: drm/mediatek: Implement Display Stream Compression support

This commit introduces Display Stream Compression (DSC) support for the
MediaTek display controller IP. It extracts DSC IP bypass setup from
mtk_ddp_comp into a new mtk_disp_dsc driver and adds DSC handling to the
mtk_dsi driver.

> diff --git a/drivers/gpu/drm/mediatek/mtk_crtc.c b/drivers/gpu/drm/mediat=
ek/mtk_crtc.c
> --- a/drivers/gpu/drm/mediatek/mtk_crtc.c
> +++ b/drivers/gpu/drm/mediatek/mtk_crtc.c
[ ... ]
> @@ -398,6 +401,17 @@ static int mtk_crtc_ddp_hw_init(struct mtk_crtc *mtk=
_crtc)
>  		if (!mtk_ddp_comp_add(mtk_crtc->ddp_comp[i], mtk_crtc->mutex))
>  			mtk_mutex_add_comp(mtk_crtc->mutex,
>  					   mtk_crtc->ddp_comp[i]->id);
> +
> +		/* For now, only single DSI is supported */
> +		if (mtk_crtc->ddp_comp[i]->id >=3D DDP_COMPONENT_DSI0 &&
> +		    mtk_crtc->ddp_comp[i]->id <=3D DDP_COMPONENT_DSI3)
> +			if (!comp_dsi)
> +				comp_dsi =3D mtk_crtc->ddp_comp[i];

[Severity: High]
Does this loop skip checking the DSI component?

Looking at the loop definition in mtk_crtc_ddp_hw_init(), it iterates up to
ddp_comp_nr - 1. Since DSI is typically the sink and sits at the very end of
the pipeline, it is at index ddp_comp_nr - 1. This means the loop body
checking for DSI components never executes for it, leaving comp_dsi as NULL.
Consequently, the subsequent mtk_ddp_comp_dsc_setup() call is silently
bypassed.

> +
> +		if (mtk_crtc->ddp_comp[i]->id =3D=3D DDP_COMPONENT_DSC0 ||
> +		    mtk_crtc->ddp_comp[i]->id =3D=3D DDP_COMPONENT_DSC1)
> +			if (!comp_dsc)
> +				comp_dsc =3D mtk_crtc->ddp_comp[i];
>  	}
[ ... ]
> @@ -413,6 +427,13 @@ static int mtk_crtc_ddp_hw_init(struct mtk_crtc *mtk=
_crtc)
>  		mtk_ddp_comp_start(comp);
>  	}
> =20
> +	/* Setup the DSC if present, with the config coming from DSI */
> +	if (comp_dsc && comp_dsi) {
> +		dsc_cfg =3D mtk_dsi_get_dsc_config(comp_dsi->dev);
> +		if (dsc_cfg)
> +			mtk_ddp_comp_dsc_setup(comp_dsc, dsc_cfg);
> +	}

[Severity: High]
Is mtk_ddp_comp_dsc_setup() called too late here?

The preceding loop calls mtk_ddp_comp_start(comp) for all components, which
starts the DSC in bypass mode. Then mtk_dsc_setup() disables the active DSC
engine:

writel(dsc_con & ~DSC_EN, disp_dsc->reg + DISP_REG_DSC_CON);

It then reconfigures and re-enables the engine. Could disabling and
reconfiguring the active component while the pipeline is already streaming
video data cause hardware hangs or stream corruption?

> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_dsc.c b/drivers/gpu/drm/me=
diatek/mtk_disp_dsc.c
> --- /dev/null
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_dsc.c
[ ... ]
> +void mtk_dsc_start(struct device *dev)
> +{
> +	struct mtk_dsc *disp_dsc =3D dev_get_drvdata(dev);
> +
> +	/* If no DSC or config not done, set bypass mode */
> +	if (!disp_dsc->dsc_config_done) {
> +		mtk_ddp_write_mask(NULL, DSC_BYPASS, &disp_dsc->cmdq_reg,
> +				   disp_dsc->reg, DISP_REG_DSC_CON, DSC_BYPASS);

[Severity: High]
Does disp_dsc->dsc_config_done need to be cleared when the DSC is stopped?

When switching from a DSC mode to a non-DSC mode, mtk_dsc_stop() zeros
DISP_REG_DSC_CON but leaves dsc_config_done set to true. Later,
mtk_dsc_start() evaluates !disp_dsc->dsc_config_done as false and skips
writing the DSC_BYPASS bit.

Since mtk_dsc_stop() previously zeroed the register, DSC_BYPASS is 0,
leaving compression enabled on a pipeline that now expects uncompressed
video.

> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediate=
k/mtk_dsi.c
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
[ ... ]
> -static void mtk_dsi_ps_control(struct mtk_dsi *dsi, bool config_vact)
> +static void mtk_dsi_ps_control_dsc(struct mtk_dsi *dsi, bool config_vact)
> +{
> +	const struct mtk_dsi_driver_data *data =3D dsi->driver_data;
> +	const u16 *reg_main =3D dsi->driver_data->reg_main;
> +	const short dsi_buf_bpp =3D 3;
> +	u32 ps_wc;
> +
> +	/* Word count */
> +	ps_wc =3D FIELD_PREP(DSI_PS_WC, 2 * dsi->dsc->slice_chunk_size);

[Severity: High]
Is it safe to hardcode the slice multiplier to 2?

If a DSC panel uses a different slice count, such as 1 or 4, this calculates
an incorrect payload word count. Should this dynamically multiply by
dsi->dsc->slice_count instead?

> +
> +	if (config_vact) {
> +		writel(FIELD_PREP(VACT_NL, dsi->vm.vactive),
> +		       dsi->regs + reg_main[DSI_VACT_NL]);
> +		writel(ps_wc, dsi->regs + reg_main[DSI_HSTX_CKL_WC]);

[Severity: High]
Does this overwrite the clock lane timing configuration?

In mtk_dsi_config_vdo_timing(), the code calculates and writes intricate
clock timing to DSI_HSTX_CKL_WC via mtk_dsi_config_vdo_timing_per_frame_lp(=
).
Immediately after, it calls mtk_dsi_ps_control(dsi, true), which executes
this writel.

Could this destroy the previously calculated clock timing by completely
overwriting it with just the pixel payload word count?

[ ... ]
> @@ -741,12 +828,19 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
> =20
>  	mtk_dsi_ps_control(dsi, true);

[Severity: Medium]
Is dsi->dsc->slice_chunk_size fully initialized before this call?

Here, mtk_dsi_ps_control(dsi, true) routes to mtk_dsi_ps_control_dsc(),
which reads dsi->dsc->slice_chunk_size.

However, the chunk size is only calculated later when
mtk_dsi_config_vdo_timing() calls drm_dsc_compute_rc_parameters(dsc). Will
this result in uninitialized values being temporarily written to DSI hardwa=
re
registers during power-on?

[ ... ]
> @@ -883,6 +977,28 @@ mtk_dsi_bridge_mode_valid(struct drm_bridge *bridge,
>  	if (mode->clock * bpp / dsi->lanes > 1500000)
>  		return MODE_CLOCK_HIGH;

[Severity: High]
Does this bandwidth calculation falsely reject valid DSC modes?

The bpp value is calculated earlier using mipi_dsi_pixel_format_to_bpp(),
which returns the uncompressed bits-per-pixel. Using the uncompressed bpp
for DSC modes calculates a much higher required bandwidth, which can exceed
hardware limits and reject legitimate modes.

Similarly, in mtk_dsi_poweron(), using the uncompressed bpp calculates
a data_rate that misconfigures the PHY clock. Should these calculations
use the compressed bpp (dsi->dsc->bits_per_pixel >> 4) when DSC is enabled?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715114916.1969=
0-1-angelogioacchino.delregno@collabora.com?part=3D2

