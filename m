Return-Path: <devicetree+bounces-31325-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A1E82AD5A
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 12:27:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9A3241C23302
	for <lists+devicetree@lfdr.de>; Thu, 11 Jan 2024 11:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7812E14F95;
	Thu, 11 Jan 2024 11:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Vi1rgpwz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f175.google.com (mail-yb1-f175.google.com [209.85.219.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE14156C8
	for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 11:27:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f175.google.com with SMTP id 3f1490d57ef6-dbd99c08cd6so4351481276.0
        for <devicetree@vger.kernel.org>; Thu, 11 Jan 2024 03:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1704972432; x=1705577232; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=e7JiucPuK5mIn3VsB07u7y+OPsd0Eht681B5IDggD3Q=;
        b=Vi1rgpwzfzaqLotaLhCGzsFWVPWU1GdUnAytTsZFz7vuJYMkC/xjtHdnZvr9K+TA0f
         Lwkvbg8H3960iI6jqo9+iuETwbMwrzVj9Ovxb8+MLhAebhSkfS0H6Obmh0zMoox6u9nb
         A+lB9ASXmluOl+JmVEtYLKj6DRMijkKjP2A1w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704972432; x=1705577232;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=e7JiucPuK5mIn3VsB07u7y+OPsd0Eht681B5IDggD3Q=;
        b=kFrSwURC1pVXQRiyw/3QIEFEPn1TfZ4TlQkJIlT6OFYs5khHs6ygB6ez71JG9iXEv8
         VoTaDOY7w/OZB6vKjpATAr3GtlM0OqfL03VqSXTv91c7vPR7W84eq+NQ2tk/P7dNlgie
         He8ZdzG6Fkvyib4rt7Rb/zO9F7l+qhKbyZVU9fkg5VmP8oChDUAb9UoWJ1SmWhrc9yhV
         QAnudnKKqXqq0xDJh/aLBjQYyNMRwxXufxBv71odboi8G8kNYkzibr6Qlcjw/XIL/5Sy
         kCT/zxm7GW9eYnxzV63ED3m7EDZzlvW+BJABxRB3eNlv36tx2326kUwBRSFFoC08MbJP
         djnQ==
X-Gm-Message-State: AOJu0YxD62ORbdR7eTzxPRi1LP9YzH/NHU0U/pl9YS8vMUT+hyS4hu32
	TAWMWI34l1UYPnyyx/0RAFvCnL7fd+mqEgH2QnSgauRIT/APSA==
X-Google-Smtp-Source: AGHT+IEJB+Qnxg6nM+JT5HuGkpy4wIhVH7/I5L9g6bPm+oKIAEIYU5M688AvqqnEcIedqWHcdj7tivFvlabNsODp5ng=
X-Received: by 2002:a25:ad14:0:b0:dbe:a48f:8322 with SMTP id
 y20-20020a25ad14000000b00dbea48f8322mr1087326ybi.71.1704972431668; Thu, 11
 Jan 2024 03:27:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240110080729.3238251-1-dario.binacchi@amarulasolutions.com>
 <20240110080729.3238251-6-dario.binacchi@amarulasolutions.com> <7889dff7-2c38-43c0-b6f7-281a20ae9733@foss.st.com>
In-Reply-To: <7889dff7-2c38-43c0-b6f7-281a20ae9733@foss.st.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Thu, 11 Jan 2024 12:27:00 +0100
Message-ID: <CABGWkvoatqxz2_8_7khHAC8n4gFNyvfDPR3A88fsfuppJxN_5Q@mail.gmail.com>
Subject: Re: [Linux-stm32] [PATCH v6 5/5] ARM: dts: add stm32f769-disco-mb1225-revb03-mb1166-reva09
To: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	Conor Dooley <conor+dt@kernel.org>, Florian Fainelli <f.fainelli@gmail.com>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Manivannan Sadhasivam <mani@kernel.org>, 
	Andre Przywara <andre.przywara@arm.com>, linux-stm32@st-md-mailman.stormreply.com, 
	=?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Sean Nyekjaer <sean@geanix.com>, 
	linux-amarula@amarulasolutions.com, Peter Rosin <peda@axentia.se>, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Raphael,

On Thu, Jan 11, 2024 at 12:22=E2=80=AFPM Raphael Gallais-Pou
<raphael.gallais-pou@foss.st.com> wrote:
>
>
> On 1/10/24 09:05, Dario Binacchi wrote:
> > As reported in the section 8.3 (i. e. Board revision history) of docume=
nt
> > UM2033 (i. e. Discovery kit with STM32F769NI MCU) these are the changes
> > related to the board revisions addressed by the patch:
> > - Board MB1225 revision B-03:
> >   - Memory MICRON MT48LC4M32B2B5-6A replaced by ISSI IS42S32400F-6BL
> > - Board MB1166 revision A-09:
> >   - LCD FRIDA FRD397B25009-D-CTK replaced by FRIDA FRD400B25025-A-CTK
> >
> > The patch only adds the DTS support for the new display which belongs t=
o
> > to the Novatek NT35510-based panel family.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> >
> > ---
> >
> > Changes in v6:
> > - Drop patches
> >   - [5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A=
-CTK
> >   - [7/8] drm/panel: nt35510: move hardwired parameters to configuratio=
n
> >   - [8/8] drm/panel: nt35510: support FRIDA FRD400B25025-A-CTK
> >   because applied by the maintainer Linus Walleij
> >
> > Changes in v5:
> > - Replace GPIOD_ASIS with GPIOD_OUT_HIGH in the call to devm_gpiod_get_=
optional().
> >
> > Changes in v2:
> > - Change the status of panel_backlight node to "disabled"
> > - Delete backlight property from panel0 node.
> > - Re-write the patch [8/8] "drm/panel: nt35510: support FRIDA FRD400B25=
025-A-CTK"
> >   in the same style as the original driver.
> >
> >  arch/arm/boot/dts/st/Makefile                  |  1 +
> >  ...2f769-disco-mb1225-revb03-mb1166-reva09.dts | 18 ++++++++++++++++++
> >  2 files changed, 19 insertions(+)
> >  create mode 100644 arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-=
mb1166-reva09.dts
> >
> > diff --git a/arch/arm/boot/dts/st/Makefile b/arch/arm/boot/dts/st/Makef=
ile
> > index 7892ad69b441..390dbd300a57 100644
> > --- a/arch/arm/boot/dts/st/Makefile
> > +++ b/arch/arm/boot/dts/st/Makefile
> > @@ -23,6 +23,7 @@ dtb-$(CONFIG_ARCH_STM32) +=3D \
> >       stm32f469-disco.dtb \
> >       stm32f746-disco.dtb \
> >       stm32f769-disco.dtb \
>
> Hi Dario,
>
>
> Did you meant dtb here ? ;)
Good catch!
Thanks for the review!

Regards,
Dario

>
>
> Regards,
>
> Rapha=C3=ABl
>
> > +     stm32f769-disco-mb1225-revb03-mb1166-reva09.dts \
> >       stm32429i-eval.dtb \
> >       stm32746g-eval.dtb \
> >       stm32h743i-eval.dtb \
> > diff --git a/arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-=
reva09.dts b/arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva=
09.dts
> > new file mode 100644
> > index 000000000000..014cac192375
> > --- /dev/null
> > +++ b/arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva09.=
dts
> > @@ -0,0 +1,18 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (c) 2023 Dario Binacchi <dario.binacchi@amarulasolutions.=
com>
> > + */
> > +
> > +#include "stm32f769-disco.dts"
> > +
> > +&panel_backlight {
> > +     status =3D "disabled";
> > +};
> > +
> > +&panel0 {
> > +     compatible =3D "frida,frd400b25025", "novatek,nt35510";
> > +     vddi-supply =3D <&vcc_3v3>;
> > +     vdd-supply =3D <&vcc_3v3>;
> > +     /delete-property/backlight;
> > +     /delete-property/power-supply;
> > +};



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

