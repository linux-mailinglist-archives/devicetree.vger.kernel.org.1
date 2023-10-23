Return-Path: <devicetree+bounces-10881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DB577D30B0
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 13:01:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 866F128125D
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 11:01:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3389112B90;
	Mon, 23 Oct 2023 11:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="hTCnmESm"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A51AD13ADC
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 11:01:08 +0000 (UTC)
Received: from mail-yb1-xb35.google.com (mail-yb1-xb35.google.com [IPv6:2607:f8b0:4864:20::b35])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBC0D10C1
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 04:01:04 -0700 (PDT)
Received: by mail-yb1-xb35.google.com with SMTP id 3f1490d57ef6-d9ac43d3b71so3045666276.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 04:01:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1698058864; x=1698663664; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CQnyw3MjdCXKTfyQSa/jGUuKdoEycBcWTe0sh3zaKAg=;
        b=hTCnmESm0n9IdCN3jOGrqBRmMrgLENDWDIXphQB0v/rbTChX5BHJNWGO7PpIDg51lA
         ibv14Xq+gI4ZtgNh5Vi/4Fe0EA75NxMZhuueZo3AzT0/4MPy0iHb6AyHi1dAFLsK+HwP
         ILEOCDaT+eBYSPu+7HQAZ/O9e8p3Mbzj8cyGw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698058864; x=1698663664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CQnyw3MjdCXKTfyQSa/jGUuKdoEycBcWTe0sh3zaKAg=;
        b=WGYJgmZ8TzZ+mECH9vf8/TZvWgG0K/Xf2jIxHOeMC+YpaRi5ug12kIJq3vxHBJuoSV
         tFWkF2eRrpqYAg0Fw1cWpfItehajibc008DG1H2yAjhBSUlQnKs4pRW53OolRsN3WyEg
         w+I6FpYY+aWFSyRr7P8xB6P60gxRoF3oMJKthyrCNhBBBNFvuj3ol5U3VOJMbv4AWIqj
         mbgcIAAVuMyZ2ygN8BMFFaUV2sg1Hcso64B/7J1DP7OfBwzQj/vHhAskz9eSUYVtxQGL
         w/vEbMLVtbXN0x54oTxD0SKSGeMBReiPXrAhlpIAcjKEf9SDrB7Ccb657+2ygCN1GIyf
         odYg==
X-Gm-Message-State: AOJu0YxGduS/8YJvK3UhX8Hpesb1BNRGLimcnEV/ThgopM1MfsWJ3dHX
	A6x4VYJPlR0W3PmPyC+Bcga5OCHYo9g1qSx3igKhD0S38vcKyVgO/RcGww==
X-Google-Smtp-Source: AGHT+IHsgGGa2skrDGr96nwbMOiC55O2cCdp4sM8NTs6qixH/wFcZIQVI1iSePRLMK2nXAYF5AkwHSE0OOXJHQbWoxA=
X-Received: by 2002:a25:4217:0:b0:d9b:3b3e:5a07 with SMTP id
 p23-20020a254217000000b00d9b3b3e5a07mr7276609yba.5.1698058863818; Mon, 23 Oct
 2023 04:01:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230904180635.923506-1-dario.binacchi@amarulasolutions.com> <5e75b5fd-c351-1f42-94ed-b6dc1d3f030e@foss.st.com>
In-Reply-To: <5e75b5fd-c351-1f42-94ed-b6dc1d3f030e@foss.st.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Mon, 23 Oct 2023 13:00:48 +0200
Message-ID: <CABGWkvquib1WEKGR-DFiNN62gLcYF3Y==K29_w-=9pV0gnjEqg@mail.gmail.com>
Subject: Re: [RFC PATCH] ARM: dts: stm32f469-disco: use the same 3v3 for SD
 and DSI nodes
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Alexandre,

On Thu, Sep 14, 2023 at 10:57=E2=80=AFAM Alexandre TORGUE
<alexandre.torgue@foss.st.com> wrote:
>
> On 9/4/23 20:06, Dario Binacchi wrote:
> > In the board schematic, the power supply for the SD card is the same 3.=
3
> > volts used to power the LCD panel and other peripherals. By generalizin=
g
> > the name of the voltage regulator, it simplifies the device tree and ma=
kes
> > it more readable.
> >
>
> It makes sens as it is the same discret regulator (no pmic involved).
>

I don't see it applied to linux-stm32/next. Is something missing?

Thanks and regards,
Dario

> regards
> Alex
>
> > Link: https://www.st.com/en/evaluation-tools/32f469idiscovery.html#cad-=
resources
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> >
> > ---
> >
> >   arch/arm/boot/dts/st/stm32f469-disco.dts | 15 ++++-----------
> >   1 file changed, 4 insertions(+), 11 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/st/stm32f469-disco.dts b/arch/arm/boot/d=
ts/st/stm32f469-disco.dts
> > index cbbd521bf010..8a4f8ddd083d 100644
> > --- a/arch/arm/boot/dts/st/stm32f469-disco.dts
> > +++ b/arch/arm/boot/dts/st/stm32f469-disco.dts
> > @@ -69,16 +69,9 @@ aliases {
> >               serial0 =3D &usart3;
> >       };
> >
> > -     mmc_vcard: mmc_vcard {
> > +     vcc_3v3: vcc-3v3 {
> >               compatible =3D "regulator-fixed";
> > -             regulator-name =3D "mmc_vcard";
> > -             regulator-min-microvolt =3D <3300000>;
> > -             regulator-max-microvolt =3D <3300000>;
> > -     };
> > -
> > -     vdd_dsi: vdd-dsi {
> > -             compatible =3D "regulator-fixed";
> > -             regulator-name =3D "vdd_dsi";
> > +             regulator-name =3D "vcc_3v3";
> >               regulator-min-microvolt =3D <3300000>;
> >               regulator-max-microvolt =3D <3300000>;
> >       };
> > @@ -164,7 +157,7 @@ panel@0 {
> >               compatible =3D "orisetech,otm8009a";
> >               reg =3D <0>; /* dsi virtual channel (0..3) */
> >               reset-gpios =3D <&gpioh 7 GPIO_ACTIVE_LOW>;
> > -             power-supply =3D <&vdd_dsi>;
> > +             power-supply =3D <&vcc_3v3>;
> >               status =3D "okay";
> >
> >               port {
> > @@ -219,7 +212,7 @@ timer@2 {
> >
> >   &sdio {
> >       status =3D "okay";
> > -     vmmc-supply =3D <&mmc_vcard>;
> > +     vmmc-supply =3D <&vcc_3v3>;
> >       cd-gpios =3D <&gpiog 2 GPIO_ACTIVE_LOW>;
> >       broken-cd;
> >       pinctrl-names =3D "default", "opendrain";
>


--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

