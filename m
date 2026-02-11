Return-Path: <devicetree+bounces-264709-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AI9ECbRTjGnblAAAu9opvQ
	(envelope-from <devicetree+bounces-264709-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:02:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B8D912317E
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:02:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 658F330495E8
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 10:01:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 986C1366831;
	Wed, 11 Feb 2026 10:01:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BF7C365A18
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 10:01:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770804101; cv=none; b=oeM36pr0IOgunuZnI1SFJJkeEtmMzYnEKKhZ9xkqEHSPdLi5jon+di7JVpOVxS6mx4NSW/lAN8s3PdIH8kxJ6Z/5qeTmzGF32JYdnBg+pkcZUCvo8b15hC02YFfx6YstPbnZw4dI9rqhfZEPHbk2F5VFLPOpp4aJK4bR9zsjcGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770804101; c=relaxed/simple;
	bh=Dyn5A0xBMrpzZ0V6DLf1LSrfgphC2IgYspNLzGlacfw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DHVrM62o+8J2d1KTYb1a1+HIVkEhrjux4TVIR4UUDXvL1AmVkyvuWCViqPve+WHq0zMv+NFjrwfqdzEl4ughIyZKIInPcCWszVVzrccrUyro8nyVsJhvsmuKmUf7evhBFkP8vcOf4t6PBo0JXRpZ8utg6/JYbe+vmd7iTXOCYkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-56737fe4888so689380e0c.3
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:01:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770804097; x=1771408897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=v83DzRRw2jidt/UvVUYMQ/X8L3Y36ITUSwZjlgmX4MQ=;
        b=dnapbrnto09thAwFYW0hG2gz66Q7sd2I/bg77OmFD/1zTSRH8FFYT+06tcZZl40oIL
         XPTIzZVA9mKiPNuiQlKpZxg8JT5PEDYMPam/frGaGtXaxi08aVce65s2aRxOXSHPaKKi
         6RMqp/nhvdqopbtNIBgzq7AIl61nND9ASLj6zAgRFInN49WzfwwMzdy8YZpKQNsuFE0s
         BFiOxyQqfjJyq4cWFFpSDYhWCW9rbRYTVqrQLvZptV81PGLzenz6L+WqOelcjjLinu+D
         EJvtZ+M5Xzw84q+K22pFji1wB0PHbk9QYNUmMT8RnekoE7sP6bSSfonI5ZmErgABThJK
         qfSA==
X-Forwarded-Encrypted: i=1; AJvYcCW3QgMlRFpOjmvcrlTeygGJ1XoRr97iu/W0iyeM5y3SRCm64Oh5Yjj8VJm45SzKhK409+GmyuT3pEJA@vger.kernel.org
X-Gm-Message-State: AOJu0YxxBZSowTYbjSUSOGSIGmMGTN8JQ8FCpyus0rE0Ypfzf8QYU8dC
	q8zraDqbX9xHDK8ZlfaVA5lRe3OXK1uZXlWBs94rMh+xiYyOPIUdRVcJoqKkhN1JOW4=
X-Gm-Gg: AZuq6aIIYFZDjVo8mSQh7vSKBhbz8z94klqDVdT5avGKUl1DgEXTemf3I/tA7foM+r2
	eCZI3wsLXQWH2gueHG0wMVrIrz1A4lHf7wbG5TqO0y0rAZy7FPaoX/nLG4VLUIiLzxUbdsp6O1k
	N7w6wcgKXmK6IJHgQSx3q+p/CwScZybf6Ma4w/fWH0Xdtu6gtE+YkFqdwwhZc1TCUf6zRauTQbj
	2Qhzh/9BCKclXNFB09K+1yho49kdvtFCiLOgRzUOCujWgKXDGo1bf56erwU5NoGlyfGflfbMbaJ
	3LQvOCOqm5+la2nlzcU7cK7ZlZkxLTa/goczYZl9r+J7ijDrmBATL00OEXkm9eHzXqMj4ig17/G
	2kwstojYqsFOfKSRRlf9bEoOEZNeKi12LnK3eeOziHA69BRJwJ7VPJoEj4d0KIi+bUPawjNW2PL
	5AqHUv/s/mSihgKkGE2Tiir7j9i/3/cg9RTuFsbSxUWW+dRutd+W4wVhmA07uAg6S8
X-Received: by 2002:a05:6122:f90:b0:566:37da:a72a with SMTP id 71dfb90a1353d-56749e4d109mr496153e0c.13.1770804097206;
        Wed, 11 Feb 2026 02:01:37 -0800 (PST)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com. [209.85.221.175])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5674c20a6b8sm450333e0c.10.2026.02.11.02.01.36
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Feb 2026 02:01:36 -0800 (PST)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-56743b33c67so492637e0c.2
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 02:01:36 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXPABAYCs21d4VqvSQEUL+J0izPgv9dDKkqNS/a/2Vqcd6ms/tsFb4vyIB85vwix2RgR7WsAoq+G22A@vger.kernel.org
X-Received: by 2002:a05:6122:4599:b0:566:3c22:c131 with SMTP id
 71dfb90a1353d-56749e4d3efmr486903e0c.10.1770804095886; Wed, 11 Feb 2026
 02:01:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com>
 <CAMuHMdXWAx1Kfb84bhp0c8Gya5yaQjtYOnVFqJzyc4Wjc_KtqA@mail.gmail.com>
 <CADvTj4oetrsLwB0q=tA+9KZ7XTXd5asZjhZf=kekbSpnBFHA-w@mail.gmail.com>
 <CAMuHMdWTp8VsbBq0y9MKQJdkQnDADCbLbKW--gosoBt92PhAmg@mail.gmail.com> <20260211105735.0e8e65b4@bootlin.com>
In-Reply-To: <20260211105735.0e8e65b4@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 11 Feb 2026 11:01:24 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXUG3fMdVk3CVVJpacnZE=j7feke9Nb+Mq6obsCdCr7Dg@mail.gmail.com>
X-Gm-Features: AZwV_QhkZTLrLJeARWTdqpegZ05E_mRSU_756dbNFLjpCGMjC-Dcphy4OobnZeU
Message-ID: <CAMuHMdXUG3fMdVk3CVVJpacnZE=j7feke9Nb+Mq6obsCdCr7Dg@mail.gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org,kernel.org,ew.tq-group.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264709-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linux-m68k.org:email,tq-group.com:email,devicetree.org:url,bootlin.com:url,bootlin.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6B8D912317E
X-Rspamd-Action: no action

Hi Herv=C3=A9,

On Wed, 11 Feb 2026 at 10:57, Herve Codina <herve.codina@bootlin.com> wrote=
:
> On Wed, 11 Feb 2026 10:47:53 +0100
> Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> > On Wed, 11 Feb 2026 at 09:35, James Hilliard <james.hilliard1@gmail.com=
> wrote:
> > > On Wed, Feb 11, 2026 at 1:26=E2=80=AFAM Geert Uytterhoeven <geert@lin=
ux-m68k.org> wrote:
> > > > On Wed, 11 Feb 2026 at 09:14, James Hilliard <james.hilliard1@gmail=
.com> wrote:
> > > > > Document the gpio-aggregator virtual GPIO controller with a dedic=
ated
> > > > > schema and compatible string.
> > > > >
> > > > > Also extend the GPIO AGGREGATOR MAINTAINERS entry to cover the ne=
w
> > > > > binding file.
> > > > >
> > > > > Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
> > > >
> > > > > --- /dev/null
> > > > > +++ b/Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml
> > > > > @@ -0,0 +1,54 @@
> > > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > > +%YAML 1.2
> > > > > +---
> > > > > +$id: http://devicetree.org/schemas/gpio/gpio-aggregator.yaml#
> > > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > > +
> > > > > +title: GPIO aggregator controller
> > > > > +
> > > > > +maintainers:
> > > > > +  - Alexander Stein <linux@ew.tq-group.com>
> > > > > +
> > > > > +description:
> > > > > +  GPIO aggregator forwards selected GPIO lines from one or more =
GPIO
> > > > > +  controllers and exposes them as a virtual GPIO controller.
> > > >
> > > > > +examples:
> > > > > +  - |
> > > > > +    #include <dt-bindings/gpio/gpio.h>
> > > > > +
> > > > > +    gpio_agg: gpio-aggregator {
> > > > > +        compatible =3D "gpio-aggregator";
> > > > > +        #gpio-cells =3D <2>;
> > > > > +        gpio-controller;
> > > > > +        gpios =3D <&gpio0 3 GPIO_ACTIVE_LOW>,
> > > > > +                <&gpio3 1 GPIO_ACTIVE_HIGH>;
> > > > > +        gpio-line-names =3D "modem-reset", "modem-enable";
> > > > > +    };
> > > >
> > > > Looking at the example, it seems you intend to use the gpio-aggrega=
tor
> > > > as a "Generic GPIO Driver", like in the example in the documentatio=
n[1].
> > > > Hence I think you should not introduce and abuse the "gpio-aggregat=
or"
> > > > compatible value for this, but instead:
> > > >   1. Use a proper compatible value that matches your device,
> > > >   2. Write proper DT bindings for the device,
> > > >   3. Add the proper device's compatible value to the gpio-aggregato=
r
> > > >      driver's match table.
> > > > The above is very similar to how spidev is handled, which also forb=
ids
> > > > using the spidev compatible value in DTS.
> > >
> > > Isn't this gpio-aggregator driver supposed to be non-hardware
> > > specific?
> > >
> > > I'm trying to use it as described here, I noticed the compatible
> > > in the blog post was missing and just needed adding to the
> > > driver: https://bootlin.com/blog/gpio-aggregator-a-virtual-gpio-chip/
> >
> > Let's kick Herv=C3=A9 to fix that ;-)
>
> Where is it missing ?

In the driver ;-)

DTS must never use 'compatible =3D "gpio-aggregator"'.
Instead, you must use a suitable compatible value, as described in [1]:

   "Binding a device to the GPIO Aggregator is performed either
    by modifying the gpio-aggregator driver, or by writing to the
    =E2=80=9Cdriver_override=E2=80=9D file in Sysfs."

> In the DTS snippet example I see:
> --- 8< ---
> gpio-aggregator {
>     pinctrl-names =3D "default";
>     pinctrl-0 =3D <&gpio_pins>;
>     compatible =3D "gpio-aggregator";
>     ...
> };
> --- 8< ---

> > > > [1] https://docs.kernel.org/6.2/admin-guide/gpio/gpio-aggregator.ht=
ml#generic-gpio-driver

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

