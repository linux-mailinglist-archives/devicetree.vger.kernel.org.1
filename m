Return-Path: <devicetree+bounces-10626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FA237D2489
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 18:25:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F38A2B20D52
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 16:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B554410A2E;
	Sun, 22 Oct 2023 16:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GEHT2RuR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F22A1879
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 16:25:41 +0000 (UTC)
Received: from mail-oa1-x2e.google.com (mail-oa1-x2e.google.com [IPv6:2001:4860:4864:20::2e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4400124;
	Sun, 22 Oct 2023 09:25:39 -0700 (PDT)
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-1eb39505ba4so902929fac.0;
        Sun, 22 Oct 2023 09:25:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697991939; x=1698596739; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qDM/PkLHiTHspRfCYzT0Sz4PDLknRYMSlH9qkbTwPMs=;
        b=GEHT2RuRrkQ/8F9qJn4+KF+yszUDFIrI7vx0FjsaAlTwlrbenxQ+DRKUbBRutH8z3P
         q/8RzFAk5n9/N2cwqU+Tu8QisOh/O2OCpGlWJuWWUoSXhYMptZZQA0Uj4+D26a38QEcB
         15rGqtXp0GfChVs6DqYHS1tuIbfGgF/x/EIWD3VRP9W4yTsSGOo+vufGpwkDoPAxMxMa
         5wCLz6dfE/fnLvhQOZBmrV9RpKqhoR5zQO4RzvrOalaD/QKZKCJah9Y6BHUtiYeHBgcS
         EqJycBZSTENNgvljbqsMvsnwxgffbeRvyA/77SV4TYqJfllgsuLanXptjkOYnuWDsW38
         gG2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697991939; x=1698596739;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qDM/PkLHiTHspRfCYzT0Sz4PDLknRYMSlH9qkbTwPMs=;
        b=CmnKjWHWMihsmJuDJP72lwz0RKTStMxceChnBECY6UVKMqivXILw+Wa+OBC21jBXfN
         zgMSST/FSf4ev34NQPu3MpLuL/oA6zVoCaJVP6DA0JkRDdmizIozBm7EIbSYwxQWm9ub
         xa4Oveavejc5s0VDvjw/S32znLYf+MkBYgcr18KtbZAHEnZc1uhRFJ2BiwbjLGX/MV73
         V2PHEJCK1cuGSI6PhQbcuHCPW0X+vFT3KjKle7+LFlfgRMvwxuHMnDkapa3Mt16IpeeT
         t1ITZ7ucVMNQuLukA904lx9d6W2BrnNREN3ieGUMwGfHM7WRtYgbk/dGJ9GWEzKGb1Wb
         r42g==
X-Gm-Message-State: AOJu0YzvClYEfLQKPOGgup6dPuKAG6PvP3XmOJy7A+OCqnNFPKeL8l4X
	Riw1iMrfad+HSYiojnaxUgkCFC0ZXaM95WJTtWE=
X-Google-Smtp-Source: AGHT+IEzEc4tJYjQD6Wqv+zFp3GmsdCpRj5CGJBEp717GVb2ExIta0jJznvctEklTd/pmFETnJn6+fqJXiEEL3yfb+E=
X-Received: by 2002:a05:6870:4c05:b0:1ea:2a:dc59 with SMTP id
 pk5-20020a0568704c0500b001ea002adc59mr9316873oab.51.1697991938916; Sun, 22
 Oct 2023 09:25:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231022131252.801090-1-sergio.paracuellos@gmail.com> <0e6a3e08-4f66-4bc1-a8a0-a7bb40472136@linaro.org>
In-Reply-To: <0e6a3e08-4f66-4bc1-a8a0-a7bb40472136@linaro.org>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Sun, 22 Oct 2023 18:25:28 +0200
Message-ID: <CAMhs-H8ZFCYU+wJ_k6AMr+43Skzhp4xDD8_xyQPusoGGm6C2VA@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: phy: ralink-usb-phy: convert to dtschema
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: devicetree@vger.kernel.org, vkoul@kernel.org, kishon@kernel.org, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, angelogioacchino.delregno@collabora.com, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Krysztof,

On Sun, Oct 22, 2023 at 5:57=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> On 22/10/2023 15:12, Sergio Paracuellos wrote:
> > Convert the ralink-usb-phy bindings to DT schema.
> >
> > Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > ---
> > Changes in v2:
> >  - Add missing SPDX License Identifier
> >
> >  .../bindings/phy/ralink-usb-phy.txt           | 23 ------
> >  .../bindings/phy/ralink-usb-phy.yaml          | 70 +++++++++++++++++++
> >  2 files changed, 70 insertions(+), 23 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/phy/ralink-usb-ph=
y.txt
> >  create mode 100644 Documentation/devicetree/bindings/phy/ralink-usb-ph=
y.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/phy/ralink-usb-phy.txt b=
/Documentation/devicetree/bindings/phy/ralink-usb-phy.txt
> > deleted file mode 100644
> > index 9d2868a437ab..000000000000
> > --- a/Documentation/devicetree/bindings/phy/ralink-usb-phy.txt
> > +++ /dev/null
> > @@ -1,23 +0,0 @@
> > -Mediatek/Ralink USB PHY
> > -
> > -Required properties:
> > - - compatible: "ralink,rt3352-usbphy"
> > -            "mediatek,mt7620-usbphy"
> > -            "mediatek,mt7628-usbphy"
> > - - reg: required for "mediatek,mt7628-usbphy", unused otherwise
> > - - #phy-cells: should be 0
> > - - ralink,sysctl: a phandle to a ralink syscon register region
> > - - resets: the two reset controllers for host and device
> > - - reset-names: the names of the 2 reset controllers
> > -
> > -Example:
> > -
> > -usbphy: phy {
> > -     compatible =3D "mediatek,mt7628-usbphy";
> > -     reg =3D <0x10120000 0x1000>;
> > -     #phy-cells =3D <0>;
> > -
> > -     ralink,sysctl =3D <&sysc>;
> > -     resets =3D <&rstctrl 22 &rstctrl 25>;
> > -     reset-names =3D "host", "device";
> > -};
> > diff --git a/Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml =
b/Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml
> > new file mode 100644
> > index 000000000000..b05665f5b641
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/phy/ralink-usb-phy.yaml
>
> Filename matching compatible. Missing vendor prefix, comma.

Sure, will use mediatek,mt7628-usbphy compatible, then.

>
>
> > @@ -0,0 +1,70 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/phy/ralink-usb-phy.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Mediatek/Ralink USB PHY
> > +
> > +maintainers:
> > +  - Sergio Paracuellos <sergio.paracuellos@gmail.com>
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - ralink,rt3352-usbphy
> > +      - mediatek,mt7620-usbphy
> > +      - mediatek,mt7628-usbphy
>
> Keep them ordered alphabetically, please.

Will do.

>
> Blank line here.

True, thanks.

>
>
> > +  reg:
> > +    maxItems: 1
> > +
> > +  "#phy-cells":
> > +    const: 0
> > +
> > +  ralink,sysctl:
> > +    description:
> > +      phandle to a ralink syscon register region.
> > +    $ref: /schemas/types.yaml#/definitions/phandle
> > +
> > +  resets:
> > +    items:
> > +      - description: USB Host reset controller
> > +      - description: USB Device reset controller
> > +
> > +  reset-names:
> > +    items:
> > +      - const: host
> > +      - const: device
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: mediatek,mt7628-usbphy
> > +    then:
> > +      required:
> > +        - reg
>
> else:
> is it even valid?

Will add else with reg to false for the rest since looking into driver
code it looks like it is not using for other compatible at all.

>
> Anyway, please put allOf: block after required: block.

Will do.

>
> > +
> > +required:
> > +  - compatible
> > +  - "#phy-cells"
> > +  - ralink,sysctl
> > +  - resets
> > +  - reset-names
> > +
>
>
> Best regards,
> Krzysztof
>

Thanks,
    Sergio Paracuellos

