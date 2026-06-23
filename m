Return-Path: <devicetree+bounces-314988-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lx9qAKHtOmpTLwgAu9opvQ
	(envelope-from <devicetree+bounces-314988-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:33:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B88E6BA092
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:33:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BeqZUh50;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314988-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-314988-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A716A307B655
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:33:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6008E3A4520;
	Tue, 23 Jun 2026 20:33:12 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425DD3A48D9
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:33:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782246792; cv=none; b=LyRwBkbaOh5z+OV69c3PVmP/mg9D1+LwZmqDYu1Zp4o18/T0BETvSESKUBB0/lLnUKiFhkoFr3K5u0tqoFpccfrXVDwsECb1Wkf7fkipOa5GOEI5ANtOeI+qlGULkF8KHAXMABRX/oQE/cFrf7cdx5eSgzGzfjVaTv7mJHefT2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782246792; c=relaxed/simple;
	bh=gy9NDIlq+O2lXbakvWdh/tzq3nsg72CvKEQQb68ald4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ANErgSDI4X0N0OEGlmCNQb8lSUCKSxXvw+ODKyPfBl/9kxMkjwvQ20rwqzS0n/9/EttVcAR/pXKhGxQrla6BIam7VhFm2RuKA7GDtx5micql85VTzoK8VlAu8tIsphxoSoaS5B5V9Iy879RJq3/CoZK3tKNNB1IAeWMzixG/ZTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeqZUh50; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F8C81F000E9;
	Tue, 23 Jun 2026 20:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782246790;
	bh=TLk0sCP9g8Hb5W2660tfp4hE/wMoOUvU5+RyvkNByD8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BeqZUh50QfKXwW3gumbF3bCW3vnUf3X9/9get8ppLhKcZdaBVPwkYRIQPr+cuWAwB
	 hwMApar/siqJU/dTc7Inzoo7NWy3Bfyxjr92prvEvDdh+Io583LFDIugtyt7YOwmZv
	 FAjsZw5lih8hvOKTNXRxAto+FMVVodzyUItqSdcyGh3hVCmNJsZO23lgDl9vwVOiKZ
	 4arM1dW/i3bwHVhWmhMA7noIzCGBYLGR/HL5oVgr9GuT7BUpk0LKSVY/RbXW+TA8R4
	 hneJpiGEd5eVnAm0vAgcMKJ4KFW47ifL1vYQOCSwGzgQVz16yPp2pLk33wfTADYY1P
	 uvSp2Xi343iGA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/9] drm/rockchip: vop2: Avoid DCLK source switch for
 10-bit YUV422 output
Reply-To: sashiko-reviews@lists.linux.dev
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: conor+dt@kernel.org, robh@kernel.org, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
In-Reply-To: <20260617-dw-hdmi-qp-yuv-v1-3-a665cfd06d7d@collabora.com>
References: <20260617-dw-hdmi-qp-yuv-v1-0-a665cfd06d7d@collabora.com>
 <20260617-dw-hdmi-qp-yuv-v1-3-a665cfd06d7d@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 20:33:10 +0000
Message-Id: <20260623203310.9F8C81F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-314988-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:cristian.ciocaltea@collabora.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6B88E6BA092

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Division by zero in max_dclk calculation due to uninitialized outp=
ut_bpc.
- [High] Integer overflow in max_dclk calculation on 32-bit architectures.
- [High] Atomic context violation due to calling sleeping functions.
--

commit cdb8cbbc3fd201db3157d6704b3856b8565e10e2
Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

drm/rockchip: vop2: Avoid DCLK source switch for 10-bit YUV422 output
   =20
The commit modifies the DCLK source decision logic for HDMI output in VOP2.
It prevents unnecessary switching of the DCLK source to the system CRU for
10-bit YUV422 output by forcing the bandwidth check to 8 bpc.

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop2.c
> index 2833fb49ad81a..17d21e08ad977 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1922,8 +1922,17 @@ static void vop2_crtc_atomic_enable(struct drm_crt=
c *crtc,

[Severity: High]
This is a pre-existing issue, but does this function violate atomic context
rules?

According to the DRM subsystem guidelines, CRTC atomic enable callbacks exe=
cute
in atomic context where sleeping is forbidden. However, vop2_crtc_atomic_en=
able()
acquires a mutex via vop2_lock() and later calls clk_prepare_enable(), both=
 of
which can sleep.

Can this cause scheduling while atomic warnings or deadlocks during atomic
commits?

>  	 * to 4K@60Hz, if available, otherwise keep using the system CRU.
>  	 */
>  	if (vop2->pll_hdmiphy0 || vop2->pll_hdmiphy1) {
> -		unsigned long max_dclk =3D DIV_ROUND_CLOSEST_ULL(VOP2_MAX_DCLK_RATE * =
8,
> -							       vcstate->output_bpc);
> +		/*
> +		 * YUV422 always transmits two 12-bit components per clock
> +		 * cycle, regardless of the color depth, which from a rate
> +		 * perspective is equivalent to three 8-bit RGB components.
> +		 * Force 8 bpc here so the bandwidth check reflects the actual
> +		 * TMDS rate and avoids an unnecessary DCLK source switch.
> +		 */
> +		unsigned int bpc =3D vcstate->output_mode =3D=3D ROCKCHIP_OUT_MODE_YUV=
422 ?
> +					8 : vcstate->output_bpc;
> +		unsigned long max_dclk =3D DIV_ROUND_CLOSEST_ULL(VOP2_MAX_DCLK_RATE * =
8, bpc);

[Severity: High]
This isn't a bug introduced by this patch, but can bpc be 0 here and cause a
division by zero?

If the VOP2 driver is used with a non-HDMI output like DSI or LVDS on a boa=
rd
that also has an HDMI PHY, vop2->pll_hdmiphy0 or vop2->pll_hdmiphy1 will be
non-NULL. Since DSI/LVDS encoders do not set vcstate->output_bpc, it defaul=
ts
to 0.

This would lead to DIV_ROUND_CLOSEST_ULL(..., 0) before the loop checks if
the endpoint is HDMI.

[Severity: High]
This is also a pre-existing issue, but does VOP2_MAX_DCLK_RATE * 8 overflow=
 on
32-bit architectures?

VOP2_MAX_DCLK_RATE is defined as 600000000UL. On architectures where
unsigned long is 32 bits, 600000000UL * 8 equals 4,800,000,000, which excee=
ds
ULONG_MAX.

This truncates to 505,032,704 before being promoted to unsigned long long i=
nside
DIV_ROUND_CLOSEST_ULL, improperly forcing higher resolutions to fall back t=
o the
system CRU.

Should this be cast to a 64-bit type first, such as VOP2_MAX_DCLK_RATE * 8U=
LL?

>  		if (clock <=3D max_dclk) {
>  			drm_for_each_encoder_mask(encoder, crtc->dev, crtc_state->encoder_mas=
k) {
>  				struct rockchip_encoder *rkencoder =3D to_rockchip_encoder(encoder);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260617-dw-hdmi-qp=
-yuv-v1-0-a665cfd06d7d@collabora.com?part=3D3

