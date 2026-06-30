Return-Path: <devicetree+bounces-317520-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BoA+N/WJQ2rRagoAu9opvQ
	(envelope-from <devicetree+bounces-317520-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:18:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D346E2098
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 11:18:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="k/m9TGcY";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317520-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317520-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5653C3025A47
	for <lists+devicetree@lfdr.de>; Tue, 30 Jun 2026 09:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2B1835F5F8;
	Tue, 30 Jun 2026 09:18:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1D0035C1AD;
	Tue, 30 Jun 2026 09:18:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782811118; cv=none; b=pbxVvuzrJmpGr/oSgSWkaYJbQ/9eHFy/S2D+F//CBJO16xlPsJ6LIe7amBKEgUrPQ6ZpCS8lZ/FT9VIuwgqJJB8cKeP58C6OkQKhk06SSqHKgA5SkPTfxSCx6X2MjxbOdPDuq4Wabw+DQM5g1+wVUd66EfEEh0ZkHvX4+vftcl8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782811118; c=relaxed/simple;
	bh=NgCcF+DWkrvNa8uWNLG9CT7iyPGffkmholjY9I52tPA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mFbpbTnC18TGc5gDnIoqz+Tbjkm76uB7OYqKBnYNcm0LY9tI4pVENAM1nMHBvp/NB7Szkz5fv1gbP5u2dWp7Df1zsCBCZDNq3/Km5GMRHMBYjPk24pry3D0G0IpuKDvo1GMszvaCk+TOtKx7hZZ4Me23anMFHcIbvA/Y2WjMNTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k/m9TGcY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 472D21F00A3A;
	Tue, 30 Jun 2026 09:18:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782811117;
	bh=+rs0ZUF0if/Za3Uiro3OrWLPieYVGjbTD0wnfhoEsq0=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k/m9TGcY2lNPGdxdvQg/CTDjj7CAcDHJJzGSGpe4ymRjkBosds1MY+MPV+Jx5Gs6o
	 0v/ow/eHvFDgsNQBCiHGJKiTL2ctlkQbEzEIiapRyCWfPnXugtqVz08h8tzVJJDRLg
	 Igq1choNcdTNjuuK5fYuYyRV78JoO5IDmuSHTNVvrpyUiWMDWKVmlyoSVsP+8sDdJN
	 sXAV2wQhk6SrrWPhoLv3sU5elQbzLo2JB5CMnUSkwdT48LXXL+aF2FMJ4sEiGGGzIN
	 BWkAEw3ChIQ0ZoW/0PxXUyUcF9eZKLmZ4blzWe2V1Uu9D0oYAw6FciVg3iXEzGsb3n
	 0ZltdEAOGsD0Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 09/19] net: bcmgenet: use
 platform_device_set_of_node()
Reply-To: sashiko-reviews@lists.linux.dev
To: "Bartosz Golaszewski" <bartosz.golaszewski@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, Frank.Li@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, imx@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260629-pdev-fwnode-ref-v2-9-8abe2513f96e@oss.qualcomm.com>
References: <20260629-pdev-fwnode-ref-v2-0-8abe2513f96e@oss.qualcomm.com>
 <20260629-pdev-fwnode-ref-v2-9-8abe2513f96e@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 30 Jun 2026 09:18:36 +0000
Message-Id: <20260630091837.472D21F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-317520-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:bartosz.golaszewski@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:imx@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:email,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 71D346E2098

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Mixing goto-based error handling and scope-based cleanup (__free) i=
n the same function.
--

commit 6b5f2b27db1f7295943bada498301e27ac1e7653
Author: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>

net: bcmgenet: use platform_device_set_of_node()

This commit encapsulates the assignment of the OF node for dynamically
allocated platform devices with the provided helper. This is done ahead
of reworking the reference counting logic for platform devices.

> diff --git a/drivers/net/ethernet/broadcom/genet/bcmmii.c b/drivers/net/e=
thernet/broadcom/genet/bcmmii.c
> index a4e0d5a682687..451b23a039ceb 100644
> --- a/drivers/net/ethernet/broadcom/genet/bcmmii.c
> +++ b/drivers/net/ethernet/broadcom/genet/bcmmii.c
[ ... ]
> @@ -490,10 +490,14 @@ static int bcmgenet_mii_register(struct bcmgenet_pr=
iv *priv)
>  	/* Retain this platform_device pointer for later cleanup */
>  	priv->mii_pdev =3D ppdev;
>  	ppdev->dev.parent =3D &pdev->dev;
> -	if (dn)
> -		ppdev->dev.of_node =3D bcmgenet_mii_of_find_mdio(priv);
> -	else
> +
> +	if (dn) {
> +		struct device_node *np __free(device_node) =3D bcmgenet_mii_of_find_md=
io(priv);

[Severity: Low]
Does introducing a __free() variable in a function that already relies on
goto-based error handling conflict with the kernel's cleanup design guideli=
nes?

Looking at bcmgenet_mii_register(), the function uses goto out for its error
paths. According to include/linux/cleanup.h, the expectation is that usage =
of
goto and cleanup helpers is never mixed in the same function. It is general=
ly
recommended to either convert all resources that need a goto cleanup to
scope-based cleanup, or convert none of them, to avoid creating confusing
ownership semantics.

> +
> +		platform_device_set_of_node(ppdev, np);
> +	} else {
>  		ppd.phy_mask =3D ~0;
> +	}
> =20
>  	ret =3D platform_device_add_resources(ppdev, &res, 1);
>  	if (ret)

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629-pdev-fwnod=
e-ref-v2-0-8abe2513f96e@oss.qualcomm.com?part=3D9

