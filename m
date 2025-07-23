Return-Path: <devicetree+bounces-198897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4443B0EB0D
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 08:57:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 78F757A19F5
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 06:55:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 788F725291F;
	Wed, 23 Jul 2025 06:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Jo3jSAlT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF5D246BCF
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 06:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753253819; cv=none; b=KSP5RZdOMlCQ0PZ/NtO29uAT4AHqdInzR+mBcpzphDVEmIws5Pomx0CgleKQ7UNMuErmC2KSPTvjgzxmApWV+sUW5D+ErnzG+iRKNvqj76zesoFBVWxsbdu5UX3n5G3VjLLs1DKUlvbvccX5Z7vfGeZm2NqBKdSJ7i6wEF5MF/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753253819; c=relaxed/simple;
	bh=xdtI84WqemnjJgMeGyNiVI1yA4JLbAfIPNi/WDgsKYA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TUs7S37+m8qHri+GVqhu0IEIfZpzEyAEsRKDBYtN7KbWI7swinaGBNJa5YPjXmGbaXBVeh31ravtB4sc1x7Bt3ivAWYu8nHoHr6+2bCNrY/PYxMYgETuly1kEruwWqpbmPByoH55OebrJIxJBafTjT7oh2hf5SdU5oHrPRZWagg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Jo3jSAlT; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-ae3be3eabd8so140279466b.1
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 23:56:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753253816; x=1753858616; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mzGs50sMtqAdEdsyGgv1T8F/fASfIs0YpLyjWXfuibc=;
        b=Jo3jSAlTr4CgOjaLqjCf/aUPRSqi/WK6tufuZVpGlSw+Bej7RqzQMPZ5ThwQfKOWW1
         ULp8FYMLybJLjU434emdajsGgNs8eQrYci5QJ9lGceF21QuL+wb2L4t+sK+7cI6q+Jrm
         kedwOFyMlYK0LaU69xONKNM9L/Tomk2ignmqYiDMekU4+wm7Gl39noFvDUPkEjy3Zn9M
         73V8cWbl6mcXC2QgoWbHYPcbdP7/dddxuf0G238H76Fg8rNLM6kos6d+9WFYtCUYCKlR
         xC5yuIp6pUdWVxRZZ8gKaec5XjyeuYLp7GTrtz5jNbVgC/jKOXYzmXuc+/tfXkT1i2rT
         aL2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753253816; x=1753858616;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mzGs50sMtqAdEdsyGgv1T8F/fASfIs0YpLyjWXfuibc=;
        b=t6aYH+E+2D0+tqKgAvqW/d9JTYH/7zNJvVytjeb4c7godJ1bRqdUBg9S78KuetlKKM
         bedAMAorHSD3/9FRhr0uDtwdLzQgADzzVm8OqlmHUjWJrSiKmZYPmRgWzOnPYFcRr1o1
         imIU9ttAV0UqvTdUhPBsFH9xcDjcvcBVD4DtbDg3CFS3aPDFQFW/0EyM/1LRH2fLAUP6
         l3GncFy6kOTDnSeshn1EnLbqa2RD6QXf5DvGnWFeEFmCRmJRX24INkT0nT0qFWR5jPi2
         V+pfjdcPxPCuOIsO3JqxuGmOST6iZHcCR1vUdJz7vtKPo31NaW2UbUYQNJYpYPCIUvPu
         ksfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWLiwZmENZ75Zo9guknqALHReUxsosQ3ZgLtWiX3M9fQsUJJLD3ZBZS0j50ggGccIdPdj//DYK/VS1d@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0Oca1HBaEd1ZDTQp8xsq3KQ5em1eY5Dz2o0VqQWyS7H9MAt0d
	KajfQLk2L7lbG1Hf9jmsmLVAmjpp/cdtrPeRUocHjbANjdX87rFsQWvxqHhPlYcx20nsHj+WFzH
	ZGPR0N91uUYb+oCblG9UJvqgymCSyAFXfmUKuopuLRw==
X-Gm-Gg: ASbGncvtDhGyC3PVgt1akIC7OjRj0tMgKwwgS03BMGJ4dOBdzSlVc6M4R5Eq3TDO9XG
	KFE44J0yI2xfR+DOeDkHSSmfxjxALCMSTfX15OI5MCah6EyQiMRm/+V/z8HIdaJf70yUZLgzboz
	dIqwkgJW0fWU9DBjsFjlrdANLtjTnfw4Gw1UGXsm8mkKeNqtjeTxXH9TaFDRZ/4iX0Dz8aEfksh
	SfFxrB9
X-Google-Smtp-Source: AGHT+IHtfZqjBEsPm3jiweUvUgdfmqxEA1/NrYjUcBbEteu7UTNuOkN8so+Y9soZLgns8FwUWGBF/PDOw0pVHGFgS2Q=
X-Received: by 2002:a17:907:9704:b0:acb:37ae:619c with SMTP id
 a640c23a62f3a-af2f48b0b3fmr184201766b.15.1753253815516; Tue, 22 Jul 2025
 23:56:55 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1753166096.git.zhoubinbin@loongson.cn> <ed625518c752738cb7e24f6d4b7fb9b62a609880.1753166096.git.zhoubinbin@loongson.cn>
 <20250723045322.GA1226341-robh@kernel.org>
In-Reply-To: <20250723045322.GA1226341-robh@kernel.org>
From: Binbin Zhou <zhoubb.aaron@gmail.com>
Date: Wed, 23 Jul 2025 14:56:43 +0800
X-Gm-Features: Ac12FXwj_V_rXm0G-f1xcp_U8ADbgodmKUhlQGp8z4NF7NnsLXFcURgUjYOstVM
Message-ID: <CAMpQs4K2saB_Cyn03btZdc4ePa-U6G2ots3AtiNoy8UHrBY7OA@mail.gmail.com>
Subject: Re: [PATCH v1 7/8] dt-bindings: mtd: loongson,ls1b-nand-controller:
 Document the Loongson-2K1000 NAND controller
To: Rob Herring <robh@kernel.org>
Cc: Binbin Zhou <zhoubinbin@loongson.cn>, Huacai Chen <chenhuacai@loongson.cn>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Keguang Zhang <keguang.zhang@gmail.com>, Miquel Raynal <miquel.raynal@bootlin.com>, 
	Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, Huacai Chen <chenhuacai@kernel.org>, 
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-mtd@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob:

Thanks for your review.

On Wed, Jul 23, 2025 at 12:53=E2=80=AFPM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Tue, Jul 22, 2025 at 05:11:06PM +0800, Binbin Zhou wrote:
> > Add new compatible for the Loongson-2K NAND controller used for
> > Loongson-2K1000 SoC.
> >
> > Signed-off-by: Binbin Zhou <zhoubinbin@loongson.cn>
> > ---
> >  .../mtd/loongson,ls1b-nand-controller.yaml    | 58 +++++++++++++++++--
> >  1 file changed, 54 insertions(+), 4 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-c=
ontroller.yaml b/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-c=
ontroller.yaml
> > index 4ec2b5d1e89d..07a0d9b40fdd 100644
> > --- a/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-controll=
er.yaml
> > +++ b/Documentation/devicetree/bindings/mtd/loongson,ls1b-nand-controll=
er.yaml
> > @@ -26,18 +26,19 @@ properties:
> >            - loongson,ls1b-nand-controller
> >            - loongson,ls1c-nand-controller
> >            - loongson,ls2k0500-nand-controller
> > +          - loongson,ls2k1000-nand-controller
> >        - items:
> >            - enum:
> >                - loongson,ls1a-nand-controller
> >            - const: loongson,ls1b-nand-controller
> >
> >    reg:
> > -    maxItems: 2
> > +    minItems: 2
> > +    maxItems: 3
> >
> >    reg-names:
> > -    items:
> > -      - const: nand
> > -      - const: nand-dma
>
> Keep the list and add dma-config here and 'minItems: 2'

OK, It will be rewritten as follows:

  reg-names:
    minItems: 2
    items:
      - const: nand
      - const: nand-dma
      - const: dma-config

>
> > +    minItems: 2
> > +    maxItems: 3
> >
> >    dmas:
> >      maxItems: 1
> > @@ -54,6 +55,32 @@ required:
> >
> >  unevaluatedProperties: false
> >
> > +if:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        enum:
> > +          - loongson,ls2k1000-nand-controller
> > +
> > +then:
> > +  properties:
> > +    reg:
> > +      minItems: 3
> > +    reg-names:
> > +      items:
> > +        - const: nand
> > +        - const: nand-dma
> > +        - const: dma-config
>
> And just 'minItems: 3' here

OK...
>
> > +
> > +else:
> > +  properties:
> > +    reg:
> > +      maxItems: 2
> > +    reg-names:
> > +      items:
> > +        - const: nand
> > +        - const: nand-dma
>
> And 'maxItems: 2' here.

OK...
>
> > +
> >  examples:
> >    - |
> >      nand-controller@1fe78000 {
> > @@ -72,3 +99,26 @@ examples:
> >              nand-ecc-algo =3D "hamming";
> >          };
> >      };
> > +
> > +  - |
> > +    nand-controller@1fe26000 {
> > +        compatible =3D "loongson,ls2k1000-nand-controller";
> > +        reg =3D <0x1fe26000 0x24>,
> > +              <0x1fe26040 0x4>,
> > +              <0x1fe00438 0x8>;
> > +        reg-names =3D "nand", "nand-dma", "dma-config";
> > +        dmas =3D <&apbdma0 0>;
> > +        dma-names =3D "rxtx";
> > +
> > +        #address-cells =3D <1>;
> > +        #size-cells =3D <0>;
> > +
> > +        nand@0 {
> > +            reg =3D <0>;
> > +            label =3D "ls2k1000-nand";
> > +            nand-use-soft-ecc-engine;
> > +            nand-ecc-algo =3D "bch";
> > +            nand-ecc-strength =3D <8>;
> > +            nand-ecc-step-size =3D <512>;
> > +        };
> > +    };
> > --
> > 2.47.3
> >

--
Thanks.
Binbin

