Return-Path: <devicetree+bounces-150639-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CDB4A42F84
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 22:52:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E7B18189C6FA
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 21:52:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E33C1DF994;
	Mon, 24 Feb 2025 21:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RTijXo78"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55CBC1DE2C1
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 21:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740433932; cv=none; b=QzvrKPcXBLDuUAJlcSNb6H3ksStWVA9tw+IVjGR8QAexFgdclpH/KxtdtjooDe5rqkxRqllFwsJUz1Dk3fpAdGUO8PAWPQlSgDBgiWHRbeHmkcFRG+eWicKGRG5w5ia4dVPuyJp9dpVNXUmUZrYj0HAn59XQDtpltlSXKfM0qh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740433932; c=relaxed/simple;
	bh=7vTZ4bcifDx0uBbn/YdD+tR5nT8QjS33t2BFPkAir4g=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=B2jPzCr9L7euTko5GLscd5W+fuafxMCEmTIWEDbIj9n2sOXU/OVg2/U8soctZX1iWJohkB4BAqa7/UQydLF6ruYCHhLPqYRPBVXRS7WrtFdpaolcKJSE8MPG2fb3rwcqckRIhEs+QNiRJ5PhzmnSWNT/37krU3rYP60MdEX3qYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RTijXo78; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43690d4605dso30551125e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 13:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740433928; x=1741038728; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7vTZ4bcifDx0uBbn/YdD+tR5nT8QjS33t2BFPkAir4g=;
        b=RTijXo78K7Nkv6aS8jriXBFtU45mxiRA841f06CFVKYew5ga2WuR8XL/6K05nsw/l3
         cwmsN4Q42fRCWBz3Oaut7qoUBOqG26O4crrzPnUsmDRwCq6DjZkAHHEPFtajNhYps3i9
         J9DkOwGW7zJnp53siwqPF8N5IQt+4HKvR/9iPUP2roG0b7kTJKbwMXO3WlPhXFOZAMSZ
         nss9LCsXb7EZrLZ+Xny7d7HoV/31YXZdlLTrClPiMz4J7ex7sisPprFSwld0qE1SZUwA
         j2m67KCrtTtHsAGg4ARX62FlqO72YI50tHJhPgzf+R9sHLMll3ufUy7MHmj39cUKvqet
         2a+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740433928; x=1741038728;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7vTZ4bcifDx0uBbn/YdD+tR5nT8QjS33t2BFPkAir4g=;
        b=BOApFj7rFMaZYGLnvM+YN9HNDnWpl9lwXXzjjji1LP36gd0MZm0F0LjaTbJ2fbuxIK
         BrQMA2zam/tzjFuMGDyCnO7EtrlMjKK+ZOuOvbmrvB64Q+aT5/gSPbdWsG3Yytb4teE8
         ddrmCyDrW7+/8ggjzF6iZG0MVhu/o4CEno1Usqyt7f6w0XR52xzdmfNTNsuva+PczEiI
         y/YRyzySLE/yIF4CX8OHHzNldWJrdQbXLdpFHISbGVkam28Ew2fX4nTrPFWsVgIgBjy1
         PJ7BqiruwB2JGZedd6CnEMZwS4+5ym8MuwL5MCHVcxbztfEMgzh1PLrN5uuOe3+fn1Kq
         1sCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXynUzZifV8WArfvPyPdK9Nt5Vy/ned3dpE8W+yPemO+vro0yJxSOoVRrUs5DwqKh7HUHfvc3UlhEbN@vger.kernel.org
X-Gm-Message-State: AOJu0YygeelWpmvbon2XwmmFlbWfIAVNVVrEcQMmtDDYLxWdKtCSEGHZ
	uUgnaJf+wl8Q9yw6Xq2g0h0Wwog5XcFbq3WLwrErlUXxqq/TcBOY5MY+7HwRHPc=
X-Gm-Gg: ASbGncsUTd1EpCi7D7DxdpAo73nyeXycGE149djOBm8cotJ+syG1mdqorsNSz5yfFtn
	D8SYXY6EwZiL8Bd1BG0j+hCkKHUUaUJC8eeK3UOP058d4Tsnwpzsa4eWfHtuNwO2+YT4PjLJ1fz
	NGnz2s3weQamVNcRT0AphNUx965c8p9pGyJ89zZtcZB57O5SKI2R1C2qnCseOo/yqFS6A9g3bI3
	3I929rXygMyhhaHvmEmPUr/7AC4P6fZ7kTAZpV19TPYZHFXYe8c7pk6iNTpD1EYeOp1qS1e803X
	mVEl58/ycwnK3xxtp39/iu1YfiujRA==
X-Google-Smtp-Source: AGHT+IHmJNkurL7RO4E3X7dffqrJqghhJyUiAOpbxbEyAGEjCiGP4Aji7mTnE2UrlwDFQi5MR+cgww==
X-Received: by 2002:a05:600c:468c:b0:439:a1c7:7b29 with SMTP id 5b1f17b1804b1-43ab0f426c6mr7915255e9.17.1740433928545;
        Mon, 24 Feb 2025 13:52:08 -0800 (PST)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd88371asm216037f8f.57.2025.02.24.13.52.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 13:52:07 -0800 (PST)
Message-ID: <854925a6204f36fff6d653bb4a30c55a6adb3aef.camel@linaro.org>
Subject: Re: [PATCH 2/6] dt-bindings: gpio: add max77759 binding
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Lee Jones <lee@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij
 <linus.walleij@linaro.org>, Bartosz Golaszewski	 <brgl@bgdev.pl>, Srinivas
 Kandagatla <srinivas.kandagatla@linaro.org>, Kees Cook <kees@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>, Peter Griffin	
 <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, Will
 McVicker <willmcvicker@google.com>, kernel-team@android.com,
 linux-kernel@vger.kernel.org, 	devicetree@vger.kernel.org,
 linux-gpio@vger.kernel.org, 	linux-hardening@vger.kernel.org
Date: Mon, 24 Feb 2025 21:52:06 +0000
In-Reply-To: <20250224153858.GC3137990-robh@kernel.org>
References: <20250224-max77759-mfd-v1-0-2bff36f9d055@linaro.org>
	 <20250224-max77759-mfd-v1-2-2bff36f9d055@linaro.org>
	 <20250224153858.GC3137990-robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.53.2-1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

Hi Rob,

On Mon, 2025-02-24 at 09:38 -0600, Rob Herring wrote:
> On Mon, Feb 24, 2025 at 10:28:50AM +0000, Andr=C3=A9 Draszik wrote:
> > Add the DT binding document for the GPIO module of the Maxim MAX77759.
> >=20
> > Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > ---
> > =C2=A0.../bindings/gpio/maxim,max77759-gpio.yaml=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 47 ++++++++++++++++++++++
> > =C2=A01 file changed, 47 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio=
.yaml
> > b/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml
> > new file mode 100644
> > index 000000000000..9bafb16ad688
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/gpio/maxim,max77759-gpio.yaml
> > @@ -0,0 +1,47 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/gpio/maxim,max77759-gpio.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Maxim Integrated MAX77759 GPIO
> > +
> > +maintainers:
> > +=C2=A0 - Andr=C3=A9 Draszik <andre.draszik@linaro.org>
> > +
> > +description: |
> > +=C2=A0 This module is part of the MAX77759 PMIC. For additional inform=
ation, see
> > +=C2=A0 Documentation/devicetree/bindings/mfd/maxim,max77759.yaml.
> > +
> > +=C2=A0 The MAX77759 is a PMIC integrating, amongst others, a GPIO cont=
roller
> > +=C2=A0 including interrupt support for 2 GPIO lines.
> > +
> > +properties:
> > +=C2=A0 compatible:
> > +=C2=A0=C2=A0=C2=A0 const: maxim,max77759-gpio
> > +
> > +=C2=A0 "#interrupt-cells":
> > +=C2=A0=C2=A0=C2=A0 const: 2
> > +
> > +=C2=A0 interrupt-controller: true
> > +
> > +=C2=A0 interrupts:
> > +=C2=A0=C2=A0=C2=A0 maxItems: 2
>=20
> You need to define what each interrupt is.

I think maybe the interrupts property is not needed after all:

The PMIC has one external interrupt line (described by the top-level
device), and the two interrupts here are just a representation of
the PMIC's internal status register (i.e. top level interrupt is
raised when status register for one of the gpio lines changes,
amongst other things).

The intention is for a gpio driver to just treat and model them as
cascaded interrupts, but they don't need to be configured in any
way via device tree, as everything happens internally inside the
PMIC, there is no board-dependent routing or trigger type possible.
(Of course, there can be drivers subscribing to one (or both) of the two
cascaded interrupts here, but that shouldn't matter I believe).

Does that make sense? I added the property because
Documentation/devicetree/bindings/interrupt-controller/interrupts.txt
says it's a requirement to have an interrupts property, but I
believe it doesn't actually apply in this case as there's nothing
than can be configured.

Am I missing something?

Cheers,
Andre'

>=20
> > +
> > +=C2=A0 "#gpio-cells":
> > +=C2=A0=C2=A0=C2=A0 const: 2
> > +
> > +=C2=A0 gpio-controller: true
> > +
> > +=C2=A0 gpio-line-names:
> > +=C2=A0=C2=A0=C2=A0 minItems: 1
> > +=C2=A0=C2=A0=C2=A0 maxItems: 2
> > +
> > +required:
> > +=C2=A0 - compatible
> > +=C2=A0 - "#gpio-cells"
> > +=C2=A0 - gpio-controller
> > +=C2=A0 - "#interrupt-cells"
> > +=C2=A0 - interrupt-controller
> > +
> > +additionalProperties: false
> >=20
> > --=20
> > 2.48.1.658.g4767266eb4-goog
> >=20


