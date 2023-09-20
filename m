Return-Path: <devicetree+bounces-1835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7E657A88A7
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 17:41:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8580328280E
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 15:41:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 62DBE3C68E;
	Wed, 20 Sep 2023 15:41:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E3F629A1
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 15:41:35 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3091ACE
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:41:33 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-532eb2a1bf8so1366084a12.0
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695224490; x=1695829290; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EAVZwZY6Red0SzFg3/27+a2u7OVzpu44i6DSKuOG/rg=;
        b=bnG/8iPqcH24EtJtJoFUsMlVvYJ2WviQr9T5jjdxE4JhOnFULoS0Kqc2Xj4aKihl/W
         kZXsuZF1fTf+7D/4RZTRgrx/0KSsj0oeedKzgSZicvDBhPhsDUzVIBlDMBO9vDAbWN2t
         YcGxDcmRCvHIDRdwzNAPXZt9RUq45C/QYkqEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695224490; x=1695829290;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EAVZwZY6Red0SzFg3/27+a2u7OVzpu44i6DSKuOG/rg=;
        b=AuFop/fVEz5As71wu4NzZ5GX0zXVV0/GNz23HAXfsW0IkjaFXNt6UOXsRJ/VSCdwQR
         TRlzklnb47db0YwHWhqL2DOUl+DNNIcHMDXIZR3IZBpXD0nyyQPuEyRIUzMsHNiA5djp
         Jx3vO1y0G8rkWrZdU1Fd2bfpf8dCO2SmnpqaLb/CX8nkiwh23LoK1NWCe25pKAGAe65F
         DdG3YHmX+Vj4Bo8RXXqe4za82Uvz6R2/Du3KU3sHhN1NCK4r1YiCrEgzaqTPwhbHUhse
         FGp7cHZBsgRD/EJyd1i5s7z1ipxiQ8Qecky7oWQoABqpyrE9piR7zbgpQXjnM4I0ZyjY
         tqjQ==
X-Gm-Message-State: AOJu0YyRwmDIqf3+Ga5nrymMzM1fjcVn0JSD6DTcpHVtsd5cE49k+Ewl
	9A7tnhTkgUQp3ZcEk2BP6O6riVzJZh36RA7QvAc+U3ni
X-Google-Smtp-Source: AGHT+IE7g3FZ/hFucFivCL0PP4q7dldiWm11IUsYNkGAOIJIA/qj5jjYe0K1f80aD5Gd+JSZl2ACKg==
X-Received: by 2002:a05:6402:2296:b0:533:2327:1eed with SMTP id cw22-20020a056402229600b0053323271eedmr730847edb.24.1695224489966;
        Wed, 20 Sep 2023 08:41:29 -0700 (PDT)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com. [209.85.128.51])
        by smtp.gmail.com with ESMTPSA id fd14-20020a056402388e00b005307e75d24dsm7885422edb.17.2023.09.20.08.41.28
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 08:41:29 -0700 (PDT)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4009fdc224dso106205e9.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:41:28 -0700 (PDT)
X-Received: by 2002:a05:600c:1c98:b0:400:c6de:6a20 with SMTP id
 k24-20020a05600c1c9800b00400c6de6a20mr85931wms.3.1695224488496; Wed, 20 Sep
 2023 08:41:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918125851.310-1-johan+linaro@kernel.org> <CAD=FV=Wfwvp-SbGrdO5VJcjG42njkApJPB7wnY-YYa1_-O0JWQ@mail.gmail.com>
 <ZQlIveJVdvyV2Ygy@hovoldconsulting.com> <CAD=FV=XBG7auVVyHn5uvahSZZxp5qBfp4+A9NwFqahdN6XrbZA@mail.gmail.com>
 <ZQqemN8P2VKgxhsV@hovoldconsulting.com>
In-Reply-To: <ZQqemN8P2VKgxhsV@hovoldconsulting.com>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 20 Sep 2023 08:41:12 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XK87TZuPy+d2r2g5QhowmghE-m9pGHe9-X7jnXAw9z1g@mail.gmail.com>
Message-ID: <CAD=FV=XK87TZuPy+d2r2g5QhowmghE-m9pGHe9-X7jnXAw9z1g@mail.gmail.com>
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Wed, Sep 20, 2023 at 12:26=E2=80=AFAM Johan Hovold <johan@kernel.org> wr=
ote:
>
> On Tue, Sep 19, 2023 at 11:15:46AM -0700, Doug Anderson wrote:
> > On Tue, Sep 19, 2023 at 12:07=E2=80=AFAM Johan Hovold <johan@kernel.org=
> wrote:
>
> > > But regardless of what a long-term proper solution to this may look
> > > like, we need to fix the regression in 6.6-rc1 by restoring the old
> > > behaviour.
> >
> > OK, fair enough. I'll take a look at your patch, though I think the
> > person that really needs to approve it is Benjamin...
> >
> > Style-wise, I will say that Benjamin really wanted to keep the "panel
> > follower" code out of the main probe routine. Some of my initial
> > patches adding "panel follower" looked more like the results after
> > your patch but Benjamin really wasn't happy until there were no
> > special cases for panel-followers in the main probe routine. This is
> > why the code is structured as it is.
>
> Ok, I prefer not hiding away things like that as it obscures what's
> really going on, for example, in this case, that you register a device
> without really having probed it.

I can see your reasoning and I think that intuition is why the earlier
versions of my patches had explicit "panel follower" logic in probe.
However, Benjamin really liked the logic abstracted out.


> As I alluded to in the commit message, you probably want to be able to
> support second-source touchscreen panel followers as well at some point
> and then deferring checking whether device is populated until the panel
> is powered on is not going to work.

Yeah, I've been pondering this too. I _think_ it would work OK-ish if
both devices probed and then only one of the two would actually make
the sub-HID devices. So you'd actually see both devices succeed at
probing but only one of them would actually be functional. It's a bit
ugly, though. :(  Maybe marginally better would be if we could figure
out how to have the device which fails to get its interrupt later
unbind itself, if that's possible...

The only other thought I had would be to have the parent i2c bus
understand that it had children that were panel followers, which it
should be able to do by seeing the "panel" attribute in their device
tree. Then the i2c bus could itself register as a panel follower and
could wait to probe its children until they were powered on. This
could happen in the i2c core so we didn't have to add code like this
to all i2c bus drivers. ...and, if necessary, we could add this to
other busses like SPI. It feels a little awkward but could work.


> I skimmed the thread were you added this, but I'm not sure I saw any
> reason for why powering on the panel follower temporarily during probe
> would not work?

My first instinct says we can't do this, but let's think about it...

In general the "panel follower" API is designed to give all the
decision making about when to power things on and off to the panel
driver, which is controlled by DRM.

The reason for this is from experience I had when dealing with the
Samsung ATNA33XC20 panel that's on "sc7180-trogdor-homestar". The TCON
on that panel tended to die if you didn't sequence it just right.
Specifically, if you were sending pixels to the panel and then stopped
then you absolutely needed to power the panel off and on again. Folks
I talked to even claimed that the panel was working "to spec" since,
in the "Power Sequencing" section of the eDP spec it clearly shows
that you _must_ turn the panel off and on again after you stop giving
it bits. ...this is despite the fact that no other panel I've worked
with cares. ;-)

On homestar, since we didn't have the "panel follower" API, we ended
up adding cost to the hardware and putting the panel and touchscreens
on different power rails. However, I wanted to make sure that if we
ran into a similar situation in the future (or maybe if we were trying
to make hardware work that we didn't have control over) that we could
solve it.

The other reason for giving full control to the panel driver is just
how userspace usually works. Right now userspace tends to power off
panels if they're not used (like if a lid is closed on a laptop) but
doesn't necessarily power off the touchscreen. Thus if the touchscreen
has the ability to keep things powered on then we'd never get to a low
power state.

The above all explains why panel followers like the touchscreen
shouldn't be able to keep power on. However, you are specifically
suggesting that we just turn the power on temporarily during probe. As
I think about that, it might be possible? I guess you'd have to
temporarily block DRM from changing the state of the panel while the
touchscreen is probing. Then if the panel was off then you'd turn it
on briefly, do your probe, and then turn it off again. If the panel
was on then by blocking DRM you'd ensure that it stayed on. I'm not
sure how palatable that would be or if there are any other tricky
parts I'm not thinking about.


> > Thinking that way, is there any reason you can't just move the
> > i2c_hid_init_irq() into __do_i2c_hid_core_initial_power_up()? You
> > could replace the call to enable_irq() with it and then remove the
> > `IRQF_NO_AUTOEN` flag? I think that would also solve the issue if you
> > wanted to use a 2nd source + the panel follower concept? Both devices
> > would probe, but only one of them would actually grab the interrupt
> > and only one of them would actually create real HID devices. We might
> > need to do some work to keep from trying again at every poweron of the
> > panel, but it would probably be workable? I think this would also be a
> > smaller change...
>
> That was my first idea as well, but conceptually it is more correct to
> request resources at probe time and not at some later point when you can
> no longer fail probe.
>
> You'd also need to handle the fact that the interrupt may never have
> been requested when remove() is called, which adds unnecessary
> complexity.

I don't think it's a lot of complexity, is it? Just an extra "if" statement=
...

-Doug

