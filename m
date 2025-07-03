Return-Path: <devicetree+bounces-192708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFDDAF7773
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 16:29:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0AE6C168B07
	for <lists+devicetree@lfdr.de>; Thu,  3 Jul 2025 14:28:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F3B2EB5A8;
	Thu,  3 Jul 2025 14:27:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="oLymzpNN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1510D2EA48E
	for <devicetree@vger.kernel.org>; Thu,  3 Jul 2025 14:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751552829; cv=none; b=mJLtnxVqhE5nYpObQuzmb0ZMfGEqRMWVRtpk9rGK9KQj3KBAER2cQPsJHWfR+Y+2OzIHk1PHI4Ne6Ur9oUhiwU790oTzEpHYpM72SXonoF5JR9e4ov7psc6sKpr76sAAQeox0DnO0cQVIgGIMuM4OH6ZzQWigp6TxOc8/l34JpY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751552829; c=relaxed/simple;
	bh=abpKxZoDNTtQQe8S2lYs3kQVPNl05CRO44pSFLuAWPY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OrcU1z7uhjdyt5bxZONkqbLNnIC48K3Js//UiMcSD37VWHGO8Y+ejFoQ2f27ENB5a0yoahds+5D85/6LYoGvABJC9mjKaTn9huBRNKLCkOaRRbcDwQCuPeKjiShQUYVZM90FzHPjX3fBVQHP5ey/ds+GpX3YTUrXwfexLpuJ5OE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=oLymzpNN; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5535652f42cso9489725e87.2
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 07:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751552825; x=1752157625; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uf8vdHeGId+ZnF/9F3GWDgFkWjF4VDV823qH2TyLfGg=;
        b=oLymzpNNcYiprpmMJMmujJJgGto79bCBkOSRzwclE4h1TozvFz8kyqj2QKfnBZZls0
         7C3UBgcKU4nOwTLIPihjsjqFXSwUC/Lnm+uLS6XE5QR6NfbOTDev6DzAVqa7ccpw/ZH4
         pncYEOG+gaE0FnSImLHTnDpwgrXZie1kN4aiw/+UDOAN5NvZPRiaHHSpBSXAUP3OFls3
         szfsArs5gh0VIYDZr+L9iWEGuEUqQcJNV+vFIBBHwkvStlYfvxGXiKGKcook3XzPc4vW
         ozKjazg1HusSNyw6gLsxGm+WbZYXU4/S9genoKVSg6pC50/xKl55G0KtlY1zyUtuSJy2
         3Geg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751552825; x=1752157625;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uf8vdHeGId+ZnF/9F3GWDgFkWjF4VDV823qH2TyLfGg=;
        b=tWTK5NPivfM3I8uGokM1Uy1ez2VU+67AOF7+KerPQ3w1RH4BFSO41f7DiDfNIEeq+U
         D4ttln1KlpiSzB2kyI3M/ive+kDtEqyyxcwb392yh63ZzO41k/3yFEaQk0pkpJwhzDxl
         KWhkddfRVODlLO2XQ2A0weQw+Lcm/mn5C8IO44pT2dT+7ohsarzrk+tnkUrT3Sxv7fMX
         pOGdDCxyR173yLCT15UxpWrmS+1qLSqFsOEXj6KRu5HqiIO2OovlM8U7ki9z7+skq54e
         J06u06yQeRUR7xH9In9LrsAIviS9a5bOOXbw8Y5rPNee0hJc33NKsbcBph7d8zMIpmlt
         SMnA==
X-Forwarded-Encrypted: i=1; AJvYcCUR/jg+XLV4ax/DuHYpPSiNjN9wRwd24+wd/qkRnRi5+MkY19aLQrdR0LtGBGFzxXC4bLk0dOEZQrcw@vger.kernel.org
X-Gm-Message-State: AOJu0Yznd72UvsI5bcC7EwrUKf4AwzPOwHN0CioBSGYXmKGDLKX9vSaK
	ZMuEo08LLybsTsoEwSAVO8XRCYqQV+v30LXJWEvbjSiJJmYromjQBEayc1XcBlYpbAagzKdzlLv
	/GDCwre+PhSkmxm2NiPQtpO4ot+vIqSh+8Jm5c2qMXQ==
X-Gm-Gg: ASbGnctKqAmdnkpaj2mPwRyEvKcOTlFKrj9OWRmMELLQHmsb/AOQblxdHqNaQdMQhGL
	QmCU57sxidfLFAt6MUs7DSHEFs9r4jBUZsQ8TP/uCd/V7H/A3yKEZB8g68HI8JlUE1lqrIVXNi2
	2hlHr7rYbjc9yogsP0ua1fDhkPLnHkq0d+py3CB2EYRHwD
X-Google-Smtp-Source: AGHT+IERNnk/2/Xto87XCFkohZ55sqVf4D9r7VKfYTzDKK+EnAO7K8P2L0DHhu9Is2cxcFQo4XLBsT3o8hs5IshBmu4=
X-Received: by 2002:a05:6512:3b06:b0:554:f7ec:3b23 with SMTP id
 2adb3069b0e04-556282d4f26mr2545624e87.15.1751552825118; Thu, 03 Jul 2025
 07:27:05 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250702051345.1460497-1-apatel@ventanamicro.com>
 <20250702051345.1460497-22-apatel@ventanamicro.com> <aGUl_S9irfhlHmy2@smile.fi.intel.com>
 <aGZhWlxxQG0Z8awP@sunil-laptop> <aGaLiK0eW8Mc1YC3@smile.fi.intel.com>
In-Reply-To: <aGaLiK0eW8Mc1YC3@smile.fi.intel.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Thu, 3 Jul 2025 19:56:52 +0530
X-Gm-Features: Ac12FXxVxoArxYNQOBIoss4C9gX0gtiDewbDa5jJ0LeiFJ8s2mrh5jukau-DksA
Message-ID: <CAK9=C2VjrOvcu=hEfxqw8R6Bwc1W5n9m_ksQ8vx02Lo8232wqQ@mail.gmail.com>
Subject: Re: [PATCH v7 21/24] mailbox/riscv-sbi-mpxy: Add ACPI support
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Sunil V L <sunilvl@ventanamicro.com>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Alexandre Ghiti <alex@ghiti.fr>, Len Brown <lenb@kernel.org>, Rahul Pathak <rpathak@ventanamicro.com>, 
	Leyfoon Tan <leyfoon.tan@starfivetech.com>, Atish Patra <atish.patra@linux.dev>, 
	Andrew Jones <ajones@ventanamicro.com>, Samuel Holland <samuel.holland@sifive.com>, 
	Anup Patel <anup@brainfault.org>, linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-acpi@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 3, 2025 at 7:24=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Jul 03, 2025 at 04:24:18PM +0530, Sunil V L wrote:
> > On Wed, Jul 02, 2025 at 03:28:45PM +0300, Andy Shevchenko wrote:
> > > On Wed, Jul 02, 2025 at 10:43:42AM +0530, Anup Patel wrote:
>
> ...
>
> > > > -         if (dev_of_node(dev))
> > > > +         if (is_of_node(fwnode)) {
> > > >                   of_msi_configure(dev, dev_of_node(dev));
> > > > +         } else if (is_acpi_device_node(fwnode)) {
> > > > +                 msi_domain =3D irq_find_matching_fwnode(imsic_acp=
i_get_fwnode(dev),
> > > > +                                                       DOMAIN_BUS_=
PLATFORM_MSI);
> > > > +                 dev_set_msi_domain(dev, msi_domain);
> > > > +         }
> > >
> > > Actually you don't need to have the if-else-if if I am not mistaken.
> > > The OF does almost the same as it's done in the second branch for ACP=
I case.
> > > How many MSI parents this may have?
> > >
> > OF already has a well defined interface to configure the MSI domain. Th=
e
> > mechanisms existing today are different for DT vs ACPI to find out the
> > fwnode of the MSI controller. So, it is done differently.
>
> I don't see how. The only difference I see is that OF iterates over all l=
isted
> parents, if any, ACPI tries only one.
>
> So, perhaps it's a time to have a common API somewhere for this to be agn=
ostic?
> Something like fwnode_msi_configure() in somewhere of IRQ MSI core?
>

There is an issue/gap in the DD framework which is being work-around
here. This issue manifest mostly in RISC-V land because in RISC-V both
MSI controller driver and drivers using MSI are regular platform drivers
while the probe ordering is ensured by dev_link support of DD framework
or the frameworks (like ACPI) creating the device.

As-per this issue, when platform devices (DT or ACPI) are created the
MSI domain instance is not available and hence set to NULL. The MSI
domain instance is only available after MSI controller driver is probed
so currently we explicitly do of_msi_configure() or dev_set_msi_domain()
in the driver using MSI as a work-around. Adding a common
fwnode_msi_configure() is only going to be an improvement to the
existing work-around which we should not have in the first place
hence not the right approach IMO.

In the long run, we need a clean fix for the above issue in the DD
framework such that platform drivers using MSI don't have to explicitly
do of_msi_configure() or dev_set_msi_domain().

Regards,
Anup

