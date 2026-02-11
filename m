Return-Path: <devicetree+bounces-264660-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yGnKAz8/jGlyjwAAu9opvQ
	(envelope-from <devicetree+bounces-264660-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:35:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8482122498
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 09:35:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 28A093020E92
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 08:35:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02432352FB5;
	Wed, 11 Feb 2026 08:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="nTysi+Lh"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16730350A3F
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 08:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=209.85.217.49
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770798901; cv=pass; b=jhTmuM6kSJezDB+FOYr37WYxlzrvGBsvZApRHzbtkAyksB7zPmCNeEJYPQVs62n/QQQ8Egw30Nkf6K4KMuPqI7yQsu3E+BGlIPCwWOIIZMzi0i+al0cvIA0g00eiDqwaDl7tw23kz2EwD9NTrT9dh2iUet5uvTnHCmTP23BIWbI=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770798901; c=relaxed/simple;
	bh=9sy1CT/jZthF5HQbc+sg67yNK28VFMTbC0Tg+M3zmKY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QkAtsIV2NVCSegvXV5TmHeomG6vhNuVbJ8DlM2ZE5zq+ryLtfE3n3mooe8lY7vRuKEpdvhTA66x7o7th9S6CuCwVxC+BzGdhFwJyDT6crvwLjLH4RzS2LgN2HhDM0sEur6gknEEyIX6PD7JX0VtMMWz7Tsl5MA6NVAxWvf31eyg=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=nTysi+Lh; arc=pass smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5faddf6db62so4160691137.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 00:34:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770798899; cv=none;
        d=google.com; s=arc-20240605;
        b=VJRKVZ9pFyoCJ0fFkOogQ/g7N8u3CrT9GO0YjQ2DDa157pba5sQem6F7TxWBunB5D1
         Linpm7gw4sG+oyufC8UHUQoRUNmQjxIOhGMXIFO5B5RUcSunTBSYwNJojQF7ScFz2VTP
         7xAJPkbaKssfZ6xUQJJ/vsZxeeyJaqr/2BR7IcFkvo6UKo/3mLGrmwhWsY7q1O9H6Kef
         mX0hjQuGzOV6ybucwtHsZ/iDTrgc+9KzyBkCPL0CWLlJ9LP55CrtIOeqPMVNxQY9VUA3
         RHg1dztlhezNM9wtkNhKHSYjB4ALxMlKY8aJPjX56t8FB6vd+tNBmNf7e97BSY7A7rWf
         pHmw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=gB+voJ9pXS/NiL9Z4eXXKfd2kHrjxz2mBCt1N1H1pBU=;
        fh=vy0jrQfu4LLocC+hplSecqwCEQMrYTNEzSFNAc/5QII=;
        b=loyIe9NeXtGULhEiNPfX2IMe7HI3OK2WcSLZOVZYoz2D3IP9zyl0cw6WfP+laZODWl
         aYvdOOKcF8l2RF2Iw0Jmd1zkUBeqTmJiaq3IH/e+tbqhmLP10l1bYzKcQdDEpnrb+nuJ
         P8SPH6yJ0bL+6rcqaYcNQR3IaREgp9p9xHosqMcDYE0KNjbG6VkCLSR4amwuSbGlLig9
         giRYjD6AobknJvuXFbtirrQKh0dvVlCRTB5vmsou7IJIJvBJ73OGYM0JTtrh2OB2P4a7
         RJvooTqTbJ9JMR7qaagGNQbj7eBv7HJo4x3r3F5jwQAhyYvx68fDssKwWTCnbwnWwZhi
         NP6g==;
        darn=vger.kernel.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770798899; x=1771403699; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gB+voJ9pXS/NiL9Z4eXXKfd2kHrjxz2mBCt1N1H1pBU=;
        b=nTysi+LhaKxPDmuCmoyRznvBF44bfY/+KEr0/wZrvHLKaRMm2k/iFDKdaJtkQ+UQzh
         Mbvz7RpHoNpRaH+otPt4lJ54gsG2CwP0W+TgWCWDyOaPy7df3ky+FPo8Qh7tmeFriBx9
         mx4Hyb/jIR3H1quoz6N/Civc/dUk49cAKddmtjnx46n4rMS7900DvRFGCX6oGPQKiQ+S
         g7ScqJxo5lEgDey27VkYIKqiF238wiKrqt/b8SG8Fx9vuiw+/omsMQvVJUabKQfBQQ+s
         dYxM5rbvP47iJ5QZ/isjVaKOIUKbw+Nxwdmi9k1CJ7HhaXuWxlZ6F2ADuBQqIr88preN
         Fy2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770798899; x=1771403699;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gB+voJ9pXS/NiL9Z4eXXKfd2kHrjxz2mBCt1N1H1pBU=;
        b=BYifWL7SmRQkCA91SBFB+3k/eIIMbxZoqYJerE+pefMcK2dQ5j85SB/kFOSGX5Tm9A
         UuYrdB4iBQs1JneVt3WteWwvk2ze9nVANVZE5J0fkXVRc+iIm8I2etEEHtD4oU+9Dt0s
         bESEhkev9GVE5gcTKZLdd1fvbygPUgjercMDs5fOjdjgvThdLQE17e95SX/I1SXyuQnL
         36ePHsAtJZ5NLk8HvEQlZSTnp2kvmWIT0tMIAerB1/ApA7K5t7j4hKEF0eyggX5GPt5v
         1BVJAIPb/sbbJFsEHlVCQEeaBn6IDRuk2A/SWsL3zahSmu2ZiRGSMduAqvzeZ0PgReXl
         W0pQ==
X-Forwarded-Encrypted: i=1; AJvYcCVwyfwYbgtYuqCcWFLCHZeJsycmShdMq6BptY5xceuadw7FNEoJAbzwk6baDXSGWxmXEm7KjH6vsVxF@vger.kernel.org
X-Gm-Message-State: AOJu0YziWe1N3/T7rlPnqV0c+ldlLcyMOpg0VWcLYgpi+L4Dn7DZcvQf
	lShJ9iVov9uQOmiD2YiLJoYbBTWyIL8NULfQpOvGfZQz3MeA8uro788NFOvG0QhGi9mhwE/yiQc
	TljE3WmNtHQdOGAYdikb6LLokILVlxSo=
X-Gm-Gg: AZuq6aLMU7xqjyzEWeG6TbrBHeReXeeMFFGdF9CYac1CTAB5U/oqxWQ7W308rGUDMWK
	mtJimQfQn6J/J5V51dEsPG5HNNsY5UOxTLB1Z41LourarqnlELWTUsDi7yN6NVKVV98K1bXyKb1
	Yf/617KHEMK2TY3/S4xy1pIy1GGNGWQXospbE/0lcpbXnbUeKiFOxlPk3Oj0NyeIIBhflGOXxlZ
	P5UHVlldks3rK+Ts4VXyi1ie7HFFz8/I/78GtqrVE01aCSqcki47+FtRJtiLrqEm0H9EPNiglqR
	/kapwXv/LeNThTBFt91NW1ysnjktm8qr17S5MaTIJdZ2ycZ+E4Ft1EgGWAz1raVP5r7E
X-Received: by 2002:a05:6102:3e89:b0:5f5:4e0e:c826 with SMTP id
 ada2fe7eead31-5fc48c111bbmr1444766137.5.1770798899019; Wed, 11 Feb 2026
 00:34:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260211081355.3028947-1-james.hilliard1@gmail.com> <CAMuHMdXWAx1Kfb84bhp0c8Gya5yaQjtYOnVFqJzyc4Wjc_KtqA@mail.gmail.com>
In-Reply-To: <CAMuHMdXWAx1Kfb84bhp0c8Gya5yaQjtYOnVFqJzyc4Wjc_KtqA@mail.gmail.com>
From: James Hilliard <james.hilliard1@gmail.com>
Date: Wed, 11 Feb 2026 01:34:48 -0700
X-Gm-Features: AZwV_Qj7Gzo2wnLCjGYX7X_WPDa_y5ffPDK6j_-RPcUd2pnezANnMEtpl04M6GI
Message-ID: <CADvTj4oetrsLwB0q=tA+9KZ7XTXd5asZjhZf=kekbSpnBFHA-w@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: gpio: add gpio-aggregator binding
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: linux-gpio@vger.kernel.org, Linus Walleij <linusw@kernel.org>, 
	Bartosz Golaszewski <brgl@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexander Stein <linux@ew.tq-group.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264660-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jameshilliard1@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,devicetree.org:url,mail.gmail.com:mid,tq-group.com:email]
X-Rspamd-Queue-Id: B8482122498
X-Rspamd-Action: no action

On Wed, Feb 11, 2026 at 1:26=E2=80=AFAM Geert Uytterhoeven <geert@linux-m68=
k.org> wrote:
>
> Hi James,
>
> On Wed, 11 Feb 2026 at 09:14, James Hilliard <james.hilliard1@gmail.com> =
wrote:
> > Document the gpio-aggregator virtual GPIO controller with a dedicated
> > schema and compatible string.
> >
> > Also extend the GPIO AGGREGATOR MAINTAINERS entry to cover the new
> > binding file.
> >
> > Signed-off-by: James Hilliard <james.hilliard1@gmail.com>
>
> Thanks for your patch!
>
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/gpio/gpio-aggregator.yaml
> > @@ -0,0 +1,54 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/gpio/gpio-aggregator.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: GPIO aggregator controller
> > +
> > +maintainers:
> > +  - Alexander Stein <linux@ew.tq-group.com>
> > +
> > +description:
> > +  GPIO aggregator forwards selected GPIO lines from one or more GPIO
> > +  controllers and exposes them as a virtual GPIO controller.
>
> > +examples:
> > +  - |
> > +    #include <dt-bindings/gpio/gpio.h>
> > +
> > +    gpio_agg: gpio-aggregator {
> > +        compatible =3D "gpio-aggregator";
> > +        #gpio-cells =3D <2>;
> > +        gpio-controller;
> > +        gpios =3D <&gpio0 3 GPIO_ACTIVE_LOW>,
> > +                <&gpio3 1 GPIO_ACTIVE_HIGH>;
> > +        gpio-line-names =3D "modem-reset", "modem-enable";
> > +    };
>
> Looking at the example, it seems you intend to use the gpio-aggregator
> as a "Generic GPIO Driver", like in the example in the documentation[1].
> Hence I think you should not introduce and abuse the "gpio-aggregator"
> compatible value for this, but instead:
>   1. Use a proper compatible value that matches your device,
>   2. Write proper DT bindings for the device,
>   3. Add the proper device's compatible value to the gpio-aggregator
>      driver's match table.
> The above is very similar to how spidev is handled, which also forbids
> using the spidev compatible value in DTS.

Isn't this gpio-aggregator driver supposed to be non-hardware
specific?

I'm trying to use it as described here, I noticed the compatible
in the blog post was missing and just needed adding to the
driver: https://bootlin.com/blog/gpio-aggregator-a-virtual-gpio-chip/

> [1] https://docs.kernel.org/6.2/admin-guide/gpio/gpio-aggregator.html#gen=
eric-gpio-driver
> [2] https://docs.kernel.org/spi/spidev.html
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds

