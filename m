Return-Path: <devicetree+bounces-171234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1815BA9DEF4
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 06:35:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 420C45A7959
	for <lists+devicetree@lfdr.de>; Sun, 27 Apr 2025 04:34:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2D431D9694;
	Sun, 27 Apr 2025 04:35:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A14E138F9C
	for <devicetree@vger.kernel.org>; Sun, 27 Apr 2025 04:35:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745728508; cv=none; b=YZ4VTxhlHz+7BUKAiNJP6YM5XO+crksvl16QwfgdtjUwszUzjImiGNO4qAYcyZJrEHTwlwoBvX2bEEb7ZgomOjQ2bq+qWNsl0HRT2H1NG4qkWRfaip5CyIKHvts3emOP5DSg4kMEHDor/0gErEFOwyyRm2UquFKsmNW+J2Ad094=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745728508; c=relaxed/simple;
	bh=niJetmjFjvODH5djwvO2RKVD87RTCl2iav6+ljuYbSs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=P2eIY72b3UmP8jjcu4ONoJ4EKTY5huhnkobGrRLqYr4q+LY/UeiuftGELFBPmubTgMRXqFRp9MXFzMehzUWopw06jUAaK/rXgs7HrKLm//hcgBpWULH3nnHSHSOUYZS6t+YKeu+f+uibwsGfpKm9OIkT3rgGa5VphFC5jEMY7cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54af20849adso3707764e87.1
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 21:35:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745728503; x=1746333303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FD8jPvs02KS23S1dBkAfheuqo80D4A5rfCuAcGUoLwQ=;
        b=n4VJ5ClRZu959qN1IFciA+KDIcMQcsBlcITKJvfkzEADV6IQT0G00Ph9gerwHli7ST
         K7o8lcUR8Ca1VE9fd3M9T0IoyHqzqN9xyD4eBYS+SD0Adz/Ka/8RE/qlDyadK+ijba/2
         jk2w5VAzDc2yd5q3fiKSP1TE1qo/nhr+5irr0im+SYQs5eCGe1skNFc4bO/J5YJ45KrB
         gvpkUabBbQLnHbzk7EbLA5NPwhw3ti81CWHPKaJx0hgeqa2Wuk2kbF9MnTRXPyyfCGY6
         TmJzhoK3CJkWCfQEUyzjhVc81zBrwe0hKx/ApVUYVZaa6tZ6u3OsjOQVnrY57x/ZHvFg
         IiiA==
X-Forwarded-Encrypted: i=1; AJvYcCX7TraamQ5kWgFLPSJQchlyBvzgkhiXKNbm+mBejCQhVstMdxv9nV54aPqq7EoRBldtTmsGq0ylK5l5@vger.kernel.org
X-Gm-Message-State: AOJu0YzzqzcxyThaVQwMBaza4DXhAIXiIAxPC2Uu0eZYOcRh5py0tlyD
	0KnGfJN5VBzgNbo41uOFfTQgTg6QTPfSlzI9AwnHjjgafnCQOssuPTe9Iw8V
X-Gm-Gg: ASbGncsSedg2owtQnv9PSMfKhMRmVxgioH4mzcIF9hLTvpTmvoH1gCQRol4QbsgmdOS
	VRT/sbe/NK1Nn+uHd97XqQyAzmPgpDQkpt4wBjZUGb5XhzGjGaQQQnj2xtVScEzpLSDFeT8q1GR
	QjTdR0Md9vg6Z3p6jXHpwzaWXpfkxkLLuri7hcY0FxTYVuh0l6oL4bqmOt0YQeqhY+9nKpn9y0J
	M138uw36np8NQ4xrcwx94T2t7Ul9ouMQBKJis1ulounKWBnln8YdsWS3l2xAfQc5F73hgS+wY5P
	RD+bXN4k8ICGZRw0CtpR1lsChi21B0c57o0x3/dxarFEFlGv8RMysSp1Rv+GqDzAhf82/sjnCYx
	1Bj5g
X-Google-Smtp-Source: AGHT+IF8GRuFaMCRmYWFJe7IuQDp/ZOQAl7VcEhr+BtyG9B7BEM1r5BZgJMNt6BRFhLcbgMiILYMag==
X-Received: by 2002:ac2:568d:0:b0:54e:784e:541 with SMTP id 2adb3069b0e04-54e7d527683mr3132135e87.14.1745728502759;
        Sat, 26 Apr 2025 21:35:02 -0700 (PDT)
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com. [209.85.167.42])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3bf0csm1219853e87.101.2025.04.26.21.35.00
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 21:35:02 -0700 (PDT)
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-54e9021d2b5so1561969e87.1
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 21:35:00 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUCLSm7CpDjIJYw6Ygah+RTyvK0Vkt6DSU85B7iDKm/o0RPMKn3hlBRabrMbYmAZZn2AsJcYl8N3Ivp@vger.kernel.org
X-Received: by 2002:a05:6512:1096:b0:54d:6b7f:affa with SMTP id
 2adb3069b0e04-54e7d516bcdmr3513368e87.1.1745728500749; Sat, 26 Apr 2025
 21:35:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250425003422.3465-1-andre.przywara@arm.com> <CAGb2v66vr_X3cB1g-On9opGQ7a4j1ASQyi4G=fqY07safrjfFw@mail.gmail.com>
In-Reply-To: <CAGb2v66vr_X3cB1g-On9opGQ7a4j1ASQyi4G=fqY07safrjfFw@mail.gmail.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Sun, 27 Apr 2025 12:34:48 +0800
X-Gmail-Original-Message-ID: <CAGb2v67=aENryhsQ6VBPwPXskMvMDZpzzeHz2LTUt-VDMTyzGQ@mail.gmail.com>
X-Gm-Features: ATxdqUGbV0LE1Cv48ezG9-bXflmbhyYsf2OHMWQhXg4lsefW6u7-yQG0ryqUMlE
Message-ID: <CAGb2v67=aENryhsQ6VBPwPXskMvMDZpzzeHz2LTUt-VDMTyzGQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: allwinner: a523: fix SD card detect pull resistor
To: Andre Przywara <andre.przywara@arm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 25, 2025 at 11:53=E2=80=AFAM Chen-Yu Tsai <wens@csie.org> wrote=
:
>
> On Fri, Apr 25, 2025 at 8:35=E2=80=AFAM Andre Przywara <andre.przywara@ar=
m.com> wrote:
> >
> > Trying to use the SD card on the Radxa board revealed that the card
> > detect wouldn't work as expected (insert not detected). Looking at the
> > schematic shows that the pull-up resistor is actually not populated
> > ("NC"), and the transistor just pulls the GPIO pin to GND, but it's
> > floating otherwise.
> > So using the pull-down flag is definitely wrong, we need the internal
> > pull up to get a reliable signal. The same is true for the Avaota board
> > (there is no transistor there, but it's floating in the same way). Ther=
e
> > is no schematic for the X96QPro+ board, but experiments show it's the
> > same behaviour.
> >
> > So change the GPIO flag for the card detect GPIO property to activate
> > the pull-up resistor for that pin.
> >
> > Fixes: 80e0fb4e491b ("arm64: dts: allwinner: a523: add Radxa A5E suppor=
t")
> > Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> > ---
> > Hi,
> >
> > please let me know if I should split this up into 3 patches, with prope=
r
> > Fixes: tags, or if you can maybe squash this into the original commits
> > still?
>
> I can squash them in if you prefer.

Fixes separated and squashed into the original patches.

ChenYu

> ChenYu
>
> > Cheers,
> > Andre
> >
> >  arch/arm64/boot/dts/allwinner/sun55i-a527-radxa-a5e.dts | 2 +-
> >  arch/arm64/boot/dts/allwinner/sun55i-h728-x96qpro+.dts  | 2 +-
> >  arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts | 2 +-
> >  3 files changed, 3 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a527-radxa-a5e.dts b/=
arch/arm64/boot/dts/allwinner/sun55i-a527-radxa-a5e.dts
> > index 03c9a9ef5adc2..2d2f3af91d05e 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun55i-a527-radxa-a5e.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun55i-a527-radxa-a5e.dts
> > @@ -56,7 +56,7 @@ &ehci1 {
> >
> >  &mmc0 {
> >         vmmc-supply =3D <&reg_cldo3>;
> > -       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_DOWN)>; /* =
PF6 */
> > +       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PF=
6 */
> >         bus-width =3D <4>;
> >         status =3D "okay";
> >  };
> > diff --git a/arch/arm64/boot/dts/allwinner/sun55i-h728-x96qpro+.dts b/a=
rch/arm64/boot/dts/allwinner/sun55i-h728-x96qpro+.dts
> > index c0bce3f4fa925..59db103546f65 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun55i-h728-x96qpro+.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun55i-h728-x96qpro+.dts
> > @@ -56,7 +56,7 @@ &ehci1 {
> >
> >  &mmc0 {
> >         vmmc-supply =3D <&reg_vcc3v3>;
> > -       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_DOWN)>; /* =
PF6 */
> > +       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PF=
6 */
> >         bus-width =3D <4>;
> >         disable-wp;
> >         status =3D "okay";
> > diff --git a/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts b/=
arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
> > index 85a546aecdbe1..dea2acc1849bb 100644
> > --- a/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
> > +++ b/arch/arm64/boot/dts/allwinner/sun55i-t527-avaota-a1.dts
> > @@ -66,7 +66,7 @@ &ehci1 {
> >
> >  &mmc0 {
> >         vmmc-supply =3D <&reg_cldo3>;
> > -       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_DOWN)>; /* =
PF6 */
> > +       cd-gpios =3D <&pio 5 6 (GPIO_ACTIVE_LOW | GPIO_PULL_UP)>; /* PF=
6 */
> >         bus-width =3D <4>;
> >         status =3D "okay";
> >  };
> >
> > base-commit: 1e5a69d67d1b3c55c9b0cd3933af1436b5d52aa1
> > --
> > 2.46.3
> >

