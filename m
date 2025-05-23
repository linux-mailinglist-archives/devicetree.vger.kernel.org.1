Return-Path: <devicetree+bounces-179934-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id F3FB2AC2219
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 13:39:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AE83316CAB4
	for <lists+devicetree@lfdr.de>; Fri, 23 May 2025 11:39:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 377E1231839;
	Fri, 23 May 2025 11:39:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="iqt2JCiD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D05B22A1E1
	for <devicetree@vger.kernel.org>; Fri, 23 May 2025 11:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748000353; cv=none; b=kLkYBy130QxaW54/+LaeGdxcH4CvVcyWew1LLfAcCg7EZjDuJwmm7v/iDFSfd9MM/mk93FeRURVdk1aeUsnux2g0RrJDAWDO1uBF4/0IfxLBQ45C2KwAWyWY32+eK7Qy8Kz86mWspoSgiLE0zhpFUYDRwkG6UUUcbUsuIuT3OVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748000353; c=relaxed/simple;
	bh=4c6XCcGeGI3Iz42ETVD1kWDpnOaknLRaew23lcoOgaw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GZcwc2rIL4zIk+CCBiCaa47To0ciKp60rzDu2XZ3rpmKEWGS3tTla5jWqGfg7SGwfaxw6ZsPPyl/T8qs7CNkIT8Qkams5wta3Wu5Kgi/3qXzr8gcyWbfSlHWQ+EgSM1jeVR9ZHpt/5PRDOdrBkratVw3BQmKQo9RnkWpkkirRA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=iqt2JCiD; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-3290ae9b011so62079591fa.0
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 04:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1748000349; x=1748605149; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4c6XCcGeGI3Iz42ETVD1kWDpnOaknLRaew23lcoOgaw=;
        b=iqt2JCiD0yZhix7cKkZGkGIt7KPbjUPQa7M/o+1OAdMDz6hgpQDqt6kjx8vHb+FCfG
         l4m3y/plCGg6oIf20G6NiVN2/fWdF4BT6ntRTygyc2C0ktOtySZfDwI1Kk6p7gLJrlxt
         Yk30ZY6gW6FAGy/r9gkyXjRhq0Xsc9yg7cWL8IgTKfhNA/QpXd6nEAo1OVWyRFKFXPCU
         NknyrlzTj3sa8l0bieqOHtvXypLPdyCUP/6HM7fpvCq7K3zNcjHwZp32XAAUhyfTO7FL
         r88tuv8JSv29aPPMOtvj05DOfW/pGRfxitUIP4IMQF0RSXqYHe/WhxZA6PY/re6gSEep
         7pBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748000349; x=1748605149;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4c6XCcGeGI3Iz42ETVD1kWDpnOaknLRaew23lcoOgaw=;
        b=q1y6muuHdjBGDvW9BfZCIUCaAAAovCzuC9rzIiOH23CkXmyTqNyFENmq/1mW5nJKEF
         7dh2WK+XxqB8JH2MFIN/6/yWAhr2TJFAg9X+e2K4p8TGQQBKB6Nxdwc87Zhafr2vGAjI
         kH6wtQ6OK3DJgbR8TlMTJzx+rnM3dhObZSCNPf1sEMK6XccoOa627VKDf27Z9EgDcyM/
         Z2iSKhFhKwJA/Vee06dO0zYyqRDWeN52MwSMKTi4HmgfjeZ4FKfruIucbgXJmKOHhih7
         65HBC7JDuyr1wq//uP73nReGuPFmqQuQb64ZFF/fM8TglNb/OzmD4lOJPAL/8L+RkLPS
         2+kQ==
X-Forwarded-Encrypted: i=1; AJvYcCU7fH1FTbMb5Ec25AH2N4pUCtK5xaxbUETzttrwB3P4Sui94sTRHDLyTpRYA0Iw/gIoN7g6va1Zkest@vger.kernel.org
X-Gm-Message-State: AOJu0Yyr4ufSoSdvqV3IbpKOW/NsCmQtQiyz4LT3jwno2vw9sryiXLxD
	y/KoDuatrt2xxe9Hdtn/iFMktqs5o0necXNHdAfazF50DZDnkMBGGcKHoiv/YXvPs55qfkyFlya
	cAZ6E++aqPCh0uuFKIEfTx/+SjnC7GiL2t6yD8317/w==
X-Gm-Gg: ASbGncsG/ZDLxJIywTnm4sQ/egPiWjxlWJDeGgQVbVvpKDXlcmd8dXYePhemrEu4Qlo
	f3lHZ9EQD0k1iCyh7TY8XPjxXfeXNNmW9iyszVTYrhOl41uXzs3Uax6D1dSUjw96nAM+LHXu/cj
	TTTe2NM05kjYTSP/pAMoxxsbk/7U1yMh9q
X-Google-Smtp-Source: AGHT+IF2LOIg4O1xHRyi86CCrwvgJ2OS7m73hlziSd4ebNFqUGMO5r7pRVz549vYj95zmX/EW8KpI62SWz8WryNi6o8=
X-Received: by 2002:a05:651c:304f:b0:30b:b956:53e5 with SMTP id
 38308e7fff4ca-328096b7830mr78162091fa.12.1748000349503; Fri, 23 May 2025
 04:39:09 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250511133939.801777-1-apatel@ventanamicro.com>
 <20250511133939.801777-14-apatel@ventanamicro.com> <aCGaKXOOWyM4JQMg@smile.fi.intel.com>
 <CAK9=C2U1rzSa42qMNqxfTtjAC5RiJrhwg_32_B86nT2+xJ4Qow@mail.gmail.com> <aC3e-IXYb68RoIyu@smile.fi.intel.com>
In-Reply-To: <aC3e-IXYb68RoIyu@smile.fi.intel.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Fri, 23 May 2025 17:08:57 +0530
X-Gm-Features: AX0GCFuikFsTk4gG8kf6GKZUp9UJZvUrFZuYjcduLBrZd3gwT8GH2kdzFPFBAPw
Message-ID: <CAK9=C2WMxdmGEY=4BSeR_20JXoLkYK-t55qd0K7w=qOqnAkkOQ@mail.gmail.com>
Subject: Re: [PATCH v3 13/23] irqchip: Add driver for the RPMI system MSI
 service group
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

On Wed, May 21, 2025 at 7:41=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, May 21, 2025 at 05:07:05PM +0530, Anup Patel wrote:
> > On Mon, May 12, 2025 at 12:20=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > > On Sun, May 11, 2025 at 07:09:29PM +0530, Anup Patel wrote:
>
> ...
>
> > > > +#include <linux/bitfield.h>
> > > > +#include <linux/bitops.h>
> > > > +#include <linux/cpu.h>
> > > > +#include <linux/interrupt.h>
> > > > +#include <linux/irqchip.h>
> > > > +#include <linux/mailbox_client.h>
> > > > +#include <linux/mailbox/riscv-rpmi-message.h>
> > > > +#include <linux/module.h>
> > > > +#include <linux/msi.h>
> > > > +#include <linux/of_irq.h>
> > > > +#include <linux/platform_device.h>
> > > > +#include <linux/printk.h>
> > > > +#include <linux/smp.h>
> > >
> > > + types.h
> > >
> > > Actually this one is most clean, the rest of the patches where the ne=
w code
> > > is introduced has semi-random list of the inclusions, please, follow =
the IWYU
> > > principle.
> >
> > Sure, I will simplify the #includes
>
> Oh, IWYU (Include What You Use) is not about simplification. It's about
> comprehension. It usually means that *more* headers need to be included
> and *only some* of the existing will be dropped.
>

Okay, I will update accordingly.

Regards,
Anup

