Return-Path: <devicetree+bounces-309402-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 95x0Hcz4KGpVOQMAu9opvQ
	(envelope-from <devicetree+bounces-309402-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:40:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C14F8665FBA
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 07:40:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GVRuLfpO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309402-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-309402-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 61417311C52B
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 05:39:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC342E7BD3;
	Wed, 10 Jun 2026 05:39:13 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E9D1A5B90
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 05:39:11 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781069953; cv=none; b=uTDFZK3vKK2uK98rNDSoL6DKuhGHuSjgHYEmEV13vzKlR5VWyCuZwzFpeDUoKc9mQrBQ0thAorgDqH92HomgIF3YRJ8WHyVQIGboM06vfE7KEM5DWjAqQ5cqmH3XT9VfVs6S48DxFY9dQnpmL+53PjAGaVIiD7JDZpBaxZPI1X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781069953; c=relaxed/simple;
	bh=6x6HAzZ3IlnTQoN5NSKO4sYm+vKctRauJoqBLWgqo1k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jYiiV1lEmiEcpXY7W89xQq/t02f/4r6QIaTXg7nbkAfyMTw+pxYyfmrBdROp2srwDjcBKdRnukUv5Uf7uhlx/2x9UpgwAw4e4I1fTeH+0POAGC76W+s7q9kD5mpkWYsLxdVpDOVNbzTEsIdNobUusWqKgSHAD6t3U0p5cwmznYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GVRuLfpO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6543D1F00893;
	Wed, 10 Jun 2026 05:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781069951;
	bh=NtK/zdpNYs6fAbZf3rtak9xiVjoKlwjWhOrXjcFVhlw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GVRuLfpOGu9kd6/LLSZSDXXKqrmbjUO/+GZ3SdvvMQZY5Lqg7GTX1FWgDaonOPXxD
	 vPfYMRvH7ElaDDZ+XcYV14JsmuZw8T3iLrbcHUInTMUmLA6j8N5poM5XRGWlS4MtT9
	 FgJJ+2iPQ8xkGjfAh6cok9DDUSP1XCKCmMcQ0aa/ML7leGCX83pjbrhxLwhWP/KKjm
	 me3dou/ITgMzj1DwSAAicVpyshqWLUrm7d+Rb8BTR0e5o79yja0oCuzBEt9+D4opvp
	 SbWUFl+5SHr6no/+yLfekuXLojUNvz+chRjTeOGiPRM27x6Em9UJactqPScU5zhqaO
	 sL3F4u+te/L7w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: pinctrl: Add UltraRISC DP1000
 pinctrl controller
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jia Wang via B4 Relay" <devnull+wangjia.ultrarisc.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260610-ultrarisc-pinctrl-v4-1-b7e9b2a8ed84@ultrarisc.com>
References: <20260610-ultrarisc-pinctrl-v4-1-b7e9b2a8ed84@ultrarisc.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 05:39:10 +0000
Message-Id: <20260610053911.6543D1F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-309402-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+wangjia.ultrarisc.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,wangjia.ultrarisc.com,dt];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,vger.kernel.org:from_smtp,ultrarisc.com:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C14F8665FBA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The use of `unevaluatedProperties: false` defeats the intended expl=
icit restriction of standard pin configuration properties.
--

commit fcd21f9963cf534da789bb36bb2012a9e157e4d1
Author: Jia Wang <wangjia@ultrarisc.com>

dt-bindings: pinctrl: Add UltraRISC DP1000 pinctrl controller

This commit adds the device tree binding documentation for the pin controll=
er
found on the UltraRISC DP1000 RISC-V SoC.

> diff --git a/Documentation/devicetree/bindings/pinctrl/ultrarisc,dp1000-p=
inctrl.yaml b/Documentation/devicetree/bindings/pinctrl/ultrarisc,dp1000-pi=
nctrl.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pinctrl/ultrarisc,dp1000-pinctrl.=
yaml

[ ... ]

> +patternProperties:
> +  '.*-pins$':
> +    type: object
> +    unevaluatedProperties: false
> +    allOf:
> +      - $ref: /schemas/pinctrl/pincfg-node.yaml#
> +      - $ref: /schemas/pinctrl/pinmux-node.yaml#

[Severity: Low]
Since this node uses unevaluatedProperties: false alongside a reference to
pincfg-node.yaml#, all standard pin configuration properties will be
inherently evaluated and allowed by the schema.

Does this defeat the intended explicit restriction of standard pin
configuration properties defined below?

[ ... ]

> +      function:
> +        description: |
> +          Mux function to select for the listed pins. Supported functions
> +          depend on the selected pins and match the DP1000 hardware mux
> +          table.
> +        enum:
> +          - gpio
> +          - i2c
> +          - pwm
> +          - spi
> +          - uart
> +          - lpc
> +          - espi
> +
> +      bias-disable: true
> +      bias-high-impedance: true
> +      bias-pull-up: true
> +      bias-pull-down: true
> +
> +      drive-strength:
> +        description: Output drive strength in mA.
> +        enum: [20, 27, 33, 40]

If the goal is to restrict the node to only these explicitly listed
properties, should additionalProperties: false be used in the
patternProperties block instead?

With unevaluatedProperties: false, unsupported properties like slew-rate or
input-debounce will silently pass schema validation, rendering these explic=
it
boolean property declarations redundant.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610-ultrarisc-=
pinctrl-v4-0-b7e9b2a8ed84@ultrarisc.com?part=3D1

