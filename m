Return-Path: <devicetree+bounces-310513-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vrLKGLbZKmpdyAMAu9opvQ
	(envelope-from <devicetree+bounces-310513-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 17:52:22 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB0E867336B
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 17:52:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Ohj+SqrC;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310513-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310513-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D38CB3014522
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 15:52:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2C1A37F8C0;
	Thu, 11 Jun 2026 15:52:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EFE3347BB5
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 15:52:17 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781193138; cv=none; b=OBojjYgQGEm/m0Fl1EjMhghyEDNt66EpgEBHe/eiPWgySa5xfrOwAOx316tMqkyKbBK17+2+eoVKsNDEC0V7Wo0Z1+NXP5OVqpJ1+m9idqfspI4Uct7LR9/TNyRSzkGu5UY8TXQ2Ey4n5hhq0ybP8pqj0YOnLmoPddRDshlc/N0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781193138; c=relaxed/simple;
	bh=t1CqmBHgVCMFXOaBLxhsxPrXJJSomWbPdYKFJCn+sAk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=peLmZhkV7y7u/xmZ+JDsRnrTvLBEFH4DTUaAplhDjgl+Xzhkm7ZoWdKaxlO9RIgWUKZkYseNM7l3hOC1/dHisvb1hSXumncS36FE52Jqng/cEtVG67grHrcpCCdRLnWlxLpwH8ES0yUbVjYsjmzFdsPkx7qyIHEC97RXzNIZbgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ohj+SqrC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B3741F00893;
	Thu, 11 Jun 2026 15:52:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781193137;
	bh=5FLClXRcM/kpHqWGXypBZhFkXQ8lR822FIMRSCU/I/E=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Ohj+SqrCHVCsFvz1XLuer4078wjv+e3y+heVSl4pfgnAZ12grbyL6HKUWeCaEzUb2
	 VqWYUIaE5XWFPyQvxi3lqjSHZvPYM2T6eOgHnBezuZidE2eOqf8cB2A31/Y66nYs3/
	 6mRPXi3vPiRo6LaRgPcJhJ8SLU5fOBaYrnzO+9V9PDv2Y4Jqreti3nZAQjrVjqK4y2
	 qz3y26ULcvjcW9EX66GlBwpB1yEWzT/EsaVsIawa2bJYxqbstyS728OtccGPH+dYVu
	 KV5k7M63m0n+BWppXC8H/FkjMFwgHTVBVy6I5PNIaU2rs50Yhunvtt/FgqjadWkahn
	 RjeJAengCw3Fg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: iio: accel: convert lis302 binding
 to YAML schema (v2)
Reply-To: sashiko-reviews@lists.linux.dev
To: "Md Shofiqul Islam" <shofiqtest@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260611154105.3727-4-shofiqtest@gmail.com>
References: <20260611154105.3727-4-shofiqtest@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 15:52:16 +0000
Message-Id: <20260611155217.0B3741F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-310513-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:shofiqtest@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB0E867336B

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [Medium] The `st,lis302dl` compatible string causes a dual-schema validat=
ion conflict.
- [Medium] The properties `st,click-double-{x,y,z}` were incorrectly omitte=
d during the YAML schema conversion.
- [Medium] The schema fails to document the upstream legacy typo `st,click-=
click-time-limit`, causing validation failures.
- [Medium] The `compatible` property incorrectly rejects upstream fallback =
combinations by strictly requiring a single exact match.
--

commit a5b5cff978006324100603bf6453cf1d3ceba157
Author: Md Shofiqul Islam <shofiqtest@gmail.com>

dt-bindings: iio: accel: convert lis302 binding to YAML schema (v2)

Replace the plain text lis302.txt with a YAML schema for the
LIS302DL/LIS3LV02D accelerometer family.

> diff --git a/Documentation/devicetree/bindings/iio/accel/st,lis302dl.yaml=
 b/Documentation/devicetree/bindings/iio/accel/st,lis302dl.yaml
> new file mode 100644
> index 0000000000000..8a19aa1085215
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/accel/st,lis302dl.yaml
> @@ -0,0 +1,320 @@
[ ... ]
> +properties:
> +  compatible:
> +    oneOf:
> +      - description: I2C variant (original part)
> +        const: st,lis302dl

[Severity: Medium]
Since this compatible string is also present in the existing
Documentation/devicetree/bindings/iio/st,st-sensors.yaml, does adding it he=
re
cause a dual-schema validation conflict?

If device tree nodes use st,lis302dl and include the legacy properties
introduced in this new schema, they might fail dt_binding_check validation
against st,st-sensors.yaml because that schema strictly restricts propertie=
s.

> +      - description: I2C variant (larger range)
> +        const: st,lis3lv02d
> +      - description: SPI variant; including the bus type in the compatib=
le
> +          string is a legacy naming error, do not copy for new bindings
> +        const: st,lis302dl-spi

[Severity: Medium]
Will this strict oneOf and const definition incorrectly reject valid upstre=
am
device trees that use a multiple-string fallback array?

Numerous upstream device trees (e.g., am335x-evm.dts, omap3-gta04a3.dts)
use a fallback array like:
	compatible =3D "st,lis331dlh", "st,lis3lv02d";

A const rule fails against an array, which will cause these boards to fail
schema validation.

Should this be rewritten to support items lists?

[ ... ]
> +  st,click-single-x:
> +    type: boolean
> +    deprecated: true
> +    description: Enable single-click detection on X axis.
> +
> +  st,click-single-y:
> +    type: boolean
> +    deprecated: true
> +    description: Enable single-click detection on Y axis.
> +
> +  st,click-single-z:
> +    type: boolean
> +    deprecated: true
> +    description: Enable single-click detection on Z axis.

[Severity: Medium]
Were the properties st,click-double-{x,y,z} omitted from this conversion?

The original lis302.txt binding defined these properties, and the driver at
drivers/misc/lis3lv02d/lis3lv02d.c actively parses them via
of_property_read_bool().

Since the new schema specifies unevaluatedProperties: false, any device tree
correctly utilizing the double-click properties will now fail schema valida=
tion.

[ ... ]
> +  st,click-thresh-y:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    deprecated: true
> +    description: See st,click-thresh-x.
> +
> +  st,click-thresh-z:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    deprecated: true
> +    description: See st,click-thresh-x.
> +
> +  st,click-time-limit:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    deprecated: true
> +    description: Click time limit in 0.5ms steps (0-127).

[Severity: Medium]
Does the schema need to document the legacy typo st,click-click-time-limit
to prevent validation failures?

The conversion correctly maps this to st,click-time-limit, but upstream
device trees (e.g., arch/arm/boot/dts/ti/omap/omap3-gta04a3.dts) still use =
the
misspelled property.

Because unevaluatedProperties is set to false, dt_binding_check will now fa=
il
for those boards.

Should this typo be accommodated similarly to how the st,click-thresh-x typo
was handled?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611154105.3727=
-1-shofiqtest@gmail.com?part=3D3

