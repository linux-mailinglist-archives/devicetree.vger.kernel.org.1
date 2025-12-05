Return-Path: <devicetree+bounces-244575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 80BECCA7125
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 11:06:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id E5FA5326A49F
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 08:47:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8E8131BCA7;
	Fri,  5 Dec 2025 08:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ULIEZAXo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE24331DD86
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 08:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764923413; cv=none; b=Fj4XAAntZ2a1qyUJ1bVkSVM4ucfJ4o+/1iqov6m1YTDIYanbZQjb+VxITQBDpyltPbRw/rm8xBogOanPTRUNGOk8J1i+ax39pf2DPCEmN10g7vE+qFIZw5Bnqt87UJh1xulGvPQ9r+olLS1jJhNyXDe+KE4H2q+lehrNseCie54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764923413; c=relaxed/simple;
	bh=gmAPxxjTKlooONPipEsmZlRzsvPSIO91zWWh9LwA/2E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lP9Sq3ppoTWBuFunQ3y5VT/k1Sigf76obRngqpwV8rfRiu3XjZX3i19X7b5FxDrrGTYMxV8tGfPT84nkBOJqvCh8+nI7DpHsL9KInu6LgysFpgDctdm13XTKzz6ON1KNjR2aZ0B5rdCjsSfuRg4hoGGWQeH8zwatvdrfs9854Q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ULIEZAXo; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-b72bf7e703fso304735866b.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 00:30:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764923403; x=1765528203; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zv9vpa6wctqmK3IhLoN91ZYlNtr4GKsApfMqJPja8ac=;
        b=ULIEZAXoaDxEOxRQn5dqhmmW1AD6sz/G1GXqJ7V03MhMk+4M1mglORJNZggTPzJYNQ
         YDGSI5ZFJfQjy8/B+F8f4EimkyoZKiCQ/5+KA7JonrFncyRUn9uHb0vbbaDm9n16X1k5
         vU4s3vfo4TNpbL6iLYOUJ3E1BbIBtyB6JEmCeuGjhv1z74L89zTNuosw+edwg2xT35Vt
         uAJeMH3VRMimEa3q2zCGRDoGRJZRNkO/6yqit/aP6Pq3V4Pw87xfRO0t6Nr3RSWSbGOo
         6Ek+CsVJU5GaLMe5Iqws+d4A/ebGuEvAP4LdterZkfxLe9di7G1fZlmMwjJA4EKsr3I4
         BIMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764923403; x=1765528203;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=zv9vpa6wctqmK3IhLoN91ZYlNtr4GKsApfMqJPja8ac=;
        b=BNR4OqcndYt+cjLAdb/96RNwon/FiBPc41d8G1psTtIRgrq0CbCjSFH/ioloq4q5W8
         +hxNiKQK8FIK0TlvpqvrYfEaANcy9+HC9THWH1z58V06rPr+ya5bVC9SpLHqA1VFDaiJ
         5XVrr40EMuWq2LU/OqtObhwe+yGYqbkSUFWNCqyoYEeLgEuHiS9UVMwoxIUGzs7KDW/A
         Mg+ETX8GdZrGWkgz5EDHf1GTO7Kw3NsdzudzX5WfVKCTK5Df3QpPgYcaLSR4aXHlrDlW
         VfwGrWskd6m/xVpIiY61K6cDvHHBWymAIAJ5JstIX5boDT52TZPZZbtHiEKKBmMFAcof
         qFQA==
X-Forwarded-Encrypted: i=1; AJvYcCUsfYBy2ClXJikbyUYCIP1zvESeMy2MNLeulBA9pC3q0Sjzx7//SRAMBnNMHKN8f5g5T+8Kdv/5iqba@vger.kernel.org
X-Gm-Message-State: AOJu0Ywf6HRifyCcv3iWRhiVddd490OrFyhT740DOToIvzeBe/b3nb8J
	C6c4F58TOpRhzlDTvY6bvQl26rxDu3AJnXJwy9OuJFUBOgwoXFaplXzP9ZWyKzWq1IcpLSOuAIR
	UtSLx//BDxy0F0k4+eJDfELjELso+WNw=
X-Gm-Gg: ASbGncsXOhM8E7AAElTEhM7XZqiPGHE/WpmpprUVPRVlhtnabms3zNJs+TaVw5EevVO
	ZcPe4E8UZJD6pGXkxj7y3e/OaTc48kl7sEXudOSs/yK3qmDSR3S5omyNKmfK6WGYhkgkqRbGvME
	aYmYUPkTg4lYVMS+Yz42jWQ7gU3mR9yJMGIfJQPXLUDGbD1f2KzJ9+1sVQiLeSgtpERB5UVou7h
	Lzh1EeUXYph95wp1omckBJEa0WlYl9QdaAdkAWr7QZq8+S7JjoV3Pk4b8L2bmKINKH/cA==
X-Google-Smtp-Source: AGHT+IEoOFM1WzeqtiD/9WP1tZdp9AYcDEMhMdyuHmP+OE7FfFFESbCyBeckBwNIyYLRh20LnNqS00FXqnUMiQY20sQ=
X-Received: by 2002:a17:907:1c1a:b0:b76:d880:e70b with SMTP id
 a640c23a62f3a-b79dc78257amr998854266b.55.1764923403192; Fri, 05 Dec 2025
 00:30:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027005220.22298-1-naoki@radxa.com> <acfc2185-0cb9-4620-abdb-ee25028e8374@cherry.de>
 <a93ace02-a952-4727-957b-0ed790b47676@cherry.de> <20486653DCCA80ED+7f87a03c-519e-4d6a-a47c-7670e5ae502c@radxa.com>
 <ffe5e4d1-49d8-4075-a5c4-6f27dda7f35a@cherry.de> <acbbef49-02ad-47e9-9874-68d058b95f21@gmail.com>
 <60D749559660CD94+62b923bb-f852-4e83-b9fb-a2a25030ef73@radxa.com> <980092DD85519275+a4dd9cbd-12ad-4aec-b1a1-1b15f9932b8d@radxa.com>
In-Reply-To: <980092DD85519275+a4dd9cbd-12ad-4aec-b1a1-1b15f9932b8d@radxa.com>
From: Anand Moon <linux.amoon@gmail.com>
Date: Fri, 5 Dec 2025 13:59:46 +0530
X-Gm-Features: AWmQ_bn5ut5JK8KXRUIXSSDaNNc8gGtMY2sH0blDthYicM0yZTa3NxjE9zbjERk
Message-ID: <CANAwSgRW+vokpNUH1U34LDZx7=f0fUoipzDjLR7O85mS-ZM2mQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Fix audio-supply for ROCK Pi 4
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Alex Bee <knaerzche@gmail.com>, Quentin Schulz <quentin.schulz@cherry.de>, heiko@sntech.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi FUKAUMI,


On Sat, 29 Nov 2025 at 09:34, FUKAUMI Naoki <naoki@radxa.com> wrote:
>
> I forgot to mention this:
>   https://forum.radxa.com/t/problem-using-i2s-and-spi-on-the-gpio-header-=
of-the-rock-pi-4b/25390/14
>
It seems that SPI5 is associated with the audio power domain in the
RK3399, though
I=E2=80=99m not entirely certain.

[1] https://github.com/torvalds/linux/blob/master/arch/arm64/boot/dts/rockc=
hip/rk3399-base.dtsi#L904-L918

> Best regards,
>
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
>
Thanks
-Anand

> On 11/29/25 12:40, FUKAUMI Naoki wrote:
> > Hi Alex,
> >
> > On 11/29/25 10:36, Alex Bee wrote:
> >> Hi,
> >>
> >> Am 28.11.25 um 13:33 schrieb Quentin Schulz:
> >>> Hi Naoki,
> >>>
> >>> On 11/28/25 1:09 PM, FUKAUMI Naoki wrote:
> >>>> Hi Quentin,
> >>>>
> >>>> On 11/28/25 19:24, Quentin Schulz wrote:
> >>>>> Hi Naoki,
> >>>>>
> >>>>> On 11/27/25 4:20 PM, Quentin Schulz wrote:
> >>>>>> Hi Naoki,
> >>>>>>
> >>>>>> On 10/27/25 1:52 AM, FUKAUMI Naoki wrote:
> >>>>>>> This reverts commit 8240e87f16d17 ("arm64: dts: rockchip: fix
> >>>>>>> audio-supply for Rock Pi 4").
> >>>>>>>
> >>>>>>> Fix the APIO5_VDD power supply to vcc_3v0 as per the
> >>>>>>> schematics[1][2]
> >>>>>>> [3][4][5].
> >>>>>>>
> >>>>>>> This fixes the SPI-NOR flash probe failure when the blue LED is
> >>>>>>> on[6],
> >>>>>>> and the garbled serial console output on Linux.
> >>>>>>>
> >>>>>>> The ES8316 headphone and microphone are confirmed to work correct=
ly
> >>>>>>> after this fix.
> >>>>>>>
> >>>>>
> >>>>> Please test the ES8316 works when booting Linux from a U-Boot where
> >>>>> ROCKCHIP_IODOMAIN and SPL_ROCKCHIP_IODOMAIN is *disabled*.
> >>>>
> >>>> I tried below, and confirmed that ES8316 is still working.
> >>>>
> >>>> diff --git a/configs/rock-pi-4-rk3399_defconfig b/configs/rock-pi-4-
> >>>> rk3399_defconfig
> >>>> index 219f42bc7d4..276ca961c10 100644
> >>>> --- a/configs/rock-pi-4-rk3399_defconfig
> >>>> +++ b/configs/rock-pi-4-rk3399_defconfig
> >>>> @@ -53,6 +53,7 @@ CONFIG_ROCKCHIP_GPIO=3Dy
> >>>>   CONFIG_SYS_I2C_ROCKCHIP=3Dy
> >>>>   CONFIG_LED=3Dy
> >>>>   CONFIG_LED_GPIO=3Dy
> >>>> +# CONFIG_ROCKCHIP_IODOMAIN is not set
> >>>>   CONFIG_MMC_DW=3Dy
> >>>>   CONFIG_MMC_DW_ROCKCHIP=3Dy
> >>>>   CONFIG_MMC_SDHCI=3Dy
> >>>> diff --git a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
> >>>> b/ dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
> >>>> index 046dbe32901..c734f7824c0 100644
> >>>> --- a/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
> >>>> +++ b/dts/upstream/src/arm64/rockchip/rk3399-rock-pi-4.dtsi
> >>>> @@ -51,7 +51,7 @@
> >>>>
> >>>>          sound: sound {
> >>>>                  compatible =3D "audio-graph-card";
> >>>> -               label =3D "Analog";
> >>>> +               label =3D "rk3588-es8316";
> >>>>                  dais =3D <&i2s0_p0>;
> >>>>          };
> >>>>
> >>>> @@ -516,7 +516,7 @@
> >>>>   };
> >>>>
> >>>>   &io_domains {
> >>>> -       audio-supply =3D <&vcca1v8_codec>;
> >>>> +       audio-supply =3D <&vcc_3v0>;
> >>>>          bt656-supply =3D <&vcc_3v0>;
> >>>>          gpio1830-supply =3D <&vcc_3v0>;
> >>>>          sdmmc-supply =3D <&vcc_sdio>;
> >>>>
> >>>> Notes:
> >>>> - SPL_ROCKCHIP_IODOMAIN is not set by default
> >>>> - I don't understand alsa ucm2 ;) so I modified /sound/label
> >>>>
> >>>
> >>> Thanks for testing. Let's hope the original issue doesn't appear for
> >>> *some* boots (depending on probe order or some timing for example).
> >>> For now I guess this will do. Adding Alex in Cc maybe they are able
> >>> to reproduce the issue they had 4 years ago with their board?
> >>>
> >>> Cheers,
> >>> Quentin
> >>
> >>
> >> I can confirm that with this change analog audio is _broken_ for me
> >> again.
> >>
> >> I never had any issues with uart2 or spi - neither in kernel nor in u-
> >> boot
> >> (also not after io-domain driver has been added to u-boot for RK3399).
> >> Given this commit is now ~4 years in tree  I'd guess that someone else
> >> would have reported that issue earlier. It's correct that this
> >> information
> >> came from a "Power Domain Map"  which you call "non schematic" and the
> >> "schematic part"  says something else -  it would have been indeed be
> >> better to have clearer information.
> >
> > We can confirm that "schematic part" is correct.
> >
> >> Anyway: I can't neither see how this change should relate to uart2 or =
spi
> >> which are both in different io-domain, nor why it would happen only in
> >> u-boot. My strongest guess is, that radxa changed something along the
> >> way.
> >
> > I'm sorry, I can't explain the relationship between UART2/SPI and APIO5=
.
> >
> > However, I had been seeing "the garbled serial console output on Linux"
> > for a long time, and couldn't figure out how to fix it.
> >
> > What version of your ROCK Pi 4 board do you have?
> >
> > Best regards,
> >
> > --
> > FUKAUMI Naoki
> > Radxa Computer (Shenzhen) Co., Ltd.
> >
> >> Or maybe it would be worth to double-check the io-domain driver in u-
> >> boot.
> >>
> >>
> >> Regards,
> >> Alex
> >>
> >>
> >>
> >
> >
>
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

