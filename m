Return-Path: <devicetree+bounces-2580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBBF17AB7DB
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 19:40:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1FD1A281074
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 17:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB2194369B;
	Fri, 22 Sep 2023 17:40:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF5E42BF8
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 17:40:31 +0000 (UTC)
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C72792
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:40:29 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-9adb9fa7200so640098766b.0
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1695404426; x=1696009226; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=P0nzhfFMBIaN0jk+ueWNm7W+C6jSfBGTglmiswQsQ04=;
        b=oCm5ja2N2A8gyGoUFl9kvs8frjuAXiSrqbeGPVfHxJfHUPOhX6gHJ+IMbp2kPVr0lt
         /nR2qulSkUQ+90PPKjDW+peVTHitk1jiP/C7nPdky8GkWMeyEnNNv7Z+IqEreVuLPkAa
         WgEn23EEgiKGoFMPWVOBHi1hNgeKaJq1ehSbM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695404426; x=1696009226;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=P0nzhfFMBIaN0jk+ueWNm7W+C6jSfBGTglmiswQsQ04=;
        b=sKuVt8XNg8YtLchCmJBhIeDS5NbxyKUqEFKTZ9ueA7nrQB5N1uxHn9uJlZvMkXjbyZ
         I3H7TZNZwpsFv7qXpJDAbmpKvpx9QvkXirowhy69gfQLtdJz9kiJS59GB1Fy+22C5yyj
         OZblqRYp8n/kYzBl5XVccvl8vf8OVjjkAdJj3g0Abqj0x3pnBEUcIw0a5fc4ySczAgrr
         EDj7QGaaNe4pstHqdhlTP98aQKSNrs0eiLgCTtv3Xk31zNgfbs09D4CBGZ4nS22iBked
         TVP96AYbPbfit/Vko1zD0yVdv2oqxhZUdgmnFozgtP+4Dz0JRfqtqh+GGWvyZ1kvYyBV
         /nDg==
X-Gm-Message-State: AOJu0YyA0FgWgjBLZMEqtUqc8KrzghnIiUUReykOvVfkx3Ukm2hvZqbt
	JZleRa/7hbH/KDyoDcwgBHDd3zp5tU+ZJP/nHKy3YUEj
X-Google-Smtp-Source: AGHT+IGyNwkFOEzPeit2OMVeB/nh7DNatXQLw4SUlmlCUomthyo7JmqxZ+/zBFlXQ026s0KzTmQT3g==
X-Received: by 2002:a17:907:a428:b0:9a9:405b:26d1 with SMTP id sg40-20020a170907a42800b009a9405b26d1mr4430511ejc.5.1695404426146;
        Fri, 22 Sep 2023 10:40:26 -0700 (PDT)
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com. [209.85.208.42])
        by smtp.gmail.com with ESMTPSA id z21-20020a1709063a1500b0099d0c0bb92bsm2992054eje.80.2023.09.22.10.40.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Sep 2023 10:40:25 -0700 (PDT)
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-53368df6093so1338a12.1
        for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 10:40:25 -0700 (PDT)
X-Received: by 2002:a50:f61d:0:b0:52e:f99a:b5f8 with SMTP id
 c29-20020a50f61d000000b0052ef99ab5f8mr6207edn.7.1695404424779; Fri, 22 Sep
 2023 10:40:24 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921102420.RFC.1.I9dddd99ccdca175e3ceb1b9fa1827df0928c5101@changeid>
 <CAL_Jsq+noP32-m5xdUCLFPFBXLxX9Ys1BNFM+9sga6KYTmDzqQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+noP32-m5xdUCLFPFBXLxX9Ys1BNFM+9sga6KYTmDzqQ@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 22 Sep 2023 10:40:07 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WXxGhX0Fw2nSS7PxYb1O-LUewAhoUVPn=2EpbSD2OeHQ@mail.gmail.com>
Message-ID: <CAD=FV=WXxGhX0Fw2nSS7PxYb1O-LUewAhoUVPn=2EpbSD2OeHQ@mail.gmail.com>
Subject: Re: [RFC PATCH] of: device: Support 2nd sources of probeable but
 undiscoverable devices
To: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
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
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Fri, Sep 22, 2023 at 7:14=E2=80=AFAM Rob Herring <robh+dt@kernel.org> wr=
ote:
>
> > Let's attempt to do something better. Specifically, we'll allow
> > tagging nodes in the device tree as mutually exclusive from one
> > another. This says that only one of the components in this group is
> > present on any given board. To make it concrete, in my proposal this
> > looks like:
> >
> >   / {
> >     tp_ex_group: trackpad-exclusion-group {
> >     };
>
> Interesting way to just get a unique identifier. But it could be any
> phandle not used by another group. So just point all the devices in a
> group to one of the devices in the group.

Fair enough.


> >   &i2c_bus {
> >     tp1: trackpad@10 {
> >       ...
> >       mutual-exclusion-group =3D <&tp_ex_group>;
> >     };
> >     tp2: trackpad@20 {
> >       ...
> >       mutual-exclusion-group =3D <&tp_ex_group>;
> >     };
> >     tp3: trackpad@30 {
> >       ...
> >       mutual-exclusion-group =3D <&tp_ex_group>;
> >     };
> >   };
> >
> > In Linux, we can make things work by simply only probing one of the
> > devices in the group at a time. We can make a mutex per group and
> > enforce locking that mutex around probe. If the first device that gets
> > the mutex fails to probe then it won't try again. If it succeeds then
> > it will acquire the shared resources and future devices (which we know
> > can't be present) will fail to get the shared resources. Future
> > patches could quiet down errors about failing to acquire shared
> > resources or failing to probe if a device is in a
> > mutual-exclusion-group.
>
> This seems like overkill to me. Do we really need groups and a mutex
> for each group? Worst case is what? 2-3 groups of 2-3 devices?
> Instead, what about extending "status" with another value
> ("fail-needs-probe"? (fail-xxx is a documented value)). Currently, the
> kernel would just ignore nodes with that status. Then we can process
> those nodes separately 1-by-1.

My worry here is that this has the potential to impact boot speed in a
non-trivial way. While trackpads and touchscreens _are_ probable,
their probe routines are often quite slow. This is even mentioned in
Dmitry's initial patches adding async probe to the kernel. See commit
765230b5f084 ("driver-core: add asynchronous probing support for
drivers") where he specifically brings up input devices as examples.

It wouldn't be absurd to have a system that has multiple sources for
both the trackpad and the touchscreen. If we have to probe each of
these one at a time then it could be slow. It would be quicker to be
able to probe the trackpads (one at a time) at the same time we're
probing the touchscreens (one at a time). Using the "fail-needs-probe"
doesn't provide information needed to know which devices conflict with
each other. IMO this is still better than nothing, but it worries me
to pick the less-expressive solution for the dts which means that the
information simply isn't there and the OS can't be made better later.

Thinking about this more, I guess even my proposed solution isn't
ideal for probe speed. Let's imagine that we had:

  &i2c_bus {
    tp1: trackpad@10 {
      compatible =3D "hid-over-i2c";
      reg =3D <0x10>;
      post-power-on-delay-ms =3D <200>;
      ...
      mutual-exclusion-group =3D <&tp1>;
    };
    tp2: trackpad@20 {
      compatible =3D "hid-over-i2c";
      reg =3D <0x20>;
      post-power-on-delay-ms =3D <200>;
      ...
      mutual-exclusion-group =3D <&tp1>;
    };
  };

With my solution, we'd power the first device up, wait 200 ms, then
check to see if anything acks an i2c xfer at address 0x10. If it
didn't, we'd power down. Then we'd power up the second device
(presumably the same power rail), wait 200 ms, and check to see if
anything acks an i2c xfer at 0x20. It would have been better to just
power up once, wait 200 ms, then check for a device at either 0x10 or
0x20.

I guess with more complex touchscreens this could be more important. I
don't know if we need to try to solve it at this point, but I guess I
could imagine a case where we truly need to take into account all
possible devices (maybe taking the maximum of delays?) to ensure we
don't violate power sequencing requirements for any of them while
probing.

That would lead me to suggest this:

  &i2c_bus {
    trackpad-prober {
      compatible =3D "mt8173-elm-hana-trackpad-prober";

      tp1: trackpad@10 {
        compatible =3D "hid-over-i2c";
        reg =3D <0x10>;
        ...
        post-power-on-delay-ms =3D <200>;
      };
      tp2: trackpad@20 {
        compatible =3D "hid-over-i2c";
        reg =3D <0x20>;
        ...
        post-power-on-delay-ms =3D <200>;
      };
    };
  };

...but I suspect that would be insta-NAKed because it's creating a
completely virtual device ("mt8173-elm-hana-trackpad-prober") in the
device tree. I don't know if there's something that's functionally
similar that would be OK?

-Doug

