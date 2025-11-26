Return-Path: <devicetree+bounces-242242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 026F9C887F6
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 08:50:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B87473B2320
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 07:50:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2331E28152A;
	Wed, 26 Nov 2025 07:50:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com [209.85.160.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5C0270ED7
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 07:50:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764143417; cv=none; b=svBduiBc9JdAODAhpaoo6Lcs9G4arK2PTrG5/1s98nDS8NiBl9lnQbBUZHEDtbEpPhXjxs76AiXvgViQCNUPNGf0TanQZUkiTnBG3QNtm26UBRLgIqJl+A+ESVJyIdhAL+ImwS5yvppRhz+QBTgkUvWU+LVKc7/FCcPRvNrJTtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764143417; c=relaxed/simple;
	bh=bkzwoUtOm01P65u39y77xFFtdrAg9j2KRw6HRKGjyxE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p9Hm05NQo0TqHkRepmuBeFrCaFrOulqDZBaXDTnq8iFuOGPJslHo9auDEnRL6r7t9S/oVlDLWhs3t6rPNUemL3I099MEF9LB/Erl0cN+m90JWa47QxkRCeJfsj29mB21WEbbhHycqx28+8UpqtukBRo8JQH4yBV9kXrcZ21oeu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-4ed861eb98cso69031381cf.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:50:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764143414; x=1764748214;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yTYhQ3G63lU/atNAXCnWcO1/Wz+JDqjFVpYbXLbGHEE=;
        b=EIWE3jzD9fJaO2Ynu2GbYSjEAPVY9cmMY3ky1KgShDGSK9viTWtLYhy+F6ai5ZZ1WL
         2GtYmqYvRRBNWtt4jLILhaVE5NLa8RfdbUTr+jr40Q0O2TLWuFeByBIn9WlblUAYUKAB
         49L1pFvR7nuQ2vjk/nXamXiVu3h05vuZGkx67dn/uZ7yd8IewReeVaBXEE5wp4y6inzQ
         SeS7NwSeSWHKw5jPZO6ImL5PYk8EXSjqT8PUUlvYUV8fJKOqdCX9DaiP5YlSVob+2Vzo
         kvOnV4n72i0IYmFxf2yAW4lKbYrnvmuZz4wPVXDOXuquVZowD4GjnyNBG/OPpOsVzTD9
         7FHg==
X-Forwarded-Encrypted: i=1; AJvYcCVRy5794wZYAyh5j/Ssi0MteJCWgX7KUBL+E7/2EBq1cB0jTa52NsRCK5qOkwA1dMziiIkD4plHt3Xl@vger.kernel.org
X-Gm-Message-State: AOJu0YxC3uwARNkIip7IZD6xukhP41pd28/Y9uzFdHuAryD+kvGiWLsT
	mX9C8toQ3y3KziUk7+75CLe4xC+pSwbNWVkv0cZhM8aGKrhCNMPRQTdZ2Z3zJIHW
X-Gm-Gg: ASbGncvRM2U1t/K3oNME7YKE6iTLyPltSiY5jBysAqOW5C8BwzdB6Kame/pCbMQeGch
	gPOBaE5pGSvGML7L9vf1pg0dwpRdSVyWmaQ6C7+BSpoMRa9kFu2KmJCC5s67r8kTDbWpXKX3bXa
	5Q0mUO+8TOpVaMUPqzrMnwJ4/YRnp0Nxf8VAOS79BDoXkXIpkutiUcjrlgsqqn4cszpakl/JHvr
	ZQsBJYhGDSZH5OgMNWabvUYdjd13/aifstsrSycAGnAr5+9U5PRhFkEptGdJP9JJGQ72bhDeogB
	lW/qlTca0GnJN3VSdQCvyDJ9aVwiBtD2+1n7oGOGVUmL+vI6TQINIkCeK0GD53cBC8llKPedaJ4
	ZQXVRLn3sRc2SD/d7wqPuSXLfhYXUNBKEpgnveKRDSrbfrl0H4ETjnSpv542Bcw2r+JeT/+5EmK
	1ldnV41q1qNKpo7BKikI8+9wCA8e/zIgt8wg/pwWTpES55GftJqF2hAsfVF+dzDbzAh5o=
X-Google-Smtp-Source: AGHT+IEP9QxGeCygDhystErqI1pi0G86qtFdIsIWG8KHLmH02rTmXighie215MVs3hHaWp6BpBmq6A==
X-Received: by 2002:a05:622a:5ca:b0:4ee:18eb:feb6 with SMTP id d75a77b69052e-4ee58a44091mr235894051cf.11.1764143414362;
        Tue, 25 Nov 2025 23:50:14 -0800 (PST)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com. [209.85.222.180])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ee48d538f6sm122125641cf.10.2025.11.25.23.50.14
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Nov 2025 23:50:14 -0800 (PST)
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-8b22624bcdaso779777985a.3
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 23:50:14 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCW3crghfYjUY8OScNE6cqWnvvyeHsOAeq1YRAq8SvJfZoEj9IOCE1+LgglqozZxns03YkkfvztS7emk@vger.kernel.org
X-Received: by 2002:a05:6102:1484:b0:5db:d07c:218e with SMTP id
 ada2fe7eead31-5e1de4a7207mr6895254137.41.1764142991927; Tue, 25 Nov 2025
 23:43:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
 <89b6d61854e94966fc9781d5832b6c187c35b4de.1763737324.git.tommaso.merciai.xr@bp.renesas.com>
 <CAMuHMdXBbzTeiQJQWuUnJ_rRD1Zo=1TBOzrv4WbvC7whL1=E9w@mail.gmail.com> <aSXR2iEAKjxM8VOR@tom-desktop>
In-Reply-To: <aSXR2iEAKjxM8VOR@tom-desktop>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 26 Nov 2025 08:43:00 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVYvV8WXBKmQEMnw_qgMdoUDLreNJM3UqEtoZ29AR6NoA@mail.gmail.com>
X-Gm-Features: AWmQ_bninuJBRTizSxZYPmdtY-ViJHt3X5imX5OlC4FiWsDPZsFKFDX1UIJfnDk
Message-ID: <CAMuHMdVYvV8WXBKmQEMnw_qgMdoUDLreNJM3UqEtoZ29AR6NoA@mail.gmail.com>
Subject: Re: [PATCH v4 11/22] phy: renesas: rcar-gen3-usb2: Use mux-state for
 phyrst management
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Peter Rosin <peda@axentia.se>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, 
	Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Jonathan Cameron <jonathan.cameron@huawei.com>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

Hi Tommaso,

On Tue, 25 Nov 2025 at 16:57, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> On Tue, Nov 25, 2025 at 03:10:22PM +0100, Geert Uytterhoeven wrote:
> > On Fri, 21 Nov 2025 at 16:14, Tommaso Merciai
> > <tommaso.merciai.xr@bp.renesas.com> wrote:
> > > Add support for selecting the phyrst mux-state using the Linux mux
> > > subsystem in the R-Car Gen3 USB2 PHY driver. This ensures correct hardware
> > > initialization and integration with systems utilizing the mux-state device
> > > tree property.
> > >
> > > A temporary wrapper for optional muxes is introduced until native support
> > > is available in the multiplexer subsystem.
> > >
> > > Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

> > > --- a/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> > > +++ b/drivers/phy/renesas/phy-rcar-gen3-usb2.c
> > > @@ -938,11 +939,27 @@ static int rcar_gen3_phy_usb2_vbus_regulator_register(struct rcar_gen3_chan *cha
> > >         return rcar_gen3_phy_usb2_vbus_regulator_get_exclusive_enable(channel, enable);
> > >  }
> > >
> > > +/* Temporary wrapper until the multiplexer subsystem supports optional muxes */
> > > +static inline struct mux_state *
> > > +devm_mux_state_get_optional(struct device *dev, const char *mux_name)
> > > +{
> > > +       if (!of_property_present(dev->of_node, "mux-states"))
> > > +               return NULL;
> > > +
> > > +       return devm_mux_state_get(dev, mux_name);
> > > +}
> > > +
> > > +static void rcar_gen3_phy_mux_state_deselect(void *data)
> > > +{
> > > +       mux_state_deselect(data);
> > > +}
> > > +
> > >  static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
> > >  {
> > >         struct device *dev = &pdev->dev;
> > >         struct rcar_gen3_chan *channel;
> > >         struct phy_provider *provider;
> > > +       struct mux_state *mux_state;
> > >         int ret = 0, i, irq;
> > >
> > >         if (!dev->of_node) {
> > > @@ -1019,6 +1036,23 @@ static int rcar_gen3_phy_usb2_probe(struct platform_device *pdev)
> > >                 phy_set_drvdata(channel->rphys[i].phy, &channel->rphys[i]);
> > >         }
> > >
> > > +       mux_state = devm_mux_state_get_optional(dev, NULL);
> > > +       if (IS_ERR(mux_state)) {
> > > +               if (PTR_ERR(mux_state) == -EPROBE_DEFER)
> > > +                       return PTR_ERR(mux_state);
> > > +               mux_state = NULL;
> >
> > No need to set mux_state to NULL, as mux_state is not used below.
> >
> > However, shouldn't you propagate all errors up?
> > If the mux is not present, mux_state should already be NULL,
> > i.e. IS_ERR(mux_state) would be false.
> >
> > > +       } else {
> > > +               ret = mux_state_select(mux_state);
> >
> > This causes a crash on R-Car Gen3 and RZ/Five, as mux_state_select()
> > doesn't handle NULL pointers gracefully yet.
> >
> > Adding a check like
> >
> >     -       } else {
> >     +       } else if (mux_state) {
> >
> > fixes the issue.
>
> Thank you for checking this!
>
> Ack :)
> I will switch to:
>
>         mux_state = devm_mux_state_get_optional(dev, NULL);
>         if (IS_ERR(mux_state)) {
>                 return PTR_ERR(mux_state);
>         } else if (mux_state) {

Please no else after return.

>                 ret = mux_state_select(mux_state);
>                 if (ret)
>                         return dev_err_probe(dev, ret, "Failed to select USB mux\n");
>
>                 ret = devm_add_action_or_reset(dev, rcar_gen3_phy_mux_state_deselect,
>                                                mux_state);
>                 if (ret)
>                         return dev_err_probe(dev, ret,
>                                              "Failed to register USB mux state deselect\n");
>         }
>
> In v5.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

