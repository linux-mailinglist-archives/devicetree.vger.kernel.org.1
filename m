Return-Path: <devicetree+bounces-309667-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v0npKao5KWqJSgMAu9opvQ
	(envelope-from <devicetree+bounces-309667-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:17:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 18DF06682E5
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 12:17:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=k0JTVeiN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309667-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309667-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9609D30E4CEE
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 10:15:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 692823EDE46;
	Wed, 10 Jun 2026 10:15:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9553EDE76
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 10:15:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781086551; cv=none; b=G6LXIwYSDMojLId71tG4EcmByhFOzsk4ObcwCpRiXIzOGiruhKX9eoY5ej7ojYLCnbT1nNpU3zSFdXhotrxTwWKhBnMkZoPpcCxacHRV/X/8/Jg0Z/8G8TbiKybwBqMjV1tMwbnOW+Z72dAC7n1ZjukpnNTUyTFnh6zIe5TMu78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781086551; c=relaxed/simple;
	bh=NrtbrHsbqjcuKqy75mbvY8XaB/5latQ043Q5aVfYoO0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XPfI/Z1qmeLavEPuCSVR1UaTDh21XUYri+91/GR8Q6eHnnqyAvM/Gm6bFf25Tn0zdl7SFok8cVQk2ZMIAusvJWH0Q8yi5jlMRurIqflA/bT3kO1d3W+tDx3GbdyQXINIDRIDQwZRYenVqtHKT4jKzDal8B5yHqTQ7N1DQh+1A9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0JTVeiN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 743E01F00893;
	Wed, 10 Jun 2026 10:15:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781086549;
	bh=Xl6B1n/zAl/JNPQJ9Rf+05hJwG6rsMeINuZzVBO1JXw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k0JTVeiNE+NZKqpRV/JHf4lU7U3EYsMly6ejylIx6uGv7krbgzrRGZhdhAM6j0MTg
	 H36UcUfvI5pkd/w4qM732oWNlKPgsXQpswdEOjEQsvwPBjn91V4/eTZhEMxbM1WPs0
	 Ll3s/45T+0pCuZUisO63EXiCs00JQQF0fhwGMyMmN5J85McOV8pzdsrPCSH3RaWi3V
	 tD5h3u8LBhHgQKa3wyLYYD8bLBT/fhTwIlMarXM1czwxzqn/FwzV27EOq8jclF9YA+
	 L4JpKczp7+tTOJc1knPpm3H/0DJvi8nshOoTBpsOvE5nANr1se7SAjbZ5UxvjhRA11
	 eaPJGJjKygRgg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add HINLINK H28K
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chukun Pan" <amadeus@jmu.edu.cn>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610100006.366963-3-amadeus@jmu.edu.cn>
References: <20260610100006.366963-3-amadeus@jmu.edu.cn>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 10:15:47 +0000
Message-Id: <20260610101549.743E01F00893@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309667-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:amadeus@jmu.edu.cn,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[jmu.edu.cn:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 18DF06682E5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added device tree `rk3528-hinlink-h28k.dts` fails to comp=
ile because it references undefined USB node labels.
--

commit 07ca37acc11522d114428bc076a631a2223bfa47
Author: Chukun Pan <amadeus@jmu.edu.cn>
Subject: arm64: dts: rockchip: Add HINLINK H28K

This commit introduces a new device tree for the HINLINK H28K (LinkStar
H28K) single-board computer based on the Rockchip RK3528 SoC. It adds
support for basic features including Ethernet, eMMC, MicroSD, and USB.

> diff --git a/arch/arm64/boot/dts/rockchip/rk3528-hinlink-h28k.dts b/arch/=
arm64/boot/dts/rockchip/rk3528-hinlink-h28k.dts
> new file mode 100644
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3528-hinlink-h28k.dts

[ ... ]

> +&uart0 {
> +	pinctrl-names =3D "default";
> +	pinctrl-0 =3D <&uart0m0_xfer>;
> +	status =3D "okay";
> +};
> +
> +&usb2phy {
> +	status =3D "okay";
> +};
> +
> +&usb2phy_host {
> +	phy-supply =3D <&vcc5v0_sys>;
> +	status =3D "okay";
> +};
> +
> +&usb_host0_ehci {
> +	status =3D "okay";
> +};
> +
> +&usb_host0_ohci {
> +	status =3D "okay";
> +};

[Severity: Low]
Are these USB node labels defined in the included rk3528.dtsi at this
revision? It appears that referencing &usb2phy, &usb2phy_host,
&usb_host0_ehci, and &usb_host0_ohci here will cause a DTC build failure
with a "Label or path not found" error because the underlying node labels
do not seem to exist yet in the included trees.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610100006.3669=
63-1-amadeus@jmu.edu.cn?part=3D2

