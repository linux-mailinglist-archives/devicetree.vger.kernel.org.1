Return-Path: <devicetree+bounces-323212-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 5lHFL/DKTmrwUAIAu9opvQ
	(envelope-from <devicetree+bounces-323212-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:10:56 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 131A272ACEA
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 00:10:56 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aoQKQUDE;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323212-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323212-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B3CD6301ABB9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 22:10:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 462F93AC0C2;
	Wed,  8 Jul 2026 22:10:53 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462C53F8ED3
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 22:10:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783548653; cv=none; b=RCwi8mVR85LUZcfKTA8IDiAZaA7MYn/fWZSIOIBjoyURFtwW74TB0s3hALckRwuM5RnZzN1jZsycGqlXQiokqI4h35rxCMimH755RKgZFPNl4F8kz+TgXaA74VLLBPPRNVkMlti0FWxoNzAhggaXoqb/I2XbwccZsxvTNUMvSjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783548653; c=relaxed/simple;
	bh=3K3ECPRS7DdIfCpnSoVB/bze4pm65lYZ8MEA4EQ6Bog=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KEEGQCySr9ca+a0nJ6JxSV7TGGR5YgzWxL4ETSF43eifOc/c6mWb2i899Nh+5nZfT5LHWqPTrqR0i9gzhyT2lFv6bd/nHoR9rYvzLa2Z6IreOti7HfRIrdg1GXuRICif9gQyKqPIKAUDcGGrdnC+cW5MJSF9fpwIg8pv4sv5uqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aoQKQUDE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A2161F000E9;
	Wed,  8 Jul 2026 22:10:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783548650;
	bh=SWJ8sPmqHVbsLGhyEvK9o1+S/8Vl3p1/HlTYdnUF91o=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aoQKQUDE/L+0HRikPp2Q86ZpPDeixAnlGLun0xnVvVFvEhVg1LzHTim1BjMyGr5go
	 8b4jPAzeaBIHNvvVV+bCsyCxt0UByEgUuBxKKXd+SJec/r4GsDsj3P5Zm9P8ZSCKWC
	 ClqG0jiD0ZUUua8sMTkOYjOdM11OFHOAULqJt8jJgZtl9tIcSLkxx8RK3KqYSMW6x9
	 AMf09G1xTe1y1/5/q5D1GskEMuWId3jpUKzFS9rmMaZ6qunWKiO21sgRQ4HaHLVqZ7
	 jziSuBzPV0lBuQqymefBSx15PYxNGq1VmHyKabrLan930ycsKEP8m/6FKLPuduD4/Y
	 sJG5/y+1xGsEQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 07/14] drm/rockchip: vop2: Reset AXI and DCLK to
 improve robustness
Reply-To: sashiko-reviews@lists.linux.dev
To: "Cristian Ciocaltea" <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260709-dw-hdmi-qp-yuv-v3-7-a4a982a9f2e7@collabora.com>
References: <20260709-dw-hdmi-qp-yuv-v3-0-a4a982a9f2e7@collabora.com>
 <20260709-dw-hdmi-qp-yuv-v3-7-a4a982a9f2e7@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 22:10:49 +0000
Message-Id: <20260708221050.0A2161F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-323212-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[collabora.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:cristian.ciocaltea@collabora.com,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 131A272ACEA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:

Pre-existing issues:
- [High] Using devm_* APIs in component bind callbacks causes memory leaks,=
 duplicate resource registrations on unbind/rebind, and fatal bind failures=
. The new patch exacerbates this by requesting exclusive reset controls.
--

--- Patch [7]: [PATCH v3 07/14] drm/rockchip: vop2: Reset AXI and DCLK to i=
mprove robustness ---
commit 9b374dfb00e64eeab45f2b86b059f7b28a55a177
Author: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>

drm/rockchip: vop2: Reset AXI and DCLK to improve robustness

This patch adds assertions for the AXI reset in the CRTC disable path and t=
he
VP DCLK reset in the enable path. These optional resets are intended to lea=
ve
the hardware in a clean state and prevent random display output glitches on
platforms like RK3588.

> diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/d=
rm/rockchip/rockchip_drm_vop2.c
> --- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
> +++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c

[ ... ]

> @@ -2596,6 +2621,12 @@ static int vop2_create_crtcs(struct vop2 *vop2)
>  			return dev_err_probe(drm->dev, PTR_ERR(vp->dclk),
>  					     "failed to get %s\n", dclk_name);
> =20
> +		vp->dclk_rst =3D devm_reset_control_get_optional_exclusive(vop2->dev,
> +									 dclk_name);
> +		if (IS_ERR(vp->dclk_rst))
> +			return dev_err_probe(drm->dev, PTR_ERR(vp->dclk_rst),
> +					     "failed to get %s reset\n", dclk_name);
> +

[Severity: High]
This is a pre-existing issue, but will this exclusive reset control request
fail with -EBUSY on component rebind?

Because vop2_create_crtcs() is called from the component bind path in
vop2_bind() in drivers/gpu/drm/rockchip/rockchip_drm_vop2.c, any resources
allocated with devm_ functions tied to the platform device (vop2->dev) are
not released when the component is unbound.=20

When the component is rebound, the previous exclusive reset control is still
held. It appears this might cause devm_reset_control_get_optional_exclusive=
()
to deterministically fail with -EBUSY since the prior exclusive grab was
never released.

Should this use reset_control_get_optional_exclusive() instead and be
manually released in the unbind path, or use a component-specific managed
API?

>  		np =3D of_graph_get_remote_node(dev->of_node, i, -1);
>  		if (!np) {
>  			drm_dbg(vop2->drm, "%s: No remote for vp%d\n", __func__, i);

[ ... ]

> @@ -2955,6 +2986,11 @@ static int vop2_bind(struct device *dev, struct de=
vice *master, void *data)
>  		return dev_err_probe(drm->dev, PTR_ERR(vop2->pll_hdmiphy1),
>  				     "failed to get pll_hdmiphy1\n");
> =20
> +	vop2->axi_rst =3D devm_reset_control_get_optional_exclusive(vop2->dev, =
"axi");
> +	if (IS_ERR(vop2->axi_rst))
> +		return dev_err_probe(drm->dev, PTR_ERR(vop2->axi_rst),
> +				     "failed to get axi reset\n");
> +

[Severity: High]
This is also a pre-existing issue, but will requesting an exclusive reset
control tied to the platform device here also cause a fatal -EBUSY error
during a component rebind?

Similar to the dclk_rst allocation, vop2->axi_rst is allocated in vop2_bind=
()
with the devm_ API. When the DRM component master is unbound and then rebou=
nd,
vop2_bind() executes again and attempts to grab the exclusive reset control.
Since the previous devm_ allocation is tied to the persistent platform devi=
ce
and wasn't released during component unbind, will this fail immediately with
-EBUSY?

>  	vop2->irq =3D platform_get_irq(pdev, 0);
>  	if (vop2->irq < 0)
>  		return dev_err_probe(drm->dev, vop2->irq, "cannot find irq for vop2\n"=
);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-dw-hdmi-qp=
-yuv-v3-0-a4a982a9f2e7@collabora.com?part=3D7

