Return-Path: <devicetree+bounces-183597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43572AD13CF
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 20:42:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 184667A4396
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 18:41:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D56A219D8BE;
	Sun,  8 Jun 2025 18:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="WaKc/UEu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE6E13B58A
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 18:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749408168; cv=none; b=T5njeJnDXe3rjStbupsvMMakYAItqhl2JJolxopF6t6yDNWa4usMEMgR02XmZZscyEYyERf7lQ18+1MZNzJlmxnogN/4og5ewj/Sa0z166/d0z6vAyB7NKOR8Efm69avt61Fxq0RYzdI8ujHQhP79WKcM3wKkCgUgoqANfkdIxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749408168; c=relaxed/simple;
	bh=1KV34hsZtuXHKz4bIqXFc4u5uFMG8MgwYQ9CSl3EmmI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=d5zX7Perb/77pYrLHGCBAew+DlcCXWSgooCTQ1AK8jJ5r4wma98r6bPcZMLTxXfvdU4wnU9y/IVQ0TyDxPcDTc+08qI5ilFf/nht4FU8VcjNvEEwSUKu2zUODgWY2Lt9us54QbTO9x6F/IYHbNEWocM1B2YL4Yfj/cxwYeRP1bA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=WaKc/UEu; arc=none smtp.client-ip=209.85.216.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f49.google.com with SMTP id 98e67ed59e1d1-312b0d83a10so2226960a91.0
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 11:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749408166; x=1750012966; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KOXiK8UxSrsUU8hr3P19iv5Z3a5A9MfLVHdOTqzg2DA=;
        b=WaKc/UEuycDktzIH+kg45vbCddbrnAbJDCQ0J7lgzP8buSjEZxD44/s8YjQrpFLS1j
         zhjIHc+o+XoPIecokyrQ6D+R2Li8nixm2hZ3xp45EjRqgq9CwlutwUhNzwBQRhDIFoF3
         uy17DDPbikka1k7bIZ8folGJa9MITIkAC06sQr0tPrw8rMa1jVC3pyskbOs3ulTYqu6H
         GFpd1Qq8geGHZ4G4YN4/KX0FEkcuMlIftiwiULX0QHiZKKSaB94143ZBQfcpuheUs3l1
         NOYhHliY9Ud0kh0qqRXe9dqiL/pdsbzj3icNlOrvfc89ekJpAXrSCVCp5j3/ZledR2/2
         g7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749408166; x=1750012966;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KOXiK8UxSrsUU8hr3P19iv5Z3a5A9MfLVHdOTqzg2DA=;
        b=RTcLrqRmusxjW5svaYRTBpz59ar0GV7Tx8UYLThK6nPwEDU8K5T2nt9y5qNIu1zCmS
         mIFKab4fXEnFe0j2rgOgHhnpGZjGJGywZnLk2iL5GreHg8SKkAFuDHpoFnqkHrNmXxWe
         cxCdZzbzJ2FGIItVXVZnSphK2NExo1qV8nYVZGmUY4a4eqZo8k2DstEibJWjwvxRr0De
         jfJzC8e2fV8hwSKfvdBjh9KZJJcESrx+uxdYSqG/Hq9RG43OnIMPL1w82bShe3T72dgZ
         LN1mz2nxNUI6ZRzk7RvhcnOK0bUM237rMYO7FJUOq+oJp32A3hyO8ofdry7ovL6RcY1i
         AVrg==
X-Forwarded-Encrypted: i=1; AJvYcCWfc8cB9c6KCr/vaZCjTFTi5etPDVoMBiOk2N/sV3ojtoFY5B6TxJ4rrh4qrLGYHiztTHfqJc4Y8ups@vger.kernel.org
X-Gm-Message-State: AOJu0YxUdPb5oR9EbO0MuaVfXE7MBF32e47RBLw1YnYjxcm4cx+LFK9B
	lXOb2VEm0mpHHm23PhS10XNSNvltFfzHYqI/10b29BymYjce2sS05N/JE7YhwgCu/l0bZY6DqND
	vSewN3FJXR7jS5up/tEkh2runzuLg+ahLKH+FpH8=
X-Gm-Gg: ASbGncsUFGePELLubRJ4rZn1smeaFzxyPqdit8SZLnoaofUCpjKTRkOb4t79tCXbOZ1
	fLvMgiFStC912d/wI2oTLDXUSSe9SLvhKsnMjKF+YsJ6Wlbhe/HLV9+ZWO66oT7wavmExR81NfC
	Y5lnnhLEB3etZA6djDrAyptn+Bkr5Zp9n65nnteQN/3amm
X-Google-Smtp-Source: AGHT+IHQjXUVXSnl5IkKJttXWxW0e+0ci97poLi06m9EC/Mj1SDfD01/uVf2vp781W3mvbo6qYqgBDp4VMTNih2PfdE=
X-Received: by 2002:a17:90b:1d92:b0:312:e8ed:758 with SMTP id
 98e67ed59e1d1-313472eb24emr15238478a91.13.1749408166314; Sun, 08 Jun 2025
 11:42:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250525194333.1729443-1-shankari.ak0208@gmail.com>
 <fa348395-0526-4485-aea6-fd34f51a4cef@kernel.org> <c75d6f5644d5620442d3a3f6d3148fcd@mail.gmail.com>
 <CAPRMd3nyaV5fWYP_iY7XxgfzCDLUTpqHR0ebb0dSQ68tmEM62w@mail.gmail.com>
 <CAPRMd3=YL9twOp4+7==rKvNEQWjoKZszD+sfeDV8Nm063hwKQg@mail.gmail.com> <CAPRMd3n733TzxJMo1JooHBavSnjN=AWT_hKV38LOeZBpPHrnrw@mail.gmail.com>
In-Reply-To: <CAPRMd3n733TzxJMo1JooHBavSnjN=AWT_hKV38LOeZBpPHrnrw@mail.gmail.com>
From: Shankari Anand <shankari.ak0208@gmail.com>
Date: Mon, 9 Jun 2025 00:12:34 +0530
X-Gm-Features: AX0GCFs9WkzqF9yk6RoAc0r_XMWTW9HyaE9OTsO1uSNv1hxlud0_pslr7UeKm1I
Message-ID: <CAPRMd3=wjpGjOjggTUEes5UqFtconn-RJLz=8ZtgEgMfMwMOuw@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm/bcm: Fix and validate brcm,bcm63138
 bindings with no errors
To: William Zhang <william.zhang@broadcom.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>, 
	skhan@linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Patch link - https://lore.kernel.org/linux-devicetree/20250608183745.126190=
-1-shankari.ak0208@gmail.com/T/#u


On Mon, Jun 9, 2025 at 12:11=E2=80=AFAM Shankari Anand
<shankari.ak0208@gmail.com> wrote:
>
> Patch link - https://lore.kernel.org/linux-devicetree/20250608183745.1261=
90-1-shankari.ak0208@gmail.com/T/#u
>
>
> On Mon, Jun 9, 2025 at 12:10=E2=80=AFAM Shankari Anand <shankari.ak0208@g=
mail.com> wrote:
>>
>> > I guess we need to find a proper home for brcm,bcm63138-bootlut since =
it is
>> > used in the kernel source.
>> > brcm,bcmbca.yaml covers all the soc already including bcm63138.
>>
>> Yeah, I realised bcm63138 is included in the compatible devices under
>> brcm,bca but the boot-lut doesn't seem to be satisfied because of
>> which the .txt isn't satisfied. I have shared a v2 patch which solves
>> this possibly. Here's the link -  Patch
>>
>> Regards,
>> Shankari
>>
>>
>> On Mon, Jun 9, 2025 at 12:09=E2=80=AFAM Shankari Anand
>> <shankari.ak0208@gmail.com> wrote:
>> >>
>> >> I guess we need to find a proper home for brcm,bcm63138-bootlut since=
 it is
>> >> used in the kernel source.
>> >> brcm,bcmbca.yaml covers all the soc already including bcm63138.
>> >
>> >
>> > Yeah, I realised bcm63138 is included in the compatible devices under =
brcm,bca but the boot-lut doesn't seem to be satisfied because of which the=
 .txt isn't satisfied. I have shared a v2 patch which solves this possibly.=
 Here's the link -  Patch
>> >
>> >
>> > On Wed, May 28, 2025 at 3:13=E2=80=AFAM William Zhang <william.zhang@b=
roadcom.com> wrote:
>> >>
>> >> Hi Shankari and Krzysztof,
>> >>
>> >> > -----Original Message-----
>> >> > From: Krzysztof Kozlowski <krzk@kernel.org>
>> >> > Sent: Sunday, May 25, 2025 9:02 PM
>> >> > To: Shankari Anand <shankari.ak0208@gmail.com>; devicetree@vger.ker=
nel.org
>> >> > Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley
>> >> > <conor+dt@kernel.org>; William Zhang <william.zhang@broadcom.com>;
>> >> > Anand Gore <anand.gore@broadcom.com>; Kursad Oney
>> >> > <kursad.oney@broadcom.com>; Florian Fainelli
>> >> > <florian.fainelli@broadcom.com>; Rafa=C5=82 Mi=C5=82ecki <rafal@mil=
ecki.pl>;
>> >> > Broadcom
>> >> > internal kernel review list <bcm-kernel-feedback-list@broadcom.com>=
; Rob
>> >> > Herring <robh@kernel.org>; skhan@linuxfoundation.org
>> >> > Subject: Re: [PATCH] dt-bindings: arm/bcm: Fix and validate brcm,bc=
m63138
>> >> > bindings with no errors
>> >> >
>> >> > On 25/05/2025 21:43, Shankari Anand wrote:
>> >> > > Fix and validate brcm,bcm63138 device tree bindings by correcting=
 schema
>> >> > > and
>> >> > example files.
>> >> >
>> >> > Nothing like that is done here.
>> >> >
>> >> > > This resolves previous schema validation errors and ensures compl=
iance
>> >> > > with
>> >> > devicetree core schema requirements.
>> >> >
>> >> > Which errors?
>> >> >
>> >> > > The patch passes dtbs check successfully, confirming the YAML bin=
dings,
>> >> > example DTS, and generated DTB are error-free.
>> >> >
>> >> > Drop, redundant.
>> >> >
>> >> > Please wrap commit message according to Linux coding style / submis=
sion
>> >> > process (neither too early nor over the limit):
>> >> > https://elixir.bootlin.com/linux/v6.4-
>> >> > rc1/source/Documentation/process/submitting-patches.rst#L597
>> >> >
>> >> > >
>> >> > > Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
>> >> > > ---
>> >> > >  .../bindings/arm/bcm/brcm,bcm63138.yaml       | 43 +++++++++++++=
++++++
>> >> >
>> >> > >  1 file changed, 43 insertions(+)
>> >> > >  create mode 100644
>> >> > Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
>> >> > >
>> >> > > diff --git
>> >> > a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
>> >> > b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
>> >> > > new file mode 100644
>> >> > > index 000000000000..5848f96128e1
>> >> > > --- /dev/null
>> >> > > +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yam=
l
>> >> > > @@ -0,0 +1,43 @@
>> >> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> >> > > +%YAML 1.2
>> >> > > +---
>> >> > > +$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm63138.yaml#
>> >> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> >> > > +
>> >> > > +title: Broadcom BCM63138 DSL SoC
>> >> > > +
>> >> > > +maintainers:
>> >> > > +  - Shankari Anand <shankari.ak0208@gmail.com>
>> >> > > +
>> >> > > +description: |
>> >> > > +  The Broadcom BCM63138 DSL System-on-a-Chip is designed for DSL
>> >> > platforms.
>> >> > > +  It supports multi-core ARM Cortex-A9 CPUs, a boot lookup table
>> >> > > (BootLUT),
>> >> > > +  and software-controlled resets using a system timer.
>> >> > > +
>> >> > > +select:
>> >> > > +  properties:
>> >> > > +    compatible:
>> >> > > +      contains:
>> >> > > +        const: brcm,bcm63138
>> >> > > +  required:
>> >> > > +    - compatible
>> >> > > +
>> >> > > +properties:
>> >> > > +  compatible:
>> >> > > +    const: brcm,bcm63138
>> >> >
>> >> > You are duplicating existing bindings - both TXT and schema. Maybe =
you
>> >> > wanted to do the conversion, but that's still duplication.
>> >> >
>> >> > > +
>> >> > > +patternProperties:
>> >> > > +  "^bootlut(@[0-9a-f]+)?$":
>> >> > > +    type: object
>> >> > > +    properties:
>> >> > > +      compatible:
>> >> > > +        const: brcm,bcm63138-bootlut
>> >> > > +
>> >> > > +      reg:
>> >> > > +        maxItems: 1
>> >> > > +
>> >> > > +    required:
>> >> > > +      - compatible
>> >> > > +      - reg
>> >> > > +
>> >> > > +additionalProperties: true
>> >> >
>> >> > No, this cannot be true. Look at other bindings... or is it soc/pla=
tform
>> >> > file? I really do not understand what you want to achieve here.
>> >> >
>> >> I guess we need to find a proper home for brcm,bcm63138-bootlut since=
 it is
>> >> used in the kernel source.
>> >> brcm,bcmbca.yaml covers all the soc already including bcm63138.  Woul=
d it be
>> >> the right direction to add a new
>> >> yaml file for brcm,bcm63138-bootlut block itself and drop the
>> >> brcm,bcm63138.txt completely?
>> >>
>> >> >
>> >> > Best regards,
>> >> > Krzysztof

