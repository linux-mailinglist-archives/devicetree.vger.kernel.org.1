Return-Path: <devicetree+bounces-1494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2B267A6A86
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 20:16:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0750281728
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 18:16:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9622C2E63D;
	Tue, 19 Sep 2023 18:16:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29F7F27718
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 18:16:10 +0000 (UTC)
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61E679E
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 11:16:08 -0700 (PDT)
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-5310aec4121so3305758a12.2
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 11:16:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695147366; x=1695752166; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZXJATLGe/WfIktgoMPXg04Y8kCGTEYPfQUQyvrst4q0=;
        b=DGZRsWzeGzwUjlKOUpw8mGGfM7DlU1NPR0GDE2Y48D3CNJ4TT57/V6Nnj245lHbDoy
         HLJn76Ra5OdF0DtB44XuZIuBe1QhlhI/iXIiKb67IHpFfkThBv1XdZJI1hwUMld7OAFk
         Ui5ddmBd838Vgdb2LZgQQJAUnaw/ThxrwHKT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695147366; x=1695752166;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZXJATLGe/WfIktgoMPXg04Y8kCGTEYPfQUQyvrst4q0=;
        b=f4gfdwyNatrhhX+qGfKfxUSKVIJ5XMYvxNP3rOiAaaxIjzMK2VNIn1ItBUrtiXWjfC
         w2cWDC5rlSKN1qgL+ZoKMWkO5/VYsiK9ypTdw2Yg96hY/pIln7F16nJVPyBfLXiYKNlM
         lWQi5Wd809DpH2H+ZIRY89s3g4UooJ6ZCYRU5KKjdtZtxU01vLAPubxDpx+ojfL87jJg
         8pAr4+yJ1xfQouTwZ0TgBTRnbC4HXKKT7/cXD3BQEG5bb4iNaN4pkPR3Sez+ejblB3nV
         yxCg5i/ygSUA6GcWWxnXc+8WDgNi6dBKQHfwPiZfp7NKCqEF2GIKJOnkGsK5fKYk8gaE
         /w8g==
X-Gm-Message-State: AOJu0YyzYNOytp/+cYqu/xqXNqaX4fzKXsIWpIMo2ZdGrU1O8DyjRzjF
	aVjtfXC1NzIJmRIzwm3dPGBHdqxQQ5F9LGlKXBvJHhqL
X-Google-Smtp-Source: AGHT+IFeBlyyTeS3oXDmeE1ElhXpO3Yd38Yl7hRwcQOJow7mOmKEsvP13VF5bSDV6ia0oUN1OPsMBA==
X-Received: by 2002:aa7:cb94:0:b0:52f:fa53:9fb6 with SMTP id r20-20020aa7cb94000000b0052ffa539fb6mr216140edt.10.1695147365927;
        Tue, 19 Sep 2023 11:16:05 -0700 (PDT)
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com. [209.85.208.46])
        by smtp.gmail.com with ESMTPSA id v16-20020aa7d9d0000000b0052f3471ccf6sm7810924eds.6.2023.09.19.11.16.05
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Sep 2023 11:16:05 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-52fa364f276so2144a12.1
        for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 11:16:05 -0700 (PDT)
X-Received: by 2002:a50:d71b:0:b0:51a:1ffd:10e with SMTP id
 t27-20020a50d71b000000b0051a1ffd010emr3828edi.3.1695147364758; Tue, 19 Sep
 2023 11:16:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918125851.310-1-johan+linaro@kernel.org> <CAD=FV=Wfwvp-SbGrdO5VJcjG42njkApJPB7wnY-YYa1_-O0JWQ@mail.gmail.com>
 <ZQlIveJVdvyV2Ygy@hovoldconsulting.com>
In-Reply-To: <ZQlIveJVdvyV2Ygy@hovoldconsulting.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 19 Sep 2023 11:15:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XBG7auVVyHn5uvahSZZxp5qBfp4+A9NwFqahdN6XrbZA@mail.gmail.com>
Message-ID: <CAD=FV=XBG7auVVyHn5uvahSZZxp5qBfp4+A9NwFqahdN6XrbZA@mail.gmail.com>
Subject: Re: [PATCH] HID: i2c-hid: fix handling of unpopulated devices
To: Johan Hovold <johan@kernel.org>
Cc: Johan Hovold <johan+linaro@kernel.org>, Jiri Kosina <jikos@kernel.org>, 
	Benjamin Tissoires <benjamin.tissoires@redhat.com>, linux-input@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Maxime Ripard <mripard@kernel.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, LinusW <linus.walleij@linaro.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Tue, Sep 19, 2023 at 12:07=E2=80=AFAM Johan Hovold <johan@kernel.org> wr=
ote:
>
> > c) To solve this in the core, we have to make sure we properly handle
> > (without hanging/failing) multiple partially-conflicting devices and
> > devices that might acquire resources in arbitrary orders.
> >
> > Though the above solution detecting the pinctrl conflicts sounds
> > appealing and I'm currently working on prototyping it, I'm still not
> > 100% convinced. I'm worried about the above downsides.
>
> Yes, I agree that we'd need to take a broader look at this and not just
> focus on the immediate pinctrl issue.

OK. FWIW, I got blocked on trying to solve this in the core
automatically by just using the conflicting "pinctrl" entries. There
are probably some ways to get it solved, but none of them are easy.


> > Personally, I feel like we could add information to the device tree
> > that would help us out. The question is: is this an abuse of device
> > tree for something that Linux ought to be able to figure out on its
> > own, or is it OK? To make it concrete, I was thinking about something
> > like this:
> >
> > / {
> >   tp_ex_group: trackpad-exclusion-group {
> >     members =3D <&tp1>, <&tp2>, <&tp3>;
> >   };
> > };
> >
> > &i2c_bus {
> >   tp1: trackpad@10 {
> >     ...
> >     mutual-exclusion-group =3D <&tp_ex_group>;
> >   };
> >   tp2: trackpad@20 {
> >     ...
> >     mutual-exclusion-group =3D <&tp_ex_group>;
> >   };
> >   tp3: trackpad@30 {
> >     ...
> >     mutual-exclusion-group =3D <&tp_ex_group>;
> >   };
> > };
> >
> > Then the device core would know not to probe devices in the same
> > "mutual-exclusion-group" at the same time.
> >
> > If DT folks are OK with the "mutual-exclusion-group" idea then I'll
> > probably backburner my attempt to make this work on the pinctrl level
> > and go with that.
>
> I expressed something along these lines in the thread above:

I'm going to try coding up the above to see how it looks. Assuming
nothing comes up, I'll try to have something in the next few days.


>         It seems we'd need some way to describe the devices as mutually
>         exclusive...
>
> but given that we had prior art for handling simple cases and due to
> lack of time, I left it on the ever-growing todo list.
>
> But regardless of what a long-term proper solution to this may look
> like, we need to fix the regression in 6.6-rc1 by restoring the old
> behaviour.

OK, fair enough. I'll take a look at your patch, though I think the
person that really needs to approve it is Benjamin...

Style-wise, I will say that Benjamin really wanted to keep the "panel
follower" code out of the main probe routine. Some of my initial
patches adding "panel follower" looked more like the results after
your patch but Benjamin really wasn't happy until there were no
special cases for panel-followers in the main probe routine. This is
why the code is structured as it is.

Thinking that way, is there any reason you can't just move the
i2c_hid_init_irq() into __do_i2c_hid_core_initial_power_up()? You
could replace the call to enable_irq() with it and then remove the
`IRQF_NO_AUTOEN` flag? I think that would also solve the issue if you
wanted to use a 2nd source + the panel follower concept? Both devices
would probe, but only one of them would actually grab the interrupt
and only one of them would actually create real HID devices. We might
need to do some work to keep from trying again at every poweron of the
panel, but it would probably be workable? I think this would also be a
smaller change...

-Doug

