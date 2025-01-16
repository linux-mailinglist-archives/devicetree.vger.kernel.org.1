Return-Path: <devicetree+bounces-139016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 374D0A13AF2
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:32:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6403A188448C
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 13:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0485143736;
	Thu, 16 Jan 2025 13:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RnKnlwj3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BC7273FD;
	Thu, 16 Jan 2025 13:32:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737034374; cv=none; b=JmJmxRYcTJ7e7TsGUDGXFGzkUUrCyjmYFdQU5odR97bUmmRwTYqKyWnapWS40uQI6lrOPU4FGmrzCo8yxOK1uXJb1fSYZ4+pnR1e4c9WQmFr06dUGCjwZKeyr4/BB94C4wO53ZLNa/5871/IB6UWuA7pt83lg0w59za/Vf5Yd0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737034374; c=relaxed/simple;
	bh=zVYjQicxkNuRo3R0XJMo/qavVA4ucfKla+TIHhDl4VI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PwxXcFM1M7mTXJpCJUimNxz0IydYK1x3qfzyerrsuhXL2QZ8co/aSb6LJ71cmF3WBySuPe28cd2/fRpQplRpAQKpewXahonBaUpEp2+Xrp3qxkGBpnakvJy8vS7ToYF9QLztYSdhPS1pcF9Cg+1KFLy9B/xsoJcmXqlrcDhIQqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RnKnlwj3; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so202760366b.3;
        Thu, 16 Jan 2025 05:32:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737034371; x=1737639171; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5gBUGv/ayLs0RS7Pe42wUSVdgcwy2g2KlQrLOm4GDYU=;
        b=RnKnlwj3PgVzPZ1UQ5S3yDI1iuGUoyp4l6IafmOQPp7kYxFFtX803vNDrH4+f3rEa1
         U4gyuTTsiEpjHKc3f9leAF8ECKLFWIau6b0cQ8cOtU9AAglLXW24rAuQ1SsPYPSvBY/u
         air7KZE/ETOxK4SXkZl9Xu/91uyBa3HslwP3UMRGJIQnNd+8WEcic4hn6ntWQuhZWK5m
         SeTbYeJFMt4lBuxocfQFA+SILYUQVpWyFN/kg3LjtpjK3eob4a+DQLQzpiiXXWRq0nmN
         IE8XWlw4zKkFaji/lP7JFRxQhLebA4K/npcf/pFicoYJb0k5Tde2NxMKENOaLfkbhsU2
         6WyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737034371; x=1737639171;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5gBUGv/ayLs0RS7Pe42wUSVdgcwy2g2KlQrLOm4GDYU=;
        b=hYnKck6SbUgSnPnn5eIX+BYMH1qQbdTfxsU536na0BXILxc6E8hXPayKlpxznuvut8
         nkEl4a+g6k8OT3gvZ1p/X09YddMg0UeYvxTklpfKOuerUFMrK3OFr2LqV8tfgXVjE0eI
         zCrUYoRvY2sCAu8SOI0BfWW5vaMUurKtvP13ITvMuve3SSaQXP1k87zGlBtOOf3pkRpI
         8bZ3y+YJmuOGH7t2m3i8EaXlLwjny5tpndvd03HJIA2dbPw7Puv4OTnVb49D2wITnwz4
         X/lYWsz7BLRDBScHjOBpjYzcZPbELwriEissYSbFFJIfmsA9spMtswHfvKfNtVPfEb9G
         SMyA==
X-Forwarded-Encrypted: i=1; AJvYcCUBJJ1ulw6i1maEoNj7Pe8lvLzy0pVBjJXbWXokyHQKOfJnzT9yi+xfLLG5HGA7vz0NseKSM6+rqzMR@vger.kernel.org, AJvYcCXyvflVrAu0et2UggGuGU2QGQkgkMwHWJKXcC9kQ5h3g1w3SK3FQqVXKVaXTzw3LvNDV6GTXI79tzNQFX6o@vger.kernel.org
X-Gm-Message-State: AOJu0YyxMpxBp76Ju3d7fB8/UaSPQIBZrKXgPwP+x8vC0oaFWFn5h5H9
	p56CiMXOFRFbkbodLMh5fZMY7CS2wrC4TJ1/gt4vECgj3I26tdMLkn6JKlxB4S6Z2qnabR4fi94
	oeqEkdR6SUmsp45olZkoy9NST+2h1Wa1uWCY=
X-Gm-Gg: ASbGncsLOMk3OfhtmLrYMRG1TPgQXtYKGNnBhdVEwPYdH7S/h6Cwd7mbh//lT9ISpf3
	fjZCSjPpYwaCYmGj/3DRsPcAFD3ZaOZ8mC4pd54E=
X-Google-Smtp-Source: AGHT+IHP7QulPAep+piqVLDSNR3tY1ZYz1ExN/RoD+LEIWDVIojfscu8qWjGIy8ZIzfrB0LkwNba/gtyAbIYcAl18M4=
X-Received: by 2002:a17:906:f58a:b0:aa6:5e35:d72d with SMTP id
 a640c23a62f3a-ab2ab703f0dmr3129019666b.24.1737034370862; Thu, 16 Jan 2025
 05:32:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250115012628.1035928-1-pgwipeout@gmail.com> <20250115012628.1035928-3-pgwipeout@gmail.com>
 <fe006de3-16eb-4c20-8e8e-da5ff5531c6f@kernel.org>
In-Reply-To: <fe006de3-16eb-4c20-8e8e-da5ff5531c6f@kernel.org>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 16 Jan 2025 08:32:37 -0500
X-Gm-Features: AbW1kvYL0IgwJDA5A9TSF42c5RGkjndMf9ngKuIr3RREKEvGBEVXmrRFBrG0Ktk
Message-ID: <CAMdYzYoB-wFGcmDNYrOMKTb0XSseBd7btLarKBB5+TUB-11KjA@mail.gmail.com>
Subject: Re: [RFC PATCH v1 2/6] dt-bindings: phy: rockchip: add rk3328 usb3 phy
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, zyw@rock-chips.com, kever.yang@rock-chips.com, 
	frank.wang@rock-chips.com, william.wu@rock-chips.com, wulf@rock-chips.com, 
	linux-rockchip@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Vinod Koul <vkoul@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 16, 2025 at 8:08=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On 15/01/2025 02:26, Peter Geis wrote:
> > Add documentation for the usb3 phy as implemented on the rk3328 SoC.
> >
> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > ---
> >
> >  .../bindings/phy/rockchip,inno-usb3phy.yaml   | 166 ++++++++++++++++++
> >  1 file changed, 166 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,inno=
-usb3phy.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb3ph=
y.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml
> > new file mode 100644
> > index 000000000000..cde489ca87ab
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml
> > @@ -0,0 +1,166 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
>
> Wrong license.
>
> Please run scripts/checkpatch.pl and fix reported warnings. After that,
> run also `scripts/checkpatch.pl --strict` and (probably) fix more
> warnings. Some warnings can be ignored, especially from --strict run,
> but the code here looks like it needs a fix. Feel free to get in touch
> if the warning is not clear.

Checkpatch literally told me to change this. Ran against my original
dev binding:
./scripts/checkpatch.pl --strict
Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml
CHECK: DT binding documents should be licensed (GPL-2.0-only OR BSD-2-Claus=
e)
#1: FILE: Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml:=
1:
+# SPDX-License-Identifier: GPL-2.0

>
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/rockchip,inno-usb3phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip USB 3.0 phy with Innosilicon IP block
>
> > +
> > +maintainers:
> > +  - Heiko Stuebner <heiko@sntech.de>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3328-usb3phy
>
> Why is this binding entirely different than existing usb2 phy? Nothing
> in common? This looks like made for driver and both - driver and binding
> - duplicating a lot.

Hmm, I hadn't considered merging it into the usb2 binding as it is a
unique (and uniquely broken) device. I'd like Heiko's thoughts on
this.

>
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 3
>
> Drop
>
> > +    maxItems: 3
> > +
> > +  clock-names:
> > +    items:
> > +      - const: refclk-usb3otg
>
> ref
>
> > +      - const: usb3phy-otg
>
> otg
>
> > +      - const: usb3phy-pipe
>
> pipe
>
> > +
> > +  interrupts:
> > +    minItems: 4
>
> You code here randomly. reg has only maxItems, clocks have both and this
> have only minItems. Does not make sense. If you get it wrong, I would
> assume you repeat the same mistake but here it is like randomly chosen
> pieces. And this is making me wonder whether this was not sent too fast.

I admit, I dread writing bindings as even now I'm weak in YAML and it
seems to pick and choose what rules it wants to follow.

>
> Anyway: only maxItems.
>
>
> > +
> > +  interrupt-names:
> > +    items:
> > +      - const: bvalid
> > +      - const: id
> > +      - const: linestate
> > +      - const: rxdet
> > +
> > +  resets:
> > +    minItems: 6
>
> maxItems instead
>
> > +
> > +  reset-names:
> > +    items:
> > +      - const: usb3phy-u2-por
> > +      - const: usb3phy-u3-por
> > +      - const: usb3phy-pipe-mac
> > +      - const: usb3phy-utmi-mac
> > +      - const: usb3phy-utmi-apb
> > +      - const: usb3phy-pipe-apb
> > +
> > +  "#address-cells":
> > +    const: 2
> > +
> > +  "#size-cells":
> > +    const: 2
> > +
> > +  ranges: true
> > +
> > +patternProperties:
> > +
>
> Drop blank line
>
> > +  utmi-port@[0-9a-f]+$:
>
> This wasn't tested. Missing quotes, missing starting anchor.

make W=3D1 dt_binding_check didn't complain about it, using the
dt-schema from pip3 from about a week ago.

>
> > +    type: object
>
> Explain what are the children here - description.

Fair, will do.

>
>
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      compatible:
> > +        enum:
> > +          - rockchip,rk3328-usb3phy-utmi
> > +
> > +      reg:
> > +        maxItems: 1
> > +
> > +      "#phy-cells":
> > +        const: 0
>
> Does not look correct. Your parent device is the phy, not child. Why do
> you create children per each type of phy?

Because that's how it's done elsewhere in Rockchip's phys [1]. How
should it be done?

>
> > +
> > +      phy-supply:
> > +        description:
> > +          Phandle to a regulator that provides power to VBUS.
> > +          See ./phy-bindings.txt for details.
> > +
> > +    required:
> > +      - compatible
> > +      - reg
> > +      - "#phy-cells"
> > +
> > +  pipe-port@[0-9a-f]+$:
> > +    type: object
> > +    additionalProperties: false
> > +
> > +    properties:
> > +      compatible:
> > +        enum:
> > +          - rockchip,rk3328-usb3phy-pipe
> > +
> > +      reg:
> > +        maxItems: 1
> > +
> > +      "#phy-cells":
> > +        const: 0
> > +
> > +      phy-supply:
> > +        description:
> > +          Phandle to a regulator that provides power to VBUS.
> > +          See ./phy-bindings.txt for details.
>
> Drop "see ....".

I was tempted to convert phy-bindings.txt over but as above I dread
writing bindings. Will drop.

>
> > +
> > +    required:
> > +      - compatible
> > +      - reg
> > +      - "#phy-cells"
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - interrupts
> > +  - interrupt-names
> > +  - resets
> > +  - reset-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/rk3328-cru.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    soc {
> > +      #address-cells =3D <2>;
> > +      #size-cells =3D <2>;
> > +
> > +      usb3phy: usb3-phy@ff460000 {
> > +        compatible =3D "rockchip,rk3328-usb3phy";
> > +        reg =3D <0x0 0xff460000 0x0 0x10000>;
> > +        clocks =3D <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>, <=
&cru PCLK_USB3PHY_PIPE>;
>
> That's way over the limit. Wrapping is at 80.

Will correct.

>
> > +        clock-names =3D "refclk-usb3otg", "usb3phy-otg", "usb3phy-pipe=
";
> > +        interrupts =3D <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 76 I=
RQ_TYPE_LEVEL_HIGH>,
> > +                     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 78 IRQ=
_TYPE_LEVEL_HIGH>;
> > +        interrupt-names =3D "bvalid", "id", "linestate", "rxdet";
>
>
>

I appreciate all the feedback, I'll incorporate the changes you've recommen=
ded.

Very Respectfully,
Peter Geis

>
> Best regards,
> Krzysztof

[1] https://elixir.bootlin.com/linux/v6.13-rc3/source/arch/arm64/boot/dts/r=
ockchip/rk3328.dtsi#L887

