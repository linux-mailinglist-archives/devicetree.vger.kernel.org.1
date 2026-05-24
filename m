Return-Path: <devicetree+bounces-302290-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AIiMx5IE2qg9wYAu9opvQ
	(envelope-from <devicetree+bounces-302290-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 20:49:02 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 31F9A5C371D
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 20:49:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C71FE3007E25
	for <lists+devicetree@lfdr.de>; Sun, 24 May 2026 18:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FBB42FD665;
	Sun, 24 May 2026 18:49:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnMiCSka"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEA55233939
	for <devicetree@vger.kernel.org>; Sun, 24 May 2026 18:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779648540; cv=none; b=sG7l6P7uOOnXXO0vAsq6iJ07UXMjQbeC3ROb+UNcOZGYZJM19sq3o4MfqbUQqJgkVE8cJ+D0P+diM1YaAplSLkXbw0sLCHZNYE18/bVJEVR7TjCBApgNh3qJHg9Ven19dX0pv7dWpHnpUKuMM+ATwcAUl291/GMIyaBM27vA+Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779648540; c=relaxed/simple;
	bh=vzZVR9eJcLpyNi8IMo/zaS46QW+RlPKAnNUhWmUScEs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=hziS7P0urEEgQWxMWx8HE9wqDwqptD1XdH0p6ud6VsdK4DVTGW2vWFBJNyBBAPKNzGBMelc8WAKwlt1K31D/17S/3GG05cCcpGDgECM3uSsXGbE8OgkQ5IYAxm29XQsU10qKAfJIUdT0IzX+ukten4pZ2nMiWYV6nha8fdjttSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnMiCSka; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 61B121F000E9;
	Sun, 24 May 2026 18:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779648538;
	bh=2tbIRgv8XMPUHiHPOj3lt2XqLX2LMHwVV1lDj34ysyc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=nnMiCSkajiILiUibBD/WiZiiGmYhMXnrLn45NsQeDpSOSEGAKSenfeTn1mDTDXgTb
	 NMF1BSKNzGU/0uycCwgyzZs/ticKoEfxsM3PuneV1CHupte9hOTzSw7vP9EYGx/NT3
	 OH+PtQXY6tmCGksik6C+cqyJjDQdw4kWyV48Yml8r55gY0BR6QBESsXLgzYzUNSD6R
	 EFsyeHsG+d+de2sNmZpcfSkc7pzw4K9+33q7VzL8PIQnJuuZZpIuD6HcBJSaOPLjvT
	 oTY8wo+o4VoeVXFcp7rrdajxS006nJTUeKRlnIMuIqfyPGK+IRaB7SnlA3tCGqiIGh
	 PvS4KYSjKeE5A==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: sound: atmel_ac97c: Convert to DT
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Manish Baing" <manishbaing2789@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260524183337.111657-1-manishbaing2789@gmail.com>
References: <20260524183337.111657-1-manishbaing2789@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 24 May 2026 18:48:57 +0000
Message-Id: <20260524184858.61B121F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302290-lists,devicetree=lfdr.de];
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
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Queue-Id: 31F9A5C371D
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The YAML schema omits the `clocks` and `clock-names` properties,=
 causing validation failures for existing valid device trees.
- [Medium] The `ac97-gpios` property is incorrectly placed in the `required=
` list of the schema, which will break validation for existing device trees.
--

commit 1b5d0ed3017fc9e1dbdb1e38381500e3cc380fb7
Author: Manish Baing <manishbaing2789@gmail.com>
ASoC: dt-bindings: sound: atmel_ac97c: Convert to DT schema

This commit converts the Atmel AC97 controller device tree binding from
plain text format to a YAML schema.

> diff --git a/Documentation/devicetree/bindings/sound/atmel,at91sam9263-ac=
97c.yaml b/Documentation/devicetree/bindings/sound/atmel,at91sam9263-ac97c.=
yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sound/atmel,at91sam9263-ac97c.yaml
> @@ -0,0 +1,60 @@

[ ... ]

> +properties:
> +  compatible:
> +    const: atmel,at91sam9263-ac97c
> +
> +  reg:
> +    maxItems: 1
> +    description: Address and length of the register set for the device.
> +
> +  interrupts:
> +    maxItems: 1
> +    description: Should contain the AC97 interrupt.
> +
> +  ac97-gpios:
> +    minItems: 3
> +    maxItems: 4
> +    description: |
> +      AC97 link GPIOs- sync, sdata_out, reset, and optional sdata_in.
> +      The driver primarily uses the reset pin.
> +
> +  pinctrl-0: true
> +
> +  pinctrl-names:
> +    const: default

[Severity: Medium]
The driver (sound/atmel/ac97c.c) unconditionally requires a peripheral clock
via clk_get(&pdev->dev, "ac97_clk"). Existing device trees such as
arch/arm/boot/dts/microchip/at91sam9263.dtsi define clocks and clock-names.

Since unevaluatedProperties is set to false below, won't make dtbs_check
flag these valid properties as errors? Should clocks and clock-names be
added to the schema?

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - ac97-gpios

[Severity: Medium]
Is it correct to make ac97-gpios mandatory here?

The driver appears to treat the reset GPIO as optional, and existing device
trees like at91sam9263.dtsi do not define it. Will making it strictly
required cause validation failures for existing hardware configurations?

> +
> +unevaluatedProperties: false
> +
> +examples:

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260524183337.1116=
57-1-manishbaing2789@gmail.com?part=3D1

