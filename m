Return-Path: <devicetree+bounces-307095-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id wFAsIJz/IWq7RQEAu9opvQ
	(envelope-from <devicetree+bounces-307095-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 00:43:40 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E674F643D56
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 00:43:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=collabora.com header.s=zohomail header.b=ifxeqzMd;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307095-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307095-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=collabora.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=2")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id CEE233024A32
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 22:43:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2590137268A;
	Thu,  4 Jun 2026 22:43:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from sender4-op-o11.zoho.com (sender4-op-o11.zoho.com [136.143.188.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBE702EEE72;
	Thu,  4 Jun 2026 22:43:36 +0000 (UTC)
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780613018; cv=pass; b=gyin01bKz91BUxFfc0ZltnZZ6yWQw5MzYOMFDa8lX6u5T09Q4DHMcBlvdwXUlW981oUKdzjoOda4doqBpkH8U4D0ro4mdozVuqur/9AT96Y4q5K5n39ExVXmbTWSEdXei09mzGFENYwYLxWXXv5gXe6xF+cxn4mgTz42Czhs7Ko=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780613018; c=relaxed/simple;
	bh=RK8ldNIq4y4q218TvWRfgdxiF5Rc1tBIcygYULlykJQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nP8ktjwb9WS5RrByIwOh2Hbxf58XebFBWSAXyYw7dxlMgIdIwtmlxd7Ws1FX/Ei0R6+1N4lg3XOWD+JbPcWJtB2ax5DVkf0oRb/2kY7JuVBIpt7oeqAVEsWcseqZRDXDaAzDwciRyR13yg+4YY08WWU5I7XtEKvo/zPp3Dg+G8c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=collabora.com; spf=pass smtp.mailfrom=collabora.com; dkim=pass (1024-bit key) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b=ifxeqzMd; arc=pass smtp.client-ip=136.143.188.11
ARC-Seal: i=1; a=rsa-sha256; t=1780613002; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=VvtuU39/xkeO0kBPui+ZcRVhlOW1UCYLZWZBmOyG7FjSiUCT1O8zBA/jAr8cXCWDANAzVkk7x/Xt1EyAoHxZTvZBBLtfCGC09N6CTT72KTSqGDWv0EPLqH2a14+MUmnUMazFqFrqlbfnCY+rMpUqLM3qgi48QMotGU82kG2HGwM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1780613002; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pdqX7LQ1wxWcyGd/5yWW3kd9MJdu3ozrKdic9+rKC7I=; 
	b=b4fLeGgQNDExTQF3b8hbG+oEJTjbgsXmwkJySUxBuN2UwQ3J9K1pm7CZgS9T6n6/uZOW8I6ThCUpuf5oMD2Pg1cSfTqF1r2sQu5K+t2v3XqGH4QX0LFev4Ru+uvbZ06EI9RToYXI6vvQ10fv6ISUsCk78rAoc4223Vvle7PXiu4=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1780613002;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=pdqX7LQ1wxWcyGd/5yWW3kd9MJdu3ozrKdic9+rKC7I=;
	b=ifxeqzMdovNulTQgVjUkOCiSTwqbHfjn6bERrIMc3GqoBMhO1gTNp6YO3gqggw30
	gimua9Aw7CYIVvlDDsCu59ijbXIxHdUwXr36h0G7VyW4A5v8uZGRRL2ghLLQK8gg1S9
	9Wyx+B20yNR6c5Bfyvxc6AnSgQev61/Xx2aodPwI=
Received: by mx.zohomail.com with SMTPS id 178061300020975.38972895762834;
	Thu, 4 Jun 2026 15:43:20 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id 74078183856; Fri, 05 Jun 2026 00:43:16 +0200 (CEST)
Date: Fri, 5 Jun 2026 00:43:16 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Herman van Hazendonk <github.com@herrie.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-pm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: power: supply: maxim,max8903: add DC
 and USB input current-limit controls
Message-ID: <aiH9IOUWjmpkpko_@venus>
References: <20260603071519.807604-1-github.com@herrie.org>
 <20260603071519.807604-2-github.com@herrie.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="cqfzidfxitp4ifnn"
Content-Disposition: inline
In-Reply-To: <20260603071519.807604-2-github.com@herrie.org>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.2.1.5.2/280.604.68
X-ZohoMailClient: External
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.76 / 15.00];
	SIGNED_PGP(-2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[collabora.com,none];
	R_DKIM_ALLOW(-0.20)[collabora.com:s=zohomail];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-307095-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:github.com@herrie.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:linux-pm@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORWARDED(0.00)[lists@lfdr.de];
	DKIM_TRACE(0.00)[collabora.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sebastian.reichel@collabora.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_SOME(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,venus:mid,collabora.com:from_mime,collabora.com:dkim,herrie.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E674F643D56


--cqfzidfxitp4ifnn
Content-Type: text/plain; protected-headers=v1; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH 1/2] dt-bindings: power: supply: maxim,max8903: add DC
 and USB input current-limit controls
MIME-Version: 1.0

Hi,

On Wed, Jun 03, 2026 at 09:15:18AM +0200, Herman van Hazendonk wrote:
> Add four optional properties to the MAX8903 charger binding to
> describe board-level GPIO control of the DC and USB input current
> limits:
>=20
> DC input (TA / DOK pin):
>   - dc-current-limit-gpios (1..4 GPIOs): mux control lines feeding
>     the MAX8903 IDC resistor mux;
>   - dc-current-limit-mapping (uint32-matrix of {microamps,
>     gpio_bit_pattern} pairs): the available current levels and the
>     GPIO bit pattern that selects each level.
>=20
> USB input (USB / UOK pin):
>   - usb-current-limit-gpios: a single GPIO driving the IUSB
>     tri-state pin (low / high);
>   - usb-current-limit-values: the two microamp values that the IUSB
>     pin selects.
>
> These let userspace clamp the input draw via the standard
> POWER_SUPPLY_PROP_INPUT_CURRENT_LIMIT power_supply attribute. The HP
> TouchPad uses both: two TLMM lines select between 0.5 A, 1.0 A,
> 1.5 A and 2.0 A DC input current limits behind the MAX8903B
> charger, and a third TLMM line picks the IUSB 100 mA / 500 mA
> limit.
>=20
> These are purely additive; existing platforms remain unaffected.
>=20
> Signed-off-by: Herman van Hazendonk <github.com@herrie.org>
> ---
>  .../bindings/power/supply/maxim,max8903.yaml  | 58 +++++++++++++++++++
>  1 file changed, 58 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/power/supply/maxim,max8903=
=2Eyaml b/Documentation/devicetree/bindings/power/supply/maxim,max8903.yaml
> index 86af38378999..5e970ebc08df 100644
> --- a/Documentation/devicetree/bindings/power/supply/maxim,max8903.yaml
> +++ b/Documentation/devicetree/bindings/power/supply/maxim,max8903.yaml
> @@ -44,6 +44,41 @@ properties:
>      maxItems: 1
>      description: USB suspend pin (active high, output)
> =20
> +  dc-current-limit-gpios:
> +    minItems: 1
> +    maxItems: 4
> +    description:
> +      GPIOs controlling DC input current limit via resistor mux.
> +      Used with dc-current-limit-mapping to select charging current.
> +
> +  dc-current-limit-mapping:
> +    $ref: /schemas/types.yaml#/definitions/uint32-matrix
> +    minItems: 2
> +    maxItems: 16
> +    description: |
> +      Array of (current_microamps, gpio_bit_pattern) pairs defining avai=
lable
> +      DC current limits. The gpio_bit_pattern is applied to dc-current-l=
imit-gpios
> +      to select that current level.
> +    items:
> +      items:
> +        - description: Current limit in microamps
> +        - description: GPIO bit pattern value
> +
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
> +    description:
> +      USB current limits in microamps for GPIO low and high states.
> +      Default is 100mA (low) and 500mA (high) per USB specification.

The IUSB pin always selects between 100mA and 500mA for the MAX8903
according to the datasheet, so why is there a DT property?

Greetings,

-- Sebastian

> +
>  required:
>    - compatible
> =20
> @@ -65,3 +100,26 @@ examples:
>        chg-gpios =3D <&gpio3 15 GPIO_ACTIVE_LOW>;
>        cen-gpios =3D <&gpio2 5 GPIO_ACTIVE_LOW>;
>      };
> +  - |
> +    /* Example with DC and USB current limit control */
> +    #include <dt-bindings/gpio/gpio.h>
> +    charger-with-current-limit {
> +      compatible =3D "maxim,max8903";
> +      dok-gpios =3D <&gpio2 3 GPIO_ACTIVE_LOW>;
> +      flt-gpios =3D <&gpio2 2 GPIO_ACTIVE_LOW>;
> +      chg-gpios =3D <&gpio3 15 GPIO_ACTIVE_LOW>;
> +      cen-gpios =3D <&gpio2 5 GPIO_ACTIVE_LOW>;
> +      dcm-gpios =3D <&gpio2 6 GPIO_ACTIVE_HIGH>;
> +
> +      /* DC input current limit via IDC resistor mux */
> +      dc-current-limit-gpios =3D <&gpio1 0 GPIO_ACTIVE_HIGH>,
> +                               <&gpio1 1 GPIO_ACTIVE_HIGH>;
> +      dc-current-limit-mapping =3D <750000 0>,  /* GPIO[1:0]=3D0b00 */
> +                                 <900000 1>,  /* GPIO[1:0]=3D0b01 */
> +                                 <1400000 3>, /* GPIO[1:0]=3D0b11 */
> +                                 <2000000 2>; /* GPIO[1:0]=3D0b10 */
> +
> +      /* USB current control */
> +      usb-current-limit-gpios =3D <&gpio1 2 GPIO_ACTIVE_HIGH>;
> +      usb-current-limit-values =3D <100000 500000>; /* 100mA / 500mA */
> +    };
> --=20
> 2.43.0
>=20

--cqfzidfxitp4ifnn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmoh/4AACgkQ2O7X88g7
+pr4cA//fOqQ7w8bYspjrUW3LnS/rmz+8gUdTh92bGjGyP3+oyK4EIHXZNvBUyaz
141DzjDX4WkZXmB6PMl815vvuT/FeHnEgTZfxiHPzLJC5GyYyX7wgVVnZ5W7mGAl
pxDmCYxkBWGUO+FRVhPY8aKMBW54A60nT+9aKGF/WAXnmIdRDOSkwfL0qaoDZGAu
K1DnIE7hKzi/H1IKJKAmThTi3QEJUPAgDA3QDU+Vb3BvLqJWYJcyPvHDBRBJFqlu
xfsIbCb8WfChsp8T5vPkafifRfYIfXMh3QhSc3IHLYcBWx9UKD7WZA8YKqwztGAx
cNW1emZ2ZrZvMXy1qor3mZ6zcRN2oO6ZW6no/U81ZXkP2dcW70nk/0VxNboHFZUz
J78ZL51HPbfCXMmE7tCo9Z9ANCvggKkBTRbNEG616qDek4SCMR+1mEIw5/cdXwTt
gJjjrs/OLBl43hBRuyUBRYEdMd8c9PqhctbVDzdZ+XVDRGAG6EgQbBYn8VVfVCJb
PGjkvmazjvs+WDaab8Y/NYrs9W/pJWjxZtQR19bRyZfjHky09dl9SewAX0ded6fK
ftiJPtRLzTvHP7FR1KiFNmxCZPfPmGr33vKTxKFpZQS5gF4AIdOpAIKx/qJ5OiAn
kw2bYg1HvEBqZ45WOkbx9mRw/NO10IMNcGL4u7Uko+yD1nIhHQY=
=uvqI
-----END PGP SIGNATURE-----

--cqfzidfxitp4ifnn--

