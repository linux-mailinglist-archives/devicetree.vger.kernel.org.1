Return-Path: <devicetree+bounces-5150-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D2E7B5709
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 74526282242
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 16:00:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F0841D693;
	Mon,  2 Oct 2023 16:00:52 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1683E182CF
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 16:00:50 +0000 (UTC)
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 227C6BD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:00:49 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9ae7383b7ecso732547566b.0
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 09:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696262445; x=1696867245; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O+6tSuZGsJ8MLmUkhQ/q6aX6p0H5mimnkA642RTbylo=;
        b=f4C2hTxCkxrb0R0Kf8tOr/+7s4xgm5l92EIxycloLqEtyB+khxf7KP9LlTybOhMCHQ
         qmoAhWw//iNt1r552BPZgpn8RM4WFEQmko/AOk5RtLRoFt5O0aBs0FW/JqG3wGTbBFdF
         yFfNiTdfe1/EUZYZQ4dWnXPdlEKjv0SanoRig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696262445; x=1696867245;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O+6tSuZGsJ8MLmUkhQ/q6aX6p0H5mimnkA642RTbylo=;
        b=Xt+P4IWcUEXrBQuTb08VUrEahTT90nz1h0Z5LksXgLzi7YmsCJgwOtWFW1xhZVzPYx
         nZTAXz+WlDyI9U2fbKvKiR10TwjY+YCSfVa2MpSi/jcqYyMAFsF9w86XNEl+pl9fiei3
         wPIV+9uRXEsG+5SAXfTbsJEL6nm26E6Va42SDOuP4muTeejaNwmzMG9K/map8SF3xyk0
         QAKGyQOxoDxPo7n5J9B29DQhWDZ84TTKoY23uX65It99hzLeyl3B53wOCquAUL1V1EAO
         hRKmeWrLHgwo++1DD0UExRNvVyoJwEBf4Mbo2N3+SGL/iTa+p73DfmqUkTqCMewkIWgi
         Qviw==
X-Gm-Message-State: AOJu0YxQ/Wv5G/c3rots/MKmZVFIP2GMJSeCy3N6TEjYEjY7lH82G2m1
	hzT6UOAcRLl7YZrXucVPohhhno/VQ0AAHih4MPbGtU3W
X-Google-Smtp-Source: AGHT+IGidsNxY0Joi1G2XZO42VIwi5ivnneNZya+BsMnEuhkuxVvPsJ8dFYbaqcVPrHVj/Qv5ZqOBw==
X-Received: by 2002:a17:907:c24:b0:9a1:8993:9532 with SMTP id ga36-20020a1709070c2400b009a189939532mr60742ejc.30.1696262445054;
        Mon, 02 Oct 2023 09:00:45 -0700 (PDT)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com. [209.85.208.44])
        by smtp.gmail.com with ESMTPSA id q26-20020a1709064c9a00b009ad87fd4e65sm17199925eju.108.2023.10.02.09.00.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 09:00:44 -0700 (PDT)
Received: by mail-ed1-f44.google.com with SMTP id 4fb4d7f45d1cf-537f07dfe8eso14917a12.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 09:00:44 -0700 (PDT)
X-Received: by 2002:a50:9b19:0:b0:522:4741:d992 with SMTP id
 o25-20020a509b19000000b005224741d992mr156294edi.4.1696262443982; Mon, 02 Oct
 2023 09:00:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230918125851.310-1-johan+linaro@kernel.org> <CAD=FV=Wfwvp-SbGrdO5VJcjG42njkApJPB7wnY-YYa1_-O0JWQ@mail.gmail.com>
 <ZQlIveJVdvyV2Ygy@hovoldconsulting.com> <CAD=FV=XBG7auVVyHn5uvahSZZxp5qBfp4+A9NwFqahdN6XrbZA@mail.gmail.com>
 <ZQqemN8P2VKgxhsV@hovoldconsulting.com> <CAD=FV=XK87TZuPy+d2r2g5QhowmghE-m9pGHe9-X7jnXAw9z1g@mail.gmail.com>
 <ZQ1Zm6ec9NuBvqpl@hovoldconsulting.com> <CAD=FV=USBJRzqxX9kBP8pp4LKRGpBee+jkHL=KmeQvyfBk2CVQ@mail.gmail.com>
 <ZRqzGA1F6JV-mlRL@hovoldconsulting.com> <CAD=FV=UHEeu3crTFEZDY+LDQZk07H8un7gCSs0jyCQJrGYkV=Q@mail.gmail.com>
 <ZRrmVN3Rbz9PY8FW@hovoldconsulting.com>
In-Reply-To: <ZRrmVN3Rbz9PY8FW@hovoldconsulting.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 2 Oct 2023 09:00:26 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WcUKPezcp2dUQHW2vhrvvdo9=GSAOeML1JPLhEyG3WqA@mail.gmail.com>
Message-ID: <CAD=FV=WcUKPezcp2dUQHW2vhrvvdo9=GSAOeML1JPLhEyG3WqA@mail.gmail.com>
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
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Mon, Oct 2, 2023 at 8:48=E2=80=AFAM Johan Hovold <johan@kernel.org> wrot=
e:
>
> > In any case, the fact that there is a shared power rail / shared power
> > sequence is because the hardware designer intended them to either be
> > both off or both on. Whenever I asked the EEs that designed these
> > boards about leaving the touchscreen on while turning the panel power
> > off they always looked at me incredulously and asked why I would ever
> > do that. Although we can work around the hardware by powering the
> > panel in order to allow the touchscreen to be on, it's just not the
> > intention.
>
> I hear you, but users sometimes want do things with their hardware which
> may not have originally been intended (e.g. your kiosk example).

...and they can. I don't think it's totally unreasonable for userspace
in this case to take into account that they need to keep the panel
powered on (maybe with the screen black and the backlight off) if they
want the touchscreen kept on. If I was coding up userspace it wouldn't
surprise me at all if the touchscreen stopped working when the panel
was off.

I will further note that there is actually hardware where it's even
more difficult. On the same sc7180-trogdor laptops (and others as
well) the USB webcam is _also_ powered by the same power rail. When
you power the screen off then the USB webcam deenumerates. When you
power the screen on then it shows back up. It would be really weird if
somehow the USB webcam driver needed a link to the panel to try to
keep it powered.


-Doug

