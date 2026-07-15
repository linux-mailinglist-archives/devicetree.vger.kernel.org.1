Return-Path: <devicetree+bounces-326923-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id NECiFqN0V2rYOQEAu9opvQ
	(envelope-from <devicetree+bounces-326923-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:53:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E35AC75DCD1
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 13:53:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=mIeRPsvu;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326923-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-326923-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0377A302B252
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7344E448CF5;
	Wed, 15 Jul 2026 11:52:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F4044C64E
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 11:52:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784116351; cv=none; b=f7kkylSuxE0F9VhWIP6b4ol7x40/RqbUvFVoAHnZljaRYkgMfu7MIPVYDKrC5yA8Sn0gTgvyhbHzEkWit6ZGe0qMrmsUe76DCbpiKfLWIdNCQtHBL98pStWZLvaM5CCZS7UjUs5WFG1aBjcNXQwqJLGD9RmGaFokRwNd9GDVpP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784116351; c=relaxed/simple;
	bh=vvr5+aFnoGYJzzAW9rmvs/kcuSJaDve9r9v6pRODiUY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kdXVL8EfTHuq1Gp2Gx4cdm+BW5wZODDMEZQkEP6Ok+ZBmrTme7JVsXiBfVM+kmYO9my8sanSITViI1mh5lYoYqw9R5a6tWoOS69bV8e9dYovLD4CN4jcLadJCQQ9ab154ihfWrsv/ye043ku4qBzca6LY/YRpp2j/YNFPo6v+58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIeRPsvu; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC1751F000E9;
	Wed, 15 Jul 2026 11:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784116350;
	bh=C971BPgvNC/epwgA3K2n5slVmNA20T8lKZclMhbKwNY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mIeRPsvuheRFM7at3EG9vkaTDI3ugQxyBqDKOsQtcZ7/t2wMeSji834MaWUIE27vx
	 PxlS9otNu6DGPOJxZz6DiRYF87MataODQ/ddOlGxN2xnyiTib85bsEpRL4eFV9LV/p
	 rcXh2njnKs4kSGA2fvQCRERkK4LRVTe+5L94/hZnEjxzJqBpw2Kyo4RvgEUe38SqZa
	 rpbm411VStpgCtQyl6EcubySi2Nr0P8MpZ6D91OwbC96ZpRYh8zDrMD9NZ/9oleSgR
	 WZAuR95GEShzyUN981Wr/buHwP9nB0zJDa8o/72Egbm8LU7vugKcUZJkxO33VxDu+v
	 8zA2yjr7aIIOQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 4/5] dt-bindings: iio: dac: Add AD5529R
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janani Sunil" <janani.sunil@analog.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260715-ad5529r-driver-v6-4-cfdf8b9f5ee3@analog.com>
References: <20260715-ad5529r-driver-v6-0-cfdf8b9f5ee3@analog.com>
 <20260715-ad5529r-driver-v6-4-cfdf8b9f5ee3@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 11:52:29 +0000
Message-Id: <20260715115229.CC1751F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326923-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:janani.sunil@analog.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,analog.com:email,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E35AC75DCD1

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing `spi-cpha` and `spi-cpol` in the `properties` block caus=
es valid SPI Mode 3 configurations to fail dt-schema validation.
- [Medium] Using `additionalProperties: false` with `$ref: dac.yaml` breaks=
 inheritance, causing standard DAC properties to be incorrectly rejected.
--

--- Patch [4]: [PATCH v6 4/5] dt-bindings: iio: dac: Add AD5529R ---
commit e027ded7c4d70f1636e16dc892937b3656b0c91d
Author: Janani Sunil <janani.sunil@analog.com>

dt-bindings: iio: dac: Add AD5529R

Devicetree bindings for AD5529R 16 channel 12/16 bit high voltage,
buffered voltage output digital-to-analog converter (DAC) with an
integrated precision reference.

> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5529r.yaml b=
/Documentation/devicetree/bindings/iio/dac/adi,ad5529r.yaml
> new file mode 100644
> index 0000000000000..730206fd6eaba
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5529r.yaml
> @@ -0,0 +1,224 @@

[ ... ]

> +patternProperties:
> +  "^channel@([0-9a-f]{1,2})$":
> +    $ref: dac.yaml
> +    type: object
> +    description: Child nodes for individual channel configuration
> +
> +    properties:
> +      reg:
> +        description:
> +          Flattened channel number across all AD5529R devices sharing th=
e chip
> +          select. Within each 16-channel block, the physical channel num=
ber is reg % 16.
> +        minimum: 0
> +        maximum: 63
> +
> +      output-range-microvolt:

[ ... ]

> +    required:
> +      - reg
> +
> +    additionalProperties: false

[Severity: Medium]
Since this node uses $ref: dac.yaml, shouldn't this be
unevaluatedProperties: false instead?

Using additionalProperties: false restricts valid properties strictly to the
local properties block. Standard DAC properties inherited from dac.yaml
(such as label) will be incorrectly rejected by dt_binding_check.

> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +  - avdd-supply
> +  - hvdd-supply
> +
> +dependencies:
> +  spi-cpha: [ spi-cpol ]
> +  spi-cpol: [ spi-cpha ]

[Severity: Medium]
Will this fail dt_binding_check validation for valid SPI Mode 3
configurations?

The dependencies block enforces that both properties are present, but spi-c=
pha
and spi-cpol are not explicitly defined in the properties block.

Because unevaluatedProperties: false is used at the top level and
spi-peripheral-props.yaml does not define spi-cpha or spi-cpol, they must be
explicitly declared (e.g., spi-cpha: true) in the properties block.

Otherwise, configurations correctly using SPI Mode 3 will be rejected with =
an
"unevaluated property" error.

> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +unevaluatedProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715-ad5529r-dr=
iver-v6-0-cfdf8b9f5ee3@analog.com?part=3D4

