Return-Path: <devicetree+bounces-264783-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oMr6IaCEjGn6qAAAu9opvQ
	(envelope-from <devicetree+bounces-264783-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:31:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C0A124C52
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 14:31:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 73BEF30205E0
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 13:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDFD6270EC3;
	Wed, 11 Feb 2026 13:30:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B85269CE6
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 13:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770816659; cv=none; b=paTnc49xXSXCMQmQ96rmS7OSYi5CVO8omskv47bMcyu3OKTC7ydP+kTRkSAu6G7NUkuGZoQ9PQInNU6KcqxRy6iolRuRS+5XcGydaTuJeH2HJLogY3Zw/OZxEkw0Dv23pdyTfk3ZOo0mgGctFyf4BT174U693oCrfi0AYeY4ttI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770816659; c=relaxed/simple;
	bh=s3EU2LjgOLRowZzF/wdJpBYxBfVigwGPIBOtUhjXyYs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TSAZ/cE5b2LvfNvSHfdR3oyK8Z8AVDI4TsXrRftOg87w0gDNxcy4atOkwCyL4FzH2y5a7u2GHYtx0fgrL/muuzKH4LHhNhaC/G16KQ53skoDARhjnRLUli0WFqEfUpW+p6dWON3YHNyTK71cw6n4EtmtESLudAaAVdan4Tq/NZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-5674d8be45eso169453e0c.1
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:30:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770816657; x=1771421457;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=EY2MdV7+apuNG1WYYGWR7W8whGLUoks5nRWrMCbyHpY=;
        b=qUu4zpkzqlON4J3LsrVQIjwCCclizKqA8ZNOHNMOZSsa0Hj6DC3p3InlnecT0jYSW4
         WWzeP5cCQX5+bey58awx28VEEPh+KPrgrNtLxv2mtymvvdrFmk05JbzNnfOtoGxBSKDg
         puyjotQs2f+JJhz7mm8Q1MmM1MJpXn46nkRlrOuR/elT47hCZbg6XxazDLeC4Jm4jPcd
         PnnNb54RJkEAR+9fLleR/JOT6c6wEtYP09JYZyeEDk/cLzKtF03r7XF/qQUMHTCHYYnn
         TBxZ5p8pkJWw6I4jcjASoWQkvxu7pJTjquvjtB2xiXvJaIyQx68AEan6easbu8a+nqBS
         JETg==
X-Forwarded-Encrypted: i=1; AJvYcCXmo2MVzRK0WduCa0K+5d94DYXFhu4ed+9NZDfDE8yKcpf6yXpAsCG++dIm5q3FgOg02608kDZH4KAY@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7kbRDqIlwt0Jj7nkZpnlZxT0vgV7zBtRESYXWCz2Vjz3az9eX
	UszWC4utXBPiB3zD2bq8L4r9o+sY8gPId5KB0QIXBcCljnfCxPegVAwuRl4uPkhsvIw=
X-Gm-Gg: AZuq6aJj72IM0mreaKUbQlwGJTk++9o8qzjgj/L7ntzKfPv6f0Nmysmbk+VVxSzc5Kt
	Gj5+VVt13C5C71OGXxdp9Dps2BW3HxDCC8hdJ4k/5nZZcWhjL188R4uk/gUPiBn1HFrs8qjMTZp
	itbQw+260+zZnrBpg2nrohOFdNthtXKvhvtURI5/fgkvUjyqvYPiyP3UZLO/RxF98QBESyJMCBI
	uHK0MH/F0QLv3EJ6J0VIEm7fFFeosYGz4aoHEl6cc/x0LSiUPoHPGPgj1dP993LpPubpzk7cvgm
	zXeKVy3ikPCukHcY2KuOHqMiZiDv1XxHN0/Vy5ebcJ8r+znY+tYIjbkS+UmS2lWXx6evf/j09sD
	aOeVucEtz4TF/J4i8LiAyCGQ2PVBbYtO4HdiIhB1h9eyEQZYs8+/2V5soX19QOy25LpLP1fMXn9
	mTXUQ8+z3/JxgNorTqYr4YmrtvQLhybhRz6EfPmnTPH5nas4NuniVJmv78IFn9
X-Received: by 2002:a05:6122:513:b0:566:453e:37ae with SMTP id 71dfb90a1353d-56705fdeeb2mr4302824e0c.13.1770816655819;
        Wed, 11 Feb 2026 05:30:55 -0800 (PST)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94afd1f1f82sm666683241.8.2026.02.11.05.30.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 05:30:53 -0800 (PST)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5fa26e497feso662460137.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 05:30:53 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVkwsuglmzMHh1srNBebwVYHbd0fmKADjVZnrfCBD1zU2x+G4UjCATsv7xBXqfLZ2J/gMT88ng7ksaC@vger.kernel.org
X-Received: by 2002:a05:6102:440c:b0:5f1:55c9:11a2 with SMTP id
 ada2fe7eead31-5fae8c583aamr4757436137.43.1770816653310; Wed, 11 Feb 2026
 05:30:53 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <CAMuHMdXWAx1Kfb84bhp0c8Gya5yaQjtYOnVFqJzyc4Wjc_KtqA@mail.gmail.com>
 <CADvTj4oetrsLwB0q=tA+9KZ7XTXd5asZjhZf=kekbSpnBFHA-w@mail.gmail.com>
 <CAMuHMdWTp8VsbBq0y9MKQJdkQnDADCbLbKW--gosoBt92PhAmg@mail.gmail.com>
 <20260211105735.0e8e65b4@bootlin.com> <CAMuHMdXUG3fMdVk3CVVJpacnZE=j7feke9Nb+Mq6obsCdCr7Dg@mail.gmail.com>
 <20260211115837.265c46cd@bootlin.com>
In-Reply-To: <20260211115837.265c46cd@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Feb 2026 14:30:42 +0100
X-Gmail-Original-Message-ID: <CAMuHMdX8=oJMmiB4KaJQUpAO5gGHUkiWVPJ3A0X=ggz_QaNCRQ@mail.gmail.com>
X-Gm-Features: AZwV_QgY5m1QtY86-Ou_zkPGv-XebJFNUKF7P8jP_rlrUc2-Po8dRt-6TfVQYjY
Message-ID: <CAMuHMdX8=oJMmiB4KaJQUpAO5gGHUkiWVPJ3A0X=ggz_QaNCRQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: Herve Codina <herve.codina@bootlin.com>
Cc: James Hilliard <james.hilliard1@gmail.com>, linux-gpio@vger.kernel.org, 
	Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,ew.tq-group.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264783-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,mail.gmail.com:mid,bootlin.com:url,bootlin.com:email]
X-Rspamd-Queue-Id: F2C0A124C52
X-Rspamd-Action: no action

Hi Herv=C3=A9,

On Wed, 11 Feb 2026 at 11:58, Herve Codina <herve.codina@bootlin.com> wrote=
:
> On Wed, 11 Feb 2026 11:01:24 +0100
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Wed, 11 Feb 2026 at 10:57, Herve Codina <herve.codina@bootlin.com> w=
rote:
> > > On Wed, 11 Feb 2026 10:47:53 +0100
> > > Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > > > On Wed, 11 Feb 2026 at 09:35, James Hilliard <james.hilliard1@gmail=
.com> wrote:
> > > > > On Wed, Feb 11, 2026 at 1:26=E2=80=AFAM Geert Uytterhoeven <geert=
@linux-m68k.org> wrote:
> > > > > > On Wed, 11 Feb 2026 at 09:14, James Hilliard <james.hilliard1@g=
mail.com> wrote:
> > > > > > > Document the gpio-aggregator virtual GPIO controller with a d=
edicated
> > > > > > > schema and compatible string.
> > > > > > >
> > > > > > > Also extend the GPIO AGGREGATOR MAINTAINERS entry to cover th=
e new
> > > > > > > binding file.
> > > > > > >
> > > > > > > Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> > > > > >
> > > > > > > --- /dev/null
> > > > > > > +++ b/Documentation/devicetree/bindings/gpio/gpio-aggregator.=
yaml
> > > > > > > @@ -0,0 +1,54 @@
> > > > > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > > > > +%YAML 1.2
> > > > > > > +---
> > > > > > > +$id: http://devicetree.org/schemas/gpio/gpio-aggregator.yaml=
#
> > > > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > > > +
> > > > > > > +title: GPIO aggregator controller
> > > > > > > +
> > > > > > > +maintainers:
> > > > > > > +  - Alexander Stein <linux@ew.tq-group.com>
> > > > > > > +
> > > > > > > +description:
> > > > > > > +  GPIO aggregator forwards selected GPIO lines from one or m=
ore GPIO
> > > > > > > +  controllers and exposes them as a virtual GPIO controller.
> > > > > >
> > > > > > > +examples:
> > > > > > > +  - |
> > > > > > > +    #include <dt-bindings/gpio/gpio.h>
> > > > > > > +
> > > > > > > +    gpio_agg: gpio-aggregator {
> > > > > > > +        compatible =3D "gpio-aggregator";
> > > > > > > +        #gpio-cells =3D <2>;
> > > > > > > +        gpio-controller;
> > > > > > > +        gpios =3D <&gpio0 3 GPIO_ACTIVE_LOW>,
> > > > > > > +                <&gpio3 1 GPIO_ACTIVE_HIGH>;
> > > > > > > +        gpio-line-names =3D "modem-reset", "modem-enable";
> > > > > > > +    };
> > > > > >
> > > > > > Looking at the example, it seems you intend to use the gpio-agg=
regator
> > > > > > as a "Generic GPIO Driver", like in the example in the document=
ation[1].
> > > > > > Hence I think you should not introduce and abuse the "gpio-aggr=
egator"
> > > > > > compatible value for this, but instead:
> > > > > >   1. Use a proper compatible value that matches your device,
> > > > > >   2. Write proper DT bindings for the device,
> > > > > >   3. Add the proper device's compatible value to the gpio-aggre=
gator
> > > > > >      driver's match table.
> > > > > > The above is very similar to how spidev is handled, which also =
forbids
> > > > > > using the spidev compatible value in DTS.
> > > > >
> > > > > Isn't this gpio-aggregator driver supposed to be non-hardware
> > > > > specific?
> > > > >
> > > > > I'm trying to use it as described here, I noticed the compatible
> > > > > in the blog post was missing and just needed adding to the
> > > > > driver: https://bootlin.com/blog/gpio-aggregator-a-virtual-gpio-c=
hip/
> > > >
> > > > Let's kick Herv=C3=A9 to fix that ;-)
> > >
> > > Where is it missing ?
> >
> > In the driver ;-)
> >
> > DTS must never use 'compatible =3D "gpio-aggregator"'.
>
> Why?
>
> gpio-aggregator can be used as a virtual device to aggregate GPIOs for
> user-space.

It can be used for that, but that is not hardware description.

> I think we should have 'compatible =3D "gpio-aggregator"' in dts.

Proper hardware description requires a proper compatible value.

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

