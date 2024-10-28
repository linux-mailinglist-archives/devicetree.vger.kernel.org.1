Return-Path: <devicetree+bounces-116446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CFB79B2EBB
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 12:23:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CF187285020
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2024 11:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20B771DE3B3;
	Mon, 28 Oct 2024 11:17:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="RH8c7k9Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D901DA0FE
	for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 11:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730114245; cv=none; b=oI/jc8yV0+TRDTQE/oUan4MZ140klVptXYeJJkJJnFdn2G1dvf2lxuwp5Gp9yW9A7EDBrOQpaPW8szqMLtyz2llbjIFYtmfGUOJb3s+oIJyb2jtXBJLIDsOmh9KFetxaa+MWh3/66Dm8XAJMdkxpJOOjStJ4ZgbQeWxzltpJqeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730114245; c=relaxed/simple;
	bh=Q+Izx9CUJhJ7KmTt+C+xoI5zATsydey1cYfMDV4wNKU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LgpYNCuRZSiU8hHI9Zfnxkf4WbsfKfXP5bP+TZKVtbVh5U01SxgRaMUBpuhMG7MqmOA5xlgIilsg5d4dKDr99cPHUmp/yB5qR9IqblgdmAWhrfpa1aJmq1qGKBUE7n2TTwZ7ZgTGhV1J2STUz8pTKSr+3KvizWB50IjUT6IHju4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=RH8c7k9Q; arc=none smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-84fe06fbdc6so1143932241.0
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 04:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730114241; x=1730719041; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9g6YjlVbvnFbuJwRrpmbG7D+MwzdvrH5uhaL6ujW6ig=;
        b=RH8c7k9QDJoNv0wVvQcfcpEfTuqOnnE6YXxw3JYkjSyWSQGXkXCJwADsVzCqUKxp1R
         s1vHExy1VtQIHHjydQqJ8/cr4tFL/el/pq9jf9PRlov4uYuXKVq3JStyrJ4nLK0yWiw9
         EM4G5qHpYOW/rOvUfttDAtaQXd4ieRWIwIWWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730114241; x=1730719041;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9g6YjlVbvnFbuJwRrpmbG7D+MwzdvrH5uhaL6ujW6ig=;
        b=TDkKsb3YDdpcRrAVKf8p5VF2RKba0yU2bXD0aBdrBAwg3cyqdL2qCIIkx/K133uLTd
         LVy131RseNEu027qL6yX3lNfxktOE4ydnEgUyl5nXAziWe9TqTL9ws6KARYj8vkiYdgm
         UPcnwK8rZ37esSxvtc7UnNu2ZIB7NiZ+irreYGm7ND3qXGIsqiXtZIyw48cGt2T3nNHW
         UqNUacma+NCoeZc0gd9EcQLIQgkzX41pMQPRCDpkdecQZPgEFSqWX+1hNjj1RZxnBaI3
         gGXcO+XgfQgw99Jgn3qx0914RHHIEdYH8rpopzQgUq93zCcLenjPypFMsAFsC9pgsBvD
         y7tg==
X-Forwarded-Encrypted: i=1; AJvYcCXSxxGdMaCQjeYM/XQxw6FlnZH9r7y1UQLmdIkPC4opV1Cpk8vjOAwEfc4cbRKNPg06FJZ9uaLQdguX@vger.kernel.org
X-Gm-Message-State: AOJu0YxE0ferhWwAd7HXT27dRdADL6mT5Xv1OwT1LCagVMMR90kdiyMu
	F3EFTvnEasP0AGl66alX8hYJ+hIAf7Wh1e0pAStMSV69EZC7Epxdh+tqXEbxuxng55S1ZEpjxpU
	=
X-Google-Smtp-Source: AGHT+IFNGJo8N7/kVIAsBOjJdf+jF+hGmEgOVJ4oCtIeh87AnqRmxsRO2O8Z3DHgwQeaYOlIZ2/oRA==
X-Received: by 2002:a05:6102:dd0:b0:4a5:e5b6:25d1 with SMTP id ada2fe7eead31-4a8cfb83185mr5094974137.15.1730114240985;
        Mon, 28 Oct 2024 04:17:20 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-85580b180e0sm895337241.28.2024.10.28.04.17.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2024 04:17:19 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-4a46b6affeaso1458203137.2
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2024 04:17:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWIF8ZEwG+9E040ngpb0IKbKxhqAH2yuHP4wmhofLfOfZfPXXXRyy47netH5xALSiOcLa00plSzTiKG@vger.kernel.org
X-Received: by 2002:a05:6102:3049:b0:4a3:d2e5:f097 with SMTP id
 ada2fe7eead31-4a8cfd6d0d4mr4759861137.24.1730114238879; Mon, 28 Oct 2024
 04:17:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241025110111.1321704-1-fshao@chromium.org> <20241025110111.1321704-3-fshao@chromium.org>
 <iupuwxxslb3t76mzy3ufsruwwpd47fuop7y6tfcbwkosdagkxf@fnklbp6t6au2>
In-Reply-To: <iupuwxxslb3t76mzy3ufsruwwpd47fuop7y6tfcbwkosdagkxf@fnklbp6t6au2>
From: Fei Shao <fshao@chromium.org>
Date: Mon, 28 Oct 2024 19:16:43 +0800
X-Gmail-Original-Message-ID: <CAC=S1nic3HgEGeS6up_MsYh3UoM_piHC6=uuRep5bne4zOWbxQ@mail.gmail.com>
Message-ID: <CAC=S1nic3HgEGeS6up_MsYh3UoM_piHC6=uuRep5bne4zOWbxQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: mediatek: Introduce MT8188 Geralt
 platform based Ciri
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 28, 2024 at 5:02=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.or=
g> wrote:
>
> On Fri, Oct 25, 2024 at 06:59:36PM +0800, Fei Shao wrote:
> > Introduce MT8188-based Chromebook Ciri, also known commercially as
> > Lenovo Chromebook Duet (11", 9).
> >
> > Ciri is a detachable device based on the Geralt design, where Geralt is
> > the codename for the MT8188 platform. Ciri offers 8 SKUs to accommodate
> > different combinations of second-source components, including:
> > - audio codecs (RT5682S and ES8326)
> > - speaker amps (TAS2563 and MAX98390)
> > - MIPI-DSI panels (BOE NV110WUM-L60 and IVO t109nw41)
> >
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> > ---
> >
> >  arch/arm64/boot/dts/mediatek/Makefile         |    8 +
> >  .../dts/mediatek/mt8188-geralt-ciri-sku0.dts  |   11 +
> >  .../dts/mediatek/mt8188-geralt-ciri-sku1.dts  |   63 +
> >  .../dts/mediatek/mt8188-geralt-ciri-sku2.dts  |   54 +
> >  .../dts/mediatek/mt8188-geralt-ciri-sku3.dts  |   20 +
> >  .../dts/mediatek/mt8188-geralt-ciri-sku4.dts  |   43 +
> >  .../dts/mediatek/mt8188-geralt-ciri-sku5.dts  |   76 +
> >  .../dts/mediatek/mt8188-geralt-ciri-sku6.dts  |   67 +
> >  .../dts/mediatek/mt8188-geralt-ciri-sku7.dts  |   52 +
> >  .../boot/dts/mediatek/mt8188-geralt-ciri.dtsi |  413 +++++
> >  .../boot/dts/mediatek/mt8188-geralt.dtsi      | 1497 +++++++++++++++++
> >  11 files changed, 2304 insertions(+)
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku=
0.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku=
1.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku=
2.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku=
3.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku=
4.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku=
5.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku=
6.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku=
7.dts
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri.dts=
i
> >  create mode 100644 arch/arm64/boot/dts/mediatek/mt8188-geralt.dtsi
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/Makefile b/arch/arm64/boot/dt=
s/mediatek/Makefile
> > index 8fd7b2bb7a15..c6c34d99316b 100644
> > --- a/arch/arm64/boot/dts/mediatek/Makefile
> > +++ b/arch/arm64/boot/dts/mediatek/Makefile
> > @@ -69,6 +69,14 @@ dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-volt=
orb-sku589824.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-corsola-voltorb-sku589825.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8186-evb.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8188-evb.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8188-geralt-ciri-sku0.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8188-geralt-ciri-sku1.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8188-geralt-ciri-sku2.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8188-geralt-ciri-sku3.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8188-geralt-ciri-sku4.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8188-geralt-ciri-sku5.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8188-geralt-ciri-sku6.dtb
> > +dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8188-geralt-ciri-sku7.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8192-asurada-hayato-r1.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8192-asurada-hayato-r5-sku2.dtb
> >  dtb-$(CONFIG_ARCH_MEDIATEK) +=3D mt8192-asurada-spherion-r0.dtb
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dts b=
/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dts
> > new file mode 100644
> > index 000000000000..7a2edbaa74f1
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku0.dts
> > @@ -0,0 +1,11 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright 2023 Google LLC
> > + */
> > +/dts-v1/;
> > +#include "mt8188-geralt-ciri.dtsi"
> > +
> > +/ {
> > +     model =3D "Google Ciri sku0 board";
> > +     compatible =3D "google,ciri-sku0", "google,ciri", "mediatek,mt818=
8";
> > +};
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dts b=
/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dts
> > new file mode 100644
> > index 000000000000..53fdd5acaa3f
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/mediatek/mt8188-geralt-ciri-sku1.dts
> > @@ -0,0 +1,63 @@
> > +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> > +/*
> > + * Copyright 2023 Google LLC
> > + */
> > +/dts-v1/;
> > +#include "mt8188-geralt-ciri.dtsi"
> > +
> > +/ {
> > +     model =3D "Google Ciri sku1 board";
> > +     compatible =3D "google,ciri-sku1", "google,ciri", "mediatek,mt818=
8";
> > +};
> > +
> > +&dsi_panel {
> > +     compatible =3D "ivo,t109nw41", "himax,hx83102";
> > +};
> > +
> > +&touchscreen {
> > +     himax,pid =3D <0x1003>;
>
> Why do you add more of undocumented properties?

I think I'll drop the Himax related thing until Himax finishes
upstreaming their drivers, so there's a standardized binding to
follow.

>
> > +     firmware-name =3D "himax_i2chid_1003.bin";
> > +};
> > +
> > +&i2c0 {
> > +     /delete-node/ audio-codec@1a;
> > +
> > +     es8326: audio-codec@19 {
> > +             compatible =3D "everest,es8326";
> > +             reg =3D <0x19>;
> > +             interrupts-extended =3D <&pio 108 IRQ_TYPE_LEVEL_LOW>;
> > +             #sound-dai-cells =3D <0>;
> > +             everest,jack-pol =3D [0e];
> > +             everest,interrupt-clk =3D [00];
> > +     };
> > +};
> > +
> > +&sound {
> > +     compatible =3D "mediatek,mt8188-es8326";
> > +     model =3D "mt8188_m98390_8326";
> > +
> > +     audio-routing =3D
> > +             "ETDM1_OUT", "ETDM_SPK_PIN",
> > +             "ETDM2_OUT", "ETDM_HP_PIN",
> > +             "ETDM1_IN", "ETDM_SPK_PIN",
> > +             "ETDM2_IN", "ETDM_HP_PIN",
> > +             "ADDA Capture", "MTKAIF_PIN",
> > +             "Headphone Jack", "HPOL",
> > +             "Headphone Jack", "HPOR",
> > +             "MIC1", "Headset Mic",
> > +             "Left Spk", "Front Left BE_OUT",
> > +             "Right Spk", "Front Right BE_OUT";
> > +     status =3D "okay";
> > +
> > +     hs-capture-dai-link {
>
> Nope, that's not how DAI links are called.

Acknowledged, but I'm still figuring out what you want to suggest here
- does the `^dai-link@[0-9]+$` pattern sound okay?

>
> > +             codec {
> > +                     sound-dai =3D <&es8326>;
> > +             };
> > +     };
>
> ...
>
> > +&i2c2 {
> > +     status =3D "disabled";
> > +};
> > +
> > +&i2c_tunnel {
> > +     /delete-node/ sbs-battery@b;
> > +
> > +     battery: sbs-battery@f {
> > +             compatible =3D "sbs,sbs-battery";
> > +             reg =3D <0xf>;
> > +             sbs,i2c-retry-count =3D <2>;
> > +             sbs,poll-retry-count =3D <1>;
> > +     };
> > +};
> > +
> > +&max98390_38 {
> > +     sound-name-prefix =3D "Front Right";
> > +     maxim,dsm_param_name =3D "dsm_param.bin";
>
> NAK. Not a DT property. You cannot send us ACPI stuff.
>
> Go through internal review first, which should tell you that ACPI is not
> accepted into DT. There are just few exceptions and codecs do not
> qualify.

I'll drop all these invalid lines. It was likely a misunderstanding
when the lines were added. Thanks for clarifying.

Regards,
Fei

>
> Best regards,
> Krzysztof
>

