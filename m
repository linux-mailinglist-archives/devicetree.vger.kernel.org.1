Return-Path: <devicetree+bounces-320236-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ceSbF5vWR2p8gAAAu9opvQ
	(envelope-from <devicetree+bounces-320236-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 17:34:51 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 95576703ED4
	for <lists+devicetree@lfdr.de>; Fri, 03 Jul 2026 17:34:50 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=H0MtM+oa;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320236-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-320236-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2834F3062C1A
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 15:26:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0325241735B;
	Fri,  3 Jul 2026 15:26:33 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D114041734E;
	Fri,  3 Jul 2026 15:26:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783092392; cv=none; b=Do9hxGuAO1bVDj6AXFeSXMuzqcr6ihWAPZ9vMkLRG9d3AB5g8XU3uwT2nytFrWQxoW6+wy4ycU5DH3f0keiQ8OVVczCCnC2jExpPYzTmah8nvGErdkudF/kHXp1Iyw0CT9+vp86sD11RGiNNHBFmjwUa1dWiJLQA4UiEtScnxAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783092392; c=relaxed/simple;
	bh=jNsOkMvAbe6OeR60F6oK7IXUHiY7gkhqpYS/Mz86qVw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qiBJHbikQkWP+OgDENGu7kehfQ8uBjzdRC4h0IkcjalTAsYYx7yIePFfGm5wFnSJHL22oIAS1fS2u12gsxJosWpwN+ztOs1KDvk3FaREUbx5Y8p5K8CDGY40nYD9NKkIeoxG6O/ubin0ZC8c2nuocF79uI+zEeyuOnTQKgmU+ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0MtM+oa; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 305511F000E9;
	Fri,  3 Jul 2026 15:26:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783092391;
	bh=4CdOEYbJivtsUlimSZnXUz+KiLsZc2Vm+jKMEa9rKz8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=H0MtM+oa19RttLAOBFGMLovJR/t/DPU49NNONtgRN+SSuk7Mb3uflus+zOjZTJMDx
	 /hChFnnbN78osufPmVuvBMNcHW63h0g/el4GN4ojZJv+2nRi6pl8GdM78+ZjLktDJo
	 kHLQneCcXGXhy547cGmT7FgDvmafxUYuj5kDuxMgm3PnTkE4gIDxPWCOLa7u0vGt8m
	 v4sq+VdgB5Q7FUCXxxzUhg0N7RR+s+TWongsgcghxOX+pBh4NEONbDnk7Ttdt4Nl3T
	 8DE1gxBf9BC+TV74aBqkApfyl4TRUelo8KD4MrxYxPmpPgdXPkT+AU7sIKoD4FU+0e
	 5fqQzV3sty8Uw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/4] dt-bindings: pwm: allwinner: add h616 pwm
 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Richard Genoud" <richard.genoud@bootlin.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, linux-sunxi@lists.linux.dev
In-Reply-To: <20260703152215.192859-2-richard.genoud@bootlin.com>
References: <20260703152215.192859-1-richard.genoud@bootlin.com>
 <20260703152215.192859-2-richard.genoud@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 15:26:30 +0000
Message-Id: <20260703152631.305511F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-320236-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,bootlin.com:email,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:richard.genoud@bootlin.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:linux-sunxi@lists.linux.dev,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 95576703ED4

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `#clock-cells` property is missing from the `required` list =
for the `allwinner,sun50i-h616-pwm` compatible.
--

commit d7a701d864bf3d5f7e7d179d4498b5006b8bf3f7
Author: Richard Genoud <richard.genoud@bootlin.com>

dt-bindings: pwm: allwinner: add h616 pwm compatible

This commit introduces the Allwinner H616 PWM block to the sun4i pwm
binding. It adds the new compatible string and handles the new clock
provider capabilities introduced by the H616 bypass mode.

> diff --git a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pw=
m.yaml b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> index 1197858e431f2..4f58110ec98f7 100644
> --- a/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
> +++ b/Documentation/devicetree/bindings/pwm/allwinner,sun4i-a10-pwm.yaml
[ ... ]
> @@ -83,6 +89,17 @@ allOf:
>          clocks:
>            maxItems: 1
> =20
> +  - if:
> +      not:
> +        properties:
> +          compatible:
> +            contains:
> +              const: allwinner,sun50i-h616-pwm
> +
> +    then:
> +      properties:
> +        "#clock-cells": false
> +

[Severity: Medium]
Should #clock-cells be added to the required properties for the H616 varian=
t?

The commit message mentions that the H616 PWM block can output a clock
used as an input for other devices. While the conditional block above
correctly prevents older hardware variants from using #clock-cells, it
appears to leave the property optional for the H616.

If a device tree node for allwinner,sun50i-h616-pwm omits #clock-cells,
it might silently pass schema validation but fail at runtime when dependent
subsystems try to use it as a clock provider.

Would it make sense to add an else clause here (or a separate conditional)
to explicitly require #clock-cells when the H616 compatible is present?

>  required:
>    - compatible
>    - reg

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703152215.1928=
59-1-richard.genoud@bootlin.com?part=3D1

