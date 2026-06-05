Return-Path: <devicetree+bounces-307245-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 37e1ITGAImr1YwEAu9opvQ
	(envelope-from <devicetree+bounces-307245-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 09:52:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DC2646260
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 09:52:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kiq9X1e2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307245-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307245-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 1582830055ED
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 07:38:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F6173BB115;
	Fri,  5 Jun 2026 07:38:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76AB830649C
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 07:38:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780645098; cv=none; b=N1nyXGVfeCOl5eMp5IarEq7Z211W1Vg4IxDnB01AIN2GCkWXfbGe70o8SBswHc+2m1NKStyLFTrZkgYvzbXFlF+9KLiEmgIygiqiPd1r77xhucAG8+jWUa5JCrvYLsAA+qRLnnydj+XnUmZT2uUIgLpLAyEHEMHqpTb7KcGOgzA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780645098; c=relaxed/simple;
	bh=9+1FfuL96+G5EbBugIjo04s5a5tpFrER27oKSs4YlRE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=q8Ag2SnUb9vSYLLz/IQK41WbXB67bMnB8LQBTq5nbcw2rTu5FTP8wljIn2pcVVG/AupSK0pRqhsI3Jb2whaOX3lEBw6A8DO97AqA+M6HrUcb6Md7wncvTgZpC2GuoUUIviSNIZ2MqYlQwF0YNCCwCNLDcJ2VTeHYqeQVYppr5pc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kiq9X1e2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E916D1F00893;
	Fri,  5 Jun 2026 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780645097;
	bh=AxAylSaNTM/DaOJ9SVGH0wt3dFesgUlu6V7gNVtEq6U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kiq9X1e28PYaWtdooPGihO9Kqt+GV8x2JvPQh0F+N9si9DBTsZKq0oHzpKxNRrfaF
	 endX445yXHLSjrQtLb9UHmt8imd8K4cc67Q9usogsQTFWWGv5EHIhKR8eo+dtKP9QE
	 an9qO3qyLRGhi5XYFspgv82X6yo3L5EhvN5JLGzMOKdv3JoAxvqfxh2AuhKZITsNPO
	 DC74TgsKRLd7VvYmxnkhpDXA/MINsjNyGY23H8QJXTuUp+o8WVokGpz6/o6SmgYAtW
	 jzHzMyGqY9w6oioXn8yeljaXoxN8CzgXSbfrALsINPjX7IJMS5JlbAiEcczS/nR1dA
	 B0sJJ/u1q0MMA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: leds: Add default-intensity
 property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jonas Rebmann" <jre@pengutronix.de>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260605-multicolor-default-v2-1-ed07271df6b0@pengutronix.de>
References: <20260605-multicolor-default-v2-1-ed07271df6b0@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 05 Jun 2026 07:38:16 +0000
Message-Id: <20260605073816.E916D1F00893@smtp.kernel.org>
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
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-307245-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jre@pengutronix.de,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[pengutronix.de:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 72DC2646260

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Driver-specific name hardcoded in the generic `common.yaml` schema =
description.
--

commit 9beb7b4f88908b2864bd519c143e1a370071aec1
Author: Jonas Rebmann <jre@pengutronix.de>

dt-bindings: leds: Add default-intensity property

This commit documents the default-intensity property to set a default color
on multicolor LEDs. It also updates the pwm-multicolor binding and its
example to support this new initialization property.

> diff --git a/Documentation/devicetree/bindings/leds/common.yaml b/Documen=
tation/devicetree/bindings/leds/common.yaml
> index f4e44b33f56d1..a34de0a34b422 100644
> --- a/Documentation/devicetree/bindings/leds/common.yaml
> +++ b/Documentation/devicetree/bindings/leds/common.yaml

[ ... ]

> @@ -73,6 +73,17 @@ properties:
>        - keep
>      default: off
> =20
> +  default-intensity:
> +    description:
> +      The initial intensity of the LED color component. Used only during
> +      initialization. Defaults to 0. As the intensity of each sub-LED is
> +      multiplied with the overall brightness, without this property on a
> +      sub-LED, the leds-pwm-multicolor-LED is effectively initialized at
> +      minimum brightness regardless of its linux,default-trigger and
> +      default-brightness properties.

[Severity: Low]
This isn't a bug, but the description for default-intensity explicitly
mentions the specific driver name leds-pwm-multicolor-LED.

Since common.yaml is intended to be a hardware-agnostic specification
for all LED bindings, could this wording be updated to refer generically
to the multicolor LED or simply the LED to avoid leaking an
implementation detail into the generic schema?

> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260605-multicolor=
-default-v2-0-ed07271df6b0@pengutronix.de?part=3D1

