Return-Path: <devicetree+bounces-227301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0111ABE0535
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 21:12:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id DD5F64E60E7
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 19:12:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 490DF303A0B;
	Wed, 15 Oct 2025 19:12:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CuNCKEzm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74AE13019B2
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 19:12:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760555568; cv=none; b=JtxRofACG130JgKsbKywuWjrPjn+/hxsHQUVVfaLkvuEzjCLdssTptxegxJKvEcnswf8HSLRUodR1MIuAXPrMCoioTXky9JC4/v7XjJj7OpJFMLPYMN87FTDAT9uZc5q7Mp0MHyb9oz/h4ogJq2bqwts7PQXrQ1cQmmGChFDuU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760555568; c=relaxed/simple;
	bh=MvR+0JKXb5CBAEei5A2lB3ToTgOiUAvcquMmLPEYUy0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=os2GT4qZy93Jz6kISjdJ++G4rVWEyj1mV0juU1K1RE+SA/hRkACk3qjkQl6wzcyE9oRp8OtR3HUWeeb1xmm7zXjYC3EgYwjXCZ6UrpSOG8ChZUqXOIPBjNuF2JAcKtsjgPOX5k+L4upbGarqlRg38F7R5iNvRTKtfbvtVkRs6aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CuNCKEzm; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-46e2e6a708fso43631045e9.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 12:12:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760555565; x=1761160365; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OhyinuDlZwKREDWmNx8hCk7tI9XdjStorfWj2UhFgTY=;
        b=CuNCKEzmNNFm8QiEk1EemTNCB6eJcJOl2G6kmRrvOOPZeNuHHc/nuUrKRbByMYG9s1
         srbVteVPPFS+W06BULQrxd2QQu9RmE1kf4nT0JG0sEJ1MrRh4wvGSBfiAEbqdJYe3ft+
         RjUR5zktBIwXWG3dCodcI/Kj57YsJBJt+/z+mcJmEFpBxaCLMVonjNdRtZCWZuZxp9/E
         3MKLDqoTibeQ6y02BvALO+5X/ko+kKbojFMjtp3/5mCRo645aBYCLyUQKvQX1qcX8Mku
         w2Pp2Nk73XqO5jFn7A7CDyRYeg75hJDZLKwDZQLv17wioIEH6takbzzcPl5I9jepR/1q
         d8tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760555565; x=1761160365;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OhyinuDlZwKREDWmNx8hCk7tI9XdjStorfWj2UhFgTY=;
        b=qEQ3WN14fa8NvrDTrAwXgjNJMyhkLb2CFvwhpzNs2LmZgp1F+W0mypmXJQNf/oWIoP
         VkKETwlhsnpmH0ZxJasH4wfUxQkjpIPzoO2QJm4jkrMLDQdq59kmiTlDAb8haJwAGDAi
         O2ZdlwDDvmair1fb4RVPDHBaTOiVvho/8Z1rD7xu3s3+8vaA59yXJpvDgA/10pRfyTFS
         JyJG7T0qu11AI4zgPSO++8jGJSXIVpbZLg5HxOfmdgUhLAjsGJ2uSJYmAArNbTuK78VT
         iyRSIoilpSf8OTqHnQA/cEhcmXA2/BiWs72ELw8L0SD16V0RaTcU26olneUDN5dJ3VGD
         fZWA==
X-Forwarded-Encrypted: i=1; AJvYcCX4HxfP3q8j9y47LwTmY9w8Nvat2jtP1XGY7EOkaruSg0jVDEMhj170Isqy2/iliGGy7S+08ZaLIuPx@vger.kernel.org
X-Gm-Message-State: AOJu0YxEB/uf6LCbpFaugIknJvNdYRqrAO28QI9gOoXHDoYnj6x5Q5lw
	FyRLBe1lYEZzmRg5LLTRqdNi898vDtgsNBAEwQ+58r9Xez7xY/J+N5tu4+Eow9Uzapj1Tzpwr1U
	KqXlxSJRtPOwsOLwDa5JAR/rSor3iC1c=
X-Gm-Gg: ASbGncuq0wpukzug9dwVdusCRLFMPcDRwzriA4XI2f7eEH8jtwKlBPkw9lb0pAXw4rp
	xHrv4Vrr0X8pY//CaTQQPknjPbr7yZ8Yb1iANEObfaIM9jj6lU5q/Y5BlGSNq8MszpArLUdvyw/
	YVxOSwR2B46z0otJJWST0B3DL3v8QUR3oV3gu4nInaloqrwrkd5N5md+1fo7fXXOdqIxZMLQdXw
	uKXTBz1FsXzwK1b3HRlr8dSlYZn8Raqz/TIacLHxYFlvyhfxIQv0DCZXTGJ
X-Google-Smtp-Source: AGHT+IGptweOAxfQob9Jd4H5eNxPIDoVFH0g644LiyqMYerOmNSPqkAZdQtC7+4FweyrZZizKJf/AjDZCN535DWV0k8=
X-Received: by 2002:a05:6000:2c0c:b0:3f1:5bdd:190a with SMTP id
 ffacd0b85a97d-42666ac3a16mr18451032f8f.3.1760555564585; Wed, 15 Oct 2025
 12:12:44 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014153314.177300-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdUBthNYYOg4WHjt+gJRL=g00wmiqCsx+La_3NCUrCJ9gg@mail.gmail.com>
In-Reply-To: <CAMuHMdUBthNYYOg4WHjt+gJRL=g00wmiqCsx+La_3NCUrCJ9gg@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Wed, 15 Oct 2025 20:12:18 +0100
X-Gm-Features: AS18NWCeX_juiZImnilmkiUrbUqjiLLajME51FAEENFN1IPwAIZdGkxwJx_QjPc
Message-ID: <CA+V-a8vUKJDFCwQ3tMyhuMEaoR1DhpEhhHfwRnmMwNerdBM49w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: renesas: rzt2h-n2h-evk: Add VCC supply for EEPROM
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Bartosz Golaszewski <bgolaszewski@baylibre.com>, Linux I2C <linux-i2c@vger.kernel.org>, 
	Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geert,

On Wed, Oct 15, 2025 at 4:36=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi Prabhakar,
>
> CC at24, regulator
>
> On Tue, 14 Oct 2025 at 17:33, Prabhakar <prabhakar.csengg@gmail.com> wrot=
e:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > The R1EX24016 EEPROM on the RZ/T2H-N2H Evaluation Kit is powered from
> > the 3.3V rail. Add the regulator phandle for the VCC supply to reflect
> > this in the device tree and avoid the fallback to the dummy regulator:
> >
> >     at24 0-0050: supply vcc not found, using dummy regulator
> >
> > Fixes: 0176c9e82e10 ("arm64: dts: renesas: rzt2h-n2h-evk-common: Enable=
 EEPROM on I2C0")
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Thanks for your patch!
>
> > --- a/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
> > +++ b/arch/arm64/boot/dts/renesas/rzt2h-n2h-evk-common.dtsi
> > @@ -160,6 +160,7 @@ eeprom: eeprom@50 {
> >                 compatible =3D "renesas,r1ex24016", "atmel,24c16";
> >                 reg =3D <0x50>;
> >                 pagesize =3D <16>;
> > +               vcc-supply =3D <&reg_3p3v>;
> >         };
> >  };
>
> "vcc-supply" is not a required property, according to the DT bindings,
> and I believe the 3.3V supply can be considered always-on (but see
> below to encounter dragons).
> I was always under the impression that these "supply not found, using
> dummy regulator"-messages are just informational, and can be ignored,
> but they are at the KERN_WARNING level.
> So should we add real dummy supplies to DTS, or not?
>
Agreed, I get your point. Let's drop this patch.

Cheers,
Prabhakar

