Return-Path: <devicetree+bounces-319078-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id v1d/BVQXRmqiJgsAu9opvQ
	(envelope-from <devicetree+bounces-319078-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:46:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E4506F457F
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:46:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="oMEGMhB/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319078-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-319078-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5363B30C7022
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 07:32:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DB673932CA;
	Thu,  2 Jul 2026 07:32:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E41391E73
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 07:32:49 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782977571; cv=none; b=H9457gDEb/kbQ6+WLrXcq15ZHUIHh7zDB/JEF832KpYqa4RYQtmfRMWcxDm//foSlAX0p+dlpJw7gXxMmXiaXJ/akqzea/v3ozRP2rMNvPS5VKiI50erQ5R1beIPsLVx+63jYtaJJ5TDruxQb1Hsj9EL6SkUQH7aLaNxJxcDPgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782977571; c=relaxed/simple;
	bh=NX8NBKytqpUTtmc/NWy8eAS7Y/YTag0/84c4ZkG6S+E=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=m91VUaARnJn1OL243EmB8biA+z1Rll/0SwuHXucvixp/jIaYmzPf+ebP52+QxXfGGkUc+2z7iwHc6hlIgXDCXHofmwffW05q055EzDSgiVGNS081VLKdyMI6hof/uflj2DXokclmCBWZS9zkV4SlaHVm8t0yWp17LeVBvGxpYMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oMEGMhB/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8975D1F000E9;
	Thu,  2 Jul 2026 07:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782977569;
	bh=HqwbbsmD07qLph5NTExpCeCvy6H8RyuNlhtqbxJGaCQ=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oMEGMhB/Ot2txftttNjhgEhkjSWbdbijcwoW4oUg1QO7WJ2o+k8nXKPgVdYCfnJjJ
	 YxLXK6H8AtFjf0eHbldzJR7lSCzqWNtnT93n6rxEiCxMOrWz9I0xekVijfID8PZQ/O
	 BC1LQPSrIH6P+WxUgKWhFBzOoYaEwiLSsoB+7nEhmneGLwqOA1/KdqOSOInOk7I9gD
	 jaCLry9vVHWKqPBSCHb9/3RTjnbYyQDhq9UomlVsPaP4MTkhDwcVYKMnW3TJdtZLjc
	 L5wT0adeGaorhNcsI6LE86rN6JcJaZpsnAZXDi5/6jjieBlOrwdKSN3WYlXHZg3L+8
	 TQLA1ZBvBqBEQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 1/2] dt-bindings: media: i2c: Add os02g10 sensor
Reply-To: sashiko-reviews@lists.linux.dev
To: "Elgin Perumbilly" <elgin.perumbilly@siliconsignals.io>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260702072502.7907-2-elgin.perumbilly@siliconsignals.io>
References: <20260702072502.7907-1-elgin.perumbilly@siliconsignals.io>
 <20260702072502.7907-2-elgin.perumbilly@siliconsignals.io>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 07:32:48 +0000
Message-Id: <20260702073249.8975D1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-319078-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:elgin.perumbilly@siliconsignals.io,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,siliconsignals.io:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5E4506F457F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing hardware-specific constraints for `data-lanes` and `link=
-frequencies`, and missing `data-lanes` in the required list.
- [Low] Contradictory voltage level for `dvdd-supply` and a typo in a phand=
le name in the example.
--

commit ce94f55aec46b60fcbb8306168231259fed7b004
Author: Elgin Perumbilly <elgin.perumbilly@siliconsignals.io>

dt-bindings: media: i2c: Add os02g10 sensor
   =20
This commit adds the Device Tree bindings for the OmniVision OS02G10 image
sensor. The sensor outputs RAW10 format data and supports a 2-lane MIPI
interface.

> diff --git a/Documentation/devicetree/bindings/media/i2c/ovti,os02g10.yam=
l b/Documentation/devicetree/bindings/media/i2c/ovti,os02g10.yaml
> new file mode 100644
> index 0000000000000..72c6beff3625e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ovti,os02g10.yaml
> @@ -0,0 +1,94 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---

[ ... ]

> +  dovdd-supply:
> +    description: I/O Domain Power Supply (1.8v)
> +
> +  dvdd-supply:
> +    description: Digital core Power Supply (1.5v)
> +
> +  reset-gpios:

[ ... ]

> +    properties:
> +      endpoint:
> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false
> +
> +        required:
> +          - link-frequencies

[Severity: Medium]
Should data-lanes be included in this required list?

Since the sensor specifically supports a 2-lane MIPI interface, would it al=
so
make sense to add constraints for data-lanes (e.g., maxItems: 2) and
link-frequencies (e.g., maxItems: 1) here so that unsupported configurations
will fail schema validation?

> +
> +    required:
> +      - endpoint

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +
> +        camera-sensor@3c {
> +            compatible =3D "ovti,os02g10";
> +            reg =3D <0x3c>;
> +            clocks =3D <&os02g10_clk>;
> +            reset-gpios =3D <&gpio1 7 GPIO_ACTIVE_LOW>;
> +
> +            avdd-supply =3D <&os02g10_avdd_2v8>;
> +            dvdd-supply =3D <&os02g10_dvdd_1v2>;
> +            dovdd-supply =3D <&os2gb10_dovdd_1v8>;

[Severity: Low]
Does the digital core power supply require 1.5V or 1.2V? The property
description for dvdd-supply above states 1.5V, but the example phandle name
here implies 1.2V.

Also, this isn't a bug, but there appears to be a typo in the dovdd-supply
phandle name (os2gb10 instead of os02g10).

> +
> +            port {

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702072502.7907=
-1-elgin.perumbilly@siliconsignals.io?part=3D1

