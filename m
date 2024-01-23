Return-Path: <devicetree+bounces-34381-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EF8688398C9
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:56:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 61409B28AB5
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2055D12A15C;
	Tue, 23 Jan 2024 18:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="XqbRTWrT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C37486139
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 18:48:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706035707; cv=none; b=LEreBwTeGweZXlv+uUelS+43iJ/ErNRkxScIP/xIUoMzrLt+1UHod931NdIafQ6llIITrs3/vOl8GsRBNFMZz+RfXgdR1QNihrysGFO4LXDDiv10FU+7XR4a8JPkLU5LpIsSsN8oAfnzf/6qw+FN4Oek0LLaL2WF8x1XE65gZnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706035707; c=relaxed/simple;
	bh=VfUcvOrk9BxY84UqSKkDJFfHDt6xMvJArn1LEquLwgw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=c8umUVogJzGVrC5B+XMtRSKcBUCspBfZM+FIv0iGjQ95iB/FLyrFbumVDVYkaYe9XqMciSeEphjNJWuMX3jh72ke+FQefNtCt4xyrVwLyi9ue5Xt0F7dTFM4aa1fn7uH+kvXKcXG/FeV7oSXiHbLWxZNwtzZfaMUrPLhRFCkGUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com; spf=pass smtp.mailfrom=amarulasolutions.com; dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b=XqbRTWrT; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-db3a09e96daso3837580276.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1706035703; x=1706640503; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=N4A1bkpXast5geNOI7VeWzxxT9EBrxdFKuYfDsrMI6w=;
        b=XqbRTWrT3D3lLlmtGuPhIeceW8UlKCTGmDY6pl022l7wck/vMCVDGDTdb6UK+/zZyw
         eWmYGlXaZZBXVO5gObeTHblwR7cL6VUJd3z6+ER6nElZhPbc2c3TkgVkwCT+mwYqq7hD
         oh9UgbT1r8Y6qrXmynLqzBA9C4NtRwpklNCi4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706035703; x=1706640503;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N4A1bkpXast5geNOI7VeWzxxT9EBrxdFKuYfDsrMI6w=;
        b=MCr9lSww3bPccRKmb0249pg7oOpns98/2Zu1diqZNjzsXEhq9XEUwglLpGtFo+HJ9j
         vt+aB/ltZTr0pXfF1ybYlJakbbhTs1U7Rrj1L5qzEotW+stEWp3wzXT8vPdHvLFnMVM9
         YJ+eCfng4wHDwCWI/ggHK0JN6mBNOoP3AtVcrpZEQUPT9nSE14ZZAOnNlynxjOtAyHDP
         ZXFooAcvzsDdNLbKAMOPg+u/7ZFdeETYa02Z24rIk4K2vYP/goGey+kSQwcMzw8niu9x
         jS9suq0LT6ICa3fSxmQ84bRV700Ywt0MFNiElNLZp4Q+/y5yiEl1Wxc1rAZTjNDg5Z42
         5yMQ==
X-Gm-Message-State: AOJu0YxJjmm/0d16DTKEP7AJKYSs0xPZSryfgiEgXL4acP1mgXhkA3Xu
	sjQCeGSpZ9Ayz8piDzwmyKkUXSP7pD7yT0kKL3qyDu15+gRFGaWmPTjaugmFGwMn7FJlEgh0grN
	Hh2Gz/LQ93S8I5XFYG/vd2GmBz7MJKORSb4e6og==
X-Google-Smtp-Source: AGHT+IEmS7KDosQ2FVHBBN6itEq3pe9CYKVq+c0+vmWBYQutxKFCkMbyLj6cuouZU5fdQKnJ4Ft+m71zaiKPq3LkyDs=
X-Received: by 2002:a25:1846:0:b0:dc2:435b:e6c2 with SMTP id
 67-20020a251846000000b00dc2435be6c2mr3682672yby.131.1706035703121; Tue, 23
 Jan 2024 10:48:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240112144902.40044-1-dario.binacchi@amarulasolutions.com>
 <20240112144902.40044-6-dario.binacchi@amarulasolutions.com> <2f3144e2-2438-4ea8-ada0-3fbdd79ee131@foss.st.com>
In-Reply-To: <2f3144e2-2438-4ea8-ada0-3fbdd79ee131@foss.st.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Tue, 23 Jan 2024 19:48:12 +0100
Message-ID: <CABGWkvp=5a58Byd7Kc0rqNbq8HexuR2QTzXWVEMASM=QYVD_NQ@mail.gmail.com>
Subject: Re: [PATCH v8 5/5] ARM: dts: add stm32f769-disco-mb1225-revb03-mb1166-reva09
To: Alexandre TORGUE <alexandre.torgue@foss.st.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Lee Jones <lee@kernel.org>, Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Andre Przywara <andre.przywara@arm.com>, 
	Baruch Siach <baruch@tkos.co.il>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	=?UTF-8?Q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Peter Rosin <peda@axentia.se>, 
	Rob Herring <robh+dt@kernel.org>, Sean Nyekjaer <sean@geanix.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, 
	linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alexandre,

On Tue, Jan 23, 2024 at 5:36=E2=80=AFPM Alexandre TORGUE
<alexandre.torgue@foss.st.com> wrote:
>
> Hi Dario
>
> On 1/12/24 15:48, Dario Binacchi wrote:
> > As reported in the section 8.3 (i. e. Board revision history) of docume=
nt
> > UM2033 (i. e. Discovery kit with STM32F769NI MCU) these are the changes
> > related to the board revisions addressed by the patch:
> > - Board MB1225 revision B-03:
> >    - Memory MICRON MT48LC4M32B2B5-6A replaced by ISSI IS42S32400F-6BL
> > - Board MB1166 revision A-09:
> >    - LCD FRIDA FRD397B25009-D-CTK replaced by FRIDA FRD400B25025-A-CTK
> >
> > The patch only adds the DTS support for the new display which belongs t=
o
> > to the Novatek NT35510-based panel family.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> > Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> > Reviewed-by: Raphael Gallais-Pou <raphael.gallais-pou@foss.st.com>
> >
>
> I still have YAML error. Do you have same on your side or maybe I missed
> a dt-binding patch somewhere ?
>
> /arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva09.dtb:
> dsi@40016c00: Unevaluated properties are not allowed ('interrupts',
> 'panel-dsi@0' were unexpected)
>         from schema $id: http://devicetree.org/schemas/display/st,stm32-d=
si.yaml#
> /arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03-mb1166-reva09.dtb:
> panel-dsi@0: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
>         from schema $id:
> http://devicetree.org/schemas/display/panel/novatek,nt35510.yaml#

What command do you run?

As reported by commit:
commit b81c8c3b8e3847a14bd83dd1de460df3efcb3329
Author: Benjamin Gaignard <benjamin.gaignard@st.com>
Date:   Fri Oct 11 15:06:58 2019 +0200

    ARM: dts: stm32: remove useless interrupt from dsi node for stm32f469

    DSI driver doesn't use interrupt, remove it from the node since it
    breaks yaml check.

    Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
    Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com

The fix could be to remove the 'interrupts' property from the dsi@40016c00
added by the patch [2/5] "ARM: dts: stm32: add DSI support on stm32f769"

>
> Aside that, I just have a cosmetic question. Can we find a shorter name
> for the board ? (not sure we can).

In the repo https://github.com/STMicroelectronics/STM32CubeF7.git
you can find this code:

#if defined(USE_STM32F769I_DISCO_REVB03)
/***********************NT35510
Initialization********************************/

  /* Initialize the NT35510 LCD Display IC Driver (TechShine LCD IC Driver)
   * depending on configuration set in 'hdsivideo_handle'.
   */
  NT35510_Init(NT35510_FORMAT_RGB888, orientation);
/***********************End NT35510 Initialization*************************=
***/
#else

/***********************OTM8009A Initialization****************************=
****/

  /* Initialize the OTM8009A LCD Display IC Driver (KoD LCD IC Driver)
  *  depending on configuration set in 'hdsivideo_handle'.
  */
  OTM8009A_Init(OTM8009A_FORMAT_RGB888, orientation);

/***********************End OTM8009A Initialization************************=
****/
#endif /* USE_STM32F769I_DISCO_REVB03 */

in file Drivers/BSP/STM32F769I-Discovery/stm32f769i_discovery_lcd.c.

And the comment:

/* USE_STM32F769I_DISCO_REVB03 */ /* Applicable only for STM32F769I
DISCOVERY w/ MB1166-A09 LCD daughter board connected on */
in file Drivers/BSP/STM32F769I-Discovery/stm32f769i_discovery.h.

One possible approach might be to drop 'mb1225,' assuming that
'revb03' refers to it implicitly:
stm32f769-disco-revb03-mb1166-reva09

But any suggestion is welcome.

I will wait for your opinion before sending version 9.

Thanks and regards,
Dario
>
> Cheers
> Alex
>
>
>
> > ---
> >
> > Changes in v8:
> > - Add Reviewed-by tag of Linus Walleij
> > - Add Reviewed-by tag of Raphael Gallais-Pou
> >
> > Changes in v7:
> > - Replace .dts with .dtb in the Makefile
> >
> > Changes in v6:
> > - Drop patches
> >    - [5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-=
A-CTK
> >    - [7/8] drm/panel: nt35510: move hardwired parameters to configurati=
on
> >    - [8/8] drm/panel: nt35510: support FRIDA FRD400B25025-A-CTK
> >    because applied by the maintainer Linus Walleij
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
> >    in the same style as the original driver.
> >
> >   arch/arm/boot/dts/st/Makefile                  |  1 +
> >   ...2f769-disco-mb1225-revb03-mb1166-reva09.dts | 18 +++++++++++++++++=
+
> >   2 files changed, 19 insertions(+)
> >   create mode 100644 arch/arm/boot/dts/st/stm32f769-disco-mb1225-revb03=
-mb1166-reva09.dts
> >
> > diff --git a/arch/arm/boot/dts/st/Makefile b/arch/arm/boot/dts/st/Makef=
ile
> > index 7892ad69b441..aa5b50d7ac61 100644
> > --- a/arch/arm/boot/dts/st/Makefile
> > +++ b/arch/arm/boot/dts/st/Makefile
> > @@ -23,6 +23,7 @@ dtb-$(CONFIG_ARCH_STM32) +=3D \
> >       stm32f469-disco.dtb \
> >       stm32f746-disco.dtb \
> >       stm32f769-disco.dtb \
> > +     stm32f769-disco-mb1225-revb03-mb1166-reva09.dtb \
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

