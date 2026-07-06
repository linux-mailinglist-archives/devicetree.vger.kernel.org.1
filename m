Return-Path: <devicetree+bounces-321523-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v+VCLzwMTGqNfQEAu9opvQ
	(envelope-from <devicetree+bounces-321523-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:12:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F48715553
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 22:12:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ODmWzvEO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321523-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-321523-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5DC833019BAB
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 19:41:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7A7B349CD3;
	Mon,  6 Jul 2026 19:41:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85209346E66
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 19:41:13 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783366874; cv=none; b=TK3L73cVcFsfsiLK5u2rO3nMUtOqhvTnmXimpzwS5ou1Tu8PBIZqftnlB7kotfoKDsxPeSQo0HdGIO39/RDUTSBJxj5Qiopt3PcbaG1FGbduJNgXX9DEuIUdEKg7tC6y7Tsw2uAbwNz1U5JZbZdEJI+8xYbU7ucsaAMXltT+Yz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783366874; c=relaxed/simple;
	bh=M0FSXRMr2wk7eln9XMltL6FdqdCe1ZInRdo4GtbdJJE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QaUqrlRjruCWOse/akWmSA/zh4i3h/P70jWjis0o2Se6ZGn6a9fBFyi//78ZpGE4hK3iZCJQL9lUc3aA3NXS7J0IwLtmRQqXvLFBGdTOYkGv5jH6oj8bPIQ1LJaGRrImQejY/zsLHYKlLfC34d63NrI5nnG91/KqJHPdAfnuXwQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODmWzvEO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9DD51F000E9;
	Mon,  6 Jul 2026 19:41:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783366873;
	bh=ql1BTd+R8iFjcDbKq4QObGCOG8trG6gfPLTyqY6GNFw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ODmWzvEO4cyA8TLoxfAus2NNW3uweu/35BapcKk609i+UQZjP/nbJULqoF6ynV4hJ
	 O6MRphWRdxLy7mGlcOADibnnptNEiBLxUcJNGf8JxUiEnYdiQ+MsB9I4dRXyDrfm0Y
	 pQIKAArokSKsDMFWZLFcH6QjLmREAZSQPH3VbCmL3cfpOtLVBpYC5ixEH8BDIkXxS2
	 FpjUUwTeBqMenWsRcqd2p0Iws0GE2pQVHeMtHJiOtt/gr3QWuvq4g+0YR2X//TuGs7
	 YJX3QhqJiq4Ewn1GGWIPcsvZ02EwTnp+2eL6SHbVQbKxwII74Txrg/kIHSdln4S2T7
	 nYYlDAvTataeQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 04/13] drm/rockchip: vop2: Avoid division by zero
 when computing max_dclk
Reply-To: sashiko-reviews@lists.linux.dev
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260706-dw-hdmi-qp-yuv-v2-4-b91beb33dedf@collabora.com>
References: <20260706-dw-hdmi-qp-yuv-v2-0-b91beb33dedf@collabora.com>
 <20260706-dw-hdmi-qp-yuv-v2-4-b91beb33dedf@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 06 Jul 2026 19:41:12 +0000
Message-Id: <20260706194112.A9DD51F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-321523-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:cristian.ciocaltea@collabora.com,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 09F48715553

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] The function `vop2_crtc_atomic_enable` calls sleeping functions, v=
iolating the DRM subsystem guideline that CRTC atomic enable callbacks exec=
ute in atomic context.
--

commit d9247f0e6928075b3e607f5959fafadc7413c070
Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

drm/rockchip: vop2: Avoid division by zero when computing max_dclk

This commit avoids a division by zero in vop2_crtc_atomic_enable() by
defaulting bpc to 8 if vcstate->output_bpc is 0, which happens for
non-HDMI outputs.

Closes: https://lore.kernel.org/all/20260623203310.9F8C81F000E9@smtp.kernel=
.org/

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop2.c
> index c2328b35466de..e966c0a0266ea 100644
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> @@ -1920,8 +1920,9 @@ static void vop2_crtc_atomic_enable(struct drm_crtc=
 *crtc,
>  	 * to 4K@60Hz, if available, otherwise keep using the system CRU.
>  	 */
>  	if (vop2->pll_hdmiphy0 || vop2->pll_hdmiphy1) {
> -		unsigned long max_dclk =3D DIV_ROUND_CLOSEST_ULL(VOP2_MAX_DCLK_RATE * =
8,
> -							       vcstate->output_bpc);
> +		unsigned int bpc =3D vcstate->output_bpc ?: 8;
> +		unsigned long max_dclk =3D DIV_ROUND_CLOSEST_ULL(VOP2_MAX_DCLK_RATE * =
8, bpc);
> +
>  		if (clock <=3D max_dclk) {
>  			drm_for_each_encoder_mask(encoder, crtc->dev, crtc_state->encoder_mas=
k) {
>  				struct rockchip_encoder *rkencoder =3D to_rockchip_encoder(encoder);

[Severity: High]
This is a pre-existing issue, but does vop2_crtc_atomic_enable() safely
execute in an atomic context?

CRTC atomic enable callbacks can execute in an atomic context during
non-blocking commits, where sleeping is forbidden.

However, vop2_crtc_atomic_enable() invokes sleeping functions. It starts
with vop2_lock() (which wraps mutex_lock) and clk_prepare_enable():

drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:vop2_crtc_atomic_enable() {
    ...
	vop2_lock(vop2);

	ret =3D clk_prepare_enable(vp->dclk);
    ...
}

Additionally, further down in the function, clk_set_parent() is called,
which also acquires the clock framework's sleeping mutex:

drivers/gpu/drm/rockchip/rockchip_drm_vop2.c:vop2_crtc_atomic_enable() {
    ...
		if (pll_hdmiphy) {
			if (!vp->dclk_src)
				vp->dclk_src =3D clk_get_parent(vp->dclk);

			ret =3D clk_set_parent(vp->dclk, pll_hdmiphy);
    ...
}

Calling sleeping functions from an atomic context can cause kernel warnings,
potential deadlocks, and system instability.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260706-dw-hdmi-qp=
-yuv-v2-0-b91beb33dedf@collabora.com?part=3D4

