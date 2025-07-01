Return-Path: <devicetree+bounces-191332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EB2FAEEF57
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 09:03:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EC3C188C71C
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 07:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26C50247290;
	Tue,  1 Jul 2025 07:03:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="HyIOv9Zg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582741EC01D
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 07:03:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751353394; cv=none; b=F01hNAO6M+7EZALl7ZHM7KRw+dcMSeUJeePvm32k4m1laf2gELx/gEc/kj4n/c9g2EbyORxF2c2aDY2nnWfVKOTKiE+Q5VM2kLss5DhUDigtFpVlPxTpbYpmDpaVEYSIKSWgeqbzTdkYOK5V7P8xUDzSxyZud/puqBXt00qMAhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751353394; c=relaxed/simple;
	bh=+EC0oMLVpnRfdUFzMGpfa0FgwGNFEt+oba3/joF/fnE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pwsqd5ov5ikPAgB03SInHbRnlqSoYbhJNW5K9qnIV6cQMmm7QznGva2a64YC4qS1acdnbSl7mvG3ZIhmm4LQe2aCZnmQhZv8aSXZfE6B270rzwHJrgfvQn31NMzb+Z0OoCfAZgozFE6bsRy4gMi4pKZdfncgVbeJWS6Ye0FiKR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=HyIOv9Zg; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-5535652f42cso6317330e87.2
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 00:03:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751353390; x=1751958190; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iIU5NNrDBXiK6ci+KkmpULxlihLtb8DLKHWe5DIQOM0=;
        b=HyIOv9ZgCkwfijbz65r3487WW3wYSVV04iIhdLBXzt3HFvb/78AeXw2UAXTf0iDVUs
         IL/UBt10BtgGHAN0znmWoQuKBnLbr0d1oevRyil9rMw3Iu50MfpkPpnhnOewETmJsK/0
         3DbULhAPhhFJcrKBZeo4b7j/yThflbjHmDox5PMUzx1mAdbo1+ouW1NXfNkDusqlcyXw
         xFtn4Z4Vi7ZwRgK2LY1igd+5t7H5SHCGI2gCOb+wqwQMJY1KQ9Z42rjzEocygsrjUL+m
         Mk8ZXX1KjeCjZ84BZBOZhFEtPNgDQKaPwTyXh8b4Ap+bL9jsAxKIz1M4UuhsAY9v2XKM
         Oh9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751353390; x=1751958190;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iIU5NNrDBXiK6ci+KkmpULxlihLtb8DLKHWe5DIQOM0=;
        b=BqYGOcXvBtSqEvTJtHW+POrLuZ8y9/VzAJlM0vzuISEck1sNuOFXX/hj625EgNiePn
         3ptIgDaLIHg7cOvVpqOkLF63nM8iw6QQE1iJpuJwEv97Ynb6TBgv2GXWg6ChIuQL0KQj
         xbUWIuWc6Y9tDtKybLgGhu8BrqnmEghzXn2vpboYJSi6MS3sxC8K9vtGN7K0P1Rhf3GZ
         /2xXZDuLLGkMFZOI3aW9ZS1OwmjGIPm6qcjiM3zZTgKYvlogrJtL0EnlwUABDuxULEAi
         hQi4rZu2knV3+5+XQD9FxBaLtDNDfD6/TUjn7uIJ+u4mM4izqhp7fKNPiHyqAeCgy1tC
         i9AQ==
X-Forwarded-Encrypted: i=1; AJvYcCVreWyf6/uiMU+IuQrazs/fRzDa5+Yp+tJqyEpkzfsvJsfHjFQ+zM3AqcETF7aO6dvo/vS9NUsrpGC6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7CyG6fis/dNePHTSsqtFtJEkQUQ8IOYFtJk4w+45qoXhuYpc3
	6bPe133CiLpVOZzEHHN70H1SgivI7gAESGgiVmw71xincsEAlkq/uJGnrW8+AtVTH+CMigC4cpc
	j6Qy6lj+S0ZwgV4HnFojNVh21rE1CgR+qiPfEpialKg==
X-Gm-Gg: ASbGnctMSDfB80xjiplV4D/cn9hnouVo7UK52cwR1cfLkRKWyufCGH3T3wzHK6GMuCM
	sGKNVwdIpDfzaVNxpAzBu344aLhJeA+UXobPFmNN7yCtjBRdfPyLXraWPFKsFM6x7o39/Scndc6
	WwocOyYUkKtFjqc3GvIwPliRErJjz/s45k47Te7/hcv40r3jNv4UIT8AI=
X-Google-Smtp-Source: AGHT+IG2hO6nzI2GLaUpV//IQuh9V9bSS/bokBUiGKqfApG5Zg7ceEjqZCY0yleadUsPuqLCZd4pLgQndJnpi85hp6w=
X-Received: by 2002:a05:6512:220d:b0:554:f76a:baaf with SMTP id
 2adb3069b0e04-5550b9ee1c0mr5526546e87.56.1751353390315; Tue, 01 Jul 2025
 00:03:10 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250618121358.503781-1-apatel@ventanamicro.com>
 <20250618121358.503781-7-apatel@ventanamicro.com> <aFkVQTSCSkvBhzgC@smile.fi.intel.com>
In-Reply-To: <aFkVQTSCSkvBhzgC@smile.fi.intel.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 1 Jul 2025 12:32:57 +0530
X-Gm-Features: Ac12FXyj6dh_QMGxazJoimu3YO2qWqoVT9ukdJkMwkLRVDb7ZkWPIfUsIhiEvxA
Message-ID: <CAK9=C2Wh3ha9bV_JhGqJRhBSWheXqRMmBN-M0x2-ffZyFni_cw@mail.gmail.com>
Subject: Re: [PATCH v6 06/23] mailbox: Add RISC-V SBI message proxy (MPXY)
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

On Mon, Jun 23, 2025 at 2:20=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Jun 18, 2025 at 05:43:41PM +0530, Anup Patel wrote:
> > Add a mailbox controller driver for the new SBI message proxy extension
> > which is part of the SBI v3.0 specification.
>
> ...
>
> > +static void mpxy_mbox_remove(struct platform_device *pdev)
> > +{
> > +     struct mpxy_mbox *mbox =3D platform_get_drvdata(pdev);
>
> > +     if (mbox->msi_count)
>
> I'm still not convinced we need this check _here_.
> Can it be rather a separate patch to add it inside
> the below call?

IMHO, improving platform_device_msi_free_irqs_all() and its
users should be a separate series.

>
> > +             platform_device_msi_free_irqs_all(mbox->dev);
> > +}
>
> ...
>
> > +static const struct of_device_id mpxy_mbox_of_match[] =3D {
> > +     {.compatible =3D "riscv,sbi-mpxy-mbox", },
>
> Missing space and unneeded inner comma.

Okay, I will update.

>
> > +     {}
> > +};
>
> ...
>
> > --- a/include/linux/byteorder/generic.h
> > +++ b/include/linux/byteorder/generic.h
>
> This is good change, but deserves to be in a separate patch.
> I will Ack/Review it as soon as it appears to be so.
>

I generally prefer introduction and usage of a new API in the
same patch since it provides better context. I don't mind creating
separate patch so I will update in the next revision.

Regards,
Anup

