Return-Path: <devicetree+bounces-306025-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id ZyP2MU/YH2rKqwAAu9opvQ
	(envelope-from <devicetree+bounces-306025-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 09:31:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA9E6353B0
	for <lists+devicetree@lfdr.de>; Wed, 03 Jun 2026 09:31:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=iE7a5nTO;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306025-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306025-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 2B1BF3077CA5
	for <lists+devicetree@lfdr.de>; Wed,  3 Jun 2026 07:22:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20DBA3A3E66;
	Wed,  3 Jun 2026 07:22:26 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 485E93A382D
	for <devicetree@vger.kernel.org>; Wed,  3 Jun 2026 07:22:24 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780471346; cv=none; b=fVuv2bBJDEWbYEq5thrBhGfVScvbt3tb09ZjuV7qB8lj8CoOr+shDcAAIFcEThWpa8a1adLLVWnCs3EwSa40LZXEuadBK59JlYOQxeKW/K2r7YraH1cdPpcfhDMsQbdlphNQHXD5Km73+QIiKdRuRPD+kie5zHFZtzRA1EjGIJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780471346; c=relaxed/simple;
	bh=OXFTb+2BysbBAckyqtRfWlb9CiAuvnh8J+cjMvPsRZ4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=B+v5YOqdA4WP1Vgi03l07f0WrLIE5XtK0Sj31rKH/Hh+KZ6zldy9g+IaLOoWkCl6aSMxDvENM+gvTinMt6TKJ/r7DZhAHu7xpCVA5fz3Zvh+KuQngLP37fSdrWfLNuPcGnNQMtxqc8azJH+vxAPhuNjLB1faP5ydIDnYezGqq+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iE7a5nTO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AAF1C1F00893;
	Wed,  3 Jun 2026 07:22:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780471343;
	bh=89lUHECixNm0B6/3QumyqZtYSVOvtaZR9tz59kqd8WU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=iE7a5nTO5zqsQE9AC20CZ15DJDeg7kVKWiT6CR1SCjJVDDCaW5FJNf+0zzjWFznym
	 59HinBXopQk8xyXiOIpzZGxDt19J/5uNUk/NfjkJB3UsUJM+XDCPTrp72JL02jLBK/
	 GpCkmq3Y3bQMegNRbpG7ePzceRvHd9XkfTdedei8HpR+bhULoqvSk/rXk2syAW45FX
	 FUPHjY9E5xOmiuG3Tv6DF8m5cL6P1yqlqY3jbHFvCsJpEBZvaQs/drZmMvJVhvMdP8
	 xEwyqvxdXynKhKu78dNpfZfC43UO/N2LWI+FOaur3+7amwXvaC17lFFDqK0wpFX70X
	 63wzVamymkFBA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: power: supply: maxim,max8903: add DC
 and USB input current-limit controls
Reply-To: sashiko-reviews@lists.linux.dev
To: "Herman van Hazendonk" <github.com@herrie.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260603071519.807604-2-github.com@herrie.org>
References: <20260603071519.807604-2-github.com@herrie.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 03 Jun 2026 07:22:23 +0000
Message-Id: <20260603072223.AAF1C1F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306025-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp,herrie.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5EA9E6353B0

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The schema does not enforce mutual dependencies for functionally=
 coupled properties (`dc-current-limit-gpios` with `dc-current-limit-mappin=
g`, and `usb-current-limit-gpios` with `usb-current-limit-values`).
- [Low] The property `usb-current-limit-values` violates the standard devic=
etree unit suffix naming convention.
- [Low] The device tree node name in the added example violates standard De=
vicetree naming conventions.
--

commit 2e0e545e4d1ddb26950bce515555057419610f75
Author: Herman van Hazendonk <github.com@herrie.org>

dt-bindings: power: supply: maxim,max8903: add DC and USB input current-lim=
it controls

Add four optional properties to the MAX8903 charger binding to describe
board-level GPIO control of the DC and USB input current limits.

> diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max8903=
.yaml b/Documentation/devicetree/bindings/power/supply/maxim,max8903.yaml
> index 86af383789992..5e970ebc08df6 100644
> --- a/Documentation/devicetree/bindings/power/supply/maxim,max8903.yaml
> +++ b/Documentation/devicetree/bindings/power/supply/maxim,max8903.yaml
> @@ -44,6 +44,41 @@ properties:
>      maxItems: 1
>      description: USB suspend pin (active high, output)
> =20
> +  dc-current-limit-gpios:
> +    minItems: 1
> +    maxItems: 4

[Severity: Medium]
Should the schema enforce mutual dependencies between these new properties =
at
the root level?

Defining a GPIO mux control without the mapping of bit patterns to current
limits is invalid, and conversely, providing a mapping without the GPIOs to
control it has no effect. Similarly, specifying usb-current-limit-values
without usb-current-limit-gpios doesn't seem meaningful.

Without a 'dependencies' or 'dependentRequired' block at the root of the
schema, would incomplete devicetree configurations silently pass
dt_binding_check validation?

> +    description:
> +      GPIOs controlling DC input current limit via resistor mux.
> +      Used with dc-current-limit-mapping to select charging current.
> +
> +  dc-current-limit-mapping:
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix

[ ... ]

> +  usb-current-limit-gpios:
> +    maxItems: 1
> +    description:
> +      GPIO controlling USB input current limit.
> +      Low =3D usb-current-limit-values[0], High =3D usb-current-limit-va=
lues[1].
> +
> +  usb-current-limit-values:
> +    $ref: /schemas/types.yaml#/definitions/uint32-array
> +    minItems: 2
> +    maxItems: 2
> +    default: [100000, 500000]

[Severity: Low]
Does this property name violate the standard devicetree unit suffix naming
conventions?

Properties that express a microamp value should generally end with the
-microamp suffix (e.g., usb-current-limit-microamp) to allow automatic unit
type validation by the dtschema tooling.

> +    description:
> +      USB current limits in microamps for GPIO low and high states.
> +      Default is 100mA (low) and 500mA (high) per USB specification.
> +
>  required:
>    - compatible

[ ... ]

> @@ -65,3 +100,26 @@ examples:
>        chg-gpios =3D <&gpio3 15 GPIO_ACTIVE_LOW>;
>        cen-gpios =3D <&gpio2 5 GPIO_ACTIVE_LOW>;
>      };
> +  - |
> +    /* Example with DC and USB current limit control */
> +    #include <dt-bindings/gpio/gpio.h>
> +    charger-with-current-limit {
> +      compatible =3D "maxim,max8903";

[Severity: Low]
Could this trigger dtc compiler warnings or dt-schema validation errors when
generic node name patterns are strictly enforced?

The Devicetree Specification recommends node names be generic and reflect t=
he
function of the device. Should this be renamed to a generic name like
'charger'?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260603071519.8076=
04-1-github.com@herrie.org?part=3D1

