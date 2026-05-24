Return-Path: <devicetree+bounces-302330-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IK+GItlYE2q1+wYAu9opvQ
	(envelope-from <devicetree+bounces-302330-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 22:00:25 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D99975C40FF
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 22:00:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2E75630075EB
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 19:58:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD1183033E1;
	Sun, 24 May 2026 19:58:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buC+d5vZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A52A2D23A6
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 19:58:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779652711; cv=none; b=PlhOEb0ZECucXaGxRROS1Pan0rVNaQ9WqE9vALk0wtoyff3HiPM4HyxkcxB4+yQfEFt/GbZsW06JNRKf1rsUgijim9WDyEUwvTYZtDgADYtUvWErUFwPQCESjvA3cAR0+JEj5h/8DQC4ZZHUjH8aBARYsKetR25uilzKfkopTws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779652711; c=relaxed/simple;
	bh=AuuluKqQ6RJt4lmjrsWJqn7dWzmuDzzWEkUJMLwkuuo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=t1FZvsD8Cd1s8ZpP4Sk01Gjox2yfzcJOLpOIqJRO9RBZZn7ZXZwy271/Px71DaZoEuiMfgQjQ46dPNxOJ9UmXBpPZBbFqsQyceIoLl8abEcOZ0MN9sL3AuabuyUzc8vf+WSo2WAj1k0nXuflSxMgtpdXkSFywgEMYjFmuFawutw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buC+d5vZ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 960401F000E9;
	Sun, 24 May 2026 19:58:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779652710;
	bh=0Bbf6796slT4/YxnE1glv+NK1r3GRwv7QJNmxW76rZ4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=buC+d5vZEbL9mJcD+VcPFButIYfGSzQZTKje/t8sGBmvPoAmpRvIvvr4ptN/zKpDx
	 BD2AzuohxoZBxWBdrGOROATMEelOFgn31CkuDwrBxWCFoQ18ADtImP4AITQ4cCYScw
	 oyX5jvkOOzPW3wCGK1pRUQfbZ1h6WXzG06nHQ6PexbWvaalM/WUPPHOsGnCFQ1hhLj
	 zNiHyPLs/HxkfNwhRB9Cvg6AYKnLdSxHEwiAn6+bOSFprnlU2l1ErTNC+rKxzaFIu+
	 RpaKnqYMVYUuZQmu/jP/ZcfVUfPX1gL5NEwmygI8mA+u94RaSNFVLtKQ7dmvYjb7uw
	 5aINcnZV/Wiwg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: Document Renesas
 RZ/G3L LVDS encoder
Reply-To: sashiko-reviews@lists.linux.dev
To: Biju <biju.das.au@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com
In-Reply-To: <20260524194457.479681-2-biju.das.jz@bp.renesas.com>
References: <20260524194457.479681-2-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 May 2026 19:58:29 +0000
Message-Id: <20260524195829.960401F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-302330-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,108a0000:email,sashiko.dev:url,renesas.com:email,0.0.0.10:email];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: D99975C40FF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The compatible string 'renesas,r9a08g046-lvds-cmn' is used in the d=
t-binding example but is not documented.
- [Low] The parent node 'lvds-cmn' in the example lacks a 'ranges' property=
, breaking address translation for its child nodes.
--

commit be595c0db2d85d9ea1396f0f30ac7ad75f4101fe
Author: Biju Das <biju.das.jz@bp.renesas.com>

dt-bindings: display: bridge: Document Renesas RZ/G3L LVDS encoder

Documents the LVDS encoder IP found on the RZ/G3L SoC. It supports
single-link mode and shares a peripheral clock and reset signal with the
MIPI-DSI interface.

> diff --git a/Documentation/devicetree/bindings/display/bridge/renesas,r9a=
08g046-lvds.yaml b/Documentation/devicetree/bindings/display/bridge/renesas=
,r9a08g046-lvds.yaml
> new file mode 100644
> index 0000000000000..b1f6d020ae7b1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/renesas,r9a08g046-=
lvds.yaml

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/clock/renesas,r9a08g046-cpg.h>
> +
> +    lvds-cmn@108a0000 {
> +        compatible =3D "renesas,r9a08g046-lvds-cmn",
> +                     "simple-mfd", "syscon";

[Severity: Low]
Is this compatible string documented somewhere else? It looks like
renesas,r9a08g046-lvds-cmn isn't present in the tree, which might cause
dt_binding_check to fail when it validates the example.

> +        reg =3D <0x108a0000 0x10000>;
> +        #address-cells =3D <1>;
> +        #size-cells =3D <1>;

[Severity: Low]
Does this parent node need a ranges property? Without it, address translati=
on
for the child node's reg =3D <0x10 0x8> might fail, and dtc often warns abo=
ut
missing ranges in simple-mfd nodes with children.

> +
> +        lvds0: lvds@10 {
> +            compatible =3D "renesas,r9a08g046-lvds";
> +            reg =3D <0x10 0x8>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260524194457.4796=
81-1-biju.das.jz@bp.renesas.com?part=3D1

