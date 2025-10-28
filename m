Return-Path: <devicetree+bounces-232253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CE903C15D65
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 17:34:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 5474B3502C2
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 16:34:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A76A296BBB;
	Tue, 28 Oct 2025 16:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MIFfoUe3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B24928850C
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 16:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761669270; cv=none; b=oerHytUcM8xpNapogwhgm/R3ncj5UmlIuT6BdBEx9zNTj75O6dfixFBo0YNR9w6SSD6L2MhddgsjluRXIlS6Xy/u3GyK5p9YSd1CBlTIr7ZdXmmfKh/AAXHBBsr3Ej5JFA1fdpCrGnkWR5MwbLp/PRqGFuGFJy2z0X4r+HeeIIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761669270; c=relaxed/simple;
	bh=nLZzVqWT6437i+lJrFUuAfOcJrVuFxvGMvdzSvdoTpw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RPgkYs3DwbJc12q6MYetf6Ja90bPtt73hpHZ0k3G+emWdxETzNY2h9xlVlq4qv+oJnH702GPJKaPHr3DRvBcBHhOQ5L5Vha8Er/RMqYMm8Lh86VAot7ogTfiYC2mGR1A0AajnIBQsVlElBidSE4LXhyr9KTABkL0NedrwuT0K/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MIFfoUe3; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-4298bada5bdso5693064f8f.2
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:34:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761669267; x=1762274067; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nLZzVqWT6437i+lJrFUuAfOcJrVuFxvGMvdzSvdoTpw=;
        b=MIFfoUe3YkNgZB/ItjGc9q3Q+rTHu71cy3EhjXaexpCr15d1VZ0wsibH/1iwZ2G2O1
         zWKVZMP28F23VPghgBBX1w3wJ7Ld2NHJU44cV2pU+ngFRuPzA7Ohcl0b0l6G/Vylf+eR
         XBEzHUyikG7VaI8eTXDrmbRaJGBW/Y6V7lpn22tLJgO3MsrvwZE6SBMuz6VGVvAEqtct
         fJYj++OKQMpKRue8PlWBopsQ4WICdlORRJ+rmdskbCo6zaGcjnJflyfdQ6V3ZmKhaUwX
         IHKUjLGz0PzvOtGyEqtKw2kKJdoxu57Pi1NBJzab9rUglJ3PwCJnoA5UTsfQsOaiEm6i
         7Q/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761669267; x=1762274067;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nLZzVqWT6437i+lJrFUuAfOcJrVuFxvGMvdzSvdoTpw=;
        b=ZAIWWSVvyUOLTVyetQhao9fHYPF6KBeaKZNk+9sUAE+lba54q1lJ7KOs9XtcyXGsHE
         xLJiEPjHQk5cy2lu41JCAXVl+bhgvBP1dxh51Rus3sIValY6b7x7gSiaVEBGMDqUvot9
         QHwO41kn1eHUVFLqS/+K1jXv8M9mCgqIrixfVwdXjfjIOmvBWAlkmtNd5Xrwfx1ff3P5
         W6O83kkyEW09alOaFCeGwfM3whtjBjsCh2FYZdklTds6Q830hY4fT6odwa0hCBDKczdg
         YIs2fmeQDs0+uetF4ibyeFreIM2h9cVon3ombURGnWdnHjxWZ9JgiEW2QDDhdsrbTRSS
         7Kkg==
X-Forwarded-Encrypted: i=1; AJvYcCVwCXsM7w5uLIGA//bfXuFX1A/wOrtw66Wo61StfGNmHDdIMzLd/cSb6pFWSE4IasA7KuVrG9yvqb0Y@vger.kernel.org
X-Gm-Message-State: AOJu0YxpQcQZ2hB7VLBoYxkeJonPGrGPyo/NBnjn1+rjSqJVSdfQVhik
	0RG6CJlrWRGN1pfzOERlly6zsC9OPQplW6ubbsPyLNm/GxgiSH2hoOFxZRoeLuMIS7/2ti6jVjc
	SeI6IjVYQGv+OoybFM+eavaWsbNZkARk=
X-Gm-Gg: ASbGnct93bsjivr9ny89Qokz1ORLetpnbIIWb60LLTNYkI97WXHiFI6oQt18gsjvuj/
	LJtpWqnOhBXMPKrlienncCYieB+jcRgWv62rZpZgI0SPa6SSzz+qHeO/d1/vdaWAwBLQYeE06dG
	LPeHVTpIAIwUpBX1FzsnJixKitIniLUXfxL2uDx6g5LIYT5nmvQndgm7Xsmfu2tZHDgqbUqXiqm
	cA91LegqBjb4MNEwtbdcPd6IFjP58zWg6yMyeyvH/kZo7rrmEqZk/GoeZFznw==
X-Google-Smtp-Source: AGHT+IEX5I591QpXv8WTQPRJrzjSy/1s0cdBzyA4QwuuXgbqMKHbqocUwStacqp8C/ZXIRb1NGu5PNOX+zqArLn1ZQE=
X-Received: by 2002:a05:6000:290d:b0:429:974f:2293 with SMTP id
 ffacd0b85a97d-429a7e92b11mr3503317f8f.52.1761669266519; Tue, 28 Oct 2025
 09:34:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250819120428.83437-1-clamor95@gmail.com> <aLB_7YS9HsfzfadI@kekkonen.localdomain>
 <CAPVz0n1mXvdyzshei8Mbw7KVYCkQjziBA95ton4MKXPnPd0kbQ@mail.gmail.com>
 <aQDuOSUYbuoLoFbf@kekkonen.localdomain> <aQDvzKMXhVlR2G3J@kekkonen.localdomain>
In-Reply-To: <aQDvzKMXhVlR2G3J@kekkonen.localdomain>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Tue, 28 Oct 2025 18:34:15 +0200
X-Gm-Features: AWmQ_bnFGdWWBG17RWYmTg8zrcdshLMPtCGqnVmjwv2gZfkw3zNr1YgO_-hVcMw
Message-ID: <CAPVz0n3E08Ft1q5QS-aT8WUQNmTe5uOs=d2VHovNH1BbdQWVRQ@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] media: i2c: add Sony IMX111 CMOS camera sensor driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Hans de Goede <hansg@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Dongcheng Yan <dongcheng.yan@intel.com>, =?UTF-8?Q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>, 
	Sylvain Petinot <sylvain.petinot@foss.st.com>, 
	Benjamin Mugnier <benjamin.mugnier@foss.st.com>, 
	Heimir Thor Sverrisson <heimir.sverrisson@gmail.com>, Jingjing Xiong <jingjing.xiong@intel.com>, 
	linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=D0=B2=D1=82, 28 =D0=B6=D0=BE=D0=B2=D1=82. 2025=E2=80=AF=D1=80. =D0=BE 18:3=
1 Sakari Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Tue, Oct 28, 2025 at 06:24:25PM +0200, Sakari Ailus wrote:
> > Hi Svyatoslav,
> >
> > On Fri, Aug 29, 2025 at 09:20:10PM +0300, Svyatoslav Ryhel wrote:
> > > =D1=87=D1=82, 28 =D1=81=D0=B5=D1=80=D0=BF. 2025=E2=80=AF=D1=80. =D0=
=BE 19:12 Sakari Ailus <sakari.ailus@linux.intel.com> =D0=BF=D0=B8=D1=88=D0=
=B5:
> > > >
> > > > Hi Svyatoslaw,
> > > >
> > > > On Tue, Aug 19, 2025 at 03:04:25PM +0300, Svyatoslav Ryhel wrote:
> > > > > Add driver for Sony IMX111 CMOS sensor found in LG Optimus 4X and=
 Vu
> > > > > smartphones.
> > > >
> > > > Thanks for the set.
> > > >
> > > > I wonder how would the sensor work with the CCS driver. The registe=
r layout
> > > > appears to be very much aligned with that (I haven't checked whethe=
r there
> > > > are MSRs that depend on the mode).
> > > >
> > >
> > > After deeper testing I have found that imx111 may be nokia,smia
> > > compatible, at least most of general registers and CCS logic is
> > > applicable. Some of registers may cause issues, for example,
> > > "phy_ctrl_capability" =3D 0, 0x0 and some insane pll ranges. Maybe th=
at
> > > can be addressed with a firmware patch idk. The trickiest part is tha=
t
> > > each mode requires non-standard and non-common manufacturer code
> > > (0x3xxx ranges). If you can explain how to address these issues, I
> > > would love to add imx111 and a few other modules into list of CCS
> > > supported devices.
> >
> > On a closer look, only the image size related configuration and a littl=
e
> > more appears to be CCS-like. That's not enough to configure the sensor;
> > this is conveyed in the MSR space which indeed makes the sensor difficu=
lt
> > to control using the CCS driver, unfortunately.
>
> Ok, the driver appears to be doing quite a bit of register writes outside
> the register lists, which is good, and what's there appears indeed largel=
y
> CCS compliant. The MSRs remain an issue; it'd take quite a bit of reverse
> engineering to figure out what the registers are and how to configure the=
m
> in a generic way. I think that's doable but I'm not sure it is justifiabl=
e
> considering the expected effort.
>

I have deciphered a lot already since downstream provides only
register writing sequences. Everything that left is 0x3xxx which seems
to refer a vendor region and it is not documented anywhere.

> --
> Sakari Ailus

