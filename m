Return-Path: <devicetree+bounces-34354-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 55B668397AA
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:27:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C45572878F0
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:27:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2EB481AA2;
	Tue, 23 Jan 2024 18:27:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="SqSMVBap"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D90D5F842
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 18:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706034456; cv=none; b=mHz0VMRmalVlgdtJEl1MJgH4lQ00YBcalvG+L8jjDuv5tubxQ2KuleO5nr1pWzGObbQn8R0E3dZFhpIOYrDuapn54UEAIiVnFkMlL2UtFdi7HcMYlD217mFpMw4p0fSjDrbTUJWv87iru5JKeGzventypSKsItYTMj1uYqKnb4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706034456; c=relaxed/simple;
	bh=WDvTf4Pb4AwKk2fqMyJRNXjOW+wyQ7ey2oSE0XSdntw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hmRLPCCCALORDF0R3xsFNwQlZ2DGCs2kSgRybhDWmuIOlwlCmaQ8eSpsr3SVe9aLRzPYnHkqv2AdgMASsXojMSiHrp5UMkg38fwWgZqC+a3rNzimyi6DheJNT0sKIpSH+87RC1nmnnXWOUhdFzvtrPyD8V0b9Wxdd2KX1+ENsfA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=SqSMVBap; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-dae7cc31151so3401618276.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:27:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706034454; x=1706639254; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4iXjdB14EGx1ap8/L42aOnqGTQ+/kTUhw6/TZGOMWuQ=;
        b=SqSMVBapWzsreZ8jRL3yg0yWGktYgaZ1mUvTp4XueWAwOVUe74Upw8r3mYYRzf+dMJ
         rAiI+XlFGvSnAYZJo0zueBOO4IJpCNWCl2KL4AuTKIqi46nXhkGpw7Sc31UGYnDhSSGn
         c3rNgtGHhJTpe20y+jtXYfboJaGe7sy9oX1jg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706034454; x=1706639254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4iXjdB14EGx1ap8/L42aOnqGTQ+/kTUhw6/TZGOMWuQ=;
        b=SQ3QWCtsyHCPuiPAzclL3iVLw0SzPu9B0Ev3aX5KAO1uFZN337q7bH+LX7y3ReZx6j
         q8QQQRTjn0Dg9nsOUeTrN98cVoyGe8k9bCn2+qNnNuLjbfHzbzlYmG7Gqt6Ax5V4Yhdv
         7kCgaS1+gWxp8YQxVTa001Fr3isdjaCl60rw+BSIFJwp/3GZIn8WmlwI3Z1okC/QZihb
         3yILbKb84FQAgx9hsT6k8p15qshjSigeyU5iW9w9pi9D1ZAlpnJEQfSxD9cmlp+iGFcu
         pE1+2fIWtmnWY3mvuvwAVkHz+mEgo3WirrueGCi+ztm8wGr2a8uxdZT3ePIbyX1lQWhM
         jQ/w==
X-Gm-Message-State: AOJu0Yy69weSfAa3SmOy15RCrg4AFBzYsi7Bq6bg7K+B7GmfvKOmSuoN
	ctD6s3AejLmV20/PxzA4uX0WffpO16W/Xrg980xvutKjF+do/weziQ0/B46+AeNShHA+AyXusvm
	DSkSAgdtIifCKntmMfTN9jemyHKyHSAlM4lhRbQ==
X-Google-Smtp-Source: AGHT+IHVZHeolBjGG9wXw9cp0ut6R99LTCUcJAQ6AtSieMrLx8ZzLA1bcIxY8fAXn9j9l84z0oW21VurCWKLFClNa8s=
X-Received: by 2002:a5b:844:0:b0:dc3:4f94:19d3 with SMTP id
 v4-20020a5b0844000000b00dc34f9419d3mr2559715ybq.61.1706034454031; Tue, 23 Jan
 2024 10:27:34 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240112144902.40044-1-dario.binacchi@amarulasolutions.com>
 <20240112144902.40044-4-dario.binacchi@amarulasolutions.com> <f38e8afb-bf08-401e-a747-612a68b96414@foss.st.com>
In-Reply-To: <f38e8afb-bf08-401e-a747-612a68b96414@foss.st.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Tue, 23 Jan 2024 19:27:23 +0100
Message-ID: <CABGWkvqDX5czR+2zsH0aStPt5nbDLU_45rDDjGawKFH23e4FQg@mail.gmail.com>
Subject: Re: [PATCH v8 3/5] ARM: dts: stm32: rename mmc_vcard to vcc-3v3 on stm32f769-disco
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Lee Jones <lee@kernel.org>, Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
	Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexandre,

On Tue, Jan 23, 2024 at 5:31=E2=80=AFPM Alexandre TORGUE
<alexandre.torgue@foss.st.com> wrote:
>
> Hi Dario
>
> On 1/12/24 15:48, Dario Binacchi wrote:
> > In the schematics of document UM2033, the power supply for the micro SD
> > card is the same 3v3 voltage that is used to power other devices on the
> > board. By generalizing the name of the voltage regulator, it can be
> > referenced by other nodes in the device tree without creating
> > misunderstandings.
> >
> > This patch is preparatory for future developments.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> > Reviewed-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
> >
> > ---
> >
> > Changes in v8:
> > - Add Reviewed-by tag of Raphael Gallais-Pou
> >
> >   arch/arm/boot/dts/st/stm32f769-disco.dts | 6 +++---
> >   1 file changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/st/stm32f769-disco.dts b/arch/arm/boot/d=
ts/st/stm32f769-disco.dts
> > index 5d12ae25b327..8632bd866272 100644
> > --- a/arch/arm/boot/dts/st/stm32f769-disco.dts
> > +++ b/arch/arm/boot/dts/st/stm32f769-disco.dts
> > @@ -92,9 +92,9 @@ usbotg_hs_phy: usb-phy {
> >               clock-names =3D "main_clk";
> >       };
> >
> > -     mmc_vcard: mmc_vcard {
> > +     vcc_3v3: vcc_3v3 {
>
> Replace node name by vcc-3v3. If no v9 sent, I'll do it directly.

I'll do it

Thanks and regards,
Dario

>
> >               compatible =3D "regulator-fixed";
> > -             regulator-name =3D "mmc_vcard";
> > +             regulator-name =3D "vcc_3v3";
> >               regulator-min-microvolt =3D <3300000>;
> >               regulator-max-microvolt =3D <3300000>;
> >       };
> > @@ -128,7 +128,7 @@ &rtc {
> >
> >   &sdio2 {
> >       status =3D "okay";
> > -     vmmc-supply =3D <&mmc_vcard>;
> > +     vmmc-supply =3D <&vcc_3v3>;
> >       cd-gpios =3D <&gpioi 15 GPIO_ACTIVE_LOW>;
> >       broken-cd;
> >       pinctrl-names =3D "default", "opendrain", "sleep";



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

