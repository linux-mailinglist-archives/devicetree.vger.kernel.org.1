Return-Path: <devicetree+bounces-307174-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g8YYKOFKImoZUwEAu9opvQ
	(envelope-from <devicetree+bounces-307174-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 06:04:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8EF644FEB
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 06:04:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UQI+inI7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307174-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307174-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A668E30243A9
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 04:04:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DBF22EEE96;
	Fri,  5 Jun 2026 04:04:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67C232D6E58
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 04:04:46 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780632287; cv=none; b=tPjA04yRSK63PCBMASMe3i1GzdkOWJmiTPYVH4Q1SD1sc20ASYH3pUhDfXclpqPFqJGkehCXf7PlreFYAoNSy20NB4PMVc9kWkP3vPVIyOSbjir650SbGLHQ7RmyMmSAn8vwgDonikciRZETE4rzsPLihHjbdXHKA+4VMn+1Hpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780632287; c=relaxed/simple;
	bh=2TklJnwzzCMwTCmcH3oNCMoP/rbqjvllvFwuDGKp0TU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qsRZ2WxTGZsMF+djB0Xmz9XR9osWx3Gq7B0LAU9rrbqIvrMCZBfIemqPdS9t4Kuv6d/8wFWSqlIb9A9HkikmbWhPPmshqTo47kIp40H3DtIjEjTx5T/QfcD4f+qaQXK2LVDPr+dm3YcnPE0pXhQtprxm8ayVoVAalhZasoe9/00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQI+inI7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BAC861F00893;
	Fri,  5 Jun 2026 04:04:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780632286;
	bh=0H6vIrJl5AVdVQGPTy/mi2rmJpRLq9iX83b04ji3t+A=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UQI+inI7xsgyNvO3kB5fZ9X9tBUBsLtaOd6kMr6Sf2/drVS2lkMrxBO/Ib07Fk0MF
	 gPMSu2nOg5ZU5DjYiGWdAOJ5TS8vg8LE522bWWdR5HBqGuZqERgtgUafC+Br7ibdw2
	 Wy1h32DmehIZe8ZigDr/yOIlAHPpQkZsEl7t/GPZINcETiu/bMZ8WZPqLerAu6bsy6
	 W262z1ZQgkz7s3DPTUtmPsXYRP7GEG54LwIEq8E+L8vTAh4OVRM186Rb+p8EAfh7Kz
	 xEIURF/Rj88XXeuIRI0DEN7985bydbpvUBKY/CUDUSL8E72KM8p5j5UDneJ10W6D+E
	 J5bkl3cb9BvMw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 2/3] dt-bindings: i2c: add Novatek NT726xx SoC i2c
 controller
Reply-To: sashiko-reviews@lists.linux.dev
To: SP_ISW1_AT@novatek.com.tw
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260605035614.383387-1-SP_ISW1_AT@novatek.com.tw>
References: <20260605035614.383387-1-SP_ISW1_AT@novatek.com.tw>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 04:04:45 +0000
Message-Id: <20260605040445.BAC861F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-307174-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:SP_ISW1_AT@novatek.com.tw,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TO_DN_NONE(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,novatek.com.tw:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,smtp.kernel.org:mid,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3E8EF644FEB

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Low] The device tree binding schema is entirely missing the mandatory `e=
xamples` section.
- [Low] The `novatek,hwmods` property uses incorrect type constraints, lack=
s pattern enforcement, and has ambiguous semantics.
- [Low] The `novatek,stbc` property is defined as a `uint32` but its descri=
ption indicates it is a boolean flag.
- [Low] The `reg` and `interrupts` properties permit multiple items without=
 documenting their meaning or expected order.
--

commit 1cba013f2a2d800236543516887a86edb943712e
Author: Ben Huang <Ben_Huang@novatek.com.tw>

dt-bindings: i2c: add Novatek NT726xx SoC i2c controller
   =20
Add device tree documentation for Novatek NT726xx SoC i2c controller.

> diff --git a/Documentation/devicetree/bindings/i2c/novatek,nt726xx-i2c.ya=
ml b/Documentation/devicetree/bindings/i2c/novatek,nt726xx-i2c.yaml
> new file mode 100644
> index 0000000000000..d9dfdaaec205e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/novatek,nt726xx-i2c.yaml
> @@ -0,0 +1,48 @@

[ ... ]

> +properties:
> +  compatible:
> +    const: novatek,nt726xx-i2c
> +
> +  reg:
> +    maxItems: 4
> +
> +  interrupts:
> +    maxItems: 3

[Severity: Low]
These properties permit multiple items without documenting their meaning or
expected order. Should we use an items list with descriptions so that the
purpose and expected order of each entry is defined?

> +
> +  clock-frequency:
> +    description: Operation clock frequency of i2c in Hz.
> +    default: 100000
> +    enum: [ 100000, 400000 ]
> +
> +  novatek,hwmods:
> +    $ref: /schemas/types.yaml#/definitions/string
> +    description: Name of each i2c pin, must be named with "i2cX". (X is
> +                 an integer starting from 0)
> +    minItems: 1

[Severity: Low]
This property references a scalar string definition, but minItems: 1 is an
array constraint, and the description "Name of each i2c pin" suggests it
accepts multiple names. Should this be defined as a string-array instead?

Also, should we add a pattern regex (like ^i2c[0-9]+$) to enforce the
documented naming rule?

> +
> +  novatek,stbc:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Set if this i2c master controlled by stbc.
> +    minItems: 1

[Severity: Low]
The description "Set if..." outlines a boolean state, but it is defined as a
uint32. Should this be declared using /schemas/types.yaml#/definitions/flag
instead?

Applying minItems: 1 is also redundant for a single scalar type.

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - novatek,hwmods
> +
> +unevaluatedProperties: false

[Severity: Low]
Is the mandatory examples block missing from the end of this file?

All new hardware device tree binding YAML schemas require an examples block
to demonstrate how the device tree node should be written and to allow
dt_binding_check validation testing.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605035614.3833=
87-1-SP_ISW1_AT@novatek.com.tw?part=3D2

