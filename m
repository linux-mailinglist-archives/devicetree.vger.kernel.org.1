Return-Path: <devicetree+bounces-191331-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0DBAEEF3A
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 08:50:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 566FA1BC40C7
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 06:50:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E90AD238C05;
	Tue,  1 Jul 2025 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="kn7la7bs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 088101F4285
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 06:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751352634; cv=none; b=VHjmPIbfAEqPP8EtoKm/POmm+1qSgMLhRaGZV1DChaF18mlDPxDMh1ZH1zl506/gjUuyKn019cRfw1koKYToTJ3mR4KtyGdCjYS1BaSXxT29TXvJn9zQr01cm5XqMT469zn6MgE9n3DzdtFlg+mPtaDvAztcWhg/cU0oAhUdjl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751352634; c=relaxed/simple;
	bh=slYL0pcK30l/kdf1cEqzfFGHu0UunnUbDKnicMoho0g=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c17cd8/mZtysHtd6OZVr4AoAZAT57Hv4lO3hexDoG+oxJNDWIsTNr/LNDqPxgUfo1Wf5Opn34vb3dJlqh28vtgN/7HYhsb/BoBp5Y0kzbGXhPw/6lL8oxbwCwApjvM/PVodgoL36y36vhueZ6eZMOM9iWCGZ9Wjqmk4hWKqFV7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com; spf=pass smtp.mailfrom=ventanamicro.com; dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b=kn7la7bs; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ventanamicro.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ventanamicro.com
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-32ca160b4bcso52485931fa.3
        for <devicetree@vger.kernel.org>; Mon, 30 Jun 2025 23:50:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1751352631; x=1751957431; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWPXFIhjTb/V6V1DQLHOJ4YlKbwSK1c4xU/yQWq9blU=;
        b=kn7la7bsJ4QvXlCWDLDEJQ0uVyUpBMJiwp/yIn/VJs4h8HMOUTcjkshXNyDTwJlo7t
         33DegWQnKnFY3m3AbVezFYCnle449KUn9fhLxMnUB3pLs94V3WcMAY6buL87+vLlWIN4
         lUo0zfDIInp1ogtBK2V5h1kZxCiUQb0aKoI19dSJdQU2MLlPygF6CSYEtSNA6yRl+jTj
         K0TBXMkVrI1+h1jle1UAnMursGiW597lKKjPLB6aZjPpoch1U7NbMNXrDHfBpr3HPAgp
         BJZcMweLYdLz+LAbi7E9Q8wdqPZAai9qlGvyFK1edI8K/wIpFCWMY1/LxM9bKkNiPDYx
         bz7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751352631; x=1751957431;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mWPXFIhjTb/V6V1DQLHOJ4YlKbwSK1c4xU/yQWq9blU=;
        b=XX3hSykWOfvJYiL1FfXLKHTPOrt3lNwPKOSBsrA1Ebdsa5a03YuhfDuTu5b0Nj5RUk
         VtwavYC5A23C7AHQWWUEzab1afDwssp3ZOPVCxLnaldFuHKal8GXi03ubkatC8YCLMJf
         D1SamJPMiAIQIA/FAheU3EO4LUn822DFntZ6nVGC7NtH6rgDNwXDbNSRdVPIPmZ3fDzz
         jreSW6i4ApXN/Nn+NFg3TL2QA56wEvZG6gCgOw3Xa/EFkb2WLR6W+0HeBCpnTkAIr6/y
         VazclFOUcjI7nVFdpAi32yHOZPkQecCprWmjH++ci74aikmN9jmMSNaVf2mf6OkxF42r
         yE0A==
X-Forwarded-Encrypted: i=1; AJvYcCVJ9uyA8vgi13Os6VkhPDWAlOO8Q4a7xcFLzADIxL5FN0Jw9ID9GgIoWatcWW8EpPgHQgT90/oFX66a@vger.kernel.org
X-Gm-Message-State: AOJu0Ywm/oD/mu+Z4eeALkPsp+UWeVaVksZRfhPaxMME79wWeJplVw1B
	01bSoHiGJTQvRHwL5m07duKdp83jqy+rIfgJTeapkcWw0O5bXOAgvMQDhEXXHdTdC/RRxu20EqV
	7p5t3YMXTjmzK5pQntk+5auJU6oXM+qpcM/6j31juIQ==
X-Gm-Gg: ASbGncvief7znNjUNZ9PrQv2MOHLtyxPpuasvFHudYHjl8O/F2VN/BMmPqE5XM8ab//
	P6ZN5SZWPvumuReaT8/WdtXkZF+5Kj0IuE4XnYaQPDKhkPRNi6Zr/RZT2VtkzB6RIWJQvu9rnEf
	GDJeOGXDCQxIUKQ92YCiV8DYEt0s+M80rO3r0ENxVoEkX2Mt+yP0puyGY=
X-Google-Smtp-Source: AGHT+IFzkBl1xaxBMxsvzjYcnTTImtOa41K69LoWO7vhOCRunctW7uRpVxNN5kP1lrGeGDNRGiHQb4LGbb+eDUYPLaE=
X-Received: by 2002:a2e:bc1c:0:b0:32c:ef7a:d84b with SMTP id
 38308e7fff4ca-32cef7ad8c6mr27641281fa.13.1751352631111; Mon, 30 Jun 2025
 23:50:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250618121358.503781-1-apatel@ventanamicro.com>
 <20250618121358.503781-6-apatel@ventanamicro.com> <aFkUETH_R30-CNOX@smile.fi.intel.com>
In-Reply-To: <aFkUETH_R30-CNOX@smile.fi.intel.com>
From: Anup Patel <apatel@ventanamicro.com>
Date: Tue, 1 Jul 2025 12:20:18 +0530
X-Gm-Features: Ac12FXx2G23C94_L44JHbdLekj9g5IUE1GEONeTER1Z3bkY9Y3w5bcaCPjCbmV4
Message-ID: <CAK9=C2WpN2_+wi-0AOZ_2xOK8z9oZk_dD__uRCu+E8iccjyC=Q@mail.gmail.com>
Subject: Re: [PATCH v6 05/23] mailbox: Allow controller specific mapping using fwnode
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

On Mon, Jun 23, 2025 at 2:15=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Jun 18, 2025 at 05:43:40PM +0530, Anup Patel wrote:
> > Introduce optional fw_node() callback which allows a mailbox controller
> > driver to provide controller specific mapping using fwnode.
> >
> > The Linux OF framework already implements fwnode operations for the
> > Linux DD framework so the fw_xlate() callback works fine with device
> > tree as well.
>
> ...
>
> > +     fwnode =3D dev_fwnode(dev);
> > +     if (!fwnode) {
> > +             dev_dbg(dev, "No owner fwnode\n");
> > +             return ERR_PTR(-ENODEV);
> > +     }
> > +
> > +     ret =3D fwnode_property_get_reference_args(dev_fwnode(dev), "mbox=
es",
>
> Why not using fwnode directly here?

Argh, I missed replacing dev_fwnode() over here. Thanks for catching it,
I will update in the next revision.

>
> > +                                              "#mbox-cells", 0, index,=
 &fwspec);
> >       if (ret) {
> > -             dev_err(dev, "%s: can't parse \"mboxes\" property\n", __f=
unc__);
> > +             dev_err(dev, "%s: can't parse \"%s\" property\n", __func_=
_, "mboxes");
> >               return ERR_PTR(ret);
> >       }
>
> ...
>
> Otherwise looks like a good solution to get rid of OF-centric code from m=
ailbox
> in the future.
>
> --
> With Best Regards,
> Andy Shevchenko
>
>

Thanks,
Anup

