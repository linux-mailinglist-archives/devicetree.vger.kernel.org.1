Return-Path: <devicetree+bounces-25930-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E8AB81516F
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 21:57:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9260D1C21F28
	for <lists+devicetree@lfdr.de>; Fri, 15 Dec 2023 20:57:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFF2D4655E;
	Fri, 15 Dec 2023 20:57:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mzIWLAdE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433BC4652A
	for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 20:56:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5e2be6dde31so6870137b3.3
        for <devicetree@vger.kernel.org>; Fri, 15 Dec 2023 12:56:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1702673818; x=1703278618; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KAuQoOiWnChq+85EVZUVG8Ft5KehIy4YkxjTR78okx0=;
        b=mzIWLAdERJBGzSRo39KLXgM7MfQ9Vp0/jxsunX9Q/vnEAAiC/Togoqas8k/mRfqPoq
         FY1oIIStc6jBx1cCpSvae81VssRhMtRIzSuVrMoT7lMCqrZAtXTVij2+akRq/aeFOI/x
         bHeIgSDcRxL0WPqo4xJZnrYmSmfyR5H2JGmEc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702673818; x=1703278618;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KAuQoOiWnChq+85EVZUVG8Ft5KehIy4YkxjTR78okx0=;
        b=blEpeOa/+K1Nxz3fBoC7BF5xxQ4aSaq+LpEEoMG4Jki1GTnGSA7WWl8LW823WYxMoK
         bFgG9KfiHojQbMS98MByCyQ+q+vwPtia8bIvAg9XSNO+ZVycUUub3y7SgrmaWYZJ4O/T
         TiKSXf97c8Tv+/MLOYZXoXkLmcZFm7g0dQwtop0iH5gTEGj9T8SZUsJrLExtYlrr0XLG
         ZO0X3/QbLHdgHJYYHEkkndi50jS7Xj+otGgX0dIJE9sp4gokN6bSN7/bMsAriKOGzeiJ
         AaGvYuAm4qTFGfEz7qTeqp1aUiEQfORR7WK18xxjGc6QL1NOWC2O/ZVs1FdCtsatTeqi
         2kxQ==
X-Gm-Message-State: AOJu0Yzb78pScIquF6xpuyZicg/67pHGRdscQWeqhPdRkIfzzB3x+3fF
	NrejTr4mXVcfwsHwJnVkOHNQliRw9Wkq/AyfFTmTWw==
X-Google-Smtp-Source: AGHT+IFzmwUysezy+fQyEn0A+XpxRblTu9B16GEKzkNOKOoA7zmiG8Diyu/uK0y0aSL6bV9s3zfqZgO43UNyvjAOnwk=
X-Received: by 2002:a0d:d784:0:b0:5e4:e305:5a95 with SMTP id
 z126-20020a0dd784000000b005e4e3055a95mr624121ywd.54.1702673818136; Fri, 15
 Dec 2023 12:56:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231213110009.v1.1.Ifd0903f1c351e84376d71dbdadbd43931197f5ea@changeid>
 <20231213110009.v1.3.I29b26a7f3b80fac0a618707446a10b6cc974fdaf@changeid>
 <20231213221959.GC2115075-robh@kernel.org> <CANg-bXB0EAd-703oOzXsFSS72Z3bfT8La_5K=W41L+B1uMz2-Q@mail.gmail.com>
 <20231215153035.GA3996646-robh@kernel.org>
In-Reply-To: <20231215153035.GA3996646-robh@kernel.org>
From: Mark Hasemeyer <markhas@chromium.org>
Date: Fri, 15 Dec 2023 13:56:47 -0700
Message-ID: <CANg-bXDfOp4e6WDx9JF5XyxjSvh-ctNsM1TTgr8N1NzfDvzpgw@mail.gmail.com>
Subject: Re: [PATCH v1 3/6] of: irq: add wake capable bit to of_irq_resource()
To: Rob Herring <robh@kernel.org>
Cc: LKML <linux-kernel@vger.kernel.org>, Raul Rangel <rrangel@chromium.org>, 
	Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org, 
	Sudeep Holla <sudeep.holla@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 15, 2023 at 8:30=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Thu, Dec 14, 2023 at 02:05:16PM -0700, Mark Hasemeyer wrote:
> > > If a device has multiple interrupts, but none named "wakeup" you are
> > > saying all the interrupts are wakeup capable. That's not right though=
.
> > > Only the device knows which interrupts are wakeup capable. You need:
> > >
> > > return wakeindex >=3D 0 && wakeindex =3D=3D index;
> >
> > I was assuming logic described in the DT bindings:
> > https://www.kernel.org/doc/Documentation/devicetree/bindings/power/wake=
up-source.txt
> > "Also, if device is marked as a wakeup source, then all the primary
> > interrupt(s) can be used as wakeup interrupt(s)."
>
> Also not the best wording I think.
>
> Which interrupts are primary interrupts?
>
> If we can't determine which interrupt, then we should just leave it up
> to the device.
>
> Rob

+Sudeep who authored the documentation and Rob Ack'd: a68eee4c748c
("Documentation: devicetree: standardize/consolidate on "wakeup-source"
property")

I think what Rob is suggesting more closely matches what ACPI supports: whe=
re
interrupt resources are individually marked as wake capable.  The binding
documentation should be updated though.

Something like:
```
If the device is marked as a wakeup-source, interrupt wake capability depen=
ds
on the device specific "interrupt-names" property. If no interrupts are lab=
eled
as wake capable, then it is up to the device to determine which interrupts =
can
wake the system.

However if a device has a dedicated interrupt as the wakeup source, then it
needs to specify/identify it using a device specific interrupt name. In suc=
h
cases only that interrupt can be used as a wakeup interrupt.

While various legacy interrupt names exist, new devices should use "wakeup"=
 as
the canonical interrupt name.
```

Parts of the kernel (I2C, bluetooth, MMC) assume "wakeup" as the
interrupt-name. I added some wording to clarify the assumption.

Thoughts?

