Return-Path: <devicetree+bounces-224284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 12240BC27F6
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 21:24:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BA8E13AB773
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 19:24:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3F0522D7B0;
	Tue,  7 Oct 2025 19:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="BeY0t+XP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF002236F2
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 19:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759865036; cv=none; b=iw71FDeRk6oi5cKeL7M6CeDi65uNfxIuBuJ/ajUTDfBnSeCP3S39Hn8xO30Xj1no+BpyTbRgO5iUIhTip52Q3zWICb87OwagA97NN5Ykkr8tT7k0Vbpw6UNL7G6J9YZ7rCTtkcwAAl706IHuk+BhiLUvRgcTA+xFtjPNO4NHwGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759865036; c=relaxed/simple;
	bh=Xw87XgCbg1sAtPDYd2NoXiEutjwEoopTGJYzoXJp+RU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A0abS++Cc+e2PBk8OD7d1acaCx/MVSAam+pujvIGRBAnqj0uQBjNMwUGHyJs7slqCAQSJJZ4IhcEHbB3qz5Wv9wH4FF9oqZDfKoGeslvpVtYqEMUJgI7CzvMi4Tn0kV/kDxg9l9to7BFJF+5lYDo8E4LNj59JmG7hbu/DnAbWKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=BeY0t+XP; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-77f1f29a551so8467991b3a.3
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 12:23:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759865034; x=1760469834; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eT1nwRDKVbKeF8BXec5ppEFdy9ETGubsSZiyxLMw9JI=;
        b=BeY0t+XPIL49xGOpuFawoFJcyKkJT42Sx+SmegzwSVIr0zRs/+N3UQ2vb6Nw0S8Th6
         P6R8jdaXsc9UCy+8ByKBz65bzckfmDBv/qrTT8PxAWJWhS0HokRZcCtkgu3EBf4DFk8R
         F8Az6eu4+yFOWCOMHoXxJZ0XDgel6Csu+9/s7huIuiK3V2l+9gmOUofebtpA7OpQY9Sm
         O4/qzioO4qk431yZUiyJsfCuNUdg5ge5S9eEztjfqP4HZkHyC+TlBlFHs67J2VcjR5sy
         0ra+sU4if5dvHqoFhzw26vD31vwLfaNxRK9Avkx9/jcujFk2UHw/1llUOv52QkhM0xVs
         HcfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759865034; x=1760469834;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eT1nwRDKVbKeF8BXec5ppEFdy9ETGubsSZiyxLMw9JI=;
        b=LdBm6M295RHtAlrFOHNhMYaS7l4td4f3S5slzclvinVqAP8BHaFTr9OvoIut7EVxBP
         /d+iNQ6nX36DfegriBR5lNZjkIyicWn06LE8JwwFqm67H0AKfjc0+3HroXZz336+298O
         HrOuWZZTEhT5S0e/XwCl4MBPn0RY6Y3mn6wQmJPMvBYzW/PeEA8x9P+0UD+Bq/BwWV6g
         E3PWIH6uv3YCVaxUUyuBiHABtwelXCJ2SgdcnsDU2CQMHcgYsUaduspHoCTQTIIIj/ap
         cUwdQ29A1FBXKzXqlqiDc5A0nX3qFOYNLgtgcxUDA7a/qGlL5RL1v9Dwyngah55ymEpv
         FNrA==
X-Forwarded-Encrypted: i=1; AJvYcCXEDicDOWAH4Ulk+UTHwmh/MiPFD50cxw0iLd9pq63ceG3DWbsvBCc3aiyeppdU9vOMZng9PTVDI3+5@vger.kernel.org
X-Gm-Message-State: AOJu0YwXj6Si4eUgww6MyiD76ExJvmZiSRd5nrV8j7i92zZQojS9SE05
	RzXtGS+dQ5RSTraJqf/kege1EHqrxvIShN9ob0sOvqi+bVKMCZq+J+tyH2Xn8lSZag==
X-Gm-Gg: ASbGncvj01tR69gHiB1+ALkoCVRODAG92EHNENxHnRgxy3Hj5wWnw5LOw95GF/lGfic
	11lHreVhExqu6cgRqFndBebY8vjN0wtSZhHeCWoUw1OsA8ZQIYMzrq6kRRUcMNE8ZjwIJnk9/yL
	hEeSfxgPplv8+P9OVxf/UABPl+g/95Z2GSQtERxy5sGhaMN8ZqOuUIdxBSTKMtmvUD5zRKaLQPp
	RSPum8vcyJG2HvENSwI3UdPFQx8m/7+cVbWh5h8sGbqNC4AmxAHumSc2o26pLBeJzrjrQy8Fs0I
	PM0LcPEic/ExUBXbB1RM1z2f6ZWRG4K7FHv2B5PVs6rHsTbxqoWMDJtR3oKfjIW8l7L051UZFBU
	WoHgX6hfugSdVFEcE6+la8G3Oe4sRAo7gLUOMwJpbRlydo+N3uDVG8i62iXi8KJ5QcZJaJ6w2Zj
	GEFpL5+gL3An9Qh95INv3Hu4x9dAJKhtc=
X-Google-Smtp-Source: AGHT+IGSwGW88WMOLbHemUBllZFvuVlpdJOj4FF3pHUy4SuNXB8acXcCYQBlHBqvvbgzLZJwVZQjDQ==
X-Received: by 2002:a05:6a21:33a9:b0:2c9:1323:f800 with SMTP id adf61e73a8af0-32da80db36cmr695432637.9.1759865033911;
        Tue, 07 Oct 2025 12:23:53 -0700 (PDT)
Received: from google.com (232.92.83.34.bc.googleusercontent.com. [34.83.92.232])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78b0205336csm16623586b3a.45.2025.10.07.12.23.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 12:23:52 -0700 (PDT)
Date: Tue, 7 Oct 2025 19:23:49 +0000
From: Benson Leung <bleung@google.com>
To: Jameson Thies <jthies@google.com>
Cc: akuchynski@chromium.org, abhishekpandit@chromium.org,
	krzk+dt@kernel.org, robh@kernel.org, bleung@chromium.org,
	heikki.krogerus@linux.intel.com, ukaszb@chromium.org,
	tzungbi@kernel.org, devicetree@vger.kernel.org,
	chrome-platform@lists.linux.dev, linux-usb@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: chrome: Add Cros EC UCSI driver
Message-ID: <aOVoxQY3sLgkzJgD@google.com>
References: <20251001193346.1724998-1-jthies@google.com>
 <20251001193346.1724998-2-jthies@google.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Bael24djLhppaNDA"
Content-Disposition: inline
In-Reply-To: <20251001193346.1724998-2-jthies@google.com>


--Bael24djLhppaNDA
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 01, 2025 at 07:33:41PM +0000, Jameson Thies wrote:
> Chrome OS devices with PDCs allow the host to read port status and
> control port behavior with UCSI commands sent to the embedded controller
> (EC). Add documentation for cros-ec-ucsi node which loads the Chrome OS
> UCSI driver.
>=20
> Signed-off-by: Jameson Thies <jthies@google.com>

Reviewed-by: Benson Leung <bleung@chromium.org>


> ---
>  .../bindings/chrome/google,cros-ec-ucsi.yaml  | 71 +++++++++++++++++++
>  .../bindings/mfd/google,cros-ec.yaml          |  4 +-
>  2 files changed, 74 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/chrome/google,cros-=
ec-ucsi.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/chrome/google,cros-ec-ucsi=
=2Eyaml b/Documentation/devicetree/bindings/chrome/google,cros-ec-ucsi.yaml
> new file mode 100644
> index 000000000000..2121776e3ff0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/chrome/google,cros-ec-ucsi.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/chrome/google,cros-ec-ucsi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Google Chrome OS EC(Embedded Controller) UCSI driver.
> +
> +maintainers:
> +  - Abhishek Pandit-Subedi <abhishekpandit@chromium.org>
> +  - Andrei Kuchynski <akuchynski@chromium.org>
> +  - Benson Leung <bleung@chromium.org>
> +  - Jameson Thies <jthies@google.com>
> +  - =C5=81ukasz Bartosik <ukaszb@chromium.org>
> +
> +description:
> +  Chrome OS devices with PDC-based USB-C ports expose a UCSI interface
> +  from the Embedded Controller (EC) which allows the host to request
> +  port state and control limited port behavior (DR/PR swap). This node
> +  allows the host UCSI driver to send and receive UCSI commands to a
> +  Chrome OS EC. The node for this device should be under a cros-ec node
> +  like google,cros-ec-spi.
> +
> +properties:
> +  compatible:
> +    const: google,cros-ec-ucsi
> +
> +  '#address-cells':
> +    const: 1
> +
> +  '#size-cells':
> +    const: 0
> +
> +patternProperties:
> +  '^connector@[0-9a-f]+$':
> +    $ref: /schemas/connector/usb-connector.yaml#
> +    required:
> +      - reg
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |+
> +    spi {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;
> +
> +      cros_ec: ec@0 {
> +        compatible =3D "google,cros-ec-spi";
> +        reg =3D <0>;
> +        interrupts =3D <35 0>;
> +
> +        typec {
> +          compatible =3D "google,cros-ec-ucsi";
> +
> +          #address-cells =3D <1>;
> +          #size-cells =3D <0>;
> +
> +          connector@0 {
> +            compatible =3D "usb-c-connector";
> +            reg =3D <0>;
> +            power-role =3D "dual";
> +            data-role =3D "dual";
> +            try-power-role =3D "source";
> +          };
> +        };
> +      };
> +    };
> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml b/=
Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> index 50f457090066..646bc81c526f 100644
> --- a/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec.yaml
> @@ -99,7 +99,9 @@ properties:
>    gpio-controller: true
> =20
>    typec:
> -    $ref: /schemas/chrome/google,cros-ec-typec.yaml#
> +    oneOf:
> +      - $ref: /schemas/chrome/google,cros-ec-typec.yaml#
> +      - $ref: /schemas/chrome/google,cros-ec-ucsi.yaml#
> =20
>    ec-pwm:
>      $ref: /schemas/pwm/google,cros-ec-pwm.yaml#
> --=20
> 2.51.0.618.g983fd99d29-goog
>=20

--Bael24djLhppaNDA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQCtZK6p/AktxXfkOlzbaomhzOwwgUCaOVowgAKCRBzbaomhzOw
wghaAP4ptO8He+nJ7m200fytazpueLrS9kKxn3i2rwNFghRDdgD+K5AL8DYGEsTY
DAUJA4flfi9ks9FmXLEf5hEQyUN98w4=
=nNDB
-----END PGP SIGNATURE-----

--Bael24djLhppaNDA--

