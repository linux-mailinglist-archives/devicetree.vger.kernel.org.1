Return-Path: <devicetree+bounces-264697-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iDm+Am9QjGmukgAAu9opvQ
	(envelope-from <devicetree+bounces-264697-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:48:31 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id BC10F122EB1
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:48:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id EBEB2300789D
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:48:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7D9C366DB5;
	Wed, 11 Feb 2026 09:48:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B657F36682A
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 09:48:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770803288; cv=none; b=OyxBopBuOaAHBfk4IB16h4DKzFHxTO4NMx7x1l1lsRcbtfIiwj0COHSWMKCV2xltEaRWrHTgKbdfNV9rWHbqGzyOShmlu/VHdBqyYeOO0pLmqtQOjWnknjKXBdmf0Hv9IK81XK4mBsSk/fOpbgg7FSvAV3/OZoEzJhJYgQHwA5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770803288; c=relaxed/simple;
	bh=jyMtwfz6PT7x7i7yWX3x2fLhRVd0dJXQ6ezeHmhb+DM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rLMJpgoXjiFdGa2Su5Q1OUexSoike5vl7JCe11K9au0R90DLHBj0wW0sSCy9qIv/CQ11IDBnDmsEdhdqI9zpveovrsJQOil6tPt6gr/X/rZ0t7Av+5MzJD7qyAJN/ezdvJ2ALy/uNuhAu+m0hlVUfn0uSi9gluPV1LCdgNyIjPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-56641b5a471so4148637e0c.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:48:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770803286; x=1771408086;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mLozDRH8HbbbVVR1uH0ymCuzmIY4XWaq6dtDxYh2W3c=;
        b=HyRp0FnO0io5XG4Cs7H8ypG1+aOLokTHGGs58KE6peQDmUb3p4u+PPFslbiN21WfZU
         FLi2+CqKwX/duoXYgZUG5o1ul304D+b7NH2RPAQresngrXSWxsKtccGH+kI1s4De6Dr/
         4I+VSJB6BMGU5vxiJSCNsKbymEIzWLQBP+xHkB4WFUWFZkHhoXXVEcNdBXTA0SDWkBs/
         Kk6IVQbmYez+yqqfr3N+IcCiWdhAITNBflZQzGnW5YNtPZ0UFKpMpZUPSJKBT1xMkbVZ
         7Mf53mNNfjGVkxV7k9X8YgAB2ptDe3L8y8lX4zo5yXtkewHxSxlg4NDqcuNlWZvGvaEi
         iAcg==
X-Forwarded-Encrypted: i=1; AJvYcCU/HSeahm1gco6EYdrJHfF/yXSuBW0o/3T6J3F3++OH+ZT12jkvtM026Hi+J9EDzR6LuNyeHGwWgLry@vger.kernel.org
X-Gm-Message-State: AOJu0Yy9RT+LOqLmNAfO/jXCOOYRrsHLXaJBHttaFdkraw5pAdXnICdB
	wYDHxw6AYtJ2uy5nePFT1V6f7aWKZBB20SlZFYPAGNhbuzPDFknfvKtc3+++avGV1VY=
X-Gm-Gg: AZuq6aKH4mPPMkrmxC4YNi9KMYuAXxA4MkaMBzTe+OlX9scPjdA1YwQM7N4+GiN7Dzg
	mDfYRTOrVE1fTfrIE6O7SWhhPIXD1uPuWWCJembX714O/YGu169OCsTENDfkwnc+teyKPusucbo
	SLkQ/g1FN3cGmfBsoghSnave2T5dQCD5hZy3A6jxKUluyjYxWUKbHHxRgHFDV8SrI5fHGsZWAZC
	LsIGQUUrekYC2qElOEOJRoHB+sfpgpBzzgvy7P3f38ryB+plMCkFwFTrKAXykUyhTZfn/ka0k6B
	sYl/sSgxcajWSq4vr4jMhRXyHYyYNq3FiPWp0tgR+Bn/xgimSAKazCWzhb1reiNyP34QLHswqVA
	ypy5qs3+O0o65IorS3wcOWuqrlPrENMeS0Ci9y+1CJbcyepGc1P0tNRT6XQnPO7J5Q1I7/ce66A
	4fuLuWX/5ebngvQ2b8+rILcW8izY7qrTTwuWsxPyOOUxk6a6rvDIH6UOKPES67
X-Received: by 2002:a05:6122:82a4:b0:559:ed61:4693 with SMTP id 71dfb90a1353d-56749e35433mr630434e0c.10.1770803285619;
        Wed, 11 Feb 2026 01:48:05 -0800 (PST)
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com. [209.85.222.44])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5675156b825sm63384e0c.14.2026.02.11.01.48.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 01:48:05 -0800 (PST)
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-94aaa5d3bfcso2394364241.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 01:48:05 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUQ1YJzukLdCzquc99RTrihFs+Ng0+F6PUGaERO/Nqu5RpUn5+Ib6fHz07cNoSTlLzOIy7wAJHlqwtW@vger.kernel.org
X-Received: by 2002:a05:6102:4189:b0:5df:b2cd:12c9 with SMTP id
 ada2fe7eead31-5fde43fbf22mr584518137.40.1770803284774; Wed, 11 Feb 2026
 01:48:04 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <CAMuHMdXWAx1Kfb84bhp0c8Gya5yaQjtYOnVFqJzyc4Wjc_KtqA@mail.gmail.com> <CADvTj4oetrsLwB0q=tA+9KZ7XTXd5asZjhZf=kekbSpnBFHA-w@mail.gmail.com>
In-Reply-To: <CADvTj4oetrsLwB0q=tA+9KZ7XTXd5asZjhZf=kekbSpnBFHA-w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Feb 2026 10:47:53 +0100
X-Gmail-Original-Message-ID: <CAMuHMdWTp8VsbBq0y9MKQJdkQnDADCbLbKW--gosoBt92PhAmg@mail.gmail.com>
X-Gm-Features: AZwV_QjPGdyKDxcd-FS9q6aUtMa_sneV7LtxUOCqGBzqr1A3ifoGwTeVXIGAXyA
Message-ID: <CAMuHMdWTp8VsbBq0y9MKQJdkQnDADCbLbKW--gosoBt92PhAmg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: James Hilliard <james.hilliard1@gmail.com>
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Herve Codina <herve.codina@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-264697-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,tq-group.com:email,mail.gmail.com:mid,bootlin.com:url,devicetree.org:url,linux-m68k.org:email]
X-Rspamd-Queue-Id: BC10F122EB1
X-Rspamd-Action: no action

Hi James,

CC Herv=C3=A9

On Wed, 11 Feb 2026 at 09:35, James Hilliard <james.hilliard1@gmail.com> wr=
ote:
> On Wed, Feb 11, 2026 at 1:26=E2=80=AFAM Geert Uytterhoeven <geert@linux-m=
68k.org> wrote:
> > On Wed, 11 Feb 2026 at 09:14, James Hilliard <james.hilliard1@gmail.com=
> wrote:
> > > Document the gpio-aggregator virtual GPIO controller with a dedicated
> > > schema and compatible string.
> > >
> > > Also extend the GPIO AGGREGATOR MAINTAINERS entry to cover the new
> > > binding file.
> > >
> > > Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> >
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml
> > > @@ -0,0 +1,54 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/gpio/gpio-aggregator.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: GPIO aggregator controller
> > > +
> > > +maintainers:
> > > +  - Alexander Stein <linux@ew.tq-group.com>
> > > +
> > > +description:
> > > +  GPIO aggregator forwards selected GPIO lines from one or more GPIO
> > > +  controllers and exposes them as a virtual GPIO controller.
> >
> > > +examples:
> > > +  - |
> > > +    #include <dt-bindings/gpio/gpio.h>
> > > +
> > > +    gpio_agg: gpio-aggregator {
> > > +        compatible =3D "gpio-aggregator";
> > > +        #gpio-cells =3D <2>;
> > > +        gpio-controller;
> > > +        gpios =3D <&gpio0 3 GPIO_ACTIVE_LOW>,
> > > +                <&gpio3 1 GPIO_ACTIVE_HIGH>;
> > > +        gpio-line-names =3D "modem-reset", "modem-enable";
> > > +    };
> >
> > Looking at the example, it seems you intend to use the gpio-aggregator
> > as a "Generic GPIO Driver", like in the example in the documentation[1]=
.
> > Hence I think you should not introduce and abuse the "gpio-aggregator"
> > compatible value for this, but instead:
> >   1. Use a proper compatible value that matches your device,
> >   2. Write proper DT bindings for the device,
> >   3. Add the proper device's compatible value to the gpio-aggregator
> >      driver's match table.
> > The above is very similar to how spidev is handled, which also forbids
> > using the spidev compatible value in DTS.
>
> Isn't this gpio-aggregator driver supposed to be non-hardware
> specific?
>
> I'm trying to use it as described here, I noticed the compatible
> in the blog post was missing and just needed adding to the
> driver: https://bootlin.com/blog/gpio-aggregator-a-virtual-gpio-chip/

Let's kick Herv=C3=A9 to fix that ;-)

> > [1] https://docs.kernel.org/6.2/admin-guide/gpio/gpio-aggregator.html#g=
eneric-gpio-driver
> > [2] https://docs.kernel.org/spi/spidev.html

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

