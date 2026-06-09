Return-Path: <devicetree+bounces-309064-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Pa46Ed8dKGoA+QIAu9opvQ
	(envelope-from <devicetree+bounces-309064-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 16:06:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9C9660D82
	for <lists+devicetree@lfdr.de>; Tue, 09 Jun 2026 16:06:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=g9xFYFwD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309064-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309064-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4B374300DD58
	for <lists+devicetree@lfdr.de>; Tue,  9 Jun 2026 13:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4518E3FFAD7;
	Tue,  9 Jun 2026 13:57:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339061E1DE5
	for <devicetree@vger.kernel.org>; Tue,  9 Jun 2026 13:57:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781013463; cv=none; b=mfQyRLI3wx3eLxUGX2DD79bmx6XM1NNvgUIbC9mXEbkef1SP26pg69WTMLuD9d6cecguH9qNxK4bLJqSQo/gdHI8Ms0sAaJ+C8oOhzswLBCu6uB/ZfaS4lPb6716BPyvYDW+OGRzHSsL2nXdDdZHt9qfF6+8eA2TfjwiEQL3Pqk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781013463; c=relaxed/simple;
	bh=Fn98qs1rmwUnRqB7koH6wMenygGQNr1Aq/VBOxqJNvI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rUvb7x8efFg7q38rXATRqdYX0c7GtMBryG3eIxnOTWLwlDY/iXAkLmdpX05Y7qG7VsHsPpRo08jMQUuqf8d72les9YwYReD8pKDQJJHJqHBQhVSwq2jGpVffy2mnvdnaOkFkZF5x/4HsepECv+VU7Jzqsr18fmqbk+U44dzmhEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9xFYFwD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F8901F00893;
	Tue,  9 Jun 2026 13:57:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781013461;
	bh=i+G16XblBaC/yX3OX/rRLaCm7kn5fN2UpHrTtk72C3A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=g9xFYFwDL70WXQ4+ih3NdEMgvV8W+teKop3nB7NGJorQPxv/gKTABVH9REws1imY5
	 /O7c9gCr29f2QQRTDHMGEfhF+w0C9cEoz0WQyak9+aMsy/urgJtXJlQWtPWGVNg5zr
	 bipw0PHHiXVpzX1GAse3qzeAGWwcB2CvyyY8AEmYHmzgwvKDWWBUWCRymqW84P9AcT
	 ROBxBgfATtIyjY3PgSN+NqJSeUZr4yFu+B+ofvJbxA0eGkqtkIRSCQOmbQ5xtyL6ez
	 WMggIzjvmFQoMsawHdGXG6WYGX1sWZvWMwtFIAXda30cm67hyUMBSE8g7vq8b2Dip7
	 11MqYHEN0W13Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/5] arm64: dts: renesas: r9a09g077: Add DU node
Reply-To: sashiko-reviews@lists.linux.dev
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, wsa+renesas@sang-engineering.com, robh@kernel.org
In-Reply-To: <20260609125353.401124-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20260609125353.401124-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 09 Jun 2026 13:57:40 +0000
Message-Id: <20260609135741.9F8901F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-309064-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,renesas.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:wsa+renesas@sang-engineering.com,m:robh@kernel.org,m:prabhakarcsengg@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AA9C9660D82

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The `du` node is missing the `resets` property, which will cause t=
he DRM driver to unconditionally abort probing.
- [High] The `du` node references an unregistered clock module ID (`<&cpg C=
PG_MOD 1204>`), which will fail to resolve during probe.
- [Low] The device tree macro `R9A09G077_LCDC_CLKD` is referenced in the `c=
locks` property of the `du` node, but it is undeclared, causing a dtc synta=
x error.
--

commit b1b9bb2b4166cd4bcef17245d412315735a742e6
Author: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

arm64: dts: renesas: r9a09g077: Add DU node

Add Display Unit (DU) node to SoC DTSI.

> diff --git a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi b/arch/arm64/boot=
/dts/renesas/r9a09g077.dtsi
> index 29ecd0189ce72..32a3fb1187000 100644
> --- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> @@ -1269,6 +1269,30 @@ sdhi1_vqmmc: vqmmc-regulator {
>  			};
>  		};
> =20
> +		du: display@920c0000 {
> +			compatible =3D "renesas,r9a09g077-du";
> +			reg =3D <0 0x920c0000 0 0x10000>;

[Severity: High]
Are we missing the resets property for the du node here?

The rzg2l-du DRM driver unconditionally calls devm_reset_control_get_shared=
()
during rzg2l_du_crtc_create(). Because the resets property is absent in this
node, the call will fail and return -ENOENT. This breaks the driver probe
and prevents the display from initializing.

> +			interrupts =3D <GIC_SPI 781 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&cpg CPG_CORE R9A09G077_CLK_PCLKAH>,
> +				 <&cpg CPG_MOD 1204>,

[Severity: High]
Does this reference an unregistered clock module ID?

The module clock ID 1204 does not appear to be registered in the CPG driver=
's
module clock array (r9a09g077_mod_clks). When the display drivers attempt to
acquire this clock, the clock framework will fail to resolve it and return
-ENOENT, which will prevent the display pipeline from initializing.

> +				 <&cpg CPG_CORE R9A09G077_LCDC_CLKD>;

[Severity: Low]
Is the device tree macro R9A09G077_LCDC_CLKD declared?

It seems this identifier is referenced in the clocks property but is never
defined in the bindings header. The C preprocessor will leave the identifier
unexpanded, causing dtc to encounter a raw string where it expects a cell
integer value. This throws a syntax error and fails the device tree
compilation.

> +			clock-names =3D "aclk", "pclk", "vclk";
> +			power-domains =3D <&cpg>;
> +			renesas,vsps =3D <&vspd 0>;
> +			status =3D "disabled";

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260609125353.4011=
24-1-prabhakar.mahadev-lad.rj@bp.renesas.com?part=3D2

