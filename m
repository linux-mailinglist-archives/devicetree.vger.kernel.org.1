Return-Path: <devicetree+bounces-310739-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id bF6eAy+3K2rgCgQAu9opvQ
	(envelope-from <devicetree+bounces-310739-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:37:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74825677498
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 09:37:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PtvGV04H;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310739-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310739-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5FD5530CD30F
	for <lists+devicetree@lfdr.de>; Fri, 12 Jun 2026 07:35:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D21383DDDB0;
	Fri, 12 Jun 2026 07:35:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5D2A3DE44C;
	Fri, 12 Jun 2026 07:35:37 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781249738; cv=none; b=rVnb93CkXZIgDoZA/DeV9v4Fl01EEm47nz8S0kKVwUVQxUKzayCKWDtqCSSfMYrr2XkJnmr/dqLVRtFFFawjGzFTjKlsofh40B8RFreJfBHam4stZf+nPFE3Bd6UNgICU2k40g4Fi/1UzyCNJX//COp3aw1VmdFB5J56SFK462A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781249738; c=relaxed/simple;
	bh=k7SmNwGUYV7MeKf6icEhpzbX/dv9DzSlNiy7fgXV594=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=VEjXgvCc8OW0LKG+uTi84EPX/LkIiBTCJgjfaztY3JQB0W5rYQ8ke+g0hasSLM9PQQ8kPurxxzTQ+MofXlbhjEeNwxvLK6l/J9B0fTNHgEUbmv2fUQ0VUrVOsMgH220c6Ej29z/pp4auoMn5JeLkJzn1WngIOWEYhtorscX+x6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtvGV04H; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0C9ED1F000E9;
	Fri, 12 Jun 2026 07:35:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781249737;
	bh=5Hqo2edsfNFUso4cq+aYVslZv4ZCrufFIkWwv1TO7pY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=PtvGV04HZBNM47bjr5EpJcz+Y5IxiGlvMbLUy4by5eAZLYKQNdbyjiImp18qNJvDk
	 ll8rFCEO+RIxsl+twGpL3OowJUhjICdHVxQ9rA1Gkgx6bIanF5qLsGMslgFTQ1ulY+
	 VxXiYOdcqMLT6GKLQLvQgnM96HKVmzdi8oZeV8geivapssGJwneRbpljXuNfiWvMi+
	 Dr18kwk2NU8EU/0dIPJ1QJwnQc5kAr2V7glbclM4KUzehrsZOyy2S6PmOKK96RITan
	 ZaC6ODUpakaelkQRWBWgj/+hmXkbSQ1cR0mIJGUTwzrPqJWiKMfvUSBiTGu35Icq09
	 oZZYwzPfSiUjw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 8/9] dt-bindings: input: microchip,cap11xx: Add
 CAP1114 support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jun Yan" <jerrysteve1101@gmail.com>
Cc: conor+dt@kernel.org, dmitry.torokhov@gmail.com, linux-input@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260612072237.1177304-9-jerrysteve1101@gmail.com>
References: <20260612072237.1177304-9-jerrysteve1101@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 12 Jun 2026 07:35:36 +0000
Message-Id: <20260612073537.0C9ED1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-310739-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:jerrysteve1101@gmail.com,m:conor+dt@kernel.org,m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,m:dmitrytorokhov@gmail.com,s:lists@lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 74825677498

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Schema constraint conflict for `linux,keycodes` makes CAP1114 vali=
dation impossible.
- [High] Buffer overflow when parsing `microchip,calib-sensitivity` propert=
y for models with >8 channels.
--

commit f0d8405d987f3f3e2623cf6af9274da6bb531e55
Author: Jun Yan <jerrysteve1101@gmail.com>

    dt-bindings: input: microchip,cap11xx: Add CAP1114 support
   =20
    CAP1114 is a 14-channel capacitive touch sensor with 11 LED outputs
    and hardware reset support. Add the compatible string for CAP1114,
    update maximum LED channels, and add constraints for linux,keycodes.

> diff --git a/Documentation/devicetree/bindings/input/microchip,cap11xx.ya=
ml b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> index 778ec6d659a8d..0e9a1a8a3f3e7 100644
> --- a/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml
> +++ b/Documentation/devicetree/bindings/input/microchip,cap11xx.yaml

[ ... ]

> @@ -178,6 +182,18 @@ allOf:
>        properties:
>          reset-gpios: false
> =20
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - microchip,cap1114
> +    then:
> +      properties:
> +        linux,keycodes:
> +          minItems: 14
> +          maxItems: 14
> +

[Severity: High]
This conditional block enforces 14 items for linux,keycodes, but earlier in
the file there is a global constraint that limits it to 8:

  linux,keycodes:
    minItems: 3
    maxItems: 8

Because JSON Schema evaluates global and conditional constraints cumulative=
ly,
any valid CAP1114 node with 14 keycodes will fail dt_binding_check against
the global 8-item limit. Should the global maxItems be increased to 14,
while keeping other models constrained in their respective blocks?

[ ... ]

One additional question regarding the CAP1114 integration with the driver:

[Severity: High]
When CAP1114 support is added to the driver (since num_channels will be 14),
can this lead to an out-of-bounds write?

In drivers/input/keyboard/cap11xx.c, calib_sensitivities is a fixed-size
8-element array:

	struct cap11xx_priv {
		...
		u32 calib_sensitivities[8];
		u32 keycodes[];
	};

However, during initialization, the driver reads num_channels items into it:

	if (!of_property_read_u32_array(node, "microchip,calib-sensitivity",
					priv->calib_sensitivities,
					priv->model->num_channels)) {

Even though the CAP1114 binding forbids microchip,calib-sensitivity, an
incorrectly configured or malicious device tree providing 14 items could
cause this to overflow the 8-element array by 24 bytes. Does the driver
need to be updated to prevent this when num_channels is greater than 8?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260612072237.1177=
304-1-jerrysteve1101@gmail.com?part=3D8

