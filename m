Return-Path: <devicetree+bounces-4426-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CD7777B28CE
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 01:27:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id E21821C20935
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 23:27:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E57FE1945D;
	Thu, 28 Sep 2023 23:27:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14DC29CA58
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 23:27:12 +0000 (UTC)
Received: from mail-wr1-x42f.google.com (mail-wr1-x42f.google.com [IPv6:2a00:1450:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7062E19C
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:27:09 -0700 (PDT)
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-32008e339adso12534989f8f.2
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:27:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695943627; x=1696548427; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kzXr9frfCEIUWcjDMJGLPPctNew7UQMruDVGH/sn0ug=;
        b=IhhJtv5ZfrdDK4BrFT9/5BsQ5Xupf58WXCf6GNFRr2tohkcbjjgIuwq8+CbHujIUSD
         WfgtZUiC7IS891s0S2MEoLfVu2JcjQY45044iTYSxihOGKUDsmfNBaIZe+T9f+UzufqH
         rCciRfA0uzwhKyN7ql3MT7q980dqUiiTZecGc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695943627; x=1696548427;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kzXr9frfCEIUWcjDMJGLPPctNew7UQMruDVGH/sn0ug=;
        b=N4XP4AxdNOUwZKCLqPonb0mkMAxu+hqAdxnwbwGBIVLmHqcGp4J32hJV4DhMEyhJe3
         rXAEgTIQX//yPWzMGDpDmcNwCf1q8s8JcIGlkYwGAlIinIhyfyx1qxjLf8GGtEb3Nm/u
         MgIEJVwxZ6XYVWDd4wmcnCX6ji1n/OaWdGJrt72LnWaUCeFsUfzy8XHu0KNZE2wISBxY
         SrvMjQcUhGCHsiHPMZAgi1ltn3HGryUXOTk/vulf1Ht9ddejgYT5AkKaxMvAgXY/P3N1
         GVJIPoGVZ/uevufYLrzHGk7rE+1/hhBjtikc64qF5tG2fiqj6fLjrx9MvWzHZurs/15S
         SYTg==
X-Gm-Message-State: AOJu0YyGJZljTt1JtGYeM3/ieHZ05KIgwaUKCn9B/oS9jL3zZx37yhzp
	GX10h8EeUXwfGLjnbmYiuiLfNt+TdrGUIP88HqXd6glY
X-Google-Smtp-Source: AGHT+IGOwTgNhTpAinvWOzX6dECOSRz+Pj6Y7N0LYliO77S1TUyS2wNKtLvFnkH4UCvwfUqnTNJpjQ==
X-Received: by 2002:adf:ef90:0:b0:31a:d551:c2c0 with SMTP id d16-20020adfef90000000b0031ad551c2c0mr2353081wro.57.1695943627419;
        Thu, 28 Sep 2023 16:27:07 -0700 (PDT)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com. [209.85.128.49])
        by smtp.gmail.com with ESMTPSA id l7-20020aa7d947000000b00532eba07773sm10300571eds.25.2023.09.28.16.27.07
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Sep 2023 16:27:07 -0700 (PDT)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-4053f24c900so17035e9.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 16:27:07 -0700 (PDT)
X-Received: by 2002:a50:d61c:0:b0:51e:16c5:2004 with SMTP id
 x28-20020a50d61c000000b0051e16c52004mr502642edi.6.1695943288955; Thu, 28 Sep
 2023 16:21:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921102420.RFC.1.I9dddd99ccdca175e3ceb1b9fa1827df0928c5101@changeid>
 <CAL_Jsq+noP32-m5xdUCLFPFBXLxX9Ys1BNFM+9sga6KYTmDzqQ@mail.gmail.com>
 <CAD=FV=WXxGhX0Fw2nSS7PxYb1O-LUewAhoUVPn=2EpbSD2OeHQ@mail.gmail.com>
 <CAL_JsqKJyRJmwJzB1yew71Ld7BeMMat+rzhX9XtDtiFE8Dbvcw@mail.gmail.com>
 <CAD=FV=UgFzT0TW2WEV0Wmk05EXUad2EYhN2DcckAxE_Lw5gV1Q@mail.gmail.com>
 <ZROVSAoKF9bimnSP@nixie71> <CAD=FV=UR47x+t37B2+Myv0qvvOJMFxVe-Fj7js=-Ez2GWuDySg@mail.gmail.com>
 <CAL_JsqLohA20q4TpWQ=67Am-dwP43RXm-PPw5Crc4AdzBhTVoA@mail.gmail.com>
In-Reply-To: <CAL_JsqLohA20q4TpWQ=67Am-dwP43RXm-PPw5Crc4AdzBhTVoA@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 28 Sep 2023 16:21:16 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UjVAgT-febtj4=UZ2GQp01D-ern2Ff9+ODcHeQBOsdTQ@mail.gmail.com>
Message-ID: <CAD=FV=UjVAgT-febtj4=UZ2GQp01D-ern2Ff9+ODcHeQBOsdTQ@mail.gmail.com>
Subject: Re: [RFC PATCH] of: device: Support 2nd sources of probeable but
 undiscoverable devices
To: Rob Herring <robh+dt@kernel.org>
Cc: Jeff LaBundy <jeff@labundy.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, 
	Benjamin Tissoires <benjamin.tissoires@redhat.com>, Chen-Yu Tsai <wenst@chromium.org>, 
	linux-input@vger.kernel.org, Jiri Kosina <jikos@kernel.org>, 
	Hsin-Yi Wang <hsinyi@chromium.org>, linux-gpio@vger.kernel.org, linus.walleij@linaro.org, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, Johan Hovold <johan+linaro@kernel.org>, 
	andriy.shevchenko@linux.intel.com, broonie@kernel.org, frowand.list@gmail.com, 
	gregkh@linuxfoundation.org, hdegoede@redhat.com, james.clark@arm.com, 
	james@equiv.tech, keescook@chromium.org, linux-kernel@vger.kernel.org, 
	rafael@kernel.org, tglx@linutronix.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Thu, Sep 28, 2023 at 1:38=E2=80=AFPM Rob Herring <robh+dt@kernel.org> wr=
ote:
>
> > About the best you could do would be to add a board-specific driver
> > that understood that it could power up the rails, wait the maximum
> > amount of time that all possible touchscreens might need, and then
> > look for i2c ACKs. I'm still hoping to hear from Rob about how I would
> > get a board-specific driver to load on a DT system so I can
> > investigate / prototype this.
>
> foo_initcall()
> {
>   if (of_machine_is_compatible(...))
>     platform_device_create();
> }
>
> That chunk would have to be built in and if that's part of the driver
> module, autoloading wouldn't work.
>
> We could have a match table of board compatibles and driver names. I'm
> not worried about that list being big, so I'm happy to stick that in
> drivers/of/.

Ah, got it. So your proposal is that we don't add anything to the
device tree but we just probe the hardware manager based on the top
level compatible string. I guess it could work. It wouldn't mesh
amazingly well with the current Chromebook rev/sku stuff in the
top-level compatible without being a bit of a jumble. It could
probably work with some sort of wildcarding (I'd assume glob-style is
enough?). So essentially:

static const struct hw_prober_map[] {
  { .glob =3D "google,lazor*", .func =3D lazor_hw_prober_init },
  { .glob =3D "google,homestar*", .func =3D homestar_hw_prober_init },
  ...
};

for (i =3D 0; i < ARRAY_SIZE(hw_prober_map), i++) {
  if (of_machine_is_compatible_glob(hw_prober_map[i].glob)
    hw_prober_map[i].func();
}

If that got to be too big to be built-in then I guess we could always
figure out a way to move stuff to modules and have them auto-loaded.
For now the driver could be in
"drivers/platform/chrome/cros_hwprober.c" or something?


Hmmm, I guess one issue of doing this, though, is that it's going to
be more of a pain to find the DT nodes associated with the resources
we want to enable, right? Since there's no DT note associated with the
"HW prober" driver we don't just have phandles to them. Do we just use
the whole "status" concept and search the whole DT for
"fail-needs-probe" type statuses? Like if we have an elan vs. goodix
touchscreen and we have a realtek vs. synaptic trackpad then we have
statuses like:

status =3D "fail-needs-probe-touchscreen-elan";
status =3D "fail-needs-probe-touchscreen-goodix";
status =3D "fail-needs-probe-trackpad-realtek";
status =3D "fail-needs-probe-trackpad-synaptic";

...or did you have something else in mind? I'd rather not have the HW
prober driver need to hardcode full DT paths for the devices it's
looking for.


> > > This solution seems a bit confusing to me, and would require more edi=
ts
> > > to the dts each time a second source is added. It also means one woul=
d
> > > have to write a small platform driver for each group of devices, corr=
ect?
> >
> > No matter what we need to add something to the dts each time a second
> > source is added, right?
>
> That was my thought.

OK, cool.


> There is the case of the devices are almost the
> same, so we lie. That's what you are doing for displays IIRC.

Well, we used to do it for display, but it kept biting us. That's why
we created the generic "edp-panel", right? In any case, I'd tend to
keep it as one node per possible device and have HW prober just update
the status.


> > While it's true that we'd end up with some extra drivers, if we do it
> > correctly we don't necessarily need a driver for each group of devices
> > nor even a driver per board. If several boards have very similar
> > probing requirements then, even if they have unique "compatible"
> > strings they could still end up using the same Linux driver.
> >
> > I've actually been talking offline with folks on ChromeOS more about
> > this problem as well. Chen-Yu actually pointed at a patch series (that
> > never landed, I guess) that has some similar ideas [1]. I guess in
> > that case Hans was actually constructing device tree properties
> > manually in the driver. I was thinking more of having all of the
> > options listed in the device tree and then doing something that only
> > causes some of them to probe.
> >
> > If Rob was OK with it, I guess I could have some sort of top-level
> > "hwmanager" node like Hans did and then have phandle links to all the
> > hardware that are managed by it. Then I could just change those to
> > "okay"?
>
> That's really just making the mutex node link the other direction. The
> devices link to the common mutex node vs. the hwmanager node(s) links
> to all the devices. That's really just picking the paint colors.

I don't think the HW Manager concept is the same as the common mutex
at all, so I probably didn't explain it properly.

With the mutex approach the idea is that you simply keep probing each
device one at a time until one succeeds and the mutex keeps them all
from probing at the same time.

With the hardware manager approach you run a bit of board-specific
code that understands which devices are available and can probe for
them in a way that's safer and more efficient. It's safer because it
can take into account the timing requirements of all the possible
devices to ensure that none of their power sequences are violated.
Imagine two touchscreens that each have two power rails and a reset
line. The power sequences are:

TS1:
1. Power up VCC
2. Wait 0 ms (ensure ordering between VCC and VCCIO)
3. Power up VCCIO
4. Wait 100 ms
5. Deassert reset
6. Wait 50 ms.
7. Talk I2C

TS2:
1. Power up VCC
2. Wait 10 ms
3. Power up VCCIO
4. Wait 50 ms.
5. Deassert reset
6. Wait 100 ms
7. Talk I2C

With the "mutex" approach then when we try probing TS1 we'll violate
TS2's specs (not enough delay between VCC and VCCIO). When we try
probing TS2 we'll violate TS1's specs (not enough time between VCCIO
and deasserting reset).

With the a board-specific hardware manager we could know that, for all
possible touchscreens on this board, we can always safely probe for
them with:
1. Power up VCC
2. Wait 10 ms
3. Power up VCCIO
4. Wait 100 ms.
5. Deassert reset
6. Wait 100 ms
7. Talk I2C

Once we've realized which touchscreen is actually present then all
future power ons (like after suspend/resume) can be faster, but this
would be safer for the initial probe.

The above is not only safer but also more efficient. If, in the mutex
case, we probed TS1 first but actually had TS2 then we'd spend 100 +
50 + 10 + 50 + 100 =3D 310 ms. With the hardware manager we'd probe for
both touchscreens in step 7 and thus we'd only take 10 + 100 + 100 =3D
210 ms.

The issue with the hardware manager is that we'd then run the normal
driver probe and, unless we could somehow give it a hint, it would
need to re-run through the power sequence again. In your other
response you suggested that the normal driver could just detect that
its regulator was already on and it could skip the regulator power
sequence. I'm not convinced that's a reliable hint. If nothing else
there are some boards the touchscreen regulator is shared and/or
always-on but that doesn't mean someone has properly power sequenced
the "reset" GPIO. I feel like we'd want a more explicit hint, but
that's more something to solve in the Linux driver model and not
something to solve in DT bindings.


> > Ideally, though, this could somehow use device tree "overlays" I
> > guess. That seems like almost a perfect fit. I guess the issue here,
> > though, is that I'd want the overlays bundled together with the
> > original DT and then the board-specific "hardware prober" driver to
> > actually apply the overlays after probing. Does that seem sensible?
>
> BTW, there was an idea long ago from maintainer emeritus Likely to
> append overlays to the base DTB for the kernel to apply.
>
> How would that help you here? Are you going to have an overlay for
> each device that enables it? It's much easier to just call
> of_update_property() to change "status".

Ah, OK. Somehow I assumed that using overlays would be more palatable.
If it's OK to just update the property then that seems fine to me.

...although one other reason I thought to use overlays is I think you
mentioned there was code to make late-arriving devices probe, but I'm
sure that can be handled.

---

So I guess the overall summary is: I'm strongly leaning towards
prototyping the "HW prober" approach. Hopefully that sounds OK.

-Doug

