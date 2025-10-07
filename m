Return-Path: <devicetree+bounces-224089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 5317FBC0ACF
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:37:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 104744F4964
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E89912E040E;
	Tue,  7 Oct 2025 08:33:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mm/htQGl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 837D72E06E4
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:33:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759826008; cv=none; b=KG4al9fwtYxJgY0L7fLNtilpv05jX+ESlx37xxWU0oS6X8b71Rdx/xcBIND2xlRbATHoJMmQNOLTL6ifkLR5rdewkdhIukovNOi9Yi6/K9lb54mZIXwy8zgENYPGcbeCnA8Fsd1ZhDS3/UfV8u7KP0MxGPZBvlu1loU9MWYj078=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759826008; c=relaxed/simple;
	bh=Lee8N5iEc1uUJfjt/Yh7XEwpo+Xg7SPtu0yQg/hrcno=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j2RbvYuE8ZxERW8rXCbfifqowml30m0w3+s5KieBHzbIf2yBnORR/B1ovlN/jrM8wSUA/Hz6U0lvsKWdy6TZTGCeNF0dRvCKfWmUCgMvX4kv7e9E8Cljxd7riM218mjOk0h0YfI5THSbu8UJr/QSfgxers1+hJW8mcqlIsQY7Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mm/htQGl; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-57b8fc6097fso7884009e87.1
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759826005; x=1760430805; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=cIpONcxr9oHBn7Z3vExTtBudI+oTICOorfxFNOKk/YA=;
        b=mm/htQGlQVXJeZCixroeGOPF2i3E0wE6HmIGcOkPr21AOUD3SGHbt0hVFa40RQ/+DH
         whq4O6nXMYdtUKWSc3S1MNGxpqzfVMPKJM9quevthVVHaD88kWaN43Ey4tjlrotIjLAy
         yEQRQRV9PM9srtqXjhc+lFQQlOO6qW9oqoZ43FZm8PRf93SXYmKljk8JmURaozE8GImV
         RLnwIYPIAYE7C+GhDFcxjw/KgnFn4q8S7fgLbzmkDFby3k9mHk4U4bHHRy5OWlxabyD1
         UYiWQ7ClYUIAdaAcb3pFGNMBeUwvT/fvuzTGNYni2PghBY/qgdYlkOTSsSgjSd797P0w
         pzcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759826005; x=1760430805;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cIpONcxr9oHBn7Z3vExTtBudI+oTICOorfxFNOKk/YA=;
        b=F+0U2f52gAXL6YYLGiVEwfo9m6IsNPnIInYNjWoJlM0s+CB5P3eHt8pjcHo0imlhM6
         lNTHKHLGYxG6lgMnXAQunGSKPVHhV97RhGu/ShF6e5oWssvyX5ef8LBMXgqr8DVdTjQb
         e6T4M0U51rGT8LnQB+5yWBTJuKv5vDDyCO3KGD/JsJYntc+NsksI+p8VcgPxoodi1ujR
         V4ejJjJTs/q/duLDKSW8FdyPpcfi+H4Lm0to0XrPxVbW7PArikWBLlZzCnE4IuHTLty4
         KKCtxy7A2Lb0KXJ80vxPoSCcml+z8nirSgdW5uX5flIJ9jOwqq8Ih2HxK2Pel0WGlBjo
         FeVQ==
X-Forwarded-Encrypted: i=1; AJvYcCUeQAo3aQ77MNYnUE4EQDbVqQJUF6LvN5/M3kJM5BTG7HXd3F0bVzCQcAU51OJm3p3d41xziEepX+uU@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/FvbQKvVwPtGpr1dnTwWRLvZFzV7BbXYCmnN7L+e4ZsJT7D85
	iceCT+MhofIf5jkDZRBu4gvSHVaN1M7nE7QAj5I6Bhpvnx6+SfkTWNHS
X-Gm-Gg: ASbGncvHcwiFgk5XKeLb64LAx/bbr++QSBT3enJ3umXS8+eM80d5oTioFrBGq3GaOa4
	z+L9qzGk94meinZyk83THy+l0cNRFKlgYvuX7GRTsYHxRkIIuFzNukz745xfrgmMpdQJDFRdgO2
	TqW62RWxUZQHzaU3Mwwc7KGIhQwQJ8BSKUlvDMGjCQbShRrM2gIB2sDrSWpkx2ZuvBE03Ff8HIt
	2CnZtb46ytG9TRE9HqByNksq+UKti2fvrI+wKTwEDAdl+31y9IQQs3CLMrQvQZB4adfJXqL2Mk2
	htresPO6eLCMmCxGmUEFhh7K9FHZz3EP/0iar+GyXH81M3EIZPD1al0tJg1xdU3e2kEw1xW57Z5
	aMFzU2W3+ovLB/YGRC5hHFJ+S9SBFUpuvlWdkaiaguWk+Si+q/RfQ2g==
X-Google-Smtp-Source: AGHT+IGV+f3kF5i1L5zcykmsamlfxPlyY7h0Wy5wEUPfLcfYA09xWQt1P1iomSsNDQk3zL84PrE1BA==
X-Received: by 2002:a05:6512:3e10:b0:57a:de0d:d9ce with SMTP id 2adb3069b0e04-58cbb90df9cmr5082960e87.44.1759826004327;
        Tue, 07 Oct 2025 01:33:24 -0700 (PDT)
Received: from mva-rohm ([2a10:a5c0:800d:dd00:8fdf:935a:2c85:d703])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0113f461sm5883339e87.50.2025.10.07.01.33.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 01:33:23 -0700 (PDT)
Date: Tue, 7 Oct 2025 11:33:19 +0300
From: Matti Vaittinen <mazziesaccount@gmail.com>
To: Matti Vaittinen <mazziesaccount@gmail.com>,
	Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sebastian Reichel <sre@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Andreas Kemnade <andreas@kemnade.info>, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: [RFC PATCH 03/13] dt-bindings: power: supply: BD72720 managed battery
Message-ID: <19d537f9920cae5fa849b649e5bc42ba0b8e52f8.1759824376.git.mazziesaccount@gmail.com>
References: <cover.1759824376.git.mazziesaccount@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AryBLfzBjdVkmgj/"
Content-Disposition: inline
In-Reply-To: <cover.1759824376.git.mazziesaccount@gmail.com>


--AryBLfzBjdVkmgj/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

The BD72720 PMIC has a battery charger + coulomb counter block. These
can be used to manage charging of a lithium-ion battery and to do fuel
gauging.

ROHM has developed a so called "zero-correction" -algotihm to improve
the fuel-gauging accuracy close to the point where battery is depleted.
This relies on battery specific "VDR" tables, which are measured from
the battery, and which describe the voltage drop rate. More thorough
explanation about the "zero correction" and "VDR" parameters is here:
https://lore.kernel.org/all/676253b9-ff69-7891-1f26-a8b5bb5a421b@fi.rohmeur=
ope.com/

Document the VDR zero-correction specific battery properties used by the
BD72720 and some other ROHM chargers.

Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
---

The parameters are describing the battery voltage drop rates - so they
are properties of the battery, not the charger. Thus they do not belong
in the charger node.

The right place for them is the battery node, which is described by the
generic "battery.yaml". I was not comfortable with adding these
properties to the generic battery.yaml because they are:
  - Meaningful only for those charger drivers which have the VDR
    algorithm implemented. (And even though the algorithm is not charger
    specific, AFAICS, it is currently only used by some ROHM PMIC
    drivers).
  - Technique of measuring the VDR tables for a battery is not widely
    known. AFAICS, only folks at ROHM are measuring those for some
    customer products. We do have those tables available for some of the
    products though (Kobo?).
---
 .../power/supply/rohm,vdr-battery.yaml        | 78 +++++++++++++++++++
 1 file changed, 78 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/rohm,vdr=
-battery.yaml

diff --git a/Documentation/devicetree/bindings/power/supply/rohm,vdr-batter=
y.yaml b/Documentation/devicetree/bindings/power/supply/rohm,vdr-battery.ya=
ml
new file mode 100644
index 000000000000..85611ed050fa
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/supply/rohm,vdr-battery.yaml
@@ -0,0 +1,78 @@
+# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
+%YAML 1.2
+---
+$id: http://devicetree.org/schemas/power/supply/rohm,vdr-battery.yaml#
+$schema: http://devicetree.org/meta-schemas/core.yaml#
+
+title: Battery managed by the BD72720 PMIC
+
+maintainers:
+  - Matti Vaittinen <mazziesaccount@gmail.com>
+
+description:
+  A battery which has VDR parameters measuerd for ROHM chargers.
+
+allOf:
+  - $ref: battery.yaml#
+
+properties:
+  rohm,voltage-vdr-thresh-microvolt:
+    description: Threshold for starting the VDR correction
+
+  rohm,volt-drop-soc:
+    description: Table of capacity values matching the values in VDR table=
s.
+    $ref: /schemas/types.yaml#/definitions/uint32-array
+
+  rohm,volt-drop-high-temp-microvolt:
+    description: VDR table for high temperature
+
+  rohm,volt-drop-normal-temp-microvolt:
+    description: VDR table for normal temperature
+
+  rohm,volt-drop-low-temp-microvolt:
+    description: VDR table for low temperature
+
+  rohm,volt-drop-very-low-temp-microvolt:
+    description: VDR table for very low temperature
+
+
+additionalProperties: false
+
+examples:
+  - |
+    power {
+      #address-cells =3D <1>;
+      #size-cells =3D <0>;
+
+      battery: battery {
+        compatible =3D "simple-battery";
+
+        ocv-capacity-celsius =3D <25>;
+        ocv-capacity-table-0 =3D <4200000 100 4184314 100 4140723 95 40994=
87 90
+          4060656 85 4024350 80 3991121 75 3954379 70 3913265 65 3877821 60
+          3855577 55 3837466 50 3822194 45 3809012 40 3795984 35 3780647 30
+          3760505 25 3741532 20 3718837 15 3696698 10 3690594 5 3581427 0>;
+
+        rohm,volt-drop-soc =3D <1000 1000 950 900 850 800 750 700 650 600 =
550 500
+          450 400 350 300 250 200 150 100 50 00 (-50)>;
+
+        rohm,volt-drop-high-temp-microvolt =3D  <100 100 102 104 106 109 1=
14 124
+          117 107 107 109 112 116 117 108 109 109 108 109 122 126 130>;
+
+        rohm,volt-drop-normal-temp-microvolt =3D <100 100 102 105 98 100 1=
05 102
+          101 99 98 100 103 105 109 117 111 109 110 114 128 141 154>;
+
+        rohm,volt-drop-low-temp-microvolt =3D <100 100 98 107 112 114 118 =
118 112
+          108 108 110 111 113 117 123 131 144 157 181 220 283 399>;
+
+        rohm,volt-drop-very-low-temp-microvolt =3D <86 86 105 109 114 110 =
115 115
+          110 108 110 112 114 118 124 134 136 160 177 201 241 322 403>;
+
+        rohm,voltage-vdr-thresh-microvolt =3D <4150000>;
+
+        charge-full-design-microamp-hours =3D <1799000>;
+        voltage-max-design-microvolt =3D <4200000>;
+        voltage-min-design-microvolt =3D <3500000>;
+        degrade-cycle-microamp-hours =3D <131>;
+      };
+    };
--=20
2.51.0


--AryBLfzBjdVkmgj/
Content-Type: application/pgp-signature; name=signature.asc

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCgAdFiEEIx+f8wZb28fLKEhTeFA3/03aocUFAmjk0E8ACgkQeFA3/03a
ocVydQgAvCH2QkGIf75CADfjsN5Y0T0hTaWht8JMC6xy6F8J5j1bJJxSkkRdQWhg
pAjRCVJXzTe+yQ55kl77S9tpQ8IYOes6U/OlARruehTAIo6fL0m9wIKPgi3ENONS
Z6n2S0rUZ8MXLPA18CPLgNbNAMnVEE1ZjU9HqkeW1obfymRB0StGF5ofIf1KH+GD
FGk/at+JDBOQlOifUDGwSR/Ox6gwvARfRweHdJwUxFOu1fkeNp6k1tR1FbhU8+4z
hDzBqb0JFODBeHapk9j/IZaXsoKkrRiuBxTn8w9Slr1x23m21O1DV7HqKTXmdDug
o06qtym15kHvZGD0fkjz9eNfpFfkHQ==
=Ip1k
-----END PGP SIGNATURE-----

--AryBLfzBjdVkmgj/--

