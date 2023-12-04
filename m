Return-Path: <devicetree+bounces-21446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D25D803AF5
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 17:56:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 380CD1F20F8D
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 16:56:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EEC22D781;
	Mon,  4 Dec 2023 16:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="ASjPHTbz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C6ACB6
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 08:56:05 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-54ca339ae7aso2171391a12.3
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 08:56:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1701708964; x=1702313764; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O8E333mX0LWpYdsutAHYgoOIGzA9DDLQh7glRXD1fJM=;
        b=ASjPHTbzsw3mSaVveDOllrbzHJ7Bf3PvmYC5zwsWUKV+Eq37l0f4UZXNpApxdhVETJ
         mvmq02fml7DsMKWpcYl8g5/aDle4/cl2CrSLvvsPiWxSCaqqSJOcU8jaMlYMcDC/V9Bp
         wPXu2jsSJzQr47g660u79sKggUDtFJSol7IgM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701708964; x=1702313764;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O8E333mX0LWpYdsutAHYgoOIGzA9DDLQh7glRXD1fJM=;
        b=f2SKHPOwuCIL5FLzgI+KXt+ujP3uh7xI1lIeHNhwC9J/5lGBh8pxt5MQgCiwlfE5yg
         zkj2QobnVx/zC9zzUyucGT9MI8/nvhc0OQRyswt/I+q8kLLQNmxhekgp0z/gEsy2LDgu
         8toHVj1ylLq4J7oslETTqZP7AlaCP6dFlH/5PL6hnIB8OIU3kRMsbz4szRVV6PVX8/Kb
         c4w0vZRF4iKnbDo4Z9BX5/3IG8RO3aiV0YYw2EakLYlkRYwmtOxd00p9iQDvaF0SFH9X
         UL/QgQLAx2lzdruWNwJp7mVmb8XS2BXgzJQLnr1nuWR6tjn991G8w8UeQnhDuWLPs1+a
         E2+w==
X-Gm-Message-State: AOJu0YyUx/jvNdtSvMb8NlfyFlOacyhuix3x66kYHMDJIEzWhAbYv5pw
	g/PU/Z704fic+nzdWClTsz7XH1nlG+QBuhZs9ee3LWiN
X-Google-Smtp-Source: AGHT+IFyUj1NAHcjgOfDPGg9erRnAN+nNx064st5LJWpCTQdkZVFEJUgVq9s3x5LemdGqEFFQR3nIA==
X-Received: by 2002:a17:907:20e9:b0:a18:d0d5:baba with SMTP id rh9-20020a17090720e900b00a18d0d5babamr3330021ejb.24.1701708963991;
        Mon, 04 Dec 2023 08:56:03 -0800 (PST)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com. [209.85.128.42])
        by smtp.gmail.com with ESMTPSA id uz14-20020a170907118e00b009e5db336137sm5462848ejb.196.2023.12.04.08.56.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Dec 2023 08:56:03 -0800 (PST)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-40b367a0a12so101455e9.1
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 08:56:03 -0800 (PST)
X-Received: by 2002:a05:600c:5247:b0:405:320a:44f9 with SMTP id
 fc7-20020a05600c524700b00405320a44f9mr414355wmb.5.1701708616473; Mon, 04 Dec
 2023 08:50:16 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128084236.157152-1-wenst@chromium.org> <20231128084236.157152-5-wenst@chromium.org>
 <CAD=FV=W01gfxV6RN2o6CVS7jjf8qgKP-jUy9Bp94d2hWzVC48A@mail.gmail.com> <CAGXv+5E+R292XsOFSL-j0KJMmVJjWtxMRgCK8besP7mo6NDOWA@mail.gmail.com>
In-Reply-To: <CAGXv+5E+R292XsOFSL-j0KJMmVJjWtxMRgCK8besP7mo6NDOWA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 4 Dec 2023 08:50:01 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UQkAjgMuR85cPikNtCxsODWPWs7cibOcOoNGdjSSvF8Q@mail.gmail.com>
Message-ID: <CAD=FV=UQkAjgMuR85cPikNtCxsODWPWs7cibOcOoNGdjSSvF8Q@mail.gmail.com>
Subject: Re: [RFC PATCH v3 4/5] arm64: dts: mediatek: mt8173-elm-hana: Mark
 touchscreens and trackpads as fail
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
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

On Sun, Dec 3, 2023 at 10:59=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> On Sat, Dec 2, 2023 at 8:58=E2=80=AFAM Doug Anderson <dianders@chromium.o=
rg> wrote:
> >
> > Hi,
> >
> > On Tue, Nov 28, 2023 at 12:45=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.o=
rg> wrote:
> > >
> > > @@ -44,6 +46,7 @@ trackpad2: trackpad@2c {
> > >                 reg =3D <0x2c>;
> > >                 hid-descr-addr =3D <0x0020>;
> > >                 wakeup-source;
> > > +               status =3D "fail-needs-probe";
> >
> > While doing this, you could also remove the hack where the trackpad
> > IRQ pinctrl is listed under i2c4.
>
> Sure. I do think we can do away with it though. According to at least one
> schematic, the interrupt line has pull-ups on both sides of the voltage
> shifter.
>
> BTW, The touchscreen doesn't have pinctrl entries. This has pull-ups on
> both sides of the voltage shifter as well.

I dunno if the convention is different on Mediatek boards, but at
least on boards I've been involved with in the past we've always put
pinctrl entries just to make things explicit. This meant that we
didn't rely on the firmware/bootrom/defaults to leave pulls in any
particular state. ...otherwise those external pull-ups could be
fighting with internal pull-downs, right?

-Doug

