Return-Path: <devicetree+bounces-184022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C8050AD2CC2
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 06:35:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D66216B48B
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 04:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2683A258CF9;
	Tue, 10 Jun 2025 04:35:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="Vbe6L+zs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F47E21883F
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749530143; cv=none; b=ZdTnH6u5WPpOwamjvJ9P1AoU9D3VJRdomYMgwxdA0aBO5Eaf/MtuI+1uTiypeFZ/dXckDNwWkmB+S51N9KHHLISxOTIdK90HktdIYHwM0B50R7SQDU3Tq2fSeyinZVbIq07nm2civszRYaYF9j3V02441ZWBCq5yhJSTGrYHdjc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749530143; c=relaxed/simple;
	bh=+vjfbM7qqAK0wXxezlHayMmhbq1IaZ9tTIr+C3ezwK4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=epCHP0weBsnUWyFm1TLajik9adH8oyHTC6vO/mPwLt4HXM33cDnLDYRUjZF02SByTZ4CoT5a3nL+1hYOGd3o7Xl1/LWAKKEgtaKwzjhFD6MwVoYJSZ8u77BBRkaC4umSL9mX8lVI6HWTPKgY8W4z1xqr+F7rpOUAms9M8/qZhq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=Vbe6L+zs; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5533c562608so4896355e87.3
        for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 21:35:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749530139; x=1750134939; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ed8RxUAjYyp2LZZaxVzqOY+SgZzJQWB9mmLBoWY3jwg=;
        b=Vbe6L+zs/5pWBRPba5ctupjKictxAHVF2LHzhFto7ztoPt8fOo0qOKIZQ2yh/2YNJ+
         QvaVC5rN5HlOU3RyFHLOGZgVMc/SAjxddb1VIQjtAUxDFBDa8dajgAXcgLAGxTF0uId7
         2XLKmfafjYxerKNemsh6XXc80jHFTXXLZWUNvNfQrpdxCtY7iuQi9fSnhLEnLVgm/xVk
         GnI2z1XO2A/DkZZbx2ZUHA99SyU3SVz43JvuHpbPPHtTgyR+AO6cf8Ar1zXmahdyP6Tt
         OpVvUUa1UD1Do7SLBUGAH2wf0J3Aek4QwRcbrK8u8upD22Kw6B9XTcNhFlpzrbi+NCRq
         YukQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749530139; x=1750134939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ed8RxUAjYyp2LZZaxVzqOY+SgZzJQWB9mmLBoWY3jwg=;
        b=cdwDa37JibVnAziZAndzdvfGHTfL+KTp2GYvnJFCZEJDAJ9jLrdn50AOlLTXEnEDEC
         T/U8eY1B+e+9u6jWzB6qa1SbcMsYWCYwxV5z39I4MIwZbmryW/G3XIAgcbki8NgVqdSp
         8oam56YVMYX/7gZsw7V/LQAOA5rBgJYmJ6HUSqNswveLfXf8ZAeXayHM0QfiMeuYzUWZ
         4WBO+WhZ8RvmQixSDJWv4+zQmDhlCvxiiLhUeNMOJYGdDF/dwbu//XSV6+j6jxMNe1Rh
         wi4NCU41ZeiAYq4LuPkT6QqltAc0ZachMqIicFFOgIE092QmB6mSRY1CcHABjvS9l/n4
         S2Sg==
X-Forwarded-Encrypted: i=1; AJvYcCWhgcFZAELuMq5FgfaauvgJm3wTgF/JUoyl8h1AIvU/ONAN9BhbMZ+pdAzCLeSDCWGgwLwYGKR2BYNP@vger.kernel.org
X-Gm-Message-State: AOJu0YyoePImxQkTWQZgeG5O2nNW9TXVyHth2PhrVO5UUcjg4FzLPvok
	t/cICyDCZC16TZg9/TAzL0qk24UMmh7DiDP7vqcmdQq3dNwWZxlrOdbDNdlRbwaFCkb3iBhdr37
	JJE+WX02MewxwMHMxKzTPrTjVyWlcx4JpAVcZN9bcrA==
X-Gm-Gg: ASbGncsU/dnRAvJVdlVc7HL8HK4iWvofOS+S92Q8wopruUXd61RTXrqM9uvan68hrND
	18Wpx4HMiJ9hZr04qgW0RjxVG1bSEtsKFgzS7UEe1XoIm8akCko5td+RYb8te+CrkN6lUYaPODk
	ph+b5FCuvxdXdG+HPS0MXRjxRETEHI9CtX+JLRQp+YbiUV
X-Google-Smtp-Source: AGHT+IFxFmkHQ3fGwNL4owR0g3OIQgJ/V8z3FZMMkX4FuLFUg5JQYB9HKU+r2AMKe1MFWDs5KmtPabb7AI8QwZPozUs=
X-Received: by 2002:ac2:4c4d:0:b0:553:3a0a:1892 with SMTP id
 2adb3069b0e04-55366bee654mr3830038e87.15.1749530139008; Mon, 09 Jun 2025
 21:35:39 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250525084710.1665648-1-apatel@ventanamicro.com>
 <20250525084710.1665648-8-apatel@ventanamicro.com> <aDbrBFcgaJxgBRVZ@smile.fi.intel.com>
 <CAK9=C2XJwgsC5AK-eVOHQqN1tPxtrsTjVoKdHgALbREv=sb8zQ@mail.gmail.com> <aEc-SHvL187xdj-m@smile.fi.intel.com>
In-Reply-To: <aEc-SHvL187xdj-m@smile.fi.intel.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 10 Jun 2025 10:05:27 +0530
X-Gm-Features: AX0GCFs_6x-PmQkIdN0TNx_kOYhGk1jP9YjELf3l8YvJWCRscxqU6ceG469MS-c
Message-ID: <CAK9=C2VjOZ22smYdxDg1bjnx-+wwjngEN3c-iOpdtaADFcQ0+w@mail.gmail.com>
Subject: Re: [PATCH v4 07/23] mailbox: Add RISC-V SBI message proxy (MPXY)
 based mailbox driver
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Len Brown <lenb@kernel.org>, Sunil V L <sunilvl@ventanamicro.com>, 
	Rahul Pathak <rpathak@ventanamicro.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Atish Patra <atish.patra@linux.dev>, Andrew Jones <ajones@ventanamicro.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 10, 2025 at 1:34=E2=80=AFAM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Mon, Jun 09, 2025 at 05:59:40PM +0530, Anup Patel wrote:
> > On Wed, May 28, 2025 at 4:23=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > > On Sun, May 25, 2025 at 02:16:54PM +0530, Anup Patel wrote:
>
> ...
>
> > > > +#include <asm/sbi.h>
> > >
> > > asm/* usually goes after generic linux/* ones. Why here?
> >
> > I am not aware of any such convention but I will update anyway.
>
> It's just a common sense. We include most generic first and most custom a=
t
> last.
>
> ...
>
> > > > +static int mpxy_write_attrs(u32 channel_id, u32 base_attrid, u32 a=
ttr_count,
> > > > +                         u32 *attrs_buf)
> > > > +{
> > > > +     struct mpxy_local *mpxy =3D this_cpu_ptr(&mpxy_local);
> > > > +     struct sbiret sret;
> > > > +     u32 i;
> > > > +
> > > > +     if (!mpxy->shmem_active)
> > > > +             return -ENODEV;
> > > > +     if (!attr_count || !attrs_buf)
> > > > +             return -EINVAL;
> > > > +
> > > > +     get_cpu();
> > > > +
> > > > +     for (i =3D 0; i < attr_count; i++)
> > > > +             ((__le32 *)mpxy->shmem)[i] =3D cpu_to_le32(attrs_buf[=
i]);
> > >
> > > Don't we have helpers for this? They are suffixed with _array.
> > > https://elixir.bootlin.com/linux/v6.15-rc6/source/include/linux/byteo=
rder/generic.h#L168
> > > Don't forget to have asm/byteorder.h being included.
> > >
> > > Ditto for the similar case(s).
> >
> > The cpu_to_le32_array() and le32_to_cpu_array() helpers update data
> > in-place but over here we have separate source and destination.
>
> Fair enough. Perhaps add something like memcpy_to_le32() / memcpy_from_le=
32()
> or alike for your case?

Okay, I will add memcpy_to_le32() / memcpy_from_le32()
in include/linux/byteorder/generic.h and use it over here.

>
> > > > +     sret =3D sbi_ecall(SBI_EXT_MPXY, SBI_EXT_MPXY_WRITE_ATTRS,
> > > > +                      channel_id, base_attrid, attr_count, 0, 0, 0=
);
> > > > +
> > > > +     put_cpu();
> > > > +     return sbi_err_map_linux_errno(sret.error);
> > > > +}
>
> ...
>
> > > > +                            sizeof(mchan->rpmi_attrs) / sizeof(u32=
),
> > > > +                            (u32 *)&mchan->rpmi_attrs);
> > >
> > > Why casting? What about alignment?
> >
> > The RPMI attributes (aka struct sbi_mpxy_rpmi_channel_attrs) are
> > a collection of u32 attributes hence we can also treat rpmi_attrs
> > as a u32 array. Further, the rpmi_attrs is XLEN aligned within the
> > struct mpxy_mbox_channel so no alignment issue with the casting
> > on both RV32 and RV64.
> >
> > If we want to avoid the casting then we will have to use a temporary
> > u32 array plus additional memcpy().
>
> OK.
>
> ...
>
> > > > +     if (mbox->msi_count)
> > >
> > > Is this check really needed?
> >
> > MSIs are optional for the SBI MPXY mailbox so we should only use
> > platform_device_msi_xyz() APIs only when MSIs are available.
>
> > > > +             platform_device_msi_free_irqs_all(mbox->dev);
>
> Hmm... I am not sure why. Do you have any Oops or warnings if the check
> is not there and no MSI provided?

We don't see any oops or warnings. This check is to avoid unnecessary
work (such as acquiring lock, checking default domain, etc) in the
msi_domain_free_irqs_all() called by platform_device_msi_free_irqs_all().

I don't mind dropping the check so I will update in the next revision.

Regards,
Anup

