Return-Path: <devicetree+bounces-313461-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id tRPuGsnqM2q1IQYAu9opvQ
	(envelope-from <devicetree+bounces-313461-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:55:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BA6616A039D
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 14:55:36 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=TS4RHkTe;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313461-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313461-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 90A6B30356EE
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 12:55:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB0C33ECBDA;
	Thu, 18 Jun 2026 12:55:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1D233B4EAD
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 12:55:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781787316; cv=none; b=vEhKoepROUp6MKd4EryyH+TUkXHssxLhbPmaR/4GSp8RsqZO39XEejon6ZJwO0CUIYb+UPoW26LO52CRKipUn3pipme09cdC3J/g7WqbATg2LLSnWJYAHG9BJ7xCyKa7b7dEmX/X4Ji7msrQ87uVXFjNZ8zmiOznLHy3TI0QnhU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781787316; c=relaxed/simple;
	bh=XsKpGPjqz6wlYoFn3nBSAZfc+0H0ekZJHLCHC1CCZVs=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LAyeLytbfdQHmRvbxc9DG73Q94nltIZ7L6ZiDUd3W56vZi5WCbXcJWZZoJw84wwXfcNNyTn4/Gy2xsSUc2MI1LY49Jg4nxR/WYU+IiK6vYoSngHT2VUII191wMKIv5h00hrbfe1kRnagybQmIydqNFSUddJidr4ZB1wkWmaEjJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TS4RHkTe; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 09E7A1F000E9;
	Thu, 18 Jun 2026 12:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781787315;
	bh=G9ItqgSWgOQguOBvD4d8OGh5J8DqggxMj126QLiBmsU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=TS4RHkTeEHRXnHPrJ4j83rZyH/38endx1g9BNixhFNYIRNRROGhme8MmAgp93eQPM
	 S/mCcfzXlZsI5Zv8uvqEIe/s+kOTALLuO01yKyGnGA7BP10d0H7jW3qPDSm5o6AlBT
	 H8ZukqsAM0Cnhs5rM+moRCF14WYhocrr4X1VPlueVAaMiAIDJokg72IHXOrMuL9RSn
	 udWNuOZhySCvWj73hXYKgVR3RKe/Y+tYhnRTR7bBQwtl9hc5d5APhlaDbJ3traXGNh
	 p4fqYpbMHluNEUCCj3VwsrAywLxIqFk1Pg9c9QL4QlYb7cuL0Vr+VjXRl6gTiNGIBh
	 ZzGE9GKxXJzfg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] dt-bindings: pwm: st,pwm: convert to DT schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Charan Pedumuru" <charan.pedumuru@gmail.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260618-st-pwm-v2-1-c792d5795ce2@gmail.com>
References: <20260618-st-pwm-v2-1-c792d5795ce2@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 12:55:14 +0000
Message-Id: <20260618125515.09E7A1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-313461-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:charan.pedumuru@gmail.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:charanpedumuru@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,lists.linux.dev:replyto,vger.kernel.org:from_smtp,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BA6616A039D

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:

New issues:
- [High] The YAML binding strictly validates against `st,pwm`, but the hard=
ware driver and actual device trees use `st,sti-pwm`.
- [Medium] The schema drops `pinctrl-0` from the required list but keeps `p=
inctrl-names` as required, creating an inconsistent configuration requireme=
nt.

Pre-existing issues:
- [High] The driver requests the IRQ before fully initializing the regmap f=
ields used by the interrupt handler, creating a race condition that can lea=
d to a NULL pointer dereference.
--

commit e38e89bd06d5e023d198bb6e9fb8add957cdf8e9
Author: Charan Pedumuru <charan.pedumuru@gmail.com>

dt-bindings: pwm: st,pwm: convert to DT schema

This commit converts the STMicroelectronics STiH41x PWM/Capture controller
text binding to DT schema. It updates the required list by adding
'interrupts' and dropping 'pinctrl-0'.

> diff --git a/Documentation/devicetree/bindings/pwm/st,pwm.yaml b/Document=
ation/devicetree/bindings/pwm/st,pwm.yaml
> new file mode 100644
> index 0000000000000..a045502e0e704
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/st,pwm.yaml
> @@ -0,0 +1,93 @@
[ ... ]
> +properties:
> +  compatible:
> +    const: st,pwm

[Severity: High]
Does this compatible string match the hardware driver and actual device tre=
es?

If existing in-kernel device trees and the matching driver
(drivers/pwm/pwm-sti.c) use "st,sti-pwm" instead of "st,pwm", will
make dtbs_check silently skip validation for them?

[ ... ]
> +  st,capture-num-chan:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: Number of available input capture channels.
> +    minimum: 0
> +    maximum: 4
> +    default: 0
> +
> +required:
> +  - reg
> +  - compatible
> +  - "#pwm-cells"
> +  - pinctrl-names

[Severity: Medium]
Since 'pinctrl-0' was dropped from the required list, should 'pinctrl-names'
also be removed?

Retaining 'pinctrl-names' in the required list while making 'pinctrl-0'
optional forces device trees that do not define any pinctrl configuration
to include a meaningless pinctrl-names =3D "default"; just to pass schema
validation.

> +  - clock-names
> +  - clocks
> +  - interrupts
[ ... ]
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    pwm@fe510000 {
> +        compatible =3D "st,pwm";

[Severity: High]
Does this example propagate an incorrect compatible string?

If the hardware actually uses "st,sti-pwm", using "st,pwm" here might misle=
ad
future device tree authors.

[ ... ]

[Severity: High]
This is a pre-existing issue, but can the interrupt fire before the regmap
fields are fully initialized?

Looking at drivers/pwm/pwm-sti.c:sti_pwm_probe(), the IRQ is requested earl=
y:

	ret =3D devm_request_irq(&pdev->dev, irq, sti_pwm_interrupt, 0, ...);

Later, the regmap fields crucial for the IRQ handler are initialized:

	ret =3D sti_pwm_probe_regmap(pc);

If a pending interrupt from the bootloader fires immediately after
devm_request_irq(), sti_pwm_interrupt() will execute and call
regmap_field_read(pc->pwm_cpt_int_stat, ...). Since pc->pwm_cpt_int_stat
is NULL before sti_pwm_probe_regmap() initializes it, would this cause a
kernel panic due to a NULL pointer dereference?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-st-pwm-v2-=
1-c792d5795ce2@gmail.com?part=3D1

