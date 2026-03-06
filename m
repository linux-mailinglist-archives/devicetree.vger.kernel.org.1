Return-Path: <devicetree+bounces-272072-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEFDFJTOqml4XQEAu9opvQ
	(envelope-from <devicetree+bounces-272072-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:54:44 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5264E2211BD
	for <lists+devicetree@lfdr.de>; Fri, 06 Mar 2026 13:54:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6368C306AFF4
	for <lists+devicetree@lfdr.de>; Fri,  6 Mar 2026 12:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6012E33EAF9;
	Fri,  6 Mar 2026 12:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="NnWMBrBr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B78E4347FFB
	for <devicetree@vger.kernel.org>; Fri,  6 Mar 2026 12:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.221.47
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772801125; cv=pass; b=U+XLbBhLgvFyVuusZHdeUMHeD4mmgIkGZUdIbRa7sAq9zEw0MzSS+xnbDRHkKkOqUwR/Df2Tr+S7CFsyKlFiZ0ZaLvOmpqnIeEpNx35m/V7vPXoa0nOrwDTYe8pNs6GpLJ+B99xDwt2wyqgZvEuVR+S5kR1FJRgCxap7h64Gc8M=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772801125; c=relaxed/simple;
	bh=d4+yHnqqrag21e5l+zlyKxbPtZdeRMS/eu8jTZJiNPw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=h/eCmQjkNhSAbY8a0Je06qzhy5fN+HkyVFUAtDWMMuGnguoYzWTYhCrpHINVBL0fgE/7uucP4puQCcK+4yvhcrFrT3Vr8Bhq1FdI7dzJOETQqU2GScYqCv1AstC1mKxwfoLJqXIqBJvT/GbfAcDxmahNjncMJZJoPjGFQcFtiHs=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=NnWMBrBr; arc=pass smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-439aeed8a5bso6308273f8f.3
        for <devicetree@vger.kernel.org>; Fri, 06 Mar 2026 04:45:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772801119; cv=none;
        d=google.com; s=arc-20240605;
        b=COXBfE1lasmOFPNXCQxk9Ti5IkaoaX15DqEcDkA0RcFD2Mk+tLhJewWbs0bWt9mM6q
         y47cPF25HJqJJhqHHU0UCySq/8Ngp5drXDK+G9WV99LXGlXeFbaltIbYisXi1U3BVghP
         4KsbBXMDRJkNmRP7idZ0pOXC0Wn30MK/NQM/5vJ6u+fdAOu7o4pfu08MVvcmF0wMH7E5
         y8dIx90xQSCL64850WeEOdcOVV7NTyUWR5R+yFB8By+z3djvVRrkLiMNmB+IHRAy/RzN
         S/5UA/U5FF4moow6Ai38K1Pb88X0FjgaxumQ8be+P99CONomfN7iyFiS/1pzuHliIyKX
         mdZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=O9taYqzLoINgFyYur740XSP0g3dcwW79M5LNhuZRVTQ=;
        fh=Kg4Ecd7DTni1b+Nq1dmAGEMmgcdXpZMBMxE2ixxhsM8=;
        b=XgWmhBpPDVKCBf8INzwC6npD8JCH62qxPbxFJS0W6Ph/Pg8g4FqXW0rR+bpmz301D1
         VmlkFcTVWHgAP6CMJQ3Rhgv6dV+L1WozdqfL7t0yTkbj12N8mylOi3Xccb2uAEJVqIPp
         d6nRSStUEnaP6eet7KcuMJMBvGQ2a+YMW0abyL5MUxA2Py4+6QTWxeBZolBSShdlgPls
         mnnVdtgw7/g2wrNR9LogFyPyxWJrXCtR76ZmPyFYr5VgZakRZPMgzTy4Rk9mtrcC1s8U
         yys2BP44uaJ6Lk6fFT/Ncu07wshrswhInP2JKiJ2Br1Q5JHDx+q1oL0OctFAMvun68+x
         SqCQ==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772801119; x=1773405919; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O9taYqzLoINgFyYur740XSP0g3dcwW79M5LNhuZRVTQ=;
        b=NnWMBrBrgbDwZgWxE9kj9+jShrldnAQYtjg/tq0jH5FpEzN6RRZ71jnEuVGHG+VaAk
         XpnH/PhuRKHCeJBJ+PQDPQp9VkdMN45YFqre4hesuzaHED0GNzkF0yryaooRg3EWWzWu
         q+kp8zye3xCmftmeM5KQRtdL5+YYu/zdyaGNceUYSWIp50oyk5dKTBtE8Ouv2M+PWLkT
         LhOYf8OZv1efjqxgXuxiNuXsgBEmfqcyvxx3miZmv0fvg++kmNc5QRWkL7zU+JJgEtMK
         BL7hioyeWlkaq6KHittHRggg8ClQFVxTIBfZSpAXpixMrLEd30XSKqRpKA1zhqVrv9xp
         jqXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772801119; x=1773405919;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O9taYqzLoINgFyYur740XSP0g3dcwW79M5LNhuZRVTQ=;
        b=XxVroRGfvDQ8XxNXl09bFu2d+XBbGENiSy62bb9BxWpPgRTJEqEFCSKbjGvlEaOqwR
         CYI6P2tbSk4S+y9cISlX2f1UWXqBM4fg9D1BE00H6vS9HCVA5c4SINC4SMJLO8E34oBN
         DskwzQoAHyYbDv2gskJJ6TifRXZG0E035mCPkQ48ECiRjpZ0x/ZYLs6x80OElOtTmrj2
         xHk1nQSGzSWjBNtr4zrasngbFgcE0jpPDysiCtPO6h+X//yMwl2Rub2XBMjHYabq9Klj
         orrLFIV03CaMAwRcqFhGKqj3I89/a0//FrQWR6F0/TRbXdDShDkjDGpxLjT2rPO/ecrb
         T3Pw==
X-Forwarded-Encrypted: i=1; AJvYcCV2SezuQfQI9JLmLnvBNi8Vjq+25lZETiSHFqNUEakyDes0XmCArr6A+MMODhcZ/+xR2sGp2NsSu/V2@vger.kernel.org
X-Gm-Message-State: AOJu0YwDsuVDCc1wq4vdhJK1Jr9NHw65lNNmtE5OE6Fi1BVbxxh86Asy
	Ubg15rpd6BTatz4Nxtpr8wCeP5mXJaR3Jti5yArX45FRh/3fXMOIQyl0+87JBSVl/CH8cJ3mwg/
	Db0g6pAbF9oeQJHmV0NvugTccRPYEQ9I=
X-Gm-Gg: ATEYQzzIdP/LwZfdSZxkum+/Cup9RjNptOJstyBii2xvQeeLEraBqDNg5qT80RHzGxL
	lOqhGa7KSBZjFQZN3qy0ODShYQO8RAuW2922dio//EC4O3gTCwbF1yh37i0642ubjjkODak0REM
	KydSoRWo8X8uXzwj3p3XZ6fD79x+ePExG8wY+aRJauSpHhR0SduC2ejwkKi/MlpR8o5MMHN3+ny
	K3yJHF8nKg5r++sJPncvZMm3E2HJIY4d0aobPUT6oClZAU2CP/JhxidrJlLVVXPWDY893+XXVGh
	fPGsoYg70ozp520oxGw=
X-Received: by 2002:a05:6000:290d:b0:439:b6ae:5d5f with SMTP id
 ffacd0b85a97d-439da882118mr3606908f8f.36.1772801118465; Fri, 06 Mar 2026
 04:45:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260209104407.116426-1-clamor95@gmail.com> <20260209104407.116426-8-clamor95@gmail.com>
 <20260306100406.GE183676@google.com>
In-Reply-To: <20260306100406.GE183676@google.com>
From: Svyatoslav Ryhel <clamor95@gmail.com>
Date: Fri, 6 Mar 2026 14:45:07 +0200
X-Gm-Features: AaiRm51NBymZ6EonP39IyTLl3AORXQ6isOvT7w3F168jzatW4GJkZM3l_t1FQ3I
Message-ID: <CAPVz0n0jnuhmvsSPckfFOQ0NZ3VMe6W2p_Bb5a9pdVZYhVSJhQ@mail.gmail.com>
Subject: Re: [PATCH v2 7/9] leds: Add driver for Asus Transformer LEDs
To: Lee Jones <lee@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	Pavel Machek <pavel@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Sebastian Reichel <sre@kernel.org>, 
	=?UTF-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>, 
	Ion Agorria <ion@agorria.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-input@vger.kernel.org, linux-leds@vger.kernel.org, 
	linux-pm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 5264E2211BD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272072-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,arndb.de,linuxfoundation.org,rere.qmqm.pl,agorria.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[clamor95@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,qmqm.pl:email]
X-Rspamd-Action: no action

=D0=BF=D1=82, 6 =D0=B1=D0=B5=D1=80. 2026=E2=80=AF=D1=80. =D0=BE 12:04 Lee J=
ones <lee@kernel.org> =D0=BF=D0=B8=D1=88=D0=B5:
>
> On Mon, 09 Feb 2026, Svyatoslav Ryhel wrote:
>
> > From: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>
> >
> > Asus Transformer tablets have a green and an amber LED on both the Pad
> > and the Dock. If both LEDs are enabled simultaneously, the emitted ligh=
t
> > will be yellow.
> >
> > Co-developed-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > Signed-off-by: Svyatoslav Ryhel <clamor95@gmail.com>
> > Signed-off-by: Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>
> > ---
> >  drivers/leds/Kconfig        |  11 ++++
> >  drivers/leds/Makefile       |   1 +
> >  drivers/leds/leds-asus-ec.c | 104 ++++++++++++++++++++++++++++++++++++
> >  3 files changed, 116 insertions(+)
> >  create mode 100644 drivers/leds/leds-asus-ec.c
> >
> > diff --git a/drivers/leds/Kconfig b/drivers/leds/Kconfig
> > index 597d7a79c988..96dab210f6ca 100644
> > --- a/drivers/leds/Kconfig
> > +++ b/drivers/leds/Kconfig
> > @@ -120,6 +120,17 @@ config LEDS_OSRAM_AMS_AS3668
> >         To compile this driver as a module, choose M here: the module
> >         will be called leds-as3668.
> >
> > +config LEDS_ASUSEC
> > +     tristate "LED Support for Asus Transformer charging LED"
> > +     depends on LEDS_CLASS
> > +     depends on MFD_ASUSEC
> > +     help
> > +       This option enables support for charging indicator on
> > +       Asus Transformer's Pad and it's Dock.
> > +
> > +       To compile this driver as a module, choose M here: the module
> > +       will be called leds-asus-ec.
> > +
> >  config LEDS_AW200XX
> >       tristate "LED support for Awinic AW20036/AW20054/AW20072/AW20108"
> >       depends on LEDS_CLASS
> > diff --git a/drivers/leds/Makefile b/drivers/leds/Makefile
> > index 8fdb45d5b439..1117304dfdf4 100644
> > --- a/drivers/leds/Makefile
> > +++ b/drivers/leds/Makefile
> > @@ -16,6 +16,7 @@ obj-$(CONFIG_LEDS_AN30259A)         +=3D leds-an30259=
a.o
> >  obj-$(CONFIG_LEDS_APU)                       +=3D leds-apu.o
> >  obj-$(CONFIG_LEDS_ARIEL)             +=3D leds-ariel.o
> >  obj-$(CONFIG_LEDS_AS3668)            +=3D leds-as3668.o
> > +obj-$(CONFIG_LEDS_ASUSEC)            +=3D leds-asus-ec.o
> >  obj-$(CONFIG_LEDS_AW200XX)           +=3D leds-aw200xx.o
> >  obj-$(CONFIG_LEDS_AW2013)            +=3D leds-aw2013.o
> >  obj-$(CONFIG_LEDS_BCM6328)           +=3D leds-bcm6328.o
> > diff --git a/drivers/leds/leds-asus-ec.c b/drivers/leds/leds-asus-ec.c
> > new file mode 100644
> > index 000000000000..5dd76c9247ee
> > --- /dev/null
> > +++ b/drivers/leds/leds-asus-ec.c
> > @@ -0,0 +1,104 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +/*
> > + * ASUS EC driver - battery LED
> > + */
> > +
> > +#include <linux/err.h>
> > +#include <linux/leds.h>
> > +#include <linux/mfd/asus-ec.h>
> > +#include <linux/mod_devicetable.h>
> > +#include <linux/module.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/slab.h>
> > +
> > +/*
> > + * F[5] & 0x07
> > + *  auto: brightness =3D=3D 0
> > + *  bit 0: blink / charger on
> > + *  bit 1: amber on
> > + *  bit 2: green on
> > + */
> > +
> > +#define ASUSEC_CTL_LED_BLINK         BIT_ULL(40)
> > +#define ASUSEC_CTL_LED_AMBER         BIT_ULL(41)
> > +#define ASUSEC_CTL_LED_GREEN         BIT_ULL(42)
> > +
> > +static void asus_ec_led_set_brightness_amber(struct led_classdev *led,
> > +                                          enum led_brightness brightne=
ss)
> > +{
> > +     const struct asusec_info *ec =3D dev_get_drvdata(led->dev->parent=
);
> > +
> > +     if (brightness)
> > +             asus_ec_set_ctl_bits(ec, ASUSEC_CTL_LED_AMBER);
> > +     else
> > +             asus_ec_clear_ctl_bits(ec, ASUSEC_CTL_LED_AMBER);
> > +}
> > +
> > +static void asus_ec_led_set_brightness_green(struct led_classdev *led,
> > +                                          enum led_brightness brightne=
ss)
> > +{
> > +     const struct asusec_info *ec =3D dev_get_drvdata(led->dev->parent=
);
> > +
> > +     if (brightness)
> > +             asus_ec_set_ctl_bits(ec, ASUSEC_CTL_LED_GREEN);
> > +     else
> > +             asus_ec_clear_ctl_bits(ec, ASUSEC_CTL_LED_GREEN);
> > +}
> > +
> > +static int asus_ec_led_probe(struct platform_device *pdev)
> > +{
> > +     struct asusec_info *ec =3D cell_to_ec(pdev);
>
> Please remove all of your abstraction layers.  They serve little purpose
> other than to complicate things.  Just use dev_get_drvdata() here.
>
> Remove the "_info" part and change "ec" to "ddata".
>

Controller exposes only required stuff, exposing controllers internal
parts is not desired. Is there any written convention that driver
private data pointer MUST be named "ddata"? "priv" is pretty well
fitting to. You are just nitpicking.

> > +     struct device *dev =3D &pdev->dev;
> > +     struct led_classdev *amber_led, *green_led;
> > +     int ret;
> > +
> > +     platform_set_drvdata(pdev, ec);
>
> Wait, what?
>
> Why are you doing that?
>

This is redundant, yes.

> > +     amber_led =3D devm_kzalloc(dev, sizeof(*amber_led), GFP_KERNEL);
> > +     if (!amber_led)
> > +             return -ENOMEM;
> > +
> > +     amber_led->name =3D devm_kasprintf(dev, GFP_KERNEL, "%s::amber", =
ec->name);
> > +     amber_led->max_brightness =3D 1;
> > +     amber_led->flags =3D LED_CORE_SUSPENDRESUME | LED_RETAIN_AT_SHUTD=
OWN;
> > +     amber_led->brightness_set =3D asus_ec_led_set_brightness_amber;
> > +
> > +     ret =3D devm_led_classdev_register(dev, amber_led);
> > +     if (ret)
> > +             return dev_err_probe(dev, ret, "failed to register amber =
LED\n");
> > +
> > +     green_led =3D devm_kzalloc(dev, sizeof(*green_led), GFP_KERNEL);
> > +     if (!green_led)
> > +             return -ENOMEM;
> > +
> > +     green_led->name =3D devm_kasprintf(dev, GFP_KERNEL, "%s::green", =
ec->name);
> > +     green_led->max_brightness =3D 1;
> > +     green_led->flags =3D LED_CORE_SUSPENDRESUME | LED_RETAIN_AT_SHUTD=
OWN;
> > +     green_led->brightness_set =3D asus_ec_led_set_brightness_green;
> > +
> > +     ret =3D devm_led_classdev_register(dev, green_led);
> > +     if (ret)
> > +             return dev_err_probe(dev, ret, "failed to register green =
LED\n");
>
> Lots of repetition here.
>
> I'd make a sub-function that takes the differences.
>
> Same with the set brightness functions.
>
> Think to yourself - what if I had to support 16 different LEDs?
>

That is not of my concern what you would do. I have 2 LEDs and I see
no point in "abstraction for he sake of abstraction".

> > +
> > +     return 0;
> > +}
> > +
> > +static const struct of_device_id asus_ec_led_match[] =3D {
> > +     { .compatible =3D "asus,ec-led" },
> > +     { }
> > +};
> > +MODULE_DEVICE_TABLE(of, asus_ec_led_match);
> > +
> > +static struct platform_driver asus_ec_led_driver =3D {
> > +     .driver =3D {
> > +             .name =3D "asus-ec-led",
> > +             .of_match_table =3D asus_ec_led_match,
> > +     },
> > +     .probe =3D asus_ec_led_probe,
> > +};
> > +module_platform_driver(asus_ec_led_driver);
> > +
> > +MODULE_AUTHOR("Micha=C5=82 Miros=C5=82aw <mirq-linux@rere.qmqm.pl>");
> > +MODULE_AUTHOR("Svyatoslav Ryhel <clamor95@gmail.com>");
> > +MODULE_DESCRIPTION("ASUS Transformer's charging LED driver");
> > +MODULE_LICENSE("GPL");
> > --
> > 2.51.0
> >
> >
>
> --
> Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]

