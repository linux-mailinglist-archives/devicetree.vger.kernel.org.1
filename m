Return-Path: <devicetree+bounces-138456-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D17DAA107E8
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:34:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF2AD1888811
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 13:34:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FAA620F960;
	Tue, 14 Jan 2025 13:34:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b="Bl/w/Owo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 851FC1C4617
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 13:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736861681; cv=none; b=iLOscwIsSWE6jB0wYDJ09w530CC1c2E6vDow0YoFoSXrORcLoUF+vke+UtbShwZVFYjuJNzXZJyGe9XgcMwbgcXmjm5dxT9rTGpemCYGtLpX5vlwF1QGJu9AdRK4GRCJF/DvULltsArD8EBZxi87chRjcvUcSqlAtGdwwGU490Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736861681; c=relaxed/simple;
	bh=PfW+vIdHSp5SfVS7CGxfItYz5ZEpiurMDgI/E9Kh0PU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sFSEAA5yQ1y4TGrkarPbuSJ+1voBLey2rvIYJTf7nn4XeKG7Ci6hXtydIqvksgVTkN6vZaGrhXTAtQzrZ8vN3UxeD1gmIW9AKj1kNrRA9i3wRvb6k4yE9MwjU+PvYFF8xRTkD5EFAD2ZjvM6B9+l/TWcfR0tOd/7IlMWYFIVQcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org; spf=none smtp.mailfrom=nigauri.org; dkim=pass (2048-bit key) header.d=nigauri-org.20230601.gappssmtp.com header.i=@nigauri-org.20230601.gappssmtp.com header.b=Bl/w/Owo; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=nigauri.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=nigauri.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aa684b6d9c7so960868966b.2
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 05:34:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20230601.gappssmtp.com; s=20230601; t=1736861678; x=1737466478; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V7P/Z2nIx3feZjuva4LXV+jsAFqWXgIZABUnFggSj6g=;
        b=Bl/w/Owo6o8VpbfjJfTkceq9fH0JzglHbbQOsn4RdZkyMUnVym92PXcxIIpHh5/3MF
         V1R/AF+MVReYLOd7Ql6rNGU2Z/TRe/MUYWSQTRMVyQhnjhpRTu+Ur4aLczTPeBT60oUi
         lqBg+TkA/4umYd8NFj2SkFRoYTJXlrbdL7exMH/bpeGKOWnHfhQ6Li1dRpZZZA1GrkTb
         gB3HHH9oi6goTIN4FI+Oil3+TwqW3l2twvhCFZE/TOtk+kk04xQT5cDOtsgtUgMXcu0u
         jG7yy5UfGFI4mPQnax9KaERS7B2nPFNQGJC4ojg9PxoHHcjgM7d6JI+bzTTdYai3CoGK
         WW7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736861678; x=1737466478;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V7P/Z2nIx3feZjuva4LXV+jsAFqWXgIZABUnFggSj6g=;
        b=RrM1UPQwPcG+B/iFkjd8AZVgKWtPMOUouJPKX8SzPP0NgOd3IwUrbG3ukcliRgYHV4
         R9FUSVwgMR9YJu2koVPSBchiiLJ+Jil3X7Umia2YJNzoTSlkDr4CiwZibdQjbvNXCkGY
         Aer0EnquQhDmzjrjTViJd9CZYAu2ZE1dckgMTAHlWQdB6jjy/lNAD4zQh9Gyyvz0ZfW6
         o0yEgjZA+OnHVVqK1JX/K7KIJEDG+OdvGFIM+kDYsOe3DTUMcyrXCwwYaCacQSiyBo5c
         xdo8/Gy579ZjkKVOrAkH1MN1cWCqEIMubs/YIAaVAvuYHeoWpfZTfYnJvNqEaVV0p0g7
         flGw==
X-Forwarded-Encrypted: i=1; AJvYcCUK4nImMEJKqGF5Khs6v/mbe29QnI7IDqE+CceqymaOgSM9DF13gHKEwgvsWi/iC91uARCQyIO3BvDQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyYsMYe5JPn/ntuD3gywwYnkixFfgVck8M9bA3WU5uEnJ6i16as
	+rV+UXU6omr/KsPNfqdjlNbxaHFgKUMBW682aUfeWzZEFyJ6nb12y19GUAkNBb2AtgyKIfMX9cf
	mlNvwyRRQzAz5+qC+cy2UvXIfjSKAvfVIcaYHnpLu+8cw30ZG
X-Gm-Gg: ASbGncsxsOYNPe0tTs5f4TYau621BF//3RUhhYCK0qpXteIr6mQKGyfvMQViPegMf0X
	v4PUiYEcC+IUkyfiRlN0hbvj4PutQbeLrar/oIhCvWHd74x7+LggykUc2IcAD3QW8bh4TBcs=
X-Google-Smtp-Source: AGHT+IG0YP7ePcdqFAiYeXXWovt/Wu3lLKBpOb4oMZ0iep556/wFDmW3FWNOLCdsy3bQr3iJckDrTz/NqmdlMJ/qJe4=
X-Received: by 2002:a17:907:1c2a:b0:ab3:3eea:1ccc with SMTP id
 a640c23a62f3a-ab33eea225cmr179739066b.27.1736861677841; Tue, 14 Jan 2025
 05:34:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250111080903.3566296-1-iwamatsu@nigauri.org>
 <20250111080903.3566296-5-iwamatsu@nigauri.org> <467573be-f143-4cfc-a04e-86be092d1b58@kernel.org>
In-Reply-To: <467573be-f143-4cfc-a04e-86be092d1b58@kernel.org>
From: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Date: Tue, 14 Jan 2025 22:34:11 +0900
X-Gm-Features: AbW1kvY8DnQqPhj0K4VQG_x62UqFeahUJYQNENi1v3_Hh0Xc0XZueX26VsBb28s
Message-ID: <CABMQnVKhwQnRwNEvMeAXx3LLA-HhJN-s0QCJmzJxwowbUhD1-Q@mail.gmail.com>
Subject: Re: [PATCH 4/4] arm64: dts: renesas: Add initial device tree for
 Yuridenki-Shokai Kakip board
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Magnus Damm <magnus.damm@gmail.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Masato Kiuchi <kiuchi_masato@yuridenki.co.jp>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Thanks for your review.

2025=E5=B9=B41=E6=9C=8811=E6=97=A5(=E5=9C=9F) 18:34 Krzysztof Kozlowski <kr=
zk@kernel.org>:
>
> On 11/01/2025 09:09, Nobuhiro Iwamatsu wrote:
> > +++ b/arch/arm64/boot/dts/renesas/r9a09g057h48-kakip.dts
> > @@ -0,0 +1,138 @@
> > +// SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +/*
> > + * Device Tree Source for Yuridenki-Shokai the Kakip board
> > + *
> > + * Copyright (C) 2024 Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include <dt-bindings/pinctrl/renesas,r9a09g057-pinctrl.h>
> > +#include <dt-bindings/gpio/gpio.h>
> > +#include "r9a09g057.dtsi"
> > +
> > +/ {
> > +     model =3D "Yuridenki-Shokai Kakip Board based on r9a09g057h48";
> > +     compatible =3D "yuridenki,kakip", "renesas,r9a09g057h48", "renesa=
s,r9a09g057";
> > +
> > +     aliases {
> > +             serial0 =3D &scif;
> > +             mmc0 =3D &sdhi0;
> > +     };
> > +
> > +     chosen {
> > +             bootargs =3D "ignore_loglevel";
>
> Not really suitable for mainline DTS. This is just debugging, so drop.
> Just like earlycon - not suitable for mainline usage.

OK, I will drop this.
>
> > +             stdout-path =3D "serial0:115200n8";
> > +     };
> > +
> > +     memory@48000000 {
> > +             device_type =3D "memory";
> > +             /* first 128MB is reserved for secure area. */
> > +             reg =3D <0x0 0x48000000 0x1 0xF8000000>;
> > +     };
> > +
> > +     reg_3p3v: regulator1 {
>
> Keep consistent naming. regulator-1 or the name as in bindings:
> 'regulator-[0-9]v[0-9]'
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/D=
ocumentation/devicetree/bindings/regulator/fixed-regulator.yaml?h=3Dv6.11-r=
c1#n46
>

Thanks, I will fix naming and use regulator-*.

> > +             compatible =3D "regulator-fixed";
> > +
> > +             regulator-name =3D "fixed-3.3V";
> > +             regulator-min-microvolt =3D <3300000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             regulator-boot-on;
> > +             regulator-always-on;
> > +     };
> > +
> > +     vqmmc_sdhi0: regulator-vccq-sdhi0 {
>
> regulator-2? Why different styles of names?
>
> > +             compatible =3D "regulator-gpio";
> > +             regulator-name =3D "SDHI0 VccQ";
> > +             gpios =3D <&pinctrl RZV2H_GPIO(A, 0) GPIO_ACTIVE_HIGH>;
> > +             regulator-min-microvolt =3D <1800000>;
> > +             regulator-max-microvolt =3D <3300000>;
> > +             gpios-states =3D <0>;
> > +             states =3D <3300000 0 1800000 1>;
> > +     };
> > +};
> > +
> > +&qextal_clk {
> > +     clock-frequency =3D <24000000>;
> > +};
> > +
> > +&pinctrl {
> > +     scif_pins: scif {
> > +             pins =3D  "SCIF_RXD", "SCIF_TXD";
> > +     };
> > +
> > +     sd0-pwr-en-hog {
> > +             gpio-hog;
> > +             gpios =3D <RZV2H_GPIO(A, 1) GPIO_ACTIVE_HIGH>;
> > +             output-high;
> > +             line-name =3D "sd0_pwr_en";
> > +     };
> > +
> > +     sdhi0_pins: sd0 {
> > +             sd0_data {
>
>
> No underscores in node names. Please follow DTS coding style.
>

OK, I will fix these.

>
> Best regards,
> Krzysztof

Best regards,
  Nobuhiro

--=20
Nobuhiro Iwamatsu
   iwamatsu at {nigauri.org / debian.org / kernel.org}
   GPG ID: 32247FBB40AD1FA6

