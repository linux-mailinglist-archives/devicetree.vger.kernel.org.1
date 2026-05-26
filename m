Return-Path: <devicetree+bounces-302953-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GGasEfBnFWqyUwcAu9opvQ
	(envelope-from <devicetree+bounces-302953-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:29:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 49D625D354F
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 11:29:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 36E2C300105A
	for <lists+devicetree@lfdr.de>; Tue, 26 May 2026 09:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FCB83D6494;
	Tue, 26 May 2026 09:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3xhQbNA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 272A133FE02
	for <devicetree@vger.kernel.org>; Tue, 26 May 2026 09:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779787755; cv=none; b=FR3JmpWoSo7wYD7YgZ6r5xpeQqcFEVKUXhoB3s5ffUSf5+vDdU9dsVUuLNPw6t8Jsicp1TjfnxQW8kPvA97Cn++jVH8SVNWhrMncyHRvnYtXulxLMlfmC6b63h4fYoJ+sudfk2p7SvVoku/gLMmD0A5/4UXhgT/wocf43wkltFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779787755; c=relaxed/simple;
	bh=x8qajFFYqI5W+fgsEJZje/kUGxwPFJtThp78Z/pbrQA=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=K5k/JV6EeNTB6CrTw9jCeyqyc/JZv02pKlxp3Oej1uvcUYmsHkvP6/KmXO2yov6ytKi2xqXhn/eTekYGprFaXCZYYzt67bZ0wyWJdhE73SSLjcZ7ZaF7lIm0D6uq8fGpkvxjTw6WVWLxkKyHfqnS1Rr3T8oeCq3JRr26omKscBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3xhQbNA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 858E81F000E9;
	Tue, 26 May 2026 09:29:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779787753;
	bh=n8fkKHhz/HW32VzX1LcY7Rmbt6g8AE4UXvPei11LoGY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l3xhQbNA9HzqXwbYVftI/XlZR1mwLk5krmOq3TCk7Lo0Q6dJxQecW8dy4xMDUiTXG
	 NK2bqVw/nHOdbg1s3xnCXtco/aZB8YVXl5pm0EUapMZgszZ3AKAOetmzyirh8jntSK
	 2Z8YWKTWmg+2WbBosBxvRZL+Wq1sHyeydj/kPJQtAjJkbleQj0+WvvLw//1ebiYOoN
	 AF98qWkYstbvS7JNvU9KUkbEOGKU8eQuuRA6odlF/A4GLagQEL2QKYq2M9yvYWtspn
	 B9tHUjiXuJnnLq5PRC0PUgJRBX9QSDO1FeyOSIFacI82G8XZy/gKLZ0d5M4ctfx/1x
	 ARsWxGSVzU4nw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC RESEND v5 3/6] media: dt-bindings: Add Amlogic V4L2
 video decoder
Reply-To: sashiko-reviews@lists.linux.dev
To: "Zhentao Guo via B4 Relay" <devnull+zhentao.guo.amlogic.com@kernel.org>
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, conor+dt@kernel.org
In-Reply-To: <20260526-b4-s4-vdec-upstream-v5-3-33bc817f93f4@amlogic.com>
References: <20260526-b4-s4-vdec-upstream-v5-3-33bc817f93f4@amlogic.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 26 May 2026 09:29:12 +0000
Message-Id: <20260526092913.858E81F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-302953-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,amlogic.com:email];
	RCVD_COUNT_THREE(0.00)[4];
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
	TAGGED_RCPT(0.00)[devicetree,zhentao.guo.amlogic.com,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 49D625D354F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `resets` property is functionally necessary and present in t=
he example, but it is omitted from the `required` list.
- [Low] The schema allows multiple interrupts but lacks `interrupt-names`, =
`items` descriptions, and a `minItems` constraint.
--

commit 4ec0f5c7e982a0f22963af0593b18e2e09373c7e
Author: Zhentao Guo <zhentao.guo@amlogic.com>

media: dt-bindings: Add Amlogic V4L2 video decoder

This commit describes the initial support for the V4L2 stateless video deco=
der
driver used with the Amlogic S4 (S805X2) platform.

> diff --git a/Documentation/devicetree/bindings/media/amlogic,s4-vdec.yaml=
 b/Documentation/devicetree/bindings/media/amlogic,s4-vdec.yaml
> new file mode 100644
> index 0000000000000..a0f33f6c35a17
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/amlogic,s4-vdec.yaml
[ ... ]
> +properties:
> +  compatible:
> +    const: amlogic,s4-vdec
> +
> +  reg:
> +    maxItems: 2
> +
> +  reg-names:
> +    items:
> +      - const: dos
> +      - const: dmc
> +
> +  interrupts:
> +    maxItems: 3

[Severity: Low]
Should this property include an items list with descriptions or a
corresponding interrupt-names property? Without these, there is no
documentation on what each of the three interrupts represents or the
required order.=20

Is a minItems constraint also needed here so that device trees with fewer
than 3 interrupts do not silently pass schema validation?

> +
> +  clocks:
> +    maxItems: 3
[ ... ]
> +  secure-monitor:
> +    description: phandle to the secure-monitor node
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - clocks
> +  - clock-names
> +  - power-domains
> +  - power-domain-names
> +  - amlogic,canvas
> +  - secure-monitor

[Severity: Medium]
Should resets be included in this required list? It is defined in the
properties block and explicitly used in the device tree example below.

Omitting it here might allow incompletely configured device tree nodes miss=
ing
the reset line to silently pass schema validation, which could lead to driv=
er
initialization failures or undefined hardware states at runtime.

> +
> +additionalProperties: false
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260526-b4-s4-vdec=
-upstream-v5-0-33bc817f93f4@amlogic.com?part=3D3

