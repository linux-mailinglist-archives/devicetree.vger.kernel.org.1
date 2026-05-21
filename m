Return-Path: <devicetree+bounces-301405-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qBPhMC02D2qSHgYAu9opvQ
	(envelope-from <devicetree+bounces-301405-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 18:43:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 39ED25A9811
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 18:43:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E27203308FE6
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 15:46:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5772730E821;
	Thu, 21 May 2026 15:46:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CkZCplkE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E18B320CAD
	for <devicetree@vger.kernel.org>; Thu, 21 May 2026 15:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779378386; cv=none; b=J/ZjJFQf3z6q4F4VEye0b+gIvsbdvAkP1BCoqPhjuY/+SUSUT6lzYgnOBaCAwK4FtKL7w0E4RXMvKG6mBlD51IBS4lRmXxspulaDkCzXvAMl9bUlb8mXrOvJwlEPeotzXxsdEjHdOOF/+ry/5Hgju1O81MuG+0tOMNawv5vNDcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779378386; c=relaxed/simple;
	bh=F/GXrZ8GO3Ieu1FQqr9QfJ8dX7Kq7CeKyq1eV9E3snI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=YlFgkUXqZXmDI0azLPXKf1XExtRPit9aLZd4I3FogsT0fFzlNqfnjtplSB3VSRsXx/Sc8l2nP80cAuGaVjrwa+QL4d5dg8bN6EuFImaqTqv25VAW1kFqki+s/aGMYgksXJL66PrWBRA9EbNXawKxYd516i5l2IHSEt+/uxccUwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CkZCplkE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF4D01F000E9;
	Thu, 21 May 2026 15:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779378384;
	bh=sZJyAU4qqVVGwkL1+wKDI4OpCf8DpmLoxz00E6qvRVg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=CkZCplkEm8tQGVjeV+dKESsWiIXdoavqdPGVRcWkDPZgz5g1/L5CE8Ze5ltlAsoVo
	 /ghbxuicImwYIQOqIh4GZhyJVTjXKAOT6UA24vy4D57plAoWIwKJGZgPdU9KhFcImv
	 g/WwjzRie03w7B4TmuxbYtGtYoMrWQDaBuuHnzW2Hy6upv8Ar7sShYup1ZGkPgLFm0
	 CMtY12hI7azzIAaSg4v1lTXVRcAResLPe08wh9bQyFeATdyeayZO8ozVNyhdiPWdp2
	 jrx9xVQmhEdh1piRVpTsQn67cyvSyy0ZYBUbdRLSC6gzKM21dTPcGdD/n+gKsYKxiR
	 ktTqmJOBTKcbQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v1 15/15] arm64: dts: ti: k3-am62-verdin: Add Mezzanine
 with LG LP156WF1 LVDS panel
Reply-To: sashiko-reviews@lists.linux.dev
To: "Vitor Soares" <ivitro@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260521150038.103538-32-ivitro@gmail.com>
References: <20260521150038.103538-32-ivitro@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 15:46:24 +0000
Message-Id: <20260521154624.AF4D01F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301405-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,toradex.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 39ED25A9811
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The device tree overlay omits the required `ti,companion-oldi` prop=
erty on the secondary OLDI node (`&oldi1`), violating the AM625 OLDI bindin=
gs and causing the driver to instantiate a dormant, unused DRM bridge.
--

commit bcc76df5d3e59d5997103d74f1e60ce4d408c93a
Author: Vitor Soares <vitor.soares@toradex.com>

arm64: dts: ti: k3-am62-verdin: Add Mezzanine with LG LP156WF1 LVDS panel

This commit adds a device tree overlay for the Verdin Development Board to
enable the LG LP156WF1 15.6 inch dual-channel LVDS panel. The panel is
connected via the AM62 OLDI0 and OLDI1 interfaces operating in dual-channel
mode.

> diff --git a/arch/arm64/boot/dts/ti/k3-am625-verdin-dev-mezzanine-lvds-lg=
-lp156wf1.dtso b/arch/arm64/boot/dts/ti/k3-am625-verdin-dev-mezzanine-lvds-=
lg-lp156wf1.dtso
> new file mode 100644
> index 0000000000000..a4d6cbe9ff3b9
> --- /dev/null
> +++ b/arch/arm64/boot/dts/ti/k3-am625-verdin-dev-mezzanine-lvds-lg-lp156w=
f1.dtso

[ ... ]

> +&oldi0 {
> +	ti,companion-oldi =3D <&oldi1>;
> +	status =3D "okay";
> +};

[ ... ]

> +&oldi1 {
> +	ti,secondary-oldi;
> +	status =3D "okay";
> +};

[Severity: Low]
Does this node also need the ti,companion-oldi property to comply with the
ti,am625-oldi.yaml bindings for dual-link mode?

While the display continues to function because oldi0 correctly references
oldi1, the absence of ti,companion-oldi here causes get_oldi_mode() to fall
back to OLDI_MODE_SINGLE_LINK for oldi1.

This results in the driver unnecessarily allocating a dormant drm_bridge
instance that is never attached to an encoder.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521150038.1035=
38-17-ivitro@gmail.com?part=3D15

