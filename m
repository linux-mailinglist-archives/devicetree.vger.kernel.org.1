Return-Path: <devicetree+bounces-192893-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5BBAF864E
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 06:16:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 132E13A87EF
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 04:15:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B827335955;
	Fri,  4 Jul 2025 04:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="fLXVQafD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 001557F9
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 04:16:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751602565; cv=none; b=X7RHr+lSPgWdQ6l7rlmhUynzXrwQnG2GkJwVafE01debFUIbwxkRDhzRBB3n8g5aiS6gFp7+ckukEYQ7cRulddRpOwP4A3ih8bgT6aamWMyMVvw4c0qHf07BPozHKXTMdzUDKoycv0VM7GHaxOl/dITVrZTTUJXxJod3+CwFZRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751602565; c=relaxed/simple;
	bh=XecpaQpCuIv0QLFbf9BkJc64XnkkPzRoGau5ylgPXdQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ciWUOtiB7fFM6Uvy2Qfpwrjyn4gZ92t6ecY+WrZkmxMABnSSI+NHmJYvSL1UW/ftk7WnMG/uOtxB3OsFhtI34SkG5lpktAnD3s9lPYwZIR3QcLUcEb1Zfa/QHAYLO24s8xZL9IKW8FikRB/mCpRS3wD4mHgrsYOTZ5R/qp+O2b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=fLXVQafD; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-32b561a861fso4696261fa.0
        for <devicetree@vger.kernel.org>; Thu, 03 Jul 2025 21:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751602562; x=1752207362; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LNpklbxS/261KY95nbuoqcElZCVt0F33NNxENOsgANs=;
        b=fLXVQafDMTXkESNLw1znJESpLOawBnsAqZjcKsDdZuODtdhPkgbJ9V9HMn625QUmWv
         /TzWUq+NLyGqiQyaKG+Lb6SbedVMkED1CLmLB6J+QLSb5abGejFwSYmVIRln1z28dbe1
         Gi2YVH4P5n1OvvY5Hq3zQkM8QW8O7Tc1iF19yID3XWJuLEnQCSzDqwbGlXBe8/90wW1M
         dOH+NoP2dwsZ7UpnAbOw68qMN6RCFJzhaqRcEQqVioJGvFR5FW0h25aDqW3wd2ZZwmwU
         2GW2ZvaIZYxdR8VaiVRWPvSrLp1L+A1WVxGYahQh2c13E6fLvJiZGo5w3eyrYGq6Zc4b
         K/Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751602562; x=1752207362;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LNpklbxS/261KY95nbuoqcElZCVt0F33NNxENOsgANs=;
        b=px7KopeGrJQYdAqrl9cySq8SNk6OLxyklpFF4/jyfw1e9HC00mKcBSlP8fxB7V9yUx
         v/LZ2sPauT6TS/PVase6AriFdWNdIMbE92/ehVREfxmCbbIE7FNN96Uwc7tEE4RkgTQn
         qQPXpqovnOtRb/HNG5JE0iXpnWq2mbpiHyXF+fbCKzj8q1umGyylg8tfar4UraJKvNvk
         uB0WugQ+V0lq/PQ9ELgagWhniVWErREAwhR4aU1yEBooINpm9bg9pza9DNafC/XiuGEF
         xlIFTJZPl0ElrgCKTl28UJOlB1CNERUaMKp5JadBqI8lnraxkYTy3ncQx3Ve8ckqAZv7
         IaMw==
X-Forwarded-Encrypted: i=1; AJvYcCXFBnWQO8/jMXSdwQ75YstX+7ix03ZRlxgCfPrJaIN6yFdM1Gmwm+GaMB3BmzQMofEI+K1R+hUiaiC3@vger.kernel.org
X-Gm-Message-State: AOJu0YzrNtoSQkSfIj6KgllkOt6XdHwYYYNuFAHSPN8TwilAexUnZVF5
	5gggHakzb6nxxlyYgjS/G/OvUpBd2JetZdnnz5q9EU8AfUHSeG7lrrxHZPDtQqKch/CMtK3f/nr
	k7tpPR9me+YkwBxDxDO16DQrs5u1e5Wr3n4chQF8S5w==
X-Gm-Gg: ASbGncs0ew1beJQcOgybMFx4ANlwMLpltUmNl28+Qwr1zJF02BYNAN4UeVZMw3ueaOJ
	hbEX0JyO+KUOj+8pdbL3vt17lQiYLmDD/FM5qwIG0oj5Xvwl7K5PdZqEEFTi41JicOg7PZPxk3h
	DEkSOVCnUGSqYUr5kQcVgDpQOyGyo8PB9imNvB7NW5Rbj3
X-Google-Smtp-Source: AGHT+IGcdpbloJSunZwHs/XaLhcDN9ntbioBpiLJkF8NXPKWTLMAoMKlItDbIAXXbqigvjFpNNf1X8SwQxnpI9ERS9s=
X-Received: by 2002:a05:651c:33c:b0:32b:2f36:4d92 with SMTP id
 38308e7fff4ca-32e5f5856d1mr2157481fa.12.1751602561921; Thu, 03 Jul 2025
 21:16:01 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250702051345.1460497-1-apatel@ventanamicro.com>
 <20250702051345.1460497-11-apatel@ventanamicro.com> <aGUvOLXXwF8c_czJ@smile.fi.intel.com>
In-Reply-To: <aGUvOLXXwF8c_czJ@smile.fi.intel.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 4 Jul 2025 09:45:49 +0530
X-Gm-Features: Ac12FXyJ7NyM9IIDInA5TJDnv2m4UJrY1w22dfaDXM4YfjlbpVcnLOkOViGqoxk
Message-ID: <CAK9=C2VfvsbFTjecQm0OSsssXbff7wC4fqWf3CTmnpWSiaLcBw@mail.gmail.com>
Subject: Re: [PATCH v7 10/24] clk: Add clock driver for the RISC-V RPMI clock
 service group
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jassi Brar <jassisinghbrar@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	"Rafael J . Wysocki" <rafael@kernel.org>, Mika Westerberg <mika.westerberg@linux.intel.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Alexandre Ghiti <alex@ghiti.fr>, Len Brown <lenb@kernel.org>, Sunil V L <sunilvl@ventanamicro.com>, 
	Rahul Pathak <rpathak@ventanamicro.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Atish Patra <atish.patra@linux.dev>, Andrew Jones <ajones@ventanamicro.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-acpi@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 2, 2025 at 6:38=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Jul 02, 2025 at 10:43:31AM +0530, Anup Patel wrote:
> >
> > The RPMI specification defines a clock service group which can be
> > accessed via SBI MPXY extension or dedicated S-mode RPMI transport.
> >
> > Add mailbox client based clock driver for the RISC-V RPMI clock
> > service group.
>
> Now it looks much better!
>
> Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> One nit-pick below.
>
> ...
>
> > +/*
> > + * rpmi_clk_rates represents the rates format
> > + * as specified by the RPMI specification.
> > + * No other format conversion(eg. linear_range) is
> > + * required to avoid to and fro conversion.
>
> conversion appears twice. I would suggest use this:
>
>  * No other data format (e.g., struct linear_range) is
>  * required to avoid to and from conversion.
>

I will update it in the next revision.

Thanks,
Anup

