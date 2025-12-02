Return-Path: <devicetree+bounces-243616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED9DC9AB3B
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 09:35:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 153134E06AD
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 08:35:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7787623D2B4;
	Tue,  2 Dec 2025 08:35:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="V4q6+Zvz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8B703FF1
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 08:35:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764664540; cv=none; b=VobSuOMMY5ydAKxCJ0QePemVZ6Eh/PjQW06QQoBtghMtvalUzPairvuKmw0je5uhimYc0WLo2V+Je9m3wR9mC5NdMi/ySpi6Wdrn3YPd9ko0BXXR4d+19Ja+argCGDtYzkc1K2ZseWvxZ1ACfsxznXgL9kG0Ltq4rc4NsXx4hUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764664540; c=relaxed/simple;
	bh=4vaQ9WNJT1i5QQHGxZbypcSK2+H2d1p6oOPk1sZfpiY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E4+YvOaVY49Yk0vSpWM/lfNLX/nQZH8CgnCcn28+L4l41rTcrYCcYP6f7yEO9dwpzPlS7huZPtDI6PTg/GQqNt7AucByVvg7UGArp+yr7ZJHiFLWSSY0xH7LVUBVm616OexLGBizj8pXSr0mKg3UJW1eestzKWGVnvDd3/iQU4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=V4q6+Zvz; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-b9a5b5b47bfso4425050a12.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 00:35:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764664538; x=1765269338; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JjuUELaIuU1gd/2FdtvzglPjtUaEtmlP48ZimdLyUps=;
        b=V4q6+ZvzZylpy3qbS0GLNnsuewVGJVHl6YF/J57Mx6sOymKyuVg/smV9YKHoHwSK2x
         T4AoSXAVIpHtwikun+KDsOm8inlWy4sgAZoUBcNhl2EytlAv9+rT7PmlgSh/lBNgsV2/
         qNKupcazMjhC+dnWgTh8HiAaBy7J9Nwh9Gn5vWLolZcSXwqHPnVoTOiteOoHnY1wwega
         H3IQlHPtQNP9MLiRffvFe7ONQAIsgAXOVPY2D4WNqjNDzh97r1979GtcRxk/rqUhOBUR
         PyGtxvxPpnLqicVQiUIs05l65U1Bw1ASv8EuqWCRr9DdEENJuQgo45SfnsUJLG7IrfWF
         fQeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764664538; x=1765269338;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JjuUELaIuU1gd/2FdtvzglPjtUaEtmlP48ZimdLyUps=;
        b=gpJkQERbmJc4CmhgoOM/bWkFMaTXCyLJuEaU+r5iz6kpH7MNpYRoNlF/cgbXVXWqDK
         QPflZ1FHOKvjpTxOfUtt5jCttNFkXqWL59t96q2nTwcy2Y3zofy217nHqdJCqr1aErIU
         V8mO/AqBhojyzkGus6LaCuJMOZxnA7yKfndEEs2lTwx5BSAkhSSaY8qG/8bGJkK96BMX
         Qwq2HwGcH5soH/1PlKH7KQrVl9l67F6yu5U3b5LHGQVyvovDjlmahQyku7znDFcg9h8q
         zUHn1pbY0lgVdoCZ3BMc4uBLt8cYqI+T30u8pr53xfsv42riFmjrTcOsCvGYTeP9nE2A
         LyzQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyeS1dJq4bqeSEPajCIgd9eT+gv2MKx2b2tAkMQ93f/aXt6CHEKPqyzcTFUAVidF/J9qm7lAtToa9o@vger.kernel.org
X-Gm-Message-State: AOJu0YxYbWGhu7Xp9ulGP3UOgEGrLnwQRuYzCXrkPQvtZ/z+96wlAGkf
	V2R2N/8jQ0Fd930sC9v94Cc5etxRXyMET+3hRRLDUsV6Dtg9N7tirfVeyIa3NMvAAffE3Qg1CP8
	ilwcLtgN8PLmO8F8oK0fHc41PZqQ7AQOAQ1eqf2MO
X-Gm-Gg: ASbGnct+YWPuNi+bI4p5V3URTuJvjmYJ05A9bM8/H6EtQHbvpUuTPjhgLkTWhCNWQqj
	IdmgIxU1kIem56Dq0EnoNQIkfJ54zOHUYWsIGYbwyvnxxCepMsFhfY5Y/Uh7jMdyeEEDgl4zeU5
	GSuNe+1NZ44NIXwqjVb/EqHqxL5F9XvMb0yyPp7tZbwAtykqJ9KUygLdCThsAWCRgqF3M0jVw/Z
	bA4NoBaFWZkEriC9Fm0LRELVWNdt7YQcyNKoV6BKW8RtAFcQxAd8naO0QE63NDi3cuua+YMF9g7
	75MJ1w==
X-Google-Smtp-Source: AGHT+IE4K+rC1T0nxBLda3rMJ7Xh3tPJApYjBfQYjhEN+PQBck3O++fb17f2VhiEsxBvds6BzbdMR2BO+hO3HQSpzKc=
X-Received: by 2002:a05:7301:4616:b0:2a4:50ca:9234 with SMTP id
 5a478bee46e88-2a719d7d25cmr21780225eec.26.1764664537612; Tue, 02 Dec 2025
 00:35:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251122-controller-v8-0-e7562e0df658@google.com>
 <20251122-controller-v8-2-e7562e0df658@google.com> <CADrjBPqPsPBBSbhx8ZFreFWX2tRxaATT=azS-b1H2b=TJoVAAw@mail.gmail.com>
In-Reply-To: <CADrjBPqPsPBBSbhx8ZFreFWX2tRxaATT=azS-b1H2b=TJoVAAw@mail.gmail.com>
From: Roy Luo <royluo@google.com>
Date: Tue, 2 Dec 2025 02:35:00 -0600
X-Gm-Features: AWmQ_bl1YCwZSA7pQNoH9cFjlkJSn831NjN8Dq9QhCXB5pUpJEJxffvLo_epzic
Message-ID: <CA+zupgyopHGCCb-HcNvyi4m5-UDerYZFmT7S0cNYLYONz-wzwg@mail.gmail.com>
Subject: Re: [PATCH v8 2/2] usb: dwc3: Add Google Tensor SoC DWC3 glue driver
To: Peter Griffin <peter.griffin@linaro.org>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Badhri Jagan Sridharan <badhri@google.com>, 
	Doug Anderson <dianders@google.com>, linux-usb@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Nov 22, 2025 at 7:58=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> Hi Roy,
>
> Thanks for your patch. It's great to see Laguna support being added upstr=
eam.
>
> On Sat, 22 Nov 2025 at 09:32, Roy Luo <royluo@google.com> wrote:
> >
> > Add support for the DWC3 USB controller found on Google Tensor G5
> > (codename: laguna). The controller features dual-role functionality
> > and hibernation.
> >
> > The primary focus is implementing hibernation support in host mode,
> > enabling the controller to enter a low-power state (D3). This is
> > particularly relevant during system power state transition and
> > runtime power management for power efficiency.
> > Highlights:
> > - Align suspend callback with dwc3_suspend_common() for deciding
> >   between a full teardown and hibernation in host mode.
> > - Integration with `psw` (power switchable) and `top` power domains,
> >   managing their states and device links to support hibernation.
> > - A notifier callback dwc3_google_usb_psw_pd_notifier() for
> >   `psw` power domain events to manage controller state
> >   transitions to/from D3.
> > - Coordination of the `non_sticky` reset during power state
> >   transitions, asserting it on D3 entry and deasserting on D0 entry
> >   in hibernation scenario.
> > - Handling of high-speed and super-speed PME interrupts
> >   that are generated by remote wakeup during hibernation.
> >
> > Co-developed-by: Joy Chakraborty <joychakr@google.com>
> > Signed-off-by: Joy Chakraborty <joychakr@google.com>
> > Co-developed-by: Naveen Kumar <mnkumar@google.com>
> > Signed-off-by: Naveen Kumar <mnkumar@google.com>
> > Signed-off-by: Roy Luo <royluo@google.com>
> > ---
> >  drivers/usb/dwc3/Kconfig       |  13 +
> >  drivers/usb/dwc3/Makefile      |   1 +
> >  drivers/usb/dwc3/dwc3-google.c | 628 +++++++++++++++++++++++++++++++++=
++++++++
> >  3 files changed, 642 insertions(+)
> >
> > diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> > index 4925d15084f816d3ff92059b476ebcc799b56b51..f58c70dabf108878cbefe0a=
bea88572d9ae81e26 100644
> > --- a/drivers/usb/dwc3/Kconfig
> > +++ b/drivers/usb/dwc3/Kconfig
> > @@ -200,4 +200,17 @@ config USB_DWC3_GENERIC_PLAT
> >           the dwc3 child node in the device tree.
> >           Say 'Y' or 'M' here if your platform integrates DWC3 in a sim=
ilar way.
> >
> > +config USB_DWC3_GOOGLE
> > +       tristate "Google Platform"
> > +       depends on COMPILE_TEST
> > +       depends on OF && COMMON_CLK && RESET_CONTROLLER
> > +       help
> > +         Support the DesignWare Core USB3 IP found on Google Tensor
> > +         SoCs, starting with the G5 generation. This driver includes
>
> consider adding: (Laguna)

Ack, will add it in the next revision.

>
> > +         support for hibernation in host mode.
> > +         Say 'Y' or 'M' if you have one such device.
> > +
> > +         To compile this driver as a module, choose M here: the
> > +         module will be called dwc3-google.ko.
> > +
> >  endif
> > diff --git a/drivers/usb/dwc3/Makefile b/drivers/usb/dwc3/Makefile
> > index 96469e48ff9d189cc8d0b65e65424eae2158bcfe..cf1cd408d938b3ac26d58b9=
be7fcc5af3ee82660 100644
> > --- a/drivers/usb/dwc3/Makefile
> > +++ b/drivers/usb/dwc3/Makefile
> > @@ -58,3 +58,4 @@ obj-$(CONFIG_USB_DWC3_XILINX)         +=3D dwc3-xilin=
x.o
> >  obj-$(CONFIG_USB_DWC3_OCTEON)          +=3D dwc3-octeon.o
> >  obj-$(CONFIG_USB_DWC3_RTK)             +=3D dwc3-rtk.o
> >  obj-$(CONFIG_USB_DWC3_GENERIC_PLAT)    +=3D dwc3-generic-plat.o
> > +obj-$(CONFIG_USB_DWC3_GOOGLE)          +=3D dwc3-google.o
> > diff --git a/drivers/usb/dwc3/dwc3-google.c b/drivers/usb/dwc3/dwc3-goo=
gle.c
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..53e04a5409d8a11eb025b0f=
5cd351cb1b33281ab
> > --- /dev/null
> > +++ b/drivers/usb/dwc3/dwc3-google.c
> > @@ -0,0 +1,628 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * dwc3-google.c - Google DWC3 Specific Glue Layer
> > + *
> > + * Copyright (c) 2025, Google LLC
> > + * Author: Roy Luo <royluo@google.com>
> > + */
> > +
> > +#include <linux/of.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/irq.h>
> > +#include <linux/clk.h>
> > +#include <linux/module.h>
> > +#include <linux/kernel.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/reset.h>
> > +#include <linux/pm_domain.h>
> > +#include <linux/iopoll.h>
> > +#include <linux/regmap.h>
> > +#include <linux/mfd/syscon.h>
>
> Please sort the headers alphabetically. It helps avoid duplicates and
> is easier when adding new headers.

As Greg pointed out, no such requirement exists for usb drivers, but
if it makes things look nicer, why not?
Will sort the headers alphabetically in the next revision.

>
> Also can you add this file, and the bindings patch to the Tensor SoC
> MAINTAINERS entry, so it's easier to review future patches?

Sure! Will update MAITAINERS in the next revision.
Appreciate the review!

Thanks,
Roy Luo


>
> With those nits  addressed:
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
>
> regards,
>
> Peter.

