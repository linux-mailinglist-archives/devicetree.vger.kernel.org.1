Return-Path: <devicetree+bounces-324613-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VjAEI/k3UWqmAwMAu9opvQ
	(envelope-from <devicetree+bounces-324613-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:20:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E916273D4BA
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 20:20:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=aOfKhuax;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324613-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324613-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C8F0E300F956
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:20:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525A3282F34;
	Fri, 10 Jul 2026 18:20:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FB2B1A6831
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 18:20:35 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783707637; cv=none; b=BKHdDgLHwQ/UsbAtyj6sr1DWtcZ/ckH8Ds0UEyljM+zN3u05kkpAIF9sWV0ceedKtLzqrtpEQ8HYthc89/IPAg2MfWWveSQ2QIgecHE9HLHGNnGZPzDmZ7Pvpz6L26Er7FY0H/BHydxwQ5PkfnvN775gGWMCuxvE4cUzwzEF8yM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783707637; c=relaxed/simple;
	bh=7YZfAP7QYBuGbzTYzLLNegJIPxvR1A+OUt9LnrSwE4g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=F16nuR4geKui9E4Ilv5EKVO0rIg8LkT4g/pIjyz6IIX+jQ0NNK4oMgFE22efNuM3ST0KEq2fcooV65/478BrQYC0Fp3c3PIA2b0csZ9LBnXh84/1v8Il+5jOeIcYQZ8sAgKd6OBC47kxv/ywTkHyySCT6Vxhjt2DQ7W6HoOrPYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aOfKhuax; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9EB01F000E9;
	Fri, 10 Jul 2026 18:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783707635;
	bh=Qoey7Rakn9Vi1mVdp95vJtugpvYsPri3wyqXv5xivlE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=aOfKhuaxG6ekrvs/djHtSEz5rCYHglRIcIF+an0RxbpwGBY2RnQgHJI5cRisM8aBr
	 bh32Ft4wT1q5kKIlTIqyh8ReriKMbM/ZsY6b18O9oSmDqH1U1Kq32EOuctarC5m368
	 kkAkH/Xs7A38XK607pJpzaazJEg0hZpGVMBCsIO2YTbRgHQkwhPChXl809+kLVxfWL
	 JuBhVnwLaABkuv3n5nYt+mmbSQhcnPurMA/DSA6woHPS7OZQ5rNpaQBcR46FJoIRHp
	 IaSbHvsNJtOuj5FSxH1GvR95uGTGz3SwvreoK1EOJKZhXSTE9Ka/FKJAHnbSE8TBTR
	 0MypaaBPXbggQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] dt-bindings: net: microchip,lan78xx: convert to DT
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikhail Lukianchikov" <avermoal@gmail.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260709181724.24682-2-avermoal@gmail.com>
References: <20260709181724.24682-2-avermoal@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 18:20:34 +0000
Message-Id: <20260710182034.A9EB01F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-324613-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:avermoal@gmail.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E916273D4BA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The ethernet-phy node schema incorrectly rejects standard Ethern=
et PHY properties by using `additionalProperties: false` without referencin=
g `ethernet-phy.yaml`.
--

--- Patch [1]: [PATCH v2] dt-bindings: net: microchip,lan78xx: convert to D=
T schema ---
commit 484d7e78e4b223fac4e7382aab39e598f0a7d9b3
Author: Mikhail Lukianchikov <avermoal@gmail.com>

dt-bindings: net: microchip,lan78xx: convert to DT schema
   =20
Convert the Microchip LAN78xx family (LAN7800, LAN7801, LAN7850) binding
documentation from plain text to DT schema. The conversion adds proper
validation for the 'microchip,led-modes' property inside the MDIO node.

Link: https://lore.kernel.org/netdev/20260707165840.107409-1-avermoal@gmail=
.com

> diff --git a/Documentation/devicetree/bindings/net/microchip,lan7800.yaml=
 b/Documentation/devicetree/bindings/net/microchip,lan7800.yaml
> new file mode 100644
> index 0000000000000..289980c231810
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/microchip,lan7800.yaml
[ ... ]
> +    patternProperties:
> +      "^ethernet-phy(@[0-9a-f]+)?$":
> +        type: object
> +        description: |
> +          PHY node for the embedded or external PHY. The PHY address is
> +          given by the 'reg' property.
> +
> +        properties:
> +          reg:
> +            maxItems: 1
> +            description: PHY address.
> +
> +          microchip,led-modes:
> +            $ref: /schemas/types.yaml#/definitions/uint32-array
> +            minItems: 1
> +            maxItems: 4
> +            description:
> +              Array of LED mode values for each of up to 4 LEDs.
> +              Omitted LEDs are turned off. Allowed values are defined
> +              in include/dt-bindings/net/microchip-lan78xx.h.
> +
> +        required:
> +          - reg
> +
> +        additionalProperties: false

[Severity: Medium]
Will this schema definition incorrectly reject standard Ethernet PHY proper=
ties?

Using additionalProperties: false here without an explicit=20
$ref: /schemas/net/ethernet-phy.yaml# strictly forbids all standard
Ethernet PHY properties (like max-speed, interrupts, or reset-gpios)=20
on the child ethernet-phy node.=20

This causes the dt-schema validation to fail for boards that legitimately=20
describe their hardware PHY connections, which forces users to omit valid=20
device descriptions to pass validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709181724.2468=
2-2-avermoal@gmail.com?part=3D1

