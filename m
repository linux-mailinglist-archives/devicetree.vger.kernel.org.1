Return-Path: <devicetree+bounces-95489-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 491AE959940
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 13:13:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F03432862E6
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2024 11:13:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F6231FE94C;
	Wed, 21 Aug 2024 09:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BssnrX8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A2E1FE928
	for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 09:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724233479; cv=none; b=grWKNFA/GxydxUqUEbZd2539EUxEFUnXhpBFTYoEGN9q5Gv17iUcX154P9DkpEwq7ehUziiUAzAVrKqfouwaqlnFGMd8cPw29jPNJbrJcKC+yp9zry8tYKoQgeQdRfuF5ICCezVnspgi8tvTsUWX/0Uzz46A5DFOnruuX9MwvXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724233479; c=relaxed/simple;
	bh=nTfIEiEh7aEGVGpH7xAc7lbQSCKZzIgXwuDAF/DWtzs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J6Qi+1vmonJqNb/GM4gpw2MrFWCM4edYF4CBkhXZglEzUexv1K81A4IO2Q0WGHUYOkBbF/1AQnaUl/j+BqtqZB37QWzzK0RMWMccG4NhjUCCwHSuCMq4SeeqIdTA/Ha9s8PldK7+w6sGJcrj+j4jlnoqOncvm99bl6lC6hwi/4Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=BssnrX8p; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-53343bf5eddso2236032e87.1
        for <devicetree@vger.kernel.org>; Wed, 21 Aug 2024 02:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1724233476; x=1724838276; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pd9R2BtSpz2B9c9jyjlMoM0npRj2Rg5g58n45MgqLc4=;
        b=BssnrX8pZPJRDOmNzYujZ8pPH7gwmpDlwzgeBz2GEnFddOIzgdst6p5w5GoVvyMTeN
         UWFF+R5vf4oLd0fbIefeaFvYVXimXpimGrFEB9ArH41OLYmOPgZRzgvT0PdoBSXbkc+d
         Y21EwHyg1pRmLP66OZuxd15/bINVnAnooVpPE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724233476; x=1724838276;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Pd9R2BtSpz2B9c9jyjlMoM0npRj2Rg5g58n45MgqLc4=;
        b=OoXsuYrjlRWk7o35v8XkstUyMiEDtc9dL+AS4ZFm9HWwp05iwMHevjQCskQ7wfQy9c
         eBlBbUhqb4NdOuGjIlrE93aVFS1VEoxyhUS7NN3ardC5/9oy7CLczwvOrPj9LQkjNaJK
         oVs1YivEmXlHUA5OKOe7yM9oytTKeZ83RJNJh03QJflYpFEQwfVn6QFddFyUf3caBmFG
         Gj5iaUaBq3Tr78uCi+tcuOFyTDP2z6z77g0Dv6h/kFZliNTOUf44+E4DPSascs59VE7D
         7qeCFcwq/UtGOPj9hV5lmNyzmY7UojHhgOZTqByV9b/TBaT/esDIXPm95wghVB7BzIGE
         WnTw==
X-Forwarded-Encrypted: i=1; AJvYcCUjwTBFnH22jJeZNDbW6Rhe+KRu+kEwttz4nfyBFX9Zr1bjuHpyehCSRTPqtXChZzPflb2rs6oE8haH@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/zsYn3tSTJ7olE3mWuaa4lg3mvVmNcM8e+VYiMHxzkHqDmu06
	30VKXllLzqrlZM/yTNb7e7ogaaDHf79HT50yDbdQ6CdiyrXuPCgKhw8VCy4DDkE1ap+YULwUNH8
	//ANKH29J0lRe6E4kS34I/fBDSioTSgbQeR2F
X-Google-Smtp-Source: AGHT+IHhY6dI3RqHwGr9l8gj12r4VFfwNQxKcBk/M2NGqz66PkHLDfNBVqtGhQPRqhnQgZBfqJS7KlhG99qWQPbELiI=
X-Received: by 2002:a05:6512:ea0:b0:533:88d:48ca with SMTP id
 2adb3069b0e04-53348596bc7mr1065694e87.55.1724233475599; Wed, 21 Aug 2024
 02:44:35 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240808095931.2649657-1-wenst@chromium.org> <20240808095931.2649657-5-wenst@chromium.org>
 <ZrtGXfKE6BwupPPA@smile.fi.intel.com> <CAGXv+5E+D8oXr7nh67HEPermJYoRp+Xf+oqSefOiUoCpyoKYUQ@mail.gmail.com>
 <Zry2vbJ-BT4mI0eO@smile.fi.intel.com>
In-Reply-To: <Zry2vbJ-BT4mI0eO@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 21 Aug 2024 17:44:24 +0800
Message-ID: <CAGXv+5HiZo=rbkrzmMf20fNeobuDYhNtv29Hjcp0WCte4y0SJA@mail.gmail.com>
Subject: Re: [PATCH v4 4/6] i2c: of-prober: Add GPIO and regulator support
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 14, 2024 at 9:53=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Wed, Aug 14, 2024 at 07:34:00PM +0800, Chen-Yu Tsai wrote:
> > On Tue, Aug 13, 2024 at 7:41=E2=80=AFPM Andy Shevchenko
> > <andriy.shevchenko@linux.intel.com> wrote:
> > > On Thu, Aug 08, 2024 at 05:59:27PM +0800, Chen-Yu Tsai wrote:
>
> ...
>
> > > > This adds GPIO and regulator management to the I2C OF component pro=
ber.
>
> > > Can this be two patches?
> >
> > You mean one for GPIOs and one for regulators right? Sure.
>
> Yes.
>
> ...
>
> > > > +#define RESOURCE_MAX 8
> > >
> > > Badly (broadly) named constant. Is it not the same that defines argum=
ents in
> > > the OF phandle lookup? Can you use that instead?
> >
> > I'm not sure what you are referring to. This is how many unique instanc=
es
> > of a given resource (GPIOs or regulators) the prober will track.
> >
> > MAX_TRACKED_RESOURCES maybe?
>
> Better, but still ambiguous. We have a namespace approach, something like
> I2C_PROBER_... I have checked the existing constant and it's not what you
> want, so forget about that part, only name of the definition is questiona=
ble.
>
> ...
>
> > > > +#define REGULATOR_SUFFIX "-supply"
> > >
> > > Name is bad, also move '-' to the code, it's not part of the suffix, =
it's a
> > > separator AFAICT.
> >
> > OF_REGULATOR_SUPPLY_SUFFIX then?
> >
> > Also, "supply" is not a valid property. It is always "X-supply".
> > Having the '-' directly in the string makes things simpler, albeit
> > making the name slightly off.
>
> Let's use proper SUFFIX and separator separately.
>
> #define I2C_PROBER_..._SUFFIX "supply"
>
> (or alike)
>
> ...
>
> > > > +     p =3D strstr(prop->name, REGULATOR_SUFFIX);
> > >
> > > strstr()?! Are you sure it will have no side effects on some interest=
ing names?
> > >
> > > > +     if (!p)
> > > > +             return 0;
> > >
> > > > +     if (strcmp(p, REGULATOR_SUFFIX))
> > > > +             return 0;
> > >
> > > Ah, you do it this way...
> > >
> > > What about
> >
> > About? (feels like an unfinished comment)
>
> Yes, sorry for that. Since you found a better alternative, no need to fin=
ish
> this part :-)
>
> > Looking around, it seems I could just rename and export "is_supply_name=
()"
> > from drivers/regulator/of_regulator.c .
>
> Even better!
>
> Something similar most likely can be done with GPIO (if not, we are alway=
s open
> to the ideas how to deduplicate the code).
>
> ...

I ended up reworking around of_regulator_bulk_get_all(). See below.

> > > > +#define GPIO_SUFFIX "-gpio"
> > >
> > > Bad define name, and why not "gpios"?
> >
> > "-gpio" in strstr() would match against both "foo-gpio" and "foo-gpios"=
.
> > More like laziness.
>
> And opens can of worms with whatever ending of the property name.
> Again, let's have something that GPIO library provides for everybody.

Ack.

> ...
>
> > > > +     ret =3D of_parse_phandle_with_args_map(node, prop->name, "gpi=
o", 0, &phargs);
> > > > +     if (ret)
> > > > +             return ret;
>
> (1)
>
> > > > +     gpiod =3D fwnode_gpiod_get_index(fwnode, con_id, 0, GPIOD_ASI=
S, "i2c-of-prober");
> > > > +     if (IS_ERR(gpiod)) {
> > > > +             of_node_put(phargs.np);
> > > > +             return PTR_ERR(gpiod);
> > > > +     }
> > >
> > > Try not to mix fwnode and OF specifics. You may rely on fwnode for GP=
IO completely.
> >
> > Well, fwnode doesn't give a way to identify GPIOs without requesting th=
em.
> >
> > Instead I think I could first request GPIOs exclusively, and if that fa=
ils
> > try non-exclusive and see if that GPIO descriptor matches any known one=
.
> > If not then something in the DT is broken and it should error out. Then
> > the phandle parsing code could be dropped.
>
> What I meant, the, e.g., (1) can be rewritten using fwnode API, but if yo=
u know
> better way of doing things, then go for it.
>
> > > > +     if (data->gpiods_num =3D=3D ARRAY_SIZE(data->gpiods)) {
> > > > +             of_node_put(phargs.np);
> > > > +             gpiod_put(gpiod);
> > > > +             return -ENOMEM;
> > > > +     }

After reworking around |struct gpio_descs|, i.e. gpio_*_array() APIs,
this ended up being the only bit that actually used the _array variant
with gpiod_put_array(). The other bits remained for-loop-based.

> ...
>
> > > > +     for (int i =3D data->regulators_num; i >=3D 0; i--)
> > > > +             regulator_put(data->regulators[i]);
> > >
> > > Bulk regulators?
> >
> > Bulk regulators API uses its own data structure which is not just an
> > array. So unlike gpiod_*_array() it can't be used in this case.
>
> But it sounds like a bulk regulator case...
> Whatever, it's Mark's area and he might suggest something better.

There's of_regulator_bulk_get_all(), which has had no users since it was
merged. It gets all supplies under one device node and gives a handle for
the bulk regulator API. After reworking it to do lookups directly from
DT, all the regulator stuff can be converted to the bulk regulator API.
There's no deduplication anymore, though it's not a huge problem given
that regulators are reference counted.

I'll do one last pass over the code and send out a new version tomorrow.

Thanks
ChenYu

