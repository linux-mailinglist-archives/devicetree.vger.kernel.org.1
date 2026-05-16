Return-Path: <devicetree+bounces-298729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id a1L0LIyjCGrHzAMAu9opvQ
	(envelope-from <devicetree+bounces-298729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 19:04:12 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 043B255CBFE
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 19:04:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8409C300A8E6
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 17:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE06A3E9F7D;
	Sat, 16 May 2026 17:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rEoCGpIA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EC303E7171;
	Sat, 16 May 2026 17:04:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778951049; cv=none; b=nYpo5Rdenf2kJt++onLOafo7VdPnn0VYTTREWNIeEfy3xR19PgdgTQmBI/0AoeibQ1SJyttb6TX5vFGEMFAEXCI1ScsFj06YYZ3qWCCdf1iwplotntcwSF3D7/m60/ZOF+zm/lu5Wok2WZwq454PnRxIyTVS0qPG/2cM5qx150o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778951049; c=relaxed/simple;
	bh=6dnNzIlqYAHpK5M5LruTOEvOLyKrZiLcxhgc2q+oObI=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=QImBb89AIlcqr9aUjfo//BiMGARwjTNJuu++ZpjqXYbJX989GKN8BcdlmIRdsjkZZvLDg3jlg9iQdT9he0pKAvnyPgod+S2MNxpujcfObSeEbx7qHJ4ZJbVmDM8MoNpEwcHb/GcwlfMUvstvhkSCt9ReFC+wEYhA7VPBT6MNszM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rEoCGpIA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9055C19425;
	Sat, 16 May 2026 17:04:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778951048;
	bh=6dnNzIlqYAHpK5M5LruTOEvOLyKrZiLcxhgc2q+oObI=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=rEoCGpIAaCgo6JzcXq3YbQLdiGR6UUKbOGU1SsZeed+YFZnbRZxHXQrvYSMWGXYkw
	 r8HTbRgzcszGR6fctjbzutsoSXNAQw9JQG8/PZdqREgE3vmCuKzFNYnu8J7JzPVRqK
	 6Y69OKfBO3igC3xvyP5VV0b16lpoXJ982YI4IetBIMrr2iaiW7aoZtQEZ9+163GSvb
	 ax32Bp8Ithj5csj+AevaOeOkJO+GAJQuUvJtKJ7q3WUyAg5Z847maCzuWxmKQj9kCC
	 oiobBO9wbLP8Lu4Q2UeyKx1Gl16MQs4b8QkIMfCWIIMgFaH8CZQkHQUmKU2aK+y7oh
	 uMzLcS8T0Exqg==
Date: Sat, 16 May 2026 18:03:58 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Liviu Stan <liviu.stan@analog.com>
Cc: David Lechner <dlechner@baylibre.com>, Nuno =?UTF-8?B?U8Oh?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Antoniu
 Miclaus <antoniu.miclaus@analog.com>, Francesco Lavra
 <flavra@baylibre.com>, <linux-iio@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux@analog.com>,
 <devicetree@vger.kernel.org>
Subject: Re: [PATCH v2 6/7] dt-bindings: iio: temperature: Add ADT7604
 support to adi,ltc2983
Message-ID: <20260516180358.094e6c2d@jic23-huawei>
In-Reply-To: <20260514144712.64374-7-liviu.stan@analog.com>
References: <20260514144712.64374-1-liviu.stan@analog.com>
	<20260514144712.64374-7-liviu.stan@analog.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 043B255CBFE
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-298729-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_TWELVE(0.00)[14];
	TO_DN_SOME(0.00)[]
X-Rspamd-Action: no action

On Thu, 14 May 2026 17:46:53 +0300
Liviu Stan <liviu.stan@analog.com> wrote:

> The ADT7604 shares the same die as the LTC2984. It repurposes the
> custom RTD sensor type (18) as a copper trace resistance sensor
> and the custom thermistor type (27) as a leak detector, and
> removes thermocouple, diode and direct ADC sensor types.
>=20
> Add adi,adt7604 to the compatible list and introduce two new
> sensor node types specific to this device:
>=20
> - copper-trace@: maps to the custom RTD sensor type (18). Two

Mixed back from Sashiko on this one...  But does point out that these
values are the hardware ones - binding shouldn't care as this
is using virtual ids to avoid reuse of existing ones.

Ignore it getting fussy about not matching hardware. We want them
to not match!


> variants: sub-ohm (< 1 ohm, adi,copper-trace-sub-ohm boolean,
> no custom table and excitation current) and standard (> 1 ohm,
> optional adi,custom-rtd table, optional excitation current
> defaulting to the datasheet recommended value). Primary output
> is resistance in ohms. When a custom table is provided, the
> chip also outputs temperature in millidegrees Celsius.
>=20
> - leak-detector@: maps to the custom thermistor sensor type (27).
> Takes an optional adi,custom-leak-detector lookup table encoding
> resistance (uOhm) against coverage data. Primary output is
> resistance in ohms. When a custom table is provided, the chip
> also outputs coverage in percent.
>=20
> Separate node types are used rather than extending the existing
> rtd@ and thermistor@ nodes because adi,custom-rtd and
> adi,custom-thermistor are currently required for types 18 and 27,
> and several properties (adi,number-of-wires, adi,rtd-curve,
> adi,rsense-share) have no meaning for copper trace and would need
> to be explicitly forbidden or ignored in the driver.
>=20
> allOf conditions are added to restrict thermocouple, diode, direct
> ADC and active temperature nodes to non-ADT7604 devices, and to
> restrict copper-trace and leak-detector nodes to the ADT7604
> (some parts only).
>=20
> Signed-off-by: Liviu Stan <liviu.stan@analog.com>


> +  '^leak-detector@':
> +    $ref: '#/$defs/sensor-node'
> +    unevaluatedProperties: false
> +    description: |
> +      Leak detector sensor (some parts only). Outputs resistance in ohms=
 and,
> +      when a custom table is provided, a coverage percentage via
> +      IIO_COVERAGE_PERCENT (raw/1024 =3D coverage %).
> +
> +    properties:
> +      reg:
> +        minimum: 2
> +        maximum: 20
> +
> +      adi,sensor-type:
> +        description: Sensor type for leak detector sensors.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +        const: 33
> +
> +      adi,rsense-handle:
> +        description: Associated sense resistor sensor.
> +        $ref: /schemas/types.yaml#/definitions/phandle
> +
> +      adi,excitation-current-nanoamp:
> +        description:
> +          Excitation current applied to the leak detector. The correct v=
alue
> +          depends on the electrical characteristics of the liquid being =
sensed.
> +          For example, 10000 (10=C2=B5A) is recommended for PG25 (see da=
tasheet
> +          Table 39).
> +        enum: [250, 500, 1000, 5000, 10000, 25000, 50000, 100000, 250000,
> +               500000, 1000000]
> +
> +      adi,custom-leak-detector:
> +        description: |
> +          Lookup table mapping resistance to coverage data. Entries must=
 be
> +          in ascending resistance order. The coverage data field encodes=
 the
> +          coverage percentage P as (P + 273.15) expressed in uK, i.e.
> +          (P * 1000000 + 273150000).

I like sashiko's comment on this.  Why are we having the hardware / driver
offset encoded in DT?  Just put in the value without the offset and apply t=
hat
in the driver.

> +        $ref: /schemas/types.yaml#/definitions/uint64-matrix
> +        minItems: 3
> +        maxItems: 64
> +        items:
> +          items:
> +            - description: Resistance point in uOhms.
> +            - description: Coverage data point (P + 273150000) in uK.
> +
> +    required:
> +      - adi,rsense-handle
> +      - adi,excitation-current-nanoamp
> +



