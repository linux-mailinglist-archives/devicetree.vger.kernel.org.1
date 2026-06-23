Return-Path: <devicetree+bounces-314985-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id JUWyJULsOmqELggAu9opvQ
	(envelope-from <devicetree+bounces-314985-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:27:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC876BA015
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 22:27:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iClIIXoE;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-314985-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-314985-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DC8403007A7C
	for <lists+devicetree@lfdr.de>; Tue, 23 Jun 2026 20:27:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03FDD39E9DD;
	Tue, 23 Jun 2026 20:27:40 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E39FB39E9CF
	for <devicetree@vger.kernel.org>; Tue, 23 Jun 2026 20:27:38 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782246459; cv=none; b=G2OtGF0QEeA5oo9xiHs45nG5z6Ptrn6yU/+pliyTWQ70lrhrP8NutmiyPVyr8I4kJEDvUYVbaygRnKYp1uvxfuePRxp5nvaPV+uezA5htbxlUvk38iJlnatnsaymbKbzlRp7Hnvlto0vX3Hu64TohEfAw1iJLG/iJvtLDFyQq1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782246459; c=relaxed/simple;
	bh=ay5LA60hbr7FmCpoFi9vAlskKLg5kYP19eBm8QgiZ6A=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=mOjSND7t701Dio1SEAOoj18pDWICfzcm1b/9MtwXxtFj7HmkDvrdyKbqNdtu82IZQaWgS+OMJe2iz4cKL5I4rn+iDto3cUyB4rQ5uUFVzZAKIF2/RClQRL4flDHStF9OsB7rPZizoQCbB4xpqFDaIlO9o789tCKNIP4nMteKrR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iClIIXoE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6331C1F000E9;
	Tue, 23 Jun 2026 20:27:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782246458;
	bh=pmuoR3I2zHcAeC/ryuf6YmRjcW4IobloCZbpijQvNv4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iClIIXoEbnbZIKa7+ku73VXQQ/59kfoqvgDD4i3ryO7qbhdvgrKm1Vxn+X2QzjuMK
	 qUP2SvA2CRjFbVLZHuj3XMKmk5eGozHtna5R1eEsC06DtMIOosj5v7TmrFogTPtVqh
	 JBBd1Iesiqdc97gFlkj85bvK4FbMlkXHn6K3NZYph3AtMhscJ3YuchY/U5v9iEHiu+
	 24PGD87WkSKD/BJXDdZuMXsxvx6EBKMcX69CioG2dbWVMEOJJlDmQGwFG7NrHaGUIS
	 j0KfH48LelbDy9FsFmwCNcG6C4bfoF9BmRDy+kK7UzXEAMBOjplEbxmeDWzysxbEEG
	 L94SCk6EOznQw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 5/7] arm64: dts: renesas: r8a779g0: Add DSC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomi Valkeinen" <tomi.valkeinen+renesas@ideasonboard.com>
Cc: robh@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260615-rcar-du-dsc-v5-5-aed1a28610e4@ideasonboard.com>
References: <20260615-rcar-du-dsc-v5-5-aed1a28610e4@ideasonboard.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 23 Jun 2026 20:27:37 +0000
Message-Id: <20260623202738.6331C1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-314985-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,mailbox.org:email,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tomi.valkeinen+renesas@ideasonboard.com,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:tomi.valkeinen@ideasonboard.com,m:wsa@sang-engineering.com,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AAC876BA015

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] The rcar_dsc driver does not deassert its hardware reset, leaving =
the DSC block permanently in reset.
- [Medium] Mixing devm_drm_bridge_add with manual pm_runtime_disable create=
s a devres cleanup ordering bug and a use-after-disable window.
--

commit ffeafc5aca0f12828e91ec48615ef59b3d5989f2
Author: Marek Vasut <marek.vasut+renesas@mailbox.org>

arm64: dts: renesas: r8a779g0: Add DSC

This commit adds the Renesas DSC Display Stream Compression bridge to the
r8a779g0 device tree. The node is placed between the DU and DSI1 units to
make the DSI1 pipeline functional.

> --- a/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a779g0.dtsi
> @@ -2298,6 +2298,35 @@ du_out_dsi0: endpoint {
[ ... ]
> +		dsc: bridge@feb8d000 {
> +			compatible =3D "renesas,r8a779g0-dsc";

[Severity: Medium]
Does the driver backing this device introduce a devres cleanup regression?

Looking at rcar_dsc.c, rcar_dsc_probe() uses a managed function for the
bridge but manually enables PM runtime:

drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c:rcar_dsc_probe() {
    ...
    pm_runtime_enable(&pdev->dev);
    ret =3D devm_drm_bridge_add(dev, &dsc->bridge);
    ...
}

Then rcar_dsc_remove() manually disables PM runtime:

drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c:rcar_dsc_remove() {
    pm_runtime_disable(&pdev->dev);
}

If the driver is unbound, rcar_dsc_remove() manually calls
pm_runtime_disable(). Only after this returns do the devres handlers
run to call drm_bridge_remove().

If a DRM atomic commit executes during this window, rcar_dsc_atomic_enable()
will call pm_runtime_get_sync(). Because PM runtime is disabled, won't this
fail, trigger a warning, and leave the hardware unpowered?

Using devm_pm_runtime_enable() instead would guarantee the correct reverse
cleanup order.

> +			reg =3D <0 0xfeb8d000 0 0x400>;
> +			interrupts =3D <GIC_SPI 559 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&cpg CPG_MOD 2819>;
> +			power-domains =3D <&sysc R8A779G0_PD_ALWAYS_ON>;
> +			resets =3D <&cpg 2819>;

[Severity: High]
Is there a regression here that leaves the DSC block permanently in reset?

Looking at rcar_dsc_probe() in drivers/gpu/drm/renesas/rcar-du/rcar_dsc.c,
it doesn't appear to request or explicitly deassert the hardware reset line
defined here.

If the DSC block is left in its initial reset state, won't it fail to pass
pixel data and break the display pipeline?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-rcar-du-ds=
c-v5-0-aed1a28610e4@ideasonboard.com?part=3D5

