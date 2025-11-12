Return-Path: <devicetree+bounces-237468-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F8EEC514B9
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 10:13:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id C0AC234ACD5
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 09:13:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFCBA2FD684;
	Wed, 12 Nov 2025 09:13:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CcC7wRZy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 188B02FD692
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 09:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762938802; cv=none; b=pPMek5Y32K2w/oBP9+OozjHMUv1IELvCK4Jlm3gVx1lcEQVUyrnVeei0BOujFPewOhH+Qo5xeN9aqVmvdam3DFDjqO92lIMfbgeg7XSNRyvPJ7PI7/itmVjIkZoZjumBdc9YpYRBpEOyXGAXnu4JGJs099Y9MiLccAsOe+3DSzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762938802; c=relaxed/simple;
	bh=rLIk17U86Vy0ymvxyTbp3y64zSv81R0NFcueOugWbMU=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=a9WYsL/XV/paaNnBCZvJlxUs/mXxGk7u9hZ298WTqNM4MdJf+iWJUVUEyk1KSqa0mjnnweN4n0NgVnZJwRdZv1noU1YbAHB/fKz644N+onLP6d/itxUbZKshopPzNxEIqv2JkE003rOxVMxMxXZCr934L6UlsvaBiZNey91bOkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CcC7wRZy; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-42b32a5494dso242783f8f.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 01:13:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762938799; x=1763543599; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rLIk17U86Vy0ymvxyTbp3y64zSv81R0NFcueOugWbMU=;
        b=CcC7wRZy5724ypaqEDcUZTovlHh6c/n2zoPEWM0q/WNW8k6rCR2jYF0Jbu/tfEAgIt
         vLXVJvBcbor0IJxU3nd8gMkphuOQZV84+6oYPUdqixdHziMXlE+MQNkmcY0HKrmE4xZ3
         lrlyOIHC006TqyoqR10kupOs9eIavvg15dA9rkFwoxY2fwWqKDOikOEmpH94GlFnBtxO
         syDeKzOeFJJOPBDCJaFb6YIkLK/SzN77STNPYS1xIsmFXtABwdYbIL6PTUaZQeBzeu+t
         7ZsbCLRmythsLaX8TwuRcxFJGcmrEEkgOFdUdTm0MIzz5qQJLRsotz4cWEemdgNoLjWK
         m1Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762938799; x=1763543599;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rLIk17U86Vy0ymvxyTbp3y64zSv81R0NFcueOugWbMU=;
        b=CXKOQgAs8lY9qSgmd5SuxdYpIyfKwHm4U0qI4IaEDdsjP4H6hOPmUIdcwlJ6+S/JyJ
         aEL5yRuDAFi77h8B2p2pZ4p1WloFfiy6tdQ0J9g7YAyhcZOSsYrt8W3fdK8tmyMzpnvZ
         gPYIDA98xsjLUz5Dp4yc/6KXyj96CZg7ytg6Bt8mnmuGQ/sxrJhZWz6P70BJE3/BWYCn
         DS+oZMooCIlG9EVGnFLF1g+tg3PON6yk0Bx2qqYwtKSBniwVk8zWcM6s1b0zXXur+WFV
         CtWX00nmF0j5wOJzAxjc0CG4tVowNQHsty7cNn1WZYI3ZQKPG75mP9/2pf9lwAy1ukkA
         +wSw==
X-Forwarded-Encrypted: i=1; AJvYcCWghvwaa5rhVI8bexTqALPQCITyJYQj/3H5FziuSqUEbJaIiHsuzhBMWmbhmJI6GCTB3n2HSuT5P1Mr@vger.kernel.org
X-Gm-Message-State: AOJu0YxQONM28MaOpincBCAGq1worn7lfdMDpRlkBnQqz9T5oceMhLJW
	yK4J62BjSCP1f5778tasqqKaDvpFClfJvyUApbLlmQpwnV3C/mL3qovmyrz1Foa9he4=
X-Gm-Gg: ASbGncvKBefr9F5zjBP2zKMe1RSBm1Fks9DmikoPnVekYPNEn+J12iRagCNEwDtPzYa
	uMYnvfJX6RGIS2G8bcG2G7DF0HuS6AQ7hONlHElHikBtSuUZbrBIne8fPhH1Kzx7aFVyPRw7RLq
	hjkF4siumx6Kf2Xhi06ahhus3W/3Ade0EyUkx0R9HN5Sd3LOPBJhBwi6cpCP3o7PlsE2cOvaadj
	i5YsCaEBSLsZgexBmEPHjgvx5J2rHKHoMKafKohRBryFJioLGt4ejB/0b7U89W9Z29w7KBJQvdG
	bMmQyxHcD/Ch6p3VSmnqgk/HydVuUZfvJ/a/o/TcWxDaayonTeZ3lvlSvg1PG5zh2NQSgpJikyV
	JPC/o2Wnovdok/8vNe3D3RRmwyJTfwpzmLTP2OR1gb1vwC3nA2Vwitmewk1VJATtoA4KrnWBIAH
	EWQxHQ9kMM
X-Google-Smtp-Source: AGHT+IFKNZnEadOnYmx5pz6AWtNuR6d+SMLV80NL9lm5XKQjDSAA8ekH3txNndti771Q+kHS4Lc2Og==
X-Received: by 2002:a05:6000:420e:b0:429:d350:8045 with SMTP id ffacd0b85a97d-42b4bdd1925mr1822920f8f.59.1762938799133;
        Wed, 12 Nov 2025 01:13:19 -0800 (PST)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42b322d533dsm21978863f8f.0.2025.11.12.01.13.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 01:13:18 -0800 (PST)
Message-ID: <96a30c1236cbca467b4f152e54b46ea290cb134e.camel@gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: adg1712: add adg1712 support
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, Linus Walleij	
 <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob
 Herring	 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor
 Dooley	 <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Wed, 12 Nov 2025 09:13:56 +0000
In-Reply-To: <20251108174055.3665-2-antoniu.miclaus@analog.com>
References: <20251108174055.3665-1-antoniu.miclaus@analog.com>
	 <20251108174055.3665-2-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sat, 2025-11-08 at 17:40 +0000, Antoniu Miclaus wrote:
> Add devicetree bindings for adg1712 SPST quad switch.
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> Changes in v2:
> - Replace individual GPIO properties (switch1-gpios, switch2-gpios, etc.)
> =C2=A0 with a single GPIO array property (switch-gpios)
> - Update required properties list accordingly
> - Simplify device tree example to use array notation
> ---

Antoniu,

See the discussion in [1] and reply there. Linus gave a suggestion on how
this could be implemented. See if it fits the usecases this chip is being
used and if not we need to discuss alternatives or if we can allow=C2=A0
gpiochip .set()/.get()

[1]: https://lore.kernel.org/linux-gpio/20251031160710.13343-1-antoniu.micl=
aus@analog.com/T/#m3f4397526ee7cb2a737a30673934578b3b290c1c

- Nuno S=C3=A1

> =C2=A0.../devicetree/bindings/gpio/adi,adg1712.yaml | 65 ++++++++++++++++=
+++
> =C2=A01 file changed, 65 insertions(+)
> =C2=A0create mode 100644 Documentation/devicetree/bindings/gpio/adi,adg17=
12.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/gpio/adi,adg1712.yaml
> b/Documentation/devicetree/bindings/gpio/adi,adg1712.yaml
> new file mode 100644
> index 000000000000..d6000a788d6e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/adi,adg1712.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpio/adi,adg1712.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analog Devices ADG1712 quad SPST switch GPIO controller
> +
> +maintainers:
> +=C2=A0 - Antoniu Miclaus <antoniu.miclaus@analog.com>
> +
> +description: |
> +=C2=A0 Bindings for Analog Devices ADG1712 quad single-pole, single-thro=
w (SPST)
> +=C2=A0 switch controlled by GPIOs. The device features four independent =
switches,
> +=C2=A0 each controlled by a dedicated GPIO input pin.
> +
> +=C2=A0 Each GPIO line exposed by this controller corresponds to one of t=
he four
> +=C2=A0 switches (SW1-SW4) on the ADG1712. Setting a GPIO line high enabl=
es the
> +=C2=A0 corresponding switch, while setting it low disables the switch.
> +
> +properties:
> +=C2=A0 compatible:
> +=C2=A0=C2=A0=C2=A0 const: adi,adg1712
> +
> +=C2=A0 switch-gpios:
> +=C2=A0=C2=A0=C2=A0 description: |
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Array of GPIOs connected to the IN1-IN4 c=
ontrol pins.
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Index 0 corresponds to IN1 (controls SW1)=
,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Index 1 corresponds to IN2 (controls SW2)=
,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Index 2 corresponds to IN3 (controls SW3)=
,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Index 3 corresponds to IN4 (controls SW4)=
.
> +=C2=A0=C2=A0=C2=A0 minItems: 4
> +=C2=A0=C2=A0=C2=A0 maxItems: 4
> +
> +=C2=A0 gpio-controller: true
> +
> +=C2=A0 "#gpio-cells":
> +=C2=A0=C2=A0=C2=A0 const: 2
> +=C2=A0=C2=A0=C2=A0 description: |
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The first cell is the GPIO number (0-3 co=
rresponding to SW1-SW4).
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 The second cell specifies GPIO flags.
> +
> +required:
> +=C2=A0 - compatible
> +=C2=A0 - switch-gpios
> +=C2=A0 - gpio-controller
> +=C2=A0 - "#gpio-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +=C2=A0 - |
> +=C2=A0=C2=A0=C2=A0 #include <dt-bindings/gpio/gpio.h>
> +
> +=C2=A0=C2=A0=C2=A0 adg1712: gpio-expander {
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 compatible =3D "adi,adg1712";
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 gpio-controller;
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 #gpio-cells =3D <2>;
> +
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 switch-gpios =3D <&gpio 10 GP=
IO_ACTIVE_HIGH>,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <&gpio 11 GPIO=
_ACTIVE_HIGH>,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <&gpio 12 GPIO=
_ACTIVE_HIGH>,
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <&gpio 13 GPIO=
_ACTIVE_HIGH>;
> +=C2=A0=C2=A0=C2=A0 };
> +...

