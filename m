Return-Path: <devicetree+bounces-324706-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id DVsXMKt5UWqUFQMAu9opvQ
	(envelope-from <devicetree+bounces-324706-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 01:00:59 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 158D173FADF
	for <lists+devicetree@lfdr.de>; Sat, 11 Jul 2026 01:00:59 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=jK8pFSzE;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324706-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-324706-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5D996301326E
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 22:59:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5548409113;
	Fri, 10 Jul 2026 22:59:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F1242E737D
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 22:59:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783724360; cv=none; b=YYEiKR6BpS2iZnB4RUVDky8NwNBQx/041R2eA61NothMcOqi56Iphl8l6lle8+w49D//lbtu3qCqYXBevg7wPI5DbOigdNMipPf4ztBhBFKwwOjmcFWqF/LPoaei673LxIxkAnE3MFX54LmW0pKCM9/z3+aIZzRK6omGHj8Zie4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783724360; c=relaxed/simple;
	bh=B06uTSfziSZ+BXeQ5XjjR9KoFcUfSlgoMA8crSJ7g7c=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=QrQsoUSULB8r/g3WNBMhKOfA9MH7cQCgQ18MA8fEcsitAH33cgBLY/Wi3X3O4If9NGLXNp2hD7btCTrgOMc7zJ76tSFAvKFJwA5YvB+f5zhCKVghTUJ/ewGNrJB4c5q/MnOeT2d7OdSeAlPVUXc/TGDFrhNbHyntfi58qan66kI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jK8pFSzE; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D68181F000E9;
	Fri, 10 Jul 2026 22:59:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783724359;
	bh=y/1BR5n2NxXVf5KICGiVwja/fDPv/Wn+JGmuxJOsjwU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=jK8pFSzEbOQ4lzisIASfE/fnvEOrnz6tIi3kAbYl3yxBO/CPdtcMPYpiRB6QSsZ2b
	 nvcOb/uRFhGwPNf2/CAgMBCcFhCcuxfzmQbNCatyBzm13WtJ6XiywuRiiDVMED0wCc
	 pCvDK962yAg9/yepi8Hd3yWTxllU4mLWF03I+MP1BNmrd8y+ejh42ZX1bIRTybovGR
	 qI59JzgHK4S3gjwEBKnf5BZ6BJEjS6FpjeUINViDPeh7/51rhlWKfpj2TuG7o2IHR4
	 H9aIioTDVy1rUu7kondw6mEsZqn0fvIF4u8ZXTrNnEaZrhQdDPIB5aTl7sE9RHVY0X
	 6c5uKaB617C1Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/8] dt-bindings: iio: adc: add ti,ads122c14
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?RGF2aWQgTGVjaG5lciAoVEkp?= <dlechner@baylibre.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260710-iio-adc-ti-ads122c14-v3-5-746d52cbf1d0@baylibre.com>
References: <20260710-iio-adc-ti-ads122c14-v3-0-746d52cbf1d0@baylibre.com>
 <20260710-iio-adc-ti-ads122c14-v3-5-746d52cbf1d0@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 22:59:18 +0000
Message-Id: <20260710225918.D68181F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	TO_EXCESS_BASE64(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324706-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dlechner@baylibre.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,baylibre.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 158D173FADF

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The binding defines GPIO provider capabilities (`gpio-controller=
`, `#gpio-cells`) but fails to include them in the `required` list and exam=
ples.
- [Medium] The `interrupt-names` property uses an object schema for `items`=
 (`enum`), which fails to enforce positional ordering and contradicts the s=
trict positional definition of the `interrupts` property.
- [Medium] The commit message claims that the `ti,vref-source` property is =
reused, but the code actually implements the standard `reference-sources` p=
roperty instead.
--

--- Patch [5]: [PATCH v3 5/8] dt-bindings: iio: adc: add ti,ads122c14 ---
commit f62252330aecb9a95c850b342f0d43957821ef3a
Author: David Lechner (TI) <dlechner@baylibre.com>

dt-bindings: iio: adc: add ti,ads122c14

Adds bindings for Texas Instruments' ADS112C14 and ADS122C14 ADC chips
primarily designed for use with temperature sensors.

>     The REFP/REFN reference voltage is usually just connected to a resist=
or
>     that is being driven by the ADC's current outputs, so there is special
>     property for this case rather than requiring a regulator to be defined
>     to represent that.
>    =20
>     ti,vref-source is reused from ti,tlv320adcx140.yaml (otherwise might
>     have preferred an enum of strings).

[Severity: Medium]
The commit message mentions reusing ti,vref-source, but the schema actually
implements the standard reference-sources property instead. Could the commit
message be updated to match the code?

> diff --git a/Documentation/devicetree/bindings/iio/adc/ti,ads112c14.yaml =
b/Documentation/devicetree/bindings/iio/adc/ti,ads112c14.yaml
> new file mode 100644
> index 0000000000000..a2ee473c8e61e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/adc/ti,ads112c14.yaml
[ ... ]
> +  interrupt-names:
> +    minItems: 1
> +    maxItems: 2
> +    items:
> +      enum: [fault, drdy]

[Severity: Medium]
Does this items definition for interrupt-names allow invalid orderings?

By using an object schema instead of an array of constraints, this fails
to enforce positional ordering. It appears the schema could pass device tre=
es
where interrupt-names are reversed (["drdy", "fault"]) or duplicated
(["fault", "fault"]).

It also allows ["drdy"] when only one interrupt is provided, contradicting
the interrupts definition which requires the first item to be the fault
interrupt.

[ ... ]
> +required:
> +  - compatible
> +  - reg
> +  - avdd-supply
> +  - dvdd-supply

[Severity: Medium]
Since the binding defines GPIO provider capabilities (gpio-controller and
#gpio-cells), should they be included in this required list?

Omitting them allows incomplete device tree nodes that advertise GPIO
capabilities without the corresponding required properties to pass schema
validation.

[ ... ]
> +examples:
> +  - |
> +    i2c {

[Severity: Medium]
Are the GPIO provider properties missing from the examples section?

If gpio-controller and #gpio-cells become required properties, the examples
will need to include them to pass schema validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-iio-adc-ti=
-ads122c14-v3-0-746d52cbf1d0@baylibre.com?part=3D5

