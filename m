Return-Path: <devicetree+bounces-220594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2099DB98069
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 03:47:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 276C62A5FD0
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 01:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 052B91E9B31;
	Wed, 24 Sep 2025 01:47:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="EmbGXOHh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3B519D065
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 01:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758678464; cv=none; b=Oa3qTajeyFkyREGyA9StZWzAkLO74s0J6cA8Bw+xAdRhl+PmoC48gTSKFW0gWYtXn8CwNP3I8ReNMuossh9O2Jh0nRmR7c7rvzwPBiGp6rOm8tbRwxC5Hhtx1OpnyKxjarqdcIUtrKJEXGx5tKmVsDlVTEONsnxNnJ6MxKBtMBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758678464; c=relaxed/simple;
	bh=y/x8B+ewK6v4dYgoVsbGDqM49RVsMdH/ggdy8onzgAA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hgwpL5m9dQxOMThtuKzqRApJjqOmaIpVgQ0HNnw3vJSKmttqfVXDFhJwmlAZQhziL+I8AmwzKzqILIg1FzwdBMQEcoUjBO9TCLVBvLsJJoE2ej6KrrylwEto4ccWDkcD8wt+6qz9AZoEFM7ISwoK3w770zaboSXCJUBKdWCKM1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=EmbGXOHh; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-4d142e9903fso22693771cf.0
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 18:47:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758678462; x=1759283262; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YLgOCUDCg3e15Xq9G1KQ1McYlea09igd4ZKI0Cxr/n0=;
        b=EmbGXOHh2YUEnhWeJ8VWhYDh2o49snz7Y4nGo0G+UBlg4wJIJ30pO2kBhoDFPOfVFV
         Mb67KsOAHLy0Q5ksUmqfUXhG7Cn+LkUZQZ9dg6zeTof/dakfwOpz1idVOozIC5L9f55Q
         z8UVWRBbQDJVTSd2+rs6+b6Mp+qladQb6WfbX5PVDBny3er0f9umqEdUwuoU+t8GFxq/
         Qp4L/Lcpic4uf70rcli34OddnMm1QwxHPCjGujVWz+bLX/64Frl1e5tjmDszmlvVFWZo
         sq1bz7Zck1enGuBLom4mYI9sFWPKreE8tHq2Z8z+U3iEcMs3qQWvOJhDswfUBnyMrdnK
         FMEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758678462; x=1759283262;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YLgOCUDCg3e15Xq9G1KQ1McYlea09igd4ZKI0Cxr/n0=;
        b=Cp1//HpabkKbY1I5PhNpiS6c+8XC+q+5+z/K9oJzabjoTQmmr0bTBCBwpudC7ippZP
         +uKxdaRx3UAchfosduY3s5CVBa3x8rgEIxhiBvk27INlqWacU+XZIc7DDlm2ggiazSqY
         RqrrxBfEgv5bKWSq1+v+PkLEVKKDrhlcRCIC+jBI2Y0gVmdAQz7buabAa8sDKsUHgEWr
         6oLo6GTRFdoUwAZxO9I/CzG7sXfq5ELpTV47eN4+P0Wu2fxh5q2jmKUd6p+kep/Y5LUc
         tIac7zlIxH71FsxLZIo5fESwUliYZSrcs3NKSYkZ8zNzxva6eBftj/ZlxX1O1GX16LdF
         mZGw==
X-Forwarded-Encrypted: i=1; AJvYcCV+x6BKheUwbrI2I3/6iArx3JIctdiXVxBwo2nZWVsFEsd17NHZ8qrF7ouyqI4F1Lrv/KCSGhimmR89@vger.kernel.org
X-Gm-Message-State: AOJu0YyF2SV19VV6lC/NRYLqhXMqn7sI31D60Np+2JRhqLPlY7JYoSa9
	51XEk6hS15JjjelUmFqM6tXf2qAIDpUAC2gi/KqUm8wChN62y9fKRP00ir9e4mvIcdD6RyERmE+
	Qk6fUApFZmXZZNiKc9U9v+54t+6Mauuk=
X-Gm-Gg: ASbGncvbABXZxIVcfOkDH3zDCxyP9ZbSuYcoFEQdZ1BhIh7SHVZyu0q9Wih/qnwJSRU
	P/ri1icqzUO/xPQc1HZM6dLiSzm2PRwrzH2xFJpjSRXBFj2nUf+ZAiysl3FWkufvffz5qxUdTvd
	lLxe7tID89cleRz+7+y8Ep5XdtRPnAvOMgw8VY1Eex8gpoEkEgrfBecP0+1gjW8W4/zo8TCHn2d
	DMvxVxKoFFOBbuBL8XA+o/dXLWTiXrVBznecj+kXw==
X-Google-Smtp-Source: AGHT+IGIdRfHkiKs+mEVrqwOIqebc0C5zEl3UZbwuHFpU0JBMj41WZopp8n9Y9s727VjtGPa/Ul2Bjj4jr777iaGRvg=
X-Received: by 2002:ac8:5ccc:0:b0:4b6:299d:dfe4 with SMTP id
 d75a77b69052e-4d36b0ee114mr51190071cf.32.1758678461949; Tue, 23 Sep 2025
 18:47:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250917101828.2589069-1-peteryin.openbmc@gmail.com>
 <20250917101828.2589069-4-peteryin.openbmc@gmail.com> <f76e867ca4dff82744958a8b555cf226139bcd78.camel@codeconstruct.com.au>
In-Reply-To: <f76e867ca4dff82744958a8b555cf226139bcd78.camel@codeconstruct.com.au>
From: Peter Yin <peteryin.openbmc@gmail.com>
Date: Wed, 24 Sep 2025 09:47:31 +0800
X-Gm-Features: AS18NWC-njmIqq9F1PhVUvHcod54siZvcbKXObiObG8-iSHcZRG1G-1XqSgV-2s
Message-ID: <CAPSyxFSOBRT8muKmFbqc+_OkKZvO9YR9_bGvHVGaC2XP4yi=cg@mail.gmail.com>
Subject: Re: [PATCH v1 3/4] ARM: dts: aspeed: harma: add sq52206 power monitor device
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Andrew Jeffery <andrew@codeconstruct.com.au> =E6=96=BC 2025=E5=B9=B49=E6=9C=
=8822=E6=97=A5 =E9=80=B1=E4=B8=80 =E4=B8=8A=E5=8D=8811:36=E5=AF=AB=E9=81=93=
=EF=BC=9A
>
> On Wed, 2025-09-17 at 18:18 +0800, Peter Yin wrote:
> > Add the SQ52206 power monitor device and reorder the sequence.
> >
> > Signed-off-by: Peter Yin <peteryin.openbmc@gmail.com>
> > ---
> >  .../dts/aspeed/aspeed-bmc-facebook-harma.dts  | 28 +++++++++++------
> > --
> >  1 file changed, 17 insertions(+), 11 deletions(-)
> >
> > diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
> > b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
> > index bcef91e6eb54..fe72d47a7632 100644
> > --- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
> > +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-harma.dts
> > @@ -353,14 +353,15 @@ eeprom@52 {
> >               reg =3D <0x52>;
> >       };
> >
> > -     power-monitor@69 {
> > -             compatible =3D "pmbus";
> > -             reg =3D <0x69>;
> > +     power-monitor@40 {
> > +             compatible =3D "infineon,xdp710";
> > +             reg =3D <0x40>;
> >       };
> >
> > -     temperature-sensor@49 {
> > -             compatible =3D "ti,tmp75";
> > -             reg =3D <0x49>;
> > +     power-monitor@41 {
> > +             compatible =3D "silergy,sq52206";
> > +             reg =3D <0x41>;
> > +             shunt-resistor =3D <500>;
> >       };
> >
> >       power-monitor@44 {
> > @@ -369,16 +370,21 @@ power-monitor@44 {
> >               shunt-resistor-micro-ohms =3D <250>;
> >       };
> >
> > -     power-monitor@40 {
> > -             compatible =3D "infineon,xdp710";
> > -             reg =3D <0x40>;
> > -     };
> > -
> >       power-monitor@45 {
> >               compatible =3D "ti,ina238";
> >               reg =3D <0x45>;
> >               shunt-resistor =3D <500>;
> >       };
> > +
> > +     power-monitor@69 {
> > +             compatible =3D "pmbus";
>
> I realise you're just moving this node, but I'm surprised it hasn't
> caused trouble otherwise. This happens to work due to a quirk of I2C
> device IDs in the kernel but it's not a documented compatible.
>
> Compatible strings need to represent the physical device. Can you
> please split out a patch either dropping this node, or replacing the
> compatible string with something appropriate?
>
> Andrew

Ok, but this device BMR350 is not in the pmbus_id[] list.
I will add BMR350 to the pmbus_id[] list, and then fix the DTS
compatible string.

