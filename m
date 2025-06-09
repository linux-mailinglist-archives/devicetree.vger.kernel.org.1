Return-Path: <devicetree+bounces-183702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0C08AD1884
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 08:12:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E43FD3AA1A1
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 06:12:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 206DB27F72E;
	Mon,  9 Jun 2025 06:12:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="HkI0tmDf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E20254AF4
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 06:12:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749449559; cv=none; b=QZ6hjanCFJLm7X9u+YkTs6cj8UQooZ734WxYiTcXrT26ocU/HagUGC0xDaU8dSuiyFbMgRUXK88wm4vqfq3PF2kEdWoYcytk3B8nxPDAZ49KyQXrqfUnsrdF3TVmHCubY45PHaX4aKdevsPXlDysI6OTRdQo0q7vWqEshMETgvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749449559; c=relaxed/simple;
	bh=hC7sYjRTRprvhqWeyddKYr1R75JwHa16GRXz1WGFPCA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MVjjZM3861NK1SRAya7+QU2vJ2BLQedlzDLrwAY7G6Snp8nv/ekKcIiYqVmau0G8WivJi7EllW1q8pmsM9bBTHp27ZtdjsipImLYVu8CWG1iazAVkeAGst1bDUzZgGH4nTDa18bXBSCjfD/lJ+/gnQGnUUf9BRUyBqIUMp5mIpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=HkI0tmDf; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-553543ddfc7so3827649e87.0
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 23:12:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1749449555; x=1750054355; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QrTT2Ug0zbdaKyRxl6jBbSEjhgl8N2Elyqr8mo3YZs8=;
        b=HkI0tmDf1zaAwVk2tV5DEWzZwI0X8AHf6QTikEWF+Im4kHdBPc0S7MghSGPMR8xoZF
         62OQb+BcXlLmIMgPqGyNczQPs+BBLbWqJagIeECqHHYLiSKir7rCD/eg6vcAL3JoGRXw
         cWhlupyCD31F5fNgfsTorQOdKg3nA9TkDfDht6YfaYVP8OYkMQmy8uaHoxONMQuMTZvf
         X9ypvYIF4TuizkElbgOKINgqv8aNoYfcTRqgkCHzsvKknEuSGqfp641F9E09Lt+FHRzf
         2DPKPcqU44NOaX/eyg+dLZiX+9+U2MDKiudcdxG4T8RRsfWdR8P6LYhWe/FXvSohtqCQ
         q33Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749449555; x=1750054355;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QrTT2Ug0zbdaKyRxl6jBbSEjhgl8N2Elyqr8mo3YZs8=;
        b=NaHlO8QLNi5EqItFOTxe3mzUe/nWL7awB+QjrbTLwNyVSYgLPTNNTyBsX0MdDgsQeX
         6Gvxs29RLteaOUPioEDwIqMTJtAcZQZmewXS3eFhRaVcHpWCpX1KIgvoZJkil9IV9KzW
         EnVKUiE3qK1me0iUEfsa1cVKEIpGvFeaWFJsuAjIwoY/SYw78aUsMR4RjqQb9dY3bWB2
         D2vattUWVCQ+UzkEPeoFavQXoVamGh837kcjaZTjpb2lR+W6M/xdT1OXEDwni/SXJ3TR
         CwvdkZqPMOaFkWsZq1GCpmSiIvaFY+lIuvIYVeHtTIDhT99zGeRWq9krYWnVshwsQfHD
         Z5BA==
X-Forwarded-Encrypted: i=1; AJvYcCV/tFEghMvEotQCnZdiV+sYG53I80vSjwv4Nne4o0bAOhYM6M9cGZmQ/hQL5WqjCWK6/wpT1LzQaAk8@vger.kernel.org
X-Gm-Message-State: AOJu0YzeJItnMBzXz8hFo7yuKuHgC5JQbnJgJwuqdujG+m/KppLVHh3h
	3xC+xqg+nsQly2HYBOsB5PWWmcHqeIcwQ6sAfoiM3yVqXD1Q6Lam6Z71ql3mENG1S4wlCQtdGv7
	0WxeFGU2TJ3Uy0NoCkgMLkDsafBqAV9HDKsYjWE5WKw==
X-Gm-Gg: ASbGncuUhk3aCFgi9FZ4W80U8W58qzoTbVvtVsR63lzjxFc9hfhgvy3zGoPNiDMGf5B
	1/AoRCW3UUJGuxbiwtZLM2C2+/jNlLyl10AfedM5w8MHYUjw8jLeowYcV6DlpX/HjI+pWOnkNzW
	OJedElfxScTkM2nbLlHzSualEadJN2/b6i4A==
X-Google-Smtp-Source: AGHT+IEECTtnbfpfpm1PCJ+0qNEPhUm+SPgQTf/zlmkXsjTkZrawcTxrDJFp5prLSUOiP9b4jKSeL0mzxrsjJjV1G9g=
X-Received: by 2002:a05:6512:3e14:b0:553:2633:8a64 with SMTP id
 2adb3069b0e04-55366bee0a6mr3224048e87.23.1749449555474; Sun, 08 Jun 2025
 23:12:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250525084710.1665648-1-apatel@ventanamicro.com>
 <20250525084710.1665648-5-apatel@ventanamicro.com> <aDV8E0TF_cYuoQ4A@smile.fi.intel.com>
In-Reply-To: <aDV8E0TF_cYuoQ4A@smile.fi.intel.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Mon, 9 Jun 2025 11:42:23 +0530
X-Gm-Features: AX0GCFvPnCJfNRo5uBNaPo8NZXrvaeCQeQ6i_dUaHiR22KPdWkZ9co7wy5KHhiQ
Message-ID: <CAK9=C2XJ7+homTqdiYvYRv6J+4-gEM3jLmi3EpMDn=wZjkMOqA@mail.gmail.com>
Subject: Re: [PATCH v4 04/23] RISC-V: Add defines for the SBI message proxy extension
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

On Tue, May 27, 2025 at 2:17=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Sun, May 25, 2025 at 02:16:51PM +0530, Anup Patel wrote:
> > Add defines for the new SBI message proxy extension which is part
> > of the SBI v3.0 specification.
>
> ...
>
> > +/** RPMI message protocol specific MPXY attributes */
>
> If you do a kernel-doc, do it properly.

Okay, I will update.

>
> > +enum sbi_mpxy_rpmi_attribute_id {
> > +     SBI_MPXY_RPMI_ATTR_SERVICEGROUP_ID =3D SBI_MPXY_ATTR_MSGPROTO_ATT=
R_START,
> > +     SBI_MPXY_RPMI_ATTR_SERVICEGROUP_VERSION,
>
> > +     SBI_MPXY_RPMI_ATTR_MAX_ID,
>
> Remove trailing comma for the terminator.

Okay, I will update.

>
> > +};
> > +
> > +/* Encoding of MSG_PROT_VER attribute */
> > +#define SBI_MPXY_MSG_PROT_VER_MAJOR(__ver)   (((__ver) >> 16) & 0xffff=
)
> > +#define SBI_MPXY_MSG_PROT_VER_MINOR(__ver)   ((__ver) & 0xffff)
>
> This can utilise GENAMSK() or even upper_16_bits()/lower_16_bits().

Okay, I will update.

Regards,
Anup

