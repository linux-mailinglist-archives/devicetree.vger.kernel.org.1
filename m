Return-Path: <devicetree+bounces-312703-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id QSDOIDC1MWpxpQUAu9opvQ
	(envelope-from <devicetree+bounces-312703-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 22:42:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CEA5B695457
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 22:42:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=BUI0AdPa;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312703-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312703-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DAA663046CE8
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 20:42:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05AF93939B4;
	Tue, 16 Jun 2026 20:42:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 023C33914E4
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 20:42:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781642541; cv=none; b=R16okAGjU9F4MBzCH+/C6IWJF1RoqcGWMzrDblkEfiRwAsqyMPRjyuMzKJu+0c00Z67qGF3KSFD70hv3bxRojPd9dTkrPJ40GHqcVUEd5HpfU6QYBxrOgryDTVq4W5Kg+nE0onTRFSuxEqHsmjgzrflyLoakXlfZV96ENbyZkQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781642541; c=relaxed/simple;
	bh=Or9bAfCNwkEIuN1ANhhLmy2yIYWdepEhgD2OGOZ6fLs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=EIcxwWF9PLiAYsLFFD4T4ZoWS38N+lhT3KsGV8pMFGrUzE5OCHcni1kpRKaxNj58Zgp7Nzy9TkaarcoDAbGEl91QIm/dKvod1ESZAWOcNJSe967qFTGiBNphlKBlgD5YtP4mdtRCbjV/7seNgz7eVoM/HXNyMcEBOr/0MBRWd9E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUI0AdPa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53B6D1F000E9;
	Tue, 16 Jun 2026 20:42:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781642540;
	bh=5iZpV9hLBV39baHVa+FzcvMC+lt+OAI4sywaWCGFyLc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=BUI0AdPaMAwaPeRp5a5zjbSGJ5GSergoRUe6VXocVYAJvVEaVguYodEP8obcl5O7c
	 6SWIEnVqIPWxVafWZVkllhIo2LQkcp/bfbbju6iWOqRNiy7wRCPUGBnVv7N8Lzhz/F
	 Azp3ZmXdK++TKDNeFmETF39yOTTOiRJ76l7sN0lEpDOn4fQrZbFz3F9u/QbgJ75ENy
	 q85s0OfBSIfOgzKA85ph8RDn6EzN4M1WOfhYNW04l6CLqb/GXGRAgqq3CdEHPt/CyB
	 XHwCOztTJ1AX/xJxk6g9N5hg5zo65fXCPi01uInanX1aI1yNqKBaWiHaCuDxmfV5JI
	 Kz/nrlpYV6H7A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v4 12/12] ARM: dts: zte: Add a syscon-reboot for
 zx297520v3 boards
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?U3RlZmFuIETDtnNpbmdlcg==?= <stefandoesinger@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260616-zx29clk-v4-12-ca994bd22e9d@gmail.com>
References: <20260616-zx29clk-v4-12-ca994bd22e9d@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 20:42:19 +0000
Message-Id: <20260616204220.53B6D1F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-312703-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:stefandoesinger@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CEA5B695457

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `syscon-reboot` node is incorrectly defined at the root level u=
sing the explicitly deprecated `regmap` property.
--

commit afa99cf55be8056135e61b54fc719550822bda85
Author: Stefan D=C3=B6singer <stefandoesinger@gmail.com>

ARM: dts: zte: Add a syscon-reboot for zx297520v3 boards

This commit adds a syscon-reboot node to the zx297520v3 device tree. It all=
ows
resetting the board by writing a value to a register exposed by the topclk
syscon.

> diff --git a/arch/arm/boot/dts/zte/zx297520v3.dtsi b/arch/arm/boot/dts/zt=
e/zx297520v3.dtsi
> index a2b6909e7434d..013ece51c2a09 100644
> --- a/arch/arm/boot/dts/zte/zx297520v3.dtsi
> +++ b/arch/arm/boot/dts/zte/zx297520v3.dtsi
> @@ -33,6 +33,13 @@ osc32k: osc32k {
>  		#clock-cells =3D <0>;
>  	};
> =20
> +	syscon-reboot {
> +		compatible =3D "syscon-reboot";
> +		regmap =3D <&topclk>;

[Severity: Low]
Does this use a deprecated property? According to the syscon-reboot device
tree bindings, the regmap property is explicitly deprecated.

The documented modern requirement is to define the syscon-reboot node as a
child of the system controller node. Introducing new nodes using deprecated
bindings can trigger make dtbs_check warnings.

To resolve this, the syscon-reboot node could be moved to be a child of top=
clk,
and topclk's compatible string could be updated to include "simple-mfd" to
ensure the driver core automatically probes the child node.

> +		offset =3D <0x0>;
> +		mask =3D <0x1>;
> +	};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-zx29clk-v4=
-0-ca994bd22e9d@gmail.com?part=3D12

