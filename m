Return-Path: <devicetree+bounces-107693-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 291F198FCB8
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 06:23:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CBB5D1F22E24
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2024 04:23:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC983FE4A;
	Fri,  4 Oct 2024 04:23:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="E2dufXz/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2549139E
	for <devicetree@vger.kernel.org>; Fri,  4 Oct 2024 04:23:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728015828; cv=none; b=YcCmmow886ADjBESa/61B2k2vB0xiy0iLXt1GdpBum/CQUkLAFADma6kUEel0bmpbF6vt38PkBOasCeJeRBNbsBwv6hL5LhpoxVXuZ8iOyNJWQvZLQ+UZpiugfCzvvcjJoNu/kANuUKE4/aI4BYbEuZ9KdbLQSmv0UwpYOCtRHo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728015828; c=relaxed/simple;
	bh=c07CGN9V7S94OpNYn9IkfSzVCR8++ziq+96vBX0stQo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jDaV7+TZRo+za+PZHSyIzfmGjklfaM6vNml46yhya81vSenEN9gZTRlQ6iG4gIgNvhE1O4VNT+ZIPhZh62t6u4EZ99BBN3bQmAxN2LcHFfighu/sdGfar2qqR41qYP/wlNDVbmIxqrvcWi8sPm7MApMoGuCNr8Ciy+TQA9R/RCw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=E2dufXz/; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-50958a19485so462751e0c.2
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 21:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728015825; x=1728620625; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KQJli9cYBSHQhmqFSBnQ/Z74/l32FKm9tuU98/RCsm0=;
        b=E2dufXz/Bds/VILbGiPPj2tS0VZAFCtdaQAAYo0Kk/jtbvwO6EXh0lTrfepZINfhVT
         2zr+cwAVCxSuznMt0oscGyl4yWLmxxwqs7EmcAdMocvkeqkyLg+TvLoLnM6C1iZ5jkuJ
         PGBWjz0RVnKfdTMpUZXVAVjy0R4xDr48huCMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728015825; x=1728620625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KQJli9cYBSHQhmqFSBnQ/Z74/l32FKm9tuU98/RCsm0=;
        b=NfGVSpekHqNr/u6XKIlI+mc+oUqO8XdeW6eMGcYihD2X1C1DYA8D8Di0Es+DOsPtkd
         p1X/zk9B5t71jxX8TvyeFaLuof04q/w4sqmdTRxJXpAnZem6I5oFDShByzRzIMyJBcE/
         2QiA9Dmf38XeoGt1cWiNnp25nc+h7gA3XfwLcWCgDizgPHGg0KZDnZCmkaiu5OTg/JqT
         6jlGJehT27wMCwXd005zLWpk9lQ+u8fFZGi1iYr+BEgHdcZYZvE9aAUQwqzNvqxGGAK2
         mDnkYz2bocbeYQAA+xDFDPFeQO/PwkNK5E49u/stQSK4SPUSEn8c+Fr7fq8hkTBIKv5R
         w7Bg==
X-Forwarded-Encrypted: i=1; AJvYcCUpeBQToqNBSm9N0vFJyUbAF9P1ZUbpUB1CFiZ2/W6/2ldZZ1TzlaLYWfySErjNUH97O/tJCpGRhuP+@vger.kernel.org
X-Gm-Message-State: AOJu0Yztz1cqyF9vXT+gObD7bRtDGjaXymvsb284ZeefDdXTcWFRzLnJ
	DpyoULRpr1sZNHkc/uP1aN3qFhDblrk0K+jHvGIogVfWa8DMjtSGKriX9/Dz+9m65VGulgKMDB4
	IZQ==
X-Google-Smtp-Source: AGHT+IEGDFl4zUj1OUY7TYLgDNkyZILdtYu+4VxkfpZVZAMM1BV4EC4n/jaYTb8jQrWdh/ht7p35aA==
X-Received: by 2002:a05:6122:2508:b0:50c:5683:ad8c with SMTP id 71dfb90a1353d-50c8559a156mr1054035e0c.11.1728015825340;
        Thu, 03 Oct 2024 21:23:45 -0700 (PDT)
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com. [209.85.222.53])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-50c72c03b21sm356761e0c.41.2024.10.03.21.23.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Oct 2024 21:23:44 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id a1e0cc1a2514c-84e808f3c3cso450741241.2
        for <devicetree@vger.kernel.org>; Thu, 03 Oct 2024 21:23:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVMr02KgZsHY8fikbTD0HziGmDrtzHrgZtqqltqSOVFXgBdSytXA+GUpeeGOCKj9MVkAEfNTdCncADO@vger.kernel.org
X-Received: by 2002:a05:6102:3594:b0:4a3:aa99:5ef1 with SMTP id
 ada2fe7eead31-4a4058f7e87mr1271634137.25.1728015823875; Thu, 03 Oct 2024
 21:23:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241003070139.1461472-1-fshao@chromium.org> <20241003070139.1461472-4-fshao@chromium.org>
 <d3052eb4-bfcb-4ee2-9b4b-a4845238c765@collabora.com>
In-Reply-To: <d3052eb4-bfcb-4ee2-9b4b-a4845238c765@collabora.com>
From: Fei Shao <fshao@chromium.org>
Date: Fri, 4 Oct 2024 12:23:06 +0800
X-Gmail-Original-Message-ID: <CAC=S1njNEZvu=ay9+4qXQ0xYN+CQjCbr2oV+1RvAK9q5oRRDjw@mail.gmail.com>
Message-ID: <CAC=S1njNEZvu=ay9+4qXQ0xYN+CQjCbr2oV+1RvAK9q5oRRDjw@mail.gmail.com>
Subject: Re: [PATCH v2 3/9] arm64: dts: mediatek: mt8188: Add MIPI DSI nodes
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 3, 2024 at 4:36=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 03/10/24 08:59, Fei Shao ha scritto:
> > Add MIPI DSI and the associated PHY node to support DSI panels.
> > Individual board device tree should enable the nodes as needed.
> >
> > Signed-off-by: Fei Shao <fshao@chromium.org>
> > ---
> >
> > (no changes since v1)
> >
> >   arch/arm64/boot/dts/mediatek/mt8188.dtsi | 26 +++++++++++++++++++++++=
+
> >   1 file changed, 26 insertions(+)
> >
> > diff --git a/arch/arm64/boot/dts/mediatek/mt8188.dtsi b/arch/arm64/boot=
/dts/mediatek/mt8188.dtsi
> > index 23101d316c4e..719d2409a7db 100644
> > --- a/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> > +++ b/arch/arm64/boot/dts/mediatek/mt8188.dtsi
> > @@ -1839,6 +1839,16 @@ pcieport: pcie-phy@0 {
> >                       };
> >               };
> >
> > +             mipi_tx_phy: dsi-phy@11c80000 {
>
> There are two DSI PHYs, one at 0x11c80000 and one at 0x11c90000
>
> > +                     compatible =3D "mediatek,mt8188-mipi-tx", "mediat=
ek,mt8183-mipi-tx";
> > +                     reg =3D <0 0x11c80000 0 0x1000>;
> > +                     clocks =3D <&clk26m>;
> > +                     clock-output-names =3D "mipi_tx0_pll";
> > +                     #clock-cells =3D <0>;
> > +                     #phy-cells =3D <0>;
> > +                     status =3D "disabled";
> > +             };
> > +
> >               i2c1: i2c@11e00000 {
> >                       compatible =3D "mediatek,mt8188-i2c";
> >                       reg =3D <0 0x11e00000 0 0x1000>,
> > @@ -2224,10 +2234,26 @@ larb19: smi@1a010000 {
> >                       mediatek,smi =3D <&vdo_smi_common>;
> >               };
> >
> > +             disp_dsi: dsi@1c008000 {
>
> And there are two DSIs, one at 0x1c008000 and one at 0x1c012000

Thanks for pointing them out, I'll add them for the second DSI.

Regards,
Fei

