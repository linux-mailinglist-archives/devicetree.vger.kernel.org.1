Return-Path: <devicetree+bounces-314980-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7oaVOanoOmoNLAgAu9opvQ
	(envelope-from <devicetree+bounces-314980-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:12:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC7E6B9E13
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:12:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IRGy6bG3;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314980-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314980-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 53CCB302844E
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:11:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB4F639A048;
	Tue, 23 Jun 2026 20:11:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C69739769D
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:11:36 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782245497; cv=none; b=KkkTnojUfX5Pex96bAeOdFMB6LnqS5pN+tcmCMtdslsjcutBBdj76PjDKigclJPpCTV0hnzrQzK6BOyO5yn/+lGoqRTH/2quKiaBNKLTcCTRvemI8RRTdOO0spheGIfLc/Alvlz1m7RMryo2ZJFwlAsU3NiKiPb8KcwH02Tz/hg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782245497; c=relaxed/simple;
	bh=k2e7PzmT2hrGRQdgOKTY4mg+Pi3LGo9rRT7mPuNSOMM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=uleOv1Tjqobz2fQ3bfTpOJvVoEtoO2Ke0vML8o8e9Ae8fT1KdsIcupkZg6FDtYe7jqgUYC9U2MOeypfelVYF+oNEkaMqqiM5bFmfy/s+WohgpbO3+zESHhqSCyKCRTF3rPoihfIVpkXhy9j6HyBrXzakmnMZV0XWpeDEDvVOR78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IRGy6bG3; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 15BF61F00ACA;
	Tue, 23 Jun 2026 20:11:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782245496;
	bh=E4OQBvD/43yxCYHKK6cL5tCtMdhI9W+U0R4DGTGo988=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=IRGy6bG3m9Px4v20b7iKO8eq+tdgUTXzQSGHGL/ZCR2FRg+/iDdfOnVVXHN14FXZy
	 CqtrQ6prE0S1Y+vbaoKcMw90RlZOj5JdRgSR3NtuF+hwiLSc8QlxTF42L6G2oUkUe0
	 F7b9B3R1b9s7l2LwVI+dhhKyYI52JBDNwWt/20jxeYmCBWReggrw6WyCXhbZeNv75m
	 VfmASingrlCV+g6Ym5p54gbY6jZlxsq2QqNrvF71AbLHJFAcjt0IHaqDoT7t510LwG
	 To4sWDL3uBiraYF2ZrmLFKYGfzl7ZGDX1PXVsaKuCoGMq0lNAp/u31euXAZgbS6Kt3
	 TpZyGJfGmFC9g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 05/10] drm/bridge: synopsys: dw-dp: Support software
 triggered OOB HPD
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: dri-devel@lists.freedesktop.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260612-synopsys-dw-dp-improvements-v3-5-dc61e6352508@collabora.com>
References: <20260612-synopsys-dw-dp-improvements-v3-5-dc61e6352508@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 20:11:35 +0000
Message-Id: <20260623201136.15BF61F00ACA@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-314980-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,collabora.com:email];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:dri-devel@lists.freedesktop.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DFC7E6B9E13

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] Reference leak of the downstream bridge in `dw_dp_bind()` on both =
success and error paths.
- [High] The driver incorrectly treats the absence of a downstream bridge a=
s a fatal error, breaking backward compatibility.

Pre-existing issues:
- [High] Missing `cancel_work_sync()` for `dp->hpd_work` during unbind lead=
s to a Use-After-Free.
--

commit 121b9fc711d52bcdbd8b50a6dc50a5308864d167
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

drm/bridge: synopsys: dw-dp: Support software triggered OOB HPD

Add support for USB-C DP AltMode out-of-band hotplug handling. The
handling itself is implemented in the platform specific driver as the
registers to force HPD state are not part of the Designware DisplayPort
IP itself. Instead the platform integration might provide the necessary
functionality to mux the HPD signal.

> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-dp.c b/drivers/gpu/drm/br=
idge/synopsys/dw-dp.c
> index 98cff435dfb87..7fa38145e35ce 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-dp.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-dp.c

[ ... ]

> @@ -2078,6 +2107,13 @@ struct dw_dp *dw_dp_bind(struct device *dev, struc=
t drm_encoder *encoder,
>  		goto unregister_aux;
>  	}

[Severity: High]
Does dw_dp_bind() leak the reference to the downstream bridge?

of_drm_get_bridge_by_endpoint() returns a bridge pointer with an incremente=
d=20
reference count, which is stored in next_bridge:

	next_bridge =3D of_drm_get_bridge_by_endpoint(dev->of_node, 1, 0);
	if (IS_ERR(next_bridge)) {
		ret =3D PTR_ERR(next_bridge);
        ...

The reference is not dropped after drm_bridge_attach() succeeds, nor is it=
=20
dropped on the error path before jumping to unregister_aux. Could this leak=
=20
the reference on both success and error paths, preventing the downstream=20
bridge from cleanly unloading?


[Severity: High]
Should the absence of a downstream bridge be treated as a fatal error?

If the device tree defines the DP controller as the end of the display chain
(i.e., no endpoint 1 is defined), of_drm_get_bridge_by_endpoint() returns
-ENODEV. The code unconditionally aborts initialization here instead of=20
gracefully ignoring it:

	next_bridge =3D of_drm_get_bridge_by_endpoint(dev->of_node, 1, 0);
	if (IS_ERR(next_bridge)) {
		ret =3D PTR_ERR(next_bridge);
		dev_err_probe(dev, ret, "failed to get follow-up bridge.\n");
		goto unregister_aux;
	}

Could this break backward compatibility and cause the driver to fail to pro=
be=20
on boards that do not define a downstream bridge?

> =20
> +	if (dw_dp_is_routed_to_usb_c(encoder)) {
> +		dev_dbg(dev, "USB-C mode\n");
> +
> +		if (dp->plat_data.hpd_sw_sel)
> +			dp->plat_data.hpd_sw_sel(dp->plat_data.data, 1);
> +	}
> +
>  	dw_dp_init_hw(dp);

[ ... ]

[Severity: High]
This isn't a bug introduced by this patch, but does dw_dp_unbind() leave=20
pending work scheduled?

During bind, the driver initializes dp->hpd_work and schedules it in the=20
interrupt handler dw_dp_handle_hpd_event(). However, dw_dp_unbind() does no=
t=20
cancel it:

void dw_dp_unbind(struct dw_dp *dp)
{
	drm_dp_aux_unregister(&dp->aux);
}

Because the dp context is allocated with devm_drm_bridge_alloc(), it is=20
automatically freed shortly after unbind returns. If the scheduled work=20
executes after dp is freed, could it cause a use-after-free in=20
dw_dp_hpd_work()?

Should cancel_work_sync(&dp->hpd_work) be added to dw_dp_unbind()?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612-synopsys-d=
w-dp-improvements-v3-0-dc61e6352508@collabora.com?part=3D5

