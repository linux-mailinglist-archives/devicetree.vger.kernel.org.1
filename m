Return-Path: <devicetree+bounces-125012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DA3E99DA856
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:17:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0A6FA1638CE
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A491E1FCCE4;
	Wed, 27 Nov 2024 13:17:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="mIPPFrLV"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368C51FCF62
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732713420; cv=none; b=Wzs2/SbaYynKNAaG3XzRl6D6J+pxFfA+W30KM29RfnEsf9wCJRQ+utB91mo4vbt4flmiuGZV57xojCOwKYlUgLyitmx3x/np4BXJpuILSID1yK9aeNoolQaKbgOXvVEXYpWV7hGhMlia5krM9bGDTp2nkyGKoN6EOvFxontp0gg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732713420; c=relaxed/simple;
	bh=EGyWHmJTSV7pbykiNfZwPD2oyHOk1MIHEzsSCH0wzUs=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HZl7ZzqDFZjWTD0fYzjGqDjMYmrk+nlzGyAWlb/hFPOnU8cfhWfVeN41F/+UihcwpEMwE8qyAqDCT8BHpib0gpkTYYMQZ1m4lxORSfF6BSKVztltZGsOYUXmhyXc3bbObJ04l2fd3oqDApqITSuFc/kUDlKOGcKnjeFvekynI2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=mIPPFrLV; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E9D42402C7
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:16:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1732713415;
	bh=iwaW/TBd1DZvqORzmh0XX/eem1/Tsj5JT9Lyugc/UYw=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=mIPPFrLVNvQMYtwcKU+9ENc/9Wnj08UoIMRESwWgS7LIVOmQu/NrlQh4wS2uS+BWk
	 mJRurwsfRyY/3RU20i6Y0FFJUFTENhMqn/Cbo98XqJgK82LnbQyQbnTmv1nmWybmMS
	 7dArNIetSayUuQ1bHWow3tPwGJGgTlRsgfc+WNq/1x5Olo+zWtjTFsPOPZ8gQC4ZUH
	 HuGmUvbhoqKErIUdsv+2UsSDHtxYIRJViNAzXzB6bdh9HqKTUE5aOns12UzwOetQ5Y
	 UnViJ5WsNQYYsyw30sJeJN9E5HHfvNK4foWmTUIjYWLVGUABLCfKunJU8WdqVEmp54
	 NXDBxjhTQRA1Q==
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-5f1f2c5d52cso2226852eaf.0
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 05:16:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732713414; x=1733318214;
        h=content-transfer-encoding:cc:to:subject:message-id:date
         :mime-version:references:in-reply-to:from:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=iwaW/TBd1DZvqORzmh0XX/eem1/Tsj5JT9Lyugc/UYw=;
        b=EdMWd0tjRP87iniWsgYY554QNDT/FBYR1gSK3DgnZGb1Ec4LIs8V5lZs+1a2FFYmZ8
         i4Zou5W5Ag7swnUaT2WJGaV1qHco8T2MUxZBaMJQRM0w4e/GZYp9/A+Ua+QLOCQMAjkw
         Cva8J1DdwafrSFIRizLhqk+q4TsASE+CfwvrB5Jk8BBvD4qaPsPZQdMua0ZG0uS0EKz7
         3l10MS5xiBI8kGyW3Uxqb+LwUZNKx33LQoYXF7lt4yBf+xZeUALzPjZlm9WmrTheis3E
         cLIT46/EW7HB2AFpQRyy3StWYQfjlA+Z6g3Y9095+dPjPVWQ5zHwvO4FaK0/FcI/diki
         tz3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU3YamOZjgsP9ea2qanh0P8HcCQ100DAnyZbR7b1Zp3uTWIUyBBR3Z2UBsdGVWJ24gfqJ3SiWjrwdWQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxvxkyLt9jusAl1MbPTFJGvtrp3dYdTdVdFSL1w3pNSCCH22m24
	a4gyDPa+PRk1iRpRO3CACxlZuxBHU4IZ5+iPv49nHCGyH1NKaKmhyS8LOArsymmfld6Bvou00SW
	8+wJb55sLnC00RL63CMcNEFeG07Hb8xPSlS/ntg99AdDPf40b94jjZ/u3m1bYHHRW8G45C27/Ag
	aBZwOq7RWVM9PG1peenVcUM5FdIi9CINJJ8L73Xb2TAFlEtw03ZA==
X-Gm-Gg: ASbGncszGxjCcezMqswml7YWYWtL2zoe+gDdVVJ4Xc0JkLeA4dt6lF7Yr2pVaBVWl+7
	FHjdpM3GZqeQfHqk106hxpkEN7T5mTn0s4zwseg1CzNq5cyd0lYFaVkxMMc4=
X-Received: by 2002:a05:6820:990:b0:5f1:d944:a1da with SMTP id 006d021491bc7-5f20a260420mr2574571eaf.8.1732713414618;
        Wed, 27 Nov 2024 05:16:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFgvI4G/R8CkY5gCpIzdZnZ+b6xMkQcpKRM2Isgs7llekCi3qkMcr148jobX6y9XRGTw+h7uqaqlCHpgS0GqDo=
X-Received: by 2002:a05:6820:990:b0:5f1:d944:a1da with SMTP id
 006d021491bc7-5f20a260420mr2574547eaf.8.1732713414302; Wed, 27 Nov 2024
 05:16:54 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 27 Nov 2024 05:16:53 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <eb06c8e0-ebda-47b9-94f6-6e6eca21097d@freeshell.de>
References: <20241126075740.17419-1-e@freeshell.de> <CAJM55Z9wWCaS+FxZ=Gg_RfXXafNEJZC1zHZoPWQ2Y9QYDf9OyA@mail.gmail.com>
 <eb06c8e0-ebda-47b9-94f6-6e6eca21097d@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Wed, 27 Nov 2024 05:16:53 -0800
Message-ID: <CAJM55Z_Cy2aAfWY-6csKBuv3AJ44h4fCCvJ0ZSbLOYcKw6g=bA@mail.gmail.com>
Subject: Re: [PATCH v5 0/1] riscv: dts: starfive: jh7110-milkv-mars: enable
 usb0 host function
To: E Shattow <e@freeshell.de>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, Jisheng Zhang <jszhang@kernel.org>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	linux-riscv@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, minda.chen@starfivetech.com, 
	hal.feng@starfivetech.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

E Shattow wrote:
> Hi Emil, thanks for taking time to review!
>
> Added CC: Minda Chen, Hal Feng
>
> Please Minda and Hal can you follow-up on Emil's comments as well?
>
> On 11/27/24 03:00, Emil Renner Berthing wrote:
> > E Shattow wrote:
> >> Enable host mode JH7110 on-chip USB for Milk-V Mars by setting host mo=
de
> >> and connect vbus pinctrl.
> >>
> >> This functionality depends on setting the USB over-current register to
> >> disable at bootloader phase, for example U-Boot:
> >> https://patchwork.ozlabs.org/project/uboot/patch/20241012031328.4268-6=
-minda.chen@starfivetech.com/
> > Hi E,
> >
> > Ideally the JH7110 pinctrl driver would be updated, so Linux can do thi=
s itself
> > and doesn't need to rely on u-boot doing it. I already asked for this h=
ere:
> >
> > https://lore.kernel.org/all/CAJM55Z-+Cxdebcn4MLXfQdOVhx4c2SQ+zMH8cjn-Yq=
35xO8g0A@mail.gmail.com/
>
> Yes, I agree, and Linux is not the only consumer of devicetree. I would
> like USB function to work for users of Linux and U-Boot on these boards
> by copying what the vendor Board Support Package does what is shipped
> with the products. If it is more in-depth than this I will defer to Hal
> or Minda.
>
>
> For some wider context, upstream U-Boot is about to adopt the
> dt-rebasing via Hal's OF_UPSTREAM for JH7110 boards series and then also
> there is a patch set from Minda Chen to add the on-chip JH7110 USB
> support to U-Boot, and so then and there it will depend on these dts
> changes. If you have Milk-V Mars then already there are three of four
> USB-A receptacle ports which are functional on PCIe-connected VL805 USB
> chipset.
>
> >
> >> If the over-current register is not prepared for us then the result is=
 no
> >> change in functional outcome with this patch applied; there is an erro=
r
> >> visible to the user and this additional usb configuration fails (same =
as
> >> it is now). On Milk-V Mars with four USB-A ports this applies to one o=
f the
> >> ports and the remaining three VL805-connected ports via PCIe are not c=
hanged.
> > Thanks for the patches. I don't quite understand when you write "no cha=
nge in
> > functional outcome with this patch applied". The USB-C port is already
> > configured as a peripheral, and I just tried setting up an ethernet gad=
get on
> > my VF2 running 6.12 and that works quite well. Does it not work on the =
Milk-V
> > Mars board? If it does then these patches would break that functionalit=
y.
> >
> > Here is the script I used for that:
> > https://paste.c-net.org/BravoLonely
> >
> > At the very least you'll need to explain in the commit message itself w=
hy
> > changing the USB-C port from peripheral mode to host mode is OK. But id=
eally
> > maybe you could make it work in OTG mode, so userspace can choose how t=
hey want
> > to use the port. The same goes for the PINE64 board too.
> >
> > /Emil
>
> USB-C port on Mars is not wired for data here, that is only true for
> VisionFive2. If the user wants to use their USB-A receptacle as OTG port
> I will not object to a future improvement, but here we want the basic
> expectations of users covered that they should have four working USB-A
> receptacle ports in U-Boot (and possibly in Linux, depending on the
> overcurrent register wherever it is set). This is what I am meaning,
> there may be somebody using a male-male USB-A USB-A cable for OTG but
> more likely is that people just want to plug in USB peripherals to host
> ports and use their mouse / keyboard / flash memory, I think.

You're right, sorry. I'm so used to the JH7110 boards being similar, but th=
is
is actually one of the few differences between the Mars and VF2 that was no=
t
caught when the Mars dts was first upstreamed.

Yes, with 4 similar USB-A ports you'd definitely expect all of them to work=
 in
host mode. With an explanation like the above in the commit message I (now)
think your changes makes sense.

Thanks!
/Emil

>
>
> There is no USB-C port on Star64.
>
> >
> >> Changes since v4:
> >>   - Rebase on latest master
> >>
> >> Changes since v3:
> >>   - Rebase on linux-next/master
> >>   - use tabs for code indent
> >>
> >> Changes since v2:
> >>   - Rebase on 6.12
> >>
> >> E Shattow (1):
> >>    riscv: dts: starfive: jh7110-milkv-mars: enable usb0 host function
> >>
> >>   .../boot/dts/starfive/jh7110-milkv-mars.dts    | 18 ++++++++++++++++=
+-
> >>   1 file changed, 17 insertions(+), 1 deletion(-)
> >>
> >> --
> >> 2.45.2
> >>
> Thanks again Emil.=C2=A0 -E
>

