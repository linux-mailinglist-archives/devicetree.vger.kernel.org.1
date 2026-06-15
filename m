Return-Path: <devicetree+bounces-311645-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id sQWXCMmVL2qOCwUAu9opvQ
	(envelope-from <devicetree+bounces-311645-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:03:53 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6763A683A4B
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 08:03:52 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jydQ05B9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-311645-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-311645-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1439C3009526
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 06:03:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CEEE2F83A2;
	Mon, 15 Jun 2026 06:03:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E83130D3EA
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 06:03:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781503411; cv=none; b=u06NoEoQPmGn6fs6ISwoj6jLsklOGwVmhxA85LV32bWLosPIP33RBKeekSLfEY8QK0CEQhtxOyEVs1co8UujLDuiolzsIxJjDZK5WeiLVBuPbPn6kUVRZQimar3phUZGVJig2w/ciWdtACTRkhbUo/IvLWL+RTjDANmkR1M+qiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781503411; c=relaxed/simple;
	bh=nQ9EnqIAZGuZ64lNUn9jd5+8LrpsUDf74//C256+x5U=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jeN6uFletps6x2zY+iaA3FI8Fo9q2STO8ADDjCpwKjKIWWtXuKfwqaY8K/imZVBxdVfKBDAoPYNI7eb0ais2+zYrEX6dMsWoyfqRsS+8YduD1ir9I0zyFZEY/7ig4ckSNyn7m753PGNb4eVA8qDdM857LhH80FV8SDWa/Az6HYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jydQ05B9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F18241F00A3A;
	Mon, 15 Jun 2026 06:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781503410;
	bh=7TBlbsFGn9Yyae6NpDBYBDe5tMm9p0x1tKL8Ff0Mczo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jydQ05B93VVHxPSSzbYLNEbeQRrvO4jZMzaMBP4fBd1VT9LNsyY30iSAkMCgX2qTb
	 3X4ZvJOa1uk6XopijZH7/zCrEtj3opLCYotVOX1EJaaQkEiGL6tetMWy/jk0dbWz6P
	 H3YwI/ADJer7D8k4NP+xa5++yDz5kmuykaBMsRb4XqrPaVZkmWiN8BZhhz69vfuZpX
	 FYbz7cRYyFurscZn87zc3LCaGTEn0weWdWium4knoK5TroIo/xwbxSbtaq8gNS3OWh
	 XANmUUq4VSitYp0lXQWm5zfghaKba+r4r9vNM9yAOgSotO+3VEWevj3x9w8Neuu0ZL
	 OV3r9qtLmpDwA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: usb: Add ITE IT885x support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Amber Kao" <amber.kao@ite.com.tw>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260615-ucsi-itepd-feature-v1-1-a826cfd0df6a@ite.com.tw>
References: <20260615-ucsi-itepd-feature-v1-1-a826cfd0df6a@ite.com.tw>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 06:03:29 +0000
Message-Id: <20260615060329.F18241F00A3A@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-311645-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:amber.kao@ite.com.tw,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,smtp.kernel.org:mid,ite.com.tw:email,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6763A683A4B

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The device tree binding defines a generic `gpios` property and redu=
ndantly maps it to the exact same hardware pin as the `interrupts` property=
, which is a structural anti-pattern.
- [Low] The device tree binding example uses a vendor-specific node name in=
stead of a generic functional name.
--

commit db50e109009ce6583e099c466366e81f9dc8a5ee
Author: Amber Kao <amber.kao@ite.com.tw>

dt-bindings: usb: Add ITE IT885x support

Add device tree binding documentation for the ITE IT885x. The ITE IT885x is
an I2C-based USB Type-C Power Delivery (PD) controller.

> diff --git a/Documentation/devicetree/bindings/usb/ite,itepd-it885x.yaml =
b/Documentation/devicetree/bindings/usb/ite,itepd-it885x.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/ite,itepd-it885x.yaml
[ ... ]
> +properties:
> +  compatible:
> +    const: ite,itepd-it885x
> +
> +  reg:
> +    maxItems: 1
> +
> +  gpios:
> +    maxItems: 1

[Severity: Low]
Does this property need a functional prefix? Device tree schemas generally
require GPIO consumers to have a prefix, such as irq-gpios, rather than
using the bare gpios property.

[ ... ]
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        itepd@40 {

[Severity: Low]
Should this node name use a generic functional name instead of a vendor
specific one? A generic name like typec@40 or usb-typec@40 would align
better with the devicetree specification recommendations.

> +            compatible =3D "ite,itepd-it885x";
> +            reg =3D <0x40>;
> +            gpios =3D <&tlmm 129 GPIO_ACTIVE_LOW>;
> +            interrupts-extended =3D <&tlmm 129 IRQ_TYPE_EDGE_FALLING>;

[Severity: Low]
Is it necessary to map the exact same physical pin to both gpios and
interrupts-extended here? If this is used merely to poll the interrupt line
state during probe, the hardware description shouldn't encode software
workarounds.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615-ucsi-itepd=
-feature-v1-0-a826cfd0df6a@ite.com.tw?part=3D1

