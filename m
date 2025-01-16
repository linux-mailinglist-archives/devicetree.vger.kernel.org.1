Return-Path: <devicetree+bounces-139025-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E075BA13B75
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 14:59:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2120816A866
	for <lists+devicetree@lfdr.de>; Thu, 16 Jan 2025 13:59:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5095E22A80E;
	Thu, 16 Jan 2025 13:59:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="OBYC1E0/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F3E91D8A0D;
	Thu, 16 Jan 2025 13:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737035978; cv=none; b=et6+YsEFjcZU5+070DnxktlACcvRdR/2hi2HpCUhE3xfIkPfYaoS98CXzs63zNxV/xwUjGh1AlJdv744TTdThvrK1/HTGdbNBO/6gFex4VCLJvwtavRatqMVtziakHoFv5YlIUqJdfDzMG+/FdXrlvxKxKO5jEUtwhCASpnP16c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737035978; c=relaxed/simple;
	bh=XmQQBBcTMYgWnbkFCf6MCDbIjfIq08+ZWoARWZPj+UA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f6dTvLe6lt/t0YhjTaejt6Bjc/6lO3QTeQABXP9Mg+nX/Zp3fubTq5xaL6kE/rADCmDVRPZQ2k8izr6fetoK0X9mIBT/cwg6u5JhBKhuxAS57dmQ2iTPc7nC+yaCy/IZzTMDrPYRxFInOCva1kMT75cLJcZuQOfxUCU1rlNm1KI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=OBYC1E0/; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5d7e3f1fc01so1982490a12.2;
        Thu, 16 Jan 2025 05:59:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737035974; x=1737640774; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9vxi7kOctVVcyMXDr3GiYAGgEDhCJdQ2s1WVnIEcYQM=;
        b=OBYC1E0/1EFya1y0HmUQufxXijybUe230aaQCZlUwvjGistxynJUJVWOfecajtpEuj
         ax4b6o1hWKBhSE9pVy4zKWt1BUgAolPCbY1ZNnZ+m1TvZRdW3sTDKtLE4mCEZQi7kQgE
         MDBsYesjqcZ0+yM27wXExas5LcL5MuznWpZtdQadm0J01lU5KtktyqH/O1BmtYw41k7N
         1jjfW0jTRM43GcVBBpnuN8b+WEn/sVw/9GVngt5yqLaYJOgYqJIrUHGaMjseFMatLgxO
         syo4LTJv8NzYfrrXfJtwue2k8PavtMZXqrRr2I6pJ1slxPt3upBYdXNZW+T+2d20fsyY
         rSyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737035974; x=1737640774;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9vxi7kOctVVcyMXDr3GiYAGgEDhCJdQ2s1WVnIEcYQM=;
        b=Cod0NYlGn7s9CncCSJawflhFhz8/n9bBUh0Kb4rf8EkEn/givHk4CenfbBoCc7y+Nk
         j3j2xFKuARzpMA4gV0x+Ds91Oa0qB76+WnZYxGxDUiHvdG3+CBaGFpNamkZp3Vvi1acI
         LN6J+8d+7QqAYeMBtOnkU3C8U5jaP4nvHs5mOsNsaTIYwp5dJfAqITjI6m1tofTMmyMa
         3KUsmFVITIdefujXf0IRxKrSoM98gnUNyfWLme7SkBibGTpemOjtKpAnFBwvm7RwkPlI
         IAaqo3jrTQfaEYK8e8knUhBvsskSI3zGOUi3lzUsR1eWaZL81n5Hv5tfd28ADibp+cuy
         UazQ==
X-Forwarded-Encrypted: i=1; AJvYcCVzn6V8fNPWBU0olthPQ2ClmEyh9iS6HG00yF4hDuwjFQe39zKsC9XLLUEraPB5KtCu6PBEcBPbmg6t@vger.kernel.org, AJvYcCWosFM6luxW4Neo0216XEE1V+qUbaLkrwdsXWD3H6iTx9E2IkpSpXG9d27og0SudVLaFRuPTNtckThX0QRC@vger.kernel.org
X-Gm-Message-State: AOJu0Yya1STAJW9BH7KRkFRqgKGjgpa7P99k/A6rAjipM8Qx+EiTPXDP
	7hfhr53SM5cTmIPmztw5EBmGK2YmYHbGVyhCW70Y8n5M/1mddRIAQVJFyjwztRuGH9UQiIF+lri
	EJXFP97WQ0i954ua7IxUUy5monVc=
X-Gm-Gg: ASbGncvkiqSn2LnmFkUCMxclre5f29zRsmirxcJY9bimNLP1o1JbkuDxTZ9iw55QWcL
	jJi2LJrVGwdwzi8jYy3LWGNwXHB2InXLwwueh2mE=
X-Google-Smtp-Source: AGHT+IHy0ptsnu2e6RlogPAAJ7l54BvT5YyNsToPY+dFvbttxz8qyeBXoo38j5kBA9ckwZHuatxWeT6X4JGUPkkzFiE=
X-Received: by 2002:a50:c88a:0:b0:5d9:856c:9a08 with SMTP id
 4fb4d7f45d1cf-5d9856c9cf3mr23776315a12.18.1737035974045; Thu, 16 Jan 2025
 05:59:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250115012628.1035928-1-pgwipeout@gmail.com> <20250115012628.1035928-3-pgwipeout@gmail.com>
 <fe006de3-16eb-4c20-8e8e-da5ff5531c6f@kernel.org> <CAMdYzYoB-wFGcmDNYrOMKTb0XSseBd7btLarKBB5+TUB-11KjA@mail.gmail.com>
In-Reply-To: <CAMdYzYoB-wFGcmDNYrOMKTb0XSseBd7btLarKBB5+TUB-11KjA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Thu, 16 Jan 2025 08:59:20 -0500
X-Gm-Features: AbW1kvaWCthn0CA3HTWG-smgk2ZaVZDFO0klEe8ZJZC-0X4faHPfG6VS2QsDNEw
Message-ID: <CAMdYzYqeEFN4B-Q-Sidrfyo6uVRYKW6kApVvvRaH+ciLeWSFww@mail.gmail.com>
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

On Thu, Jan 16, 2025 at 8:32=E2=80=AFAM Peter Geis <pgwipeout@gmail.com> wr=
ote:
>
> On Thu, Jan 16, 2025 at 8:08=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.=
org> wrote:
> >
> > On 15/01/2025 02:26, Peter Geis wrote:
> > > Add documentation for the usb3 phy as implemented on the rk3328 SoC.
> > >
> > > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> > > ---
> > >
> > >  .../bindings/phy/rockchip,inno-usb3phy.yaml   | 166 ++++++++++++++++=
++
> > >  1 file changed, 166 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,in=
no-usb3phy.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/phy/rockchip,inno-usb3=
phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml
> > > new file mode 100644
> > > index 000000000000..cde489ca87ab
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yam=
l
> > > @@ -0,0 +1,166 @@
> > > +# SPDX-License-Identifier: GPL-2.0-only
> >
> > Wrong license.
> >
> > Please run scripts/checkpatch.pl and fix reported warnings. After that,
> > run also `scripts/checkpatch.pl --strict` and (probably) fix more
> > warnings. Some warnings can be ignored, especially from --strict run,
> > but the code here looks like it needs a fix. Feel free to get in touch
> > if the warning is not clear.
>
> Checkpatch literally told me to change this. Ran against my original
> dev binding:
> ./scripts/checkpatch.pl --strict
> Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yaml
> CHECK: DT binding documents should be licensed (GPL-2.0-only OR BSD-2-Cla=
use)
> #1: FILE: Documentation/devicetree/bindings/phy/rockchip,inno-usb3phy.yam=
l:1:
> +# SPDX-License-Identifier: GPL-2.0

I understand now, thank you. Perhaps checkpatch could put that in
quotes, instead saying ("GPL-2.0-only OR BSD-2-Clause") to make it
clear it's one thing.

>
> >
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/phy/rockchip,inno-usb3phy.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Rockchip USB 3.0 phy with Innosilicon IP block
> >
> > > +
> > > +maintainers:
> > > +  - Heiko Stuebner <heiko@sntech.de>
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - rockchip,rk3328-usb3phy
> >
> > Why is this binding entirely different than existing usb2 phy? Nothing
> > in common? This looks like made for driver and both - driver and bindin=
g
> > - duplicating a lot.
>
> Hmm, I hadn't considered merging it into the usb2 binding as it is a
> unique (and uniquely broken) device. I'd like Heiko's thoughts on
> this.
>
> >
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    minItems: 3
> >
> > Drop
> >
> > > +    maxItems: 3
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: refclk-usb3otg
> >
> > ref
> >
> > > +      - const: usb3phy-otg
> >
> > otg
> >
> > > +      - const: usb3phy-pipe
> >
> > pipe
> >
> > > +
> > > +  interrupts:
> > > +    minItems: 4
> >
> > You code here randomly. reg has only maxItems, clocks have both and thi=
s
> > have only minItems. Does not make sense. If you get it wrong, I would
> > assume you repeat the same mistake but here it is like randomly chosen
> > pieces. And this is making me wonder whether this was not sent too fast=
.
>
> I admit, I dread writing bindings as even now I'm weak in YAML and it
> seems to pick and choose what rules it wants to follow.
>
> >
> > Anyway: only maxItems.
> >
> >
> > > +
> > > +  interrupt-names:
> > > +    items:
> > > +      - const: bvalid
> > > +      - const: id
> > > +      - const: linestate
> > > +      - const: rxdet
> > > +
> > > +  resets:
> > > +    minItems: 6
> >
> > maxItems instead
> >
> > > +
> > > +  reset-names:
> > > +    items:
> > > +      - const: usb3phy-u2-por
> > > +      - const: usb3phy-u3-por
> > > +      - const: usb3phy-pipe-mac
> > > +      - const: usb3phy-utmi-mac
> > > +      - const: usb3phy-utmi-apb
> > > +      - const: usb3phy-pipe-apb
> > > +
> > > +  "#address-cells":
> > > +    const: 2
> > > +
> > > +  "#size-cells":
> > > +    const: 2
> > > +
> > > +  ranges: true
> > > +
> > > +patternProperties:
> > > +
> >
> > Drop blank line
> >
> > > +  utmi-port@[0-9a-f]+$:
> >
> > This wasn't tested. Missing quotes, missing starting anchor.
>
> make W=3D1 dt_binding_check didn't complain about it, using the
> dt-schema from pip3 from about a week ago.
>
> >
> > > +    type: object
> >
> > Explain what are the children here - description.
>
> Fair, will do.
>
> >
> >
> > > +    additionalProperties: false
> > > +
> > > +    properties:
> > > +      compatible:
> > > +        enum:
> > > +          - rockchip,rk3328-usb3phy-utmi
> > > +
> > > +      reg:
> > > +        maxItems: 1
> > > +
> > > +      "#phy-cells":
> > > +        const: 0
> >
> > Does not look correct. Your parent device is the phy, not child. Why do
> > you create children per each type of phy?
>
> Because that's how it's done elsewhere in Rockchip's phys [1]. How
> should it be done?
>
> >
> > > +
> > > +      phy-supply:
> > > +        description:
> > > +          Phandle to a regulator that provides power to VBUS.
> > > +          See ./phy-bindings.txt for details.
> > > +
> > > +    required:
> > > +      - compatible
> > > +      - reg
> > > +      - "#phy-cells"
> > > +
> > > +  pipe-port@[0-9a-f]+$:
> > > +    type: object
> > > +    additionalProperties: false
> > > +
> > > +    properties:
> > > +      compatible:
> > > +        enum:
> > > +          - rockchip,rk3328-usb3phy-pipe
> > > +
> > > +      reg:
> > > +        maxItems: 1
> > > +
> > > +      "#phy-cells":
> > > +        const: 0
> > > +
> > > +      phy-supply:
> > > +        description:
> > > +          Phandle to a regulator that provides power to VBUS.
> > > +          See ./phy-bindings.txt for details.
> >
> > Drop "see ....".
>
> I was tempted to convert phy-bindings.txt over but as above I dread
> writing bindings. Will drop.
>
> >
> > > +
> > > +    required:
> > > +      - compatible
> > > +      - reg
> > > +      - "#phy-cells"
> > > +
> > > +required:
> > > +  - compatible
> > > +  - reg
> > > +  - clocks
> > > +  - clock-names
> > > +  - interrupts
> > > +  - interrupt-names
> > > +  - resets
> > > +  - reset-names
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/clock/rk3328-cru.h>
> > > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > > +    #include <dt-bindings/interrupt-controller/irq.h>
> > > +    soc {
> > > +      #address-cells =3D <2>;
> > > +      #size-cells =3D <2>;
> > > +
> > > +      usb3phy: usb3-phy@ff460000 {
> > > +        compatible =3D "rockchip,rk3328-usb3phy";
> > > +        reg =3D <0x0 0xff460000 0x0 0x10000>;
> > > +        clocks =3D <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>,=
 <&cru PCLK_USB3PHY_PIPE>;
> >
> > That's way over the limit. Wrapping is at 80.
>
> Will correct.
>
> >
> > > +        clock-names =3D "refclk-usb3otg", "usb3phy-otg", "usb3phy-pi=
pe";
> > > +        interrupts =3D <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 76=
 IRQ_TYPE_LEVEL_HIGH>,
> > > +                     <GIC_SPI 77 IRQ_TYPE_LEVEL_HIGH>, <GIC_SPI 78 I=
RQ_TYPE_LEVEL_HIGH>;
> > > +        interrupt-names =3D "bvalid", "id", "linestate", "rxdet";
> >
> >
> >
>
> I appreciate all the feedback, I'll incorporate the changes you've recomm=
ended.
>
> Very Respectfully,
> Peter Geis
>
> >
> > Best regards,
> > Krzysztof
>
> [1] https://elixir.bootlin.com/linux/v6.13-rc3/source/arch/arm64/boot/dts=
/rockchip/rk3328.dtsi#L887

