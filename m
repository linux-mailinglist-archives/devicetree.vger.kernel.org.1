Return-Path: <devicetree+bounces-259637-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKBcNm3Kd2lylAEAu9opvQ
	(envelope-from <devicetree+bounces-259637-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:11:25 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5457B8CEB3
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 21:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id ADFFC300147D
	for <lists+devicetree@lfdr.de>; Mon, 26 Jan 2026 20:11:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAADB2C0290;
	Mon, 26 Jan 2026 20:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eOcDu/Mm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 985832C0266;
	Mon, 26 Jan 2026 20:11:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769458282; cv=none; b=caak4s43xjqRVRcAtsKMRFz7sNnzShDaNHmXHt0cO24jjoonvcwKLjejmZgNECtiGiaIuLxPzkHZ7hD5fo92G5LxPEP7UCj9KUkNrodk4oXbFB8iqZnP94rPHmaRURKWCQcRKsMG1zYE5mwdixviaOLYZJ+oB/YtssS1xRTQoJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769458282; c=relaxed/simple;
	bh=J3qYdIDqyV8RYRgDHENbIWZEFbDRj/MLMx4R8f4wuwc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HwgHSPYZJv2C7KdOOo5YnREk+qZC3ET7mmpdlY6eZ6iv7DYVE/o3xgpPD1ieHYM2yhjx0NlM6o0KHj0Wd3MoKdmqhk/DMR44KHrNyGVK68F2bF7mt2pA8VHuOox4iTUcyEJc48e+13KvYv7GOG+JTCwAPLhAKap5BK+GznjFm3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eOcDu/Mm; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 24147C116C6;
	Mon, 26 Jan 2026 20:11:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769458282;
	bh=J3qYdIDqyV8RYRgDHENbIWZEFbDRj/MLMx4R8f4wuwc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=eOcDu/MmFqgefo7yLUJC+pL/WMLQXaY7KT4kqkYdiTh64WdvrxOG8T80gga0WIH1V
	 0xyyo2b9TEGVIsJX7TBJgAlupbXkrlUtIZHe8a6zCXjGFqQ+lMiJdRr4ivwI1iBqN1
	 Rz9xjJxQLWWmaJM1If2GbypFtOa1zfHCY0kbiw0FWBRETcFVEpxtKKEm837YbnfPy7
	 jBCZY5xnMLoxAgaErPh3c/rNhSMUHYtoGuMRzDDSpaJjO6Q0kxxYxe6YS1Ug6dit/m
	 +Thp21fze3+8uSVvuCpVtge5pe+njM1aDg0F8S83scCMY9t3I6rquGRXAAhtzXKZPV
	 FY0dDrDqCNrSw==
Date: Mon, 26 Jan 2026 20:11:18 +0000
From: Conor Dooley <conor@kernel.org>
To: rodrigo.alencar@analog.com
Cc: linux-kernel@vger.kernel.org, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 2/6] dt-bindings: iio: amplifiers: Add AD8366 support
Message-ID: <20260126-porous-hurdle-bfc510f113bb@spud>
References: <20260126-iio-ad8366-update-v2-0-c9a4d31aeb01@analog.com>
 <20260126-iio-ad8366-update-v2-2-c9a4d31aeb01@analog.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="REc/ih/jUk+hM7Ip"
Content-Disposition: inline
In-Reply-To: <20260126-iio-ad8366-update-v2-2-c9a4d31aeb01@analog.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.26 / 15.00];
	SIGNED_PGP(-2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MIME_GOOD(-0.20)[multipart/signed,text/plain];
	MAILLIST(-0.15)[generic];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-259637-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+,1:+,2:~];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[conor@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,0.0.0.0:email,analog.com:url,analog.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5457B8CEB3
X-Rspamd-Action: no action


--REc/ih/jUk+hM7Ip
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 26, 2026 at 01:51:03PM +0000, Rodrigo Alencar via B4 Relay wrot=
e:
> From: Rodrigo Alencar <rodrigo.alencar@analog.com>
>=20
> Add device tree binding documentation for amplifiers and digital
> attenuators. This covers different device variants with similar
> SPI control.
>=20
> Signed-off-by: Rodrigo Alencar <rodrigo.alencar@analog.com>
> ---
>  .../bindings/iio/amplifiers/adi,ad8366.yaml        | 68 ++++++++++++++++=
++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 69 insertions(+)
>=20
> diff --git a/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.=
yaml b/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
> new file mode 100644
> index 000000000000..02f790fd73d7
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
> @@ -0,0 +1,68 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/amplifiers/adi,ad8366.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: AD8366 and similar Gain Amplifiers and Digital Attenuators
> +
> +maintainers:
> +  - Michael Hennerich <michael.hennerich@analog.com>
> +  - Rodrigo Alencar <rodrigo.alencar@analog.com>
> +
> +description:
> +  Digital Variable Gain Amplifiers (VGAs) and Digital Attenuators with
> +  SPI interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - adi,ad8366
> +      - adi,ada4961
> +      - adi,adl5240
> +      - adi,adrf5720
> +      - adi,adrf5730
> +      - adi,adrf5731
> +      - adi,hmc271a
> +      - adi,hmc792a
> +      - adi,hmc1018a
> +      - adi,hmc1019a
> +      - adi,hmc1119

Why do none of these devices use fallback compatibles? Please put the
rationale in the commit message.

> +
> +  reg:
> +    maxItems: 1
> +
> +  vcc-supply:
> +    description: Regulator that provides power to the device.
> +
> +  reset-gpios:
> +    maxItems: 1
> +
> +  enable-gpios:
> +    maxItems: 1

How come enable-gpios is optional? Is it optional on all devices?
Do all devices support enable-gpios and/or reset-gpios?

Cheers,
Conor.

> +
> +required:
> +  - compatible
> +  - reg
> +  - vcc-supply
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    spi {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      amplifier@0 {
> +        compatible =3D "adi,ad8366";
> +        reg =3D <0>;
> +        spi-max-frequency =3D <1000000>;
> +        vcc-supply =3D <&vcc_3v3>;
> +      };
> +    };
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 8b5bb7030fa6..c3403ae478b7 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1589,6 +1589,7 @@ M:	Rodrigo Alencar <rodrigo.alencar@analog.com>
>  L:	linux-iio@vger.kernel.org
>  S:	Supported
>  W:	https://ez.analog.com/linux-software-drivers
> +F:	Documentation/devicetree/bindings/iio/amplifiers/adi,ad8366.yaml
>  F:	drivers/iio/amplifiers/ad8366.c
> =20
>  ANALOG DEVICES INC AD9467 DRIVER
>=20
> --=20
> 2.43.0
>=20
>=20

--REc/ih/jUk+hM7Ip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCaXfKZQAKCRB4tDGHoIJi
0nSMAP9IMMgh4K1FRRAZto+4PMk3bPwjy7eoUdbW0FGtUPjOLQEAzTyvu8YAhB4S
gSXqK/0rn2l1g4Ih/ZMwKZ1CrVA4jQU=
=gRdd
-----END PGP SIGNATURE-----

--REc/ih/jUk+hM7Ip--

