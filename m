Return-Path: <devicetree+bounces-16086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C5A9E7ED70C
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 23:14:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 46C95280FFC
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 22:14:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38AD1446C6;
	Wed, 15 Nov 2023 22:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="YvTmRIqj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B6B0E6
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:14:30 -0800 (PST)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9de7a43bd1aso23376266b.3
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:14:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700086468; x=1700691268; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7j0UAYPIEyb2tedNA0XGfDwr790N1opj1Plxr5EQ2oo=;
        b=YvTmRIqjfGYKKFRIZVsPI+NU3niiyeboFbWz9jDBBUPXp7kTsO1FF6+ZMnrBF+UztG
         3g0WCNVhLDKULc1cSodHGdv0wcgE/kihT7WuKuLxPGH7kgSCt6BCDIK9CBDh4eV3eU+B
         /cSSQ4nCl6aZsHNSR6baJcmxVvNJ9VBZ5oMMM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700086468; x=1700691268;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7j0UAYPIEyb2tedNA0XGfDwr790N1opj1Plxr5EQ2oo=;
        b=oOyZl0tp4HF0TFi6FM0itgZlHW8/HzRVB0QlqEGyFjm5vVZZLh3Qvi9+FGrPZh5+UR
         iJ9UwhzJaGXpDLmvskjPIFKf575jKQwU7I0ILydyZj6KI7a3G7ArIDamOt+f3IASv+I3
         ikWCzxENvWpLV+byKB20HLW49zqytO5lvozbs6Mp3+SMX8y+qi7gwJc9d3BZ/63lUwSB
         khmWqtCTnX6kFiBX4/VEGa40Z6AA6bWDR3kLuCuMn4rPYRu6FA/xSbvH1FFNEW9yf9p/
         U1ccsJrP8uxYtQZXMBja+Go/ZlnooysKyvQ2ANE/raQXqC5h40APokKUqTwvBtWk0WU+
         0ahw==
X-Gm-Message-State: AOJu0YzHWLLCz/wZhZcG7yzkmS6JWq4Z0DiyMN2WiQGSqbA9tOuqzHGZ
	kEDljGrWzyO3X2KKAXVcWTdCYn8RYv1GGUlWtbi7tGJX
X-Google-Smtp-Source: AGHT+IFO039FYH2W/1YoR2P3pagz+i6G2JzIUvK+JNxRdvvF8QBthwe+LfpD8BAgxFaHToN2c2q30w==
X-Received: by 2002:a17:907:7634:b0:9c7:5c46:3987 with SMTP id jy20-20020a170907763400b009c75c463987mr11199772ejc.63.1700086468215;
        Wed, 15 Nov 2023 14:14:28 -0800 (PST)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com. [209.85.208.43])
        by smtp.gmail.com with ESMTPSA id o18-20020a1709061d5200b009a1c05bd672sm7586363ejh.127.2023.11.15.14.14.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Nov 2023 14:14:28 -0800 (PST)
Received: by mail-ed1-f43.google.com with SMTP id 4fb4d7f45d1cf-54744e66d27so4961a12.0
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 14:14:28 -0800 (PST)
X-Received: by 2002:a05:600c:260c:b0:404:7462:1f87 with SMTP id
 h12-20020a05600c260c00b0040474621f87mr21266wma.6.1700086447481; Wed, 15 Nov
 2023 14:14:07 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231109100606.1245545-1-wenst@chromium.org> <859ac058-c50a-4eb8-99b6-3011ef4e7529@collabora.com>
 <CAL_JsqK64w3+r_LJZoh50PzAUcsvH6ahSDCqgSiKrD3LBAXE9g@mail.gmail.com>
 <CAD=FV=VUZy9DaZgKafSpXXopD5k8ExGSR97BjAqC5tupPoxNfQ@mail.gmail.com>
 <CAL_Jsq+puq20EWkQg1RTs2zfmh4DGbqz1krp+19c=wPXnLT5dA@mail.gmail.com>
 <CAD=FV=X-17COQ2-tycV1bSuCrGy7MJ88Un8nA-a-ODexvgi9TQ@mail.gmail.com> <CAL_JsqKR_YD6hm4Lv+OuCKms8Ha61BZRKUuiLYPgSkz3_3NCFA@mail.gmail.com>
In-Reply-To: <CAL_JsqKR_YD6hm4Lv+OuCKms8Ha61BZRKUuiLYPgSkz3_3NCFA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 15 Nov 2023 17:13:50 -0500
X-Gmail-Original-Message-ID: <CAD=FV=XO5VNuaVKwBHLQC1ukdpHQO0-XTaKnRM=rigbcdOytgQ@mail.gmail.com>
Message-ID: <CAD=FV=XO5VNuaVKwBHLQC1ukdpHQO0-XTaKnRM=rigbcdOytgQ@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/7] of: Introduce hardware prober driver
To: Rob Herring <robh+dt@kernel.org>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Chen-Yu Tsai <wenst@chromium.org>, Frank Rowand <frowand.list@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Hsin-Yi Wang <hsinyi@chromium.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, andriy.shevchenko@linux.intel.com, 
	Jiri Kosina <jikos@kernel.org>, linus.walleij@linaro.org, broonie@kernel.org, 
	gregkh@linuxfoundation.org, hdegoede@redhat.com, james.clark@arm.com, 
	james@equiv.tech, keescook@chromium.org, petr.tesarik.ext@huawei.com, 
	rafael@kernel.org, tglx@linutronix.de, Jeff LaBundy <jeff@labundy.com>, 
	linux-input@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Nov 15, 2023 at 4:35=E2=80=AFPM Rob Herring <robh+dt@kernel.org> wr=
ote:
>
> On Wed, Nov 15, 2023 at 2:45=E2=80=AFPM Doug Anderson <dianders@chromium.=
org> wrote:
> >
> > Hi,
> >
> > On Wed, Nov 15, 2023 at 2:28=E2=80=AFPM Rob Herring <robh+dt@kernel.org=
> wrote:
> > >
> > > > So if we're searching the whole device tree for "failed-needs-probe=
"
> > > > then we need to figure out which devices are related to each other.=
 If
> > > > a given board has second sources for MIPI panels, touchscreens, and
> > > > trackpads then we need to know which of the "failed-needs-probe"
> > > > devices are trackpads, which are touchscreens, and which are MIPI
> > > > panels. Do you have any suggestions for how we should do that? Mayb=
e
> > > > it was in some other thread that I missed? I guess we could have a
> > > > board-specific table mapping (compatible + node name + reg) to a
> > > > class, but that feels awkward.
> > >
> > > Node name is supposed to correspond to device class, so why not use
> > > that (no path or unit-address.) and nothing else (well, besides
> > > "status")?
> >
> > One problem is that I could imagine having two second source trackpads
> > that both have the same i2c address. That would give them the same
> > name, right? I guess you could maybe come up with some sort of suffix
> > rule? Like
> >
> > trackpad-1@10 {
> >   compatible =3D "elan,blah";
> >   ret =3D <0x10>;
> >   status =3D "failed-needs-probe";
> >   ...
> > }
> > trackpad-2@10 {
> >   compatible =3D "goodix,gt7375p";
> >   ret =3D <0x10>;
> >   status =3D "failed-needs-probe";
> >   ...
> > }
> >
> > Then I guess the class would be "trackpad"?
>
> That issue is somewhat orthogonal because it is not following the spec.

I'm not sure why you say it's orthogonal. The whole reason why we get
into the situation above is that we could have two devices, only one
of which is present (hence the status of "failed-needs-probe"), that
are the same type and have the same "reg" address.

Essentially the whole "failed-needs-probe" is extending the spec,
right? While extending the spec, we also need to talk about what to do
if some of the devices that we need to probe have the same class and
the same "reg".


> I'm not sure mixing the 2 styles of node names is a good idea. While
> not used too much, matching by node name does ignore the unit-address,
> but I'm not sure we could ignore a '-N'.
>
> I think our options are either add something to the unit-address or
> use i2c-mux binding. Adding to the unit-address is not unprecedented.
> I did that for some of the register bit level bindings where you have
> a node for different bits at the same address. The downside is
> unit-address is bus specific, so we'd have to add that for multiple
> buses. For the i2c-mux, it's perhaps a bit complex and I'm not sure
> what if anything you'd have to do to manage the mux that's not really
> there.

Somehow it feels weird to use an i2c-mux because there's no real mux
present, right? ...so this would be a virtual (bogus) device that
doesn't really exist in hardware.

...though I guess if the "mux" type binding is OK then maybe we just
use that as the HW prober, at least for i2c devices...

-Doug

