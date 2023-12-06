Return-Path: <devicetree+bounces-22427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 630BE8075F0
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 18:01:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2813328184A
	for <lists+devicetree@lfdr.de>; Wed,  6 Dec 2023 17:01:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C7E1E49F6D;
	Wed,  6 Dec 2023 17:01:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="gifP1k+Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1554FD40
	for <devicetree@vger.kernel.org>; Wed,  6 Dec 2023 09:01:02 -0800 (PST)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-9fa45e75ed9so122904866b.1
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 09:01:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701882058; x=1702486858; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6USO49247dIS4iM67DLL61cvXhjKL/DNTtVy5lpNUks=;
        b=gifP1k+Yzp7gkRJYp3Qf8JR0NsdSk9TMYT3tUjwdFlsoGMB1N2eLoCEvr3nueaebuv
         KrCXYKLiT9PczYOOaXE+RVoroxIVV6KhLlO7ztvaEOXAvtY7SSBCdW+DHFQ6hiums/it
         AEL9S8JJ8S/Rln6btJCYdBplJgq7HNlHNbhns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701882058; x=1702486858;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6USO49247dIS4iM67DLL61cvXhjKL/DNTtVy5lpNUks=;
        b=c9aI8VFw4TNHHZwZLja+wHaZXX+VbBGNRwCzSGJNikLTV0vNB3I/8Xc5nah6qAAWLm
         FgxummX6R9RqfDN8O5nitBtWxEiy2GpL1ri35sEd3ScemiRVOvNm8QYEcMN5RglxZlBA
         ICQuz5mT0ytk0TcjCWE4sQaNTGiwDl6DndVVZmZ8XeGTe5d6u9V0jtcmm/3MsotKC5jB
         dI+TEhWahoiWeOYpxrznv52qmtexPC4/qLAOG+Z8t37UWIhHKMBi8HsIsnlAhs9q9dZQ
         ROhRiKJ6XBxNNwmKVHCnBBEzaZOpoH9VoC2mFr6t08VAj9wdl+gtVdRBFY9usF3j3rIp
         iUng==
X-Gm-Message-State: AOJu0YzAjMibGI6StdVvqb79GWv1fuW7QBu2TZjUBzY7p5t9QAXXueWp
	Zqc5Id0clH8RGWr3CGYkv+TbMIueCGhOQj0yi7sVzhrA
X-Google-Smtp-Source: AGHT+IH8bVCdb0J0y9jXpExYjIHArF8hqyWfdfhR/b2FhTzTBid01ICbFI5tc4fXQMWeJoRD/w0kzA==
X-Received: by 2002:a17:906:51cd:b0:a1e:5ea5:c5d2 with SMTP id v13-20020a17090651cd00b00a1e5ea5c5d2mr89774ejk.106.1701882058447;
        Wed, 06 Dec 2023 09:00:58 -0800 (PST)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com. [209.85.128.53])
        by smtp.gmail.com with ESMTPSA id gu12-20020a170906f28c00b00a1da72b8752sm163622ejb.212.2023.12.06.09.00.57
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Dec 2023 09:00:58 -0800 (PST)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40b35199f94so86725e9.0
        for <devicetree@vger.kernel.org>; Wed, 06 Dec 2023 09:00:57 -0800 (PST)
X-Received: by 2002:a05:600c:4e8d:b0:40b:33aa:a2b9 with SMTP id
 f13-20020a05600c4e8d00b0040b33aaa2b9mr101895wmq.4.1701882057134; Wed, 06 Dec
 2023 09:00:57 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128084236.157152-1-wenst@chromium.org> <20231128084236.157152-5-wenst@chromium.org>
 <CAD=FV=W01gfxV6RN2o6CVS7jjf8qgKP-jUy9Bp94d2hWzVC48A@mail.gmail.com>
 <CAGXv+5E+R292XsOFSL-j0KJMmVJjWtxMRgCK8besP7mo6NDOWA@mail.gmail.com>
 <CAD=FV=UQkAjgMuR85cPikNtCxsODWPWs7cibOcOoNGdjSSvF8Q@mail.gmail.com>
 <3700f05f-2411-4422-972f-f3df690efb84@collabora.com> <CAGXv+5G5fFTv8zn=YamSdccjuYemE5oKBqjb8CSyGzu9aMJ0eg@mail.gmail.com>
 <4b9ea82c-d1a4-47b6-ba03-346cfdedef05@collabora.com>
In-Reply-To: <4b9ea82c-d1a4-47b6-ba03-346cfdedef05@collabora.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 6 Dec 2023 09:00:40 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UMRRYieChp2+4Z6zxL-CSVZabiokuHH=qrnMMSmjNM2Q@mail.gmail.com>
Message-ID: <CAD=FV=UMRRYieChp2+4Z6zxL-CSVZabiokuHH=qrnMMSmjNM2Q@mail.gmail.com>
Subject: Re: [RFC PATCH v3 4/5] arm64: dts: mediatek: mt8173-elm-hana: Mark
 touchscreens and trackpads as fail
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>, Rob Herring <robh+dt@kernel.org>, 
	Frank Rowand <frowand.list@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
	andriy.shevchenko@linux.intel.com, Jiri Kosina <jikos@kernel.org>, 
	linus.walleij@linaro.org, broonie@kernel.org, gregkh@linuxfoundation.org, 
	hdegoede@redhat.com, james.clark@arm.com, james@equiv.tech, 
	keescook@chromium.org, rafael@kernel.org, tglx@linutronix.de, 
	Jeff LaBundy <jeff@labundy.com>, linux-input@vger.kernel.org, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Wed, Dec 6, 2023 at 2:02=E2=80=AFAM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Il 06/12/23 03:55, Chen-Yu Tsai ha scritto:
> > On Tue, Dec 5, 2023 at 6:22=E2=80=AFPM AngeloGioacchino Del Regno
> > <angelogioacchino.delregno@collabora.com> wrote:
> >>
> >> Il 04/12/23 17:50, Doug Anderson ha scritto:
> >>> Hi,
> >>>
> >>> On Sun, Dec 3, 2023 at 10:59=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.=
org> wrote:
> >>>>
> >>>> On Sat, Dec 2, 2023 at 8:58=E2=80=AFAM Doug Anderson <dianders@chrom=
ium.org> wrote:
> >>>>>
> >>>>> Hi,
> >>>>>
> >>>>> On Tue, Nov 28, 2023 at 12:45=E2=80=AFAM Chen-Yu Tsai <wenst@chromi=
um.org> wrote:
> >>>>>>
> >>>>>> @@ -44,6 +46,7 @@ trackpad2: trackpad@2c {
> >>>>>>                   reg =3D <0x2c>;
> >>>>>>                   hid-descr-addr =3D <0x0020>;
> >>>>>>                   wakeup-source;
> >>>>>> +               status =3D "fail-needs-probe";
> >>>>>
> >>>>> While doing this, you could also remove the hack where the trackpad
> >>>>> IRQ pinctrl is listed under i2c4.
> >>>>
> >>>> Sure. I do think we can do away with it though. According to at leas=
t one
> >>>> schematic, the interrupt line has pull-ups on both sides of the volt=
age
> >>>> shifter.
> >>>>
> >>>> BTW, The touchscreen doesn't have pinctrl entries. This has pull-ups=
 on
> >>>> both sides of the voltage shifter as well.
> >>>
> >>> I dunno if the convention is different on Mediatek boards, but at
> >>> least on boards I've been involved with in the past we've always put
> >>> pinctrl entries just to make things explicit. This meant that we
> >>> didn't rely on the firmware/bootrom/defaults to leave pulls in any
> >>> particular state. ...otherwise those external pull-ups could be
> >>> fighting with internal pull-downs, right?
> >>>
> >>
> >> MediaTek boards aren't special and there's no good reason for those to=
 rely on
> >> firmware/bootrom/defaults - so there is no good reason to avoid declar=
ing any
> >> relevant pinctrl entry.
> >
> > I think this should be migrated to use the proper GPIO bindings: the
> > GPIO_PULL_UP / GPIO_PULL_DOWN / GPIO_BIAS_DISABLE flags.
> >
> > But that's a different discussion.
> >
>
> 100% agreed.

I guess I'd need to see patches as an example to see how this looks,
but I'm at least slightly skeptical. In this case the GPIO is
indirectly specified via "interrupts". Would you add these flags to
the interrupts specifier, too? There's another potential pull as well
(PIN_CONFIG_BIAS_BUS_HOLD) as well as other pin configuration
(PIN_CONFIG_INPUT_DEBOUNCE, for instance). Do we try to fit all of
these into the GPIO / interrupt specifier?

Certainly I will admit that this is a complicated topic, but it seems
weird to say that we use pinctrl to specify pin configuration / pulls
for all pins except ones that are configured as GPIOs or GPIO
interrupts.

-Doug

