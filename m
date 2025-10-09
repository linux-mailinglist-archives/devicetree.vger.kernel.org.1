Return-Path: <devicetree+bounces-224746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C429FBC76EF
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 07:33:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6488D4F0730
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 05:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A703C2609D0;
	Thu,  9 Oct 2025 05:32:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="uNoFgRIG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03D0425C6E2
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 05:32:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759987978; cv=none; b=tRUsugbHqEGMFmtsPYPtEDDDY98ifBVWgSAHnEdjQhJovktqIGmBM/mYOefDX/p/pxQH0Z5uVdNm4czu8T4+RGZGXZvlL2jK7Sfpi5v/VLYojfrZiC/Q61BRNTu8mGHojehChW6pr2v3B/wpiT4+oTEK/kK4u4WyiVHicI8rDMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759987978; c=relaxed/simple;
	bh=cqBmOKczfhH/UO9yjP31b2YRqZKcTi0NIaQ37SLfQZk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ex+VbBnluxGZk9lvcbolDgKp2CSekcS8oKvoKO7yg/hizLMdGLOgfD4uen0XKDe11ahr9lW9XPcd63qVOhFKebNO8bD39bQbGisfHHid7mXK04QO/aU0MYenLgObTMno2uolVcfI9RFn2k6flRz3z61tE76nTWXc4DVmwiUyuPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=uNoFgRIG; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-27d4d6b7ab5so7971165ad.2
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 22:32:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1759987976; x=1760592776; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ktzba1DKI99kYPMwl1srTlE2mog9+B/vdYobPJ4WgxM=;
        b=uNoFgRIG8IK/xhzCq27udrWNf0epxYkeAYdhcIS+8jgZzYWvCWtB7wki1WSq8wBOkp
         VYwfjZ/+1Z4RhIgV1GjXjbfC1F6KhlssYWbwq4e0c0MCYikYyu8o5YWD84/ul4eNZy0V
         SQCWo6ubtK6w90aDIlG0u+3NmFgFaWIbKOictKNAF6Fcl/d7vWspMZltXzajkqhdv+gp
         5OAGQgTzhQ8KYwCQHcSCobaAAGdl7rjOPBmmeekuR2lc5Yf3N06Tps21oh3XrN3eLT4a
         FJR358EuR3/kE2jFGn3qg1AtJ1qyFBofybcIznHGXG7hQweQjFFXDOsnQ+XQS5/qcFWa
         dNEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759987976; x=1760592776;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ktzba1DKI99kYPMwl1srTlE2mog9+B/vdYobPJ4WgxM=;
        b=oWuRnBfRQdurMNRf1XUKBYTx8WZ07Gz4WCEfKGKA+ZaNkDqjCzg9MoHTKIdz8UPL1e
         k366UaVS/zwcmoSK0AxiK1m/byy5b5Iax/6B/o7178d5WvYga2DY4JuNM3xlbuLSiH+i
         WKU6PxUVFi5ZylFd5JyJJQzNstAsPBJf6FAk7MAMW2bd9MjfmRwmlslEpkIFEIffcnWH
         26f2LrsD1jp/zLWm+m8qnu7QzJlJgl3+5O9rlhqdan4ulZc0S9QZjUdytcLmLn5Hm2CK
         BRl0WTUu949NYdBBEyxthvHSoIgYkaafZkyUva/k8Y/T9DgBzYfKpslC/7Jmgxvbh/1f
         EvOw==
X-Forwarded-Encrypted: i=1; AJvYcCWfZz5INd0cvKuJq4szkFdxTmGJGEQVJkwnGnGCHkz/qy2azsL/RRTqsxxFY/SrOrisJoKfdw6fOIV2@vger.kernel.org
X-Gm-Message-State: AOJu0YznDx9qVs/MmpRHezXXJqZZKL1sCSG47bTXZdtGhwwgAx9hx+pU
	VhWHzRxF4nU+RKMOiu5E+ec6lExV3mrWMLPYW3MySTIT0fXPrghZii2uKib/ckGJFJcAeCftbdZ
	9xfz9w8XYj7qvSqpjPGWmBab69pBkBYTSaQyUcNzm
X-Gm-Gg: ASbGncuYYssHDmBja7PsZPB6ozCdnm4bVhbkvhxEyGHQaB6SIVdra7Rm1jICj8ARpzb
	SmngARIG9dNnoW0DZFW4pXa9vU7OppmHFR9cS48a8zEZPNoIh99EAoYGS8zngECKwJqtXqbILWY
	Nu1i9OXElISlRxfV2890I81pu+zFvsgKV2k9PQQ9mpVlT844YXw7C0IPJHidGlZHYKFDaq7o5mq
	cAfqI4iUwqlCeW05smYEiSTj1fRNtM7Wd4H+mEwIDjuRRGTyXqXDI//THdThYOC8MUVyEcHVEN5
	D9w1ZQ==
X-Google-Smtp-Source: AGHT+IESVUNCkk4qmxVAx9LJph/+dlWojTCH2hUrbcfDKEG7HjEaHHrdoMtO6Rsw83EBp0EQAopUJwb8ZBCKUnW4eIk=
X-Received: by 2002:a17:903:3c30:b0:270:ea84:324a with SMTP id
 d9443c01a7336-290272c1898mr84726695ad.38.1759987975870; Wed, 08 Oct 2025
 22:32:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251008060000.3136021-1-royluo@google.com> <20251008060000.3136021-4-royluo@google.com>
 <fa743412-d9f1-43fd-95e8-3b2a58cd6c25@kernel.org>
In-Reply-To: <fa743412-d9f1-43fd-95e8-3b2a58cd6c25@kernel.org>
From: Roy Luo <royluo@google.com>
Date: Wed, 8 Oct 2025 22:32:19 -0700
X-Gm-Features: AS18NWBygRM42KHUCeYjOx9jxiQbWPiyFalWSXt9KQT6EVktBFe8TaXkrSn7-PI
Message-ID: <CA+zupgyjkyr-zfnecvL5i572q-S2BPSz9w-ue+OmyGoj7EtW_A@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] dt-bindings: phy: google: Add Google Tensor G5 USB PHY
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 8, 2025 at 4:58=E2=80=AFPM Krzysztof Kozlowski <krzk@kernel.org=
> wrote:
>
> On 08/10/2025 14:59, Roy Luo wrote:
> > Document the device tree bindings for the USB PHY interfaces integrated
> > with the DWC3 controller on Google Tensor SoCs, starting with G5
> > generation.
> >
> > Due to a complete architectural overhaul in the Google Tensor G5, the
> > existing Samsung/Exynos USB PHY driver and binding for older generation=
s
> > of Google silicons such as gs101 are no longer compatible.
> >
> > The USB PHY on Tensor G5 includes two integrated Synopsys PHY IPs: the
> > eUSB 2.0 PHY IP and the USB 3.2/DisplayPort combo PHY IP. Currently onl=
y
> > USB high-speed is described and supported.
> >
> > Signed-off-by: Roy Luo <royluo@google.com>
> > ---
> >  .../bindings/phy/google,gs-usb-phy.yaml       | 96 +++++++++++++++++++
> >  1 file changed, 96 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/google,gs-usb=
-phy.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/google,gs-usb-phy.ya=
ml b/Documentation/devicetree/bindings/phy/google,gs-usb-phy.yaml
> > new file mode 100644
> > index 000000000000..22961e2da6ef
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/google,gs-usb-phy.yaml
> > @@ -0,0 +1,96 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +# Copyright (C) 2025, Google LLC
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/google,gs-usb-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Google Tensor Series (G5+) USB PHY
> > +
> > +maintainers:
> > +  - Roy Luo <royluo@google.com>
> > +
> > +description: |
> > +  Describes the USB PHY interfaces integrated with the DWC3 USB contro=
ller on
> > +  Google Tensor SoCs, starting with the G5 generation.
> > +  Two specific PHY IPs from Synopsys are integrated, including eUSB 2.=
0 PHY IP
> > +  and USB 3.2/DisplayPort combo PHY IP.
> > +  The first phandle argument within the PHY specifier is used to ident=
ify the
> > +  desired PHY. The currently supported value is::
>
> Currently supported as hardware will change? You describe here hardware
> ONLY.

I wanted to explain the PHY specifier as I saw other bindings are also doin=
g it,
e.g. "Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml".
Theoretically the hardware supports 3 PHY interfaces: high-speed, super-spe=
ed
and DP, however, the corresponding driver only supports high-speed at the
moment.
I can still document all the 3 PHY interfaces and assign them with
a theoretical specifier value here as that's what the hardware is capable o=
f,
and then make it clear that only high-speed is currently supported on the d=
river
side. Does this make sense to you?

>
> > +    0 - USB high-speed.
> > +
> > +properties:
> > +  compatible:
> > +    items:
> > +      - enum:
> > +          - google,gs5-usb-phy
> > +
> > +  reg:
> > +    minItems: 3
> > +    maxItems: 3
> > +
> > +  reg-names:
> > +    items:
> > +      - const: usb2_cfg_csr
> > +      - const: dp_top_csr
> > +      - const: usb_top_cfg_csr
>
> Drop csr
>

Ack, will fix it in the next patch.

> > +
> > +  "#phy-cells":
> > +    const: 1
> > +
> > +  clocks:
> > +    maxItems: 1
> > +
> > +  clock-names:
> > +    items:
> > +      - const: usb2_phy_clk
>
> Drop names, pointless for one entry.
>

Ack, will fix it in the next patch.

> > +
> > +  resets:
> > +    maxItems: 1
> > +
> > +  reset-names:
> > +    items:
> > +      - const: usb2_phy_reset
>
> Drop names, pointless for one entry.
>

Ack, will fix it in the next patch.

> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  orientation-switch:
> > +    type: boolean
> > +    description:
> > +      Indicates the PHY as a handler of USB Type-C orientation changes
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - reg-names
> > +  - "#phy-cells"
> > +  - clocks
> > +  - clock-names
> > +  - resets
> > +  - reset-names
> > +
> > +unevaluatedProperties: false
> > +
>
>
> additionalProps instead. Read writing schema or example schema.
>

Ack, will fix this in the next patch.
Appreciate the review!

Thanks,
Roy Luo

>
> Best regards,
> Krzysztof

