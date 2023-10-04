Return-Path: <devicetree+bounces-5827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E3E7B8101
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 15:33:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 494201F2267B
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 13:33:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3E2214AA9;
	Wed,  4 Oct 2023 13:33:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F6413AF9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 13:33:15 +0000 (UTC)
Received: from mail-oo1-xc2a.google.com (mail-oo1-xc2a.google.com [IPv6:2607:f8b0:4864:20::c2a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5896AC6
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 06:33:12 -0700 (PDT)
Received: by mail-oo1-xc2a.google.com with SMTP id 006d021491bc7-57b8a0f320dso1210106eaf.1
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 06:33:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lessconfused.com; s=lessconfused; t=1696426392; x=1697031192; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PVU05/6eSA7iMjbJNdKOxOh7qlcL+m/U1QBiwV2qM/s=;
        b=PtMPchn1DpzrmuDx5n7kjImw9BVdmQ0I/LmXesZaBIRVVEanLuGo5gQN8kOTVAISNv
         3cl8vSnqILUXYSXgM/eGqrQdSwrQQGasrfm5Z4SVRptwpsqQ4CDhiC8+irA4lteVPpbR
         A0N7BSQcCqNtStAlZsrHRuFh6TEfY46CIwHrA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696426392; x=1697031192;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PVU05/6eSA7iMjbJNdKOxOh7qlcL+m/U1QBiwV2qM/s=;
        b=Kr23tlTKMlJcy5ILLoB/5CPbSC5ADKDK6+/++Z3anT6KG3hzKXatiXUBVX108xWTPM
         sWXYX6qv0gpZEVfMM7yOiFGr74pkM1zKtbv6lw6Zocfz5Q6LIEscNqPtA2XHwd3F9P8o
         jBFV5B6v79M7GRw9fp35MGE4kAg3Q2diXj3E37j7v+3HLElVnjJlO0vG9tArCD8krnCq
         hZBFSpuYHiHWD5+KhgDj6rVMZjh4l+mrLuYGpeaWMAN/ZcOzRGMzx5TQp7a4Msx7fvEc
         kNTrZJPu8qan24DbzdWt1DPApUWq1dflMMwU5hQKzv336lLFqzC/yzSZCRT5pkcNYPAk
         z1xw==
X-Gm-Message-State: AOJu0YwDcHxzovQBL/3cWMk2VZ9eEXVPxliPwq9T+1e8hSPGRAOf2Gsn
	Ij0IY/rigBx2e+tjDzM++aoCit8wm/sNfhcrnBfbLA==
X-Google-Smtp-Source: AGHT+IFdWMGiRlhPQJNXuCSpwDBon00Wy1d2O8LTSVzc6jBknELc0g54aRIlIw2z5gDHlItTDtMI2FLmbFdayYYKXrw=
X-Received: by 2002:a05:6358:88f:b0:143:61d:ffd3 with SMTP id
 m15-20020a056358088f00b00143061dffd3mr2911004rwj.4.1696426392070; Wed, 04 Oct
 2023 06:33:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002141020.2403652-1-jbrunet@baylibre.com>
 <20231002141020.2403652-3-jbrunet@baylibre.com> <2248b34e-d755-4142-986c-0ead80796e13@linaro.org>
 <1jleciyahv.fsf@starbuckisacylon.baylibre.com>
In-Reply-To: <1jleciyahv.fsf@starbuckisacylon.baylibre.com>
From: Da Xue <da@lessconfused.com>
Date: Wed, 4 Oct 2023 21:33:00 +0800
Message-ID: <CACdvmAhVODCikHMVpX91kBRxZi=7hgrR2Q-_71mFf9OVdptTWQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: amlogic: add libretech cottonwood support
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kevin Hilman <khilman@baylibre.com>, Da Xue <da.xue@libretech.co>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 4, 2023 at 5:59=E2=80=AFPM Jerome Brunet <jbrunet@baylibre.com>=
 wrote:
>
>
> On Wed 04 Oct 2023 at 11:20, Neil Armstrong <neil.armstrong@linaro.org> w=
rote:
>
> > On 02/10/2023 16:10, Jerome Brunet wrote:
> >> Add support for the Libretech cottonwood board family.
> >> These 2 boards are based on the same PCB, with an RPi B form factor.
> >> The "Alta" board uses an a311d while the "Solitude" variant uses an
> >> s905d3.
> >> Co-developed-by: Da Xue <da.xue@libretech.co>
> >> Signed-off-by: Da Xue <da.xue@libretech.co>
> >> Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
> >> ---
> >>   arch/arm64/boot/dts/amlogic/Makefile          |   2 +
> >>   .../amlogic/meson-g12b-a311d-libretech-cc.dts | 133 ++++
> >>   .../amlogic/meson-libretech-cottonwood.dtsi   | 610 ++++++++++++++++=
++
> >>   .../amlogic/meson-sm1-s905d3-libretech-cc.dts |  89 +++
> >>   4 files changed, 834 insertions(+)
> >>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-a311d-libr=
etech-cc.dts
> >>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-libretech-cotto=
nwood.dtsi
> >>   create mode 100644 arch/arm64/boot/dts/amlogic/meson-sm1-s905d3-libr=
etech-cc.dts
> >>
> >
> > <snip>
> >
> >> +
> >> +    leds-pwm {
> >> +            compatible =3D "pwm-leds";
> >> +
> >> +            led-green {
> >> +                    color =3D <LED_COLOR_ID_GREEN>;
> >> +                    function =3D LED_FUNCTION_STATUS;
> >> +                    linux,default-trigger =3D "default-on";
> >> +                    panic-indicator;
> >> +                    max-brightness =3D <255>;
> >> +                    pwms =3D <&pwm_cd 1 1250 0>;
> >> +                    active-low;
> >> +            };
> >> +
> >> +            led-blue {
> >> +                    color =3D <LED_COLOR_ID_BLUE>;
> >> +                    function =3D LED_FUNCTION_ACTIVITY;
> >> +                    linux,default-trigger =3D "activity";
> >
> > "activity" isn't documented, perhaps heartbeat instead ?
> >
>
> The trigger does exist though. The other way is to extend the DT doc.
> I don't really care one way or the other

We can and should use heartbeat to both be consistent and also show
Linux has started for developers.

>
> I'll defer to Da on this one
>
> >> +                    max-brightness =3D <255>;
> >> +                    pwms =3D <&pwm_ab 1 1250 0>;
> >> +                    active-low;
> >> +            };
> >
> > leds subnodes should be named as led(-[0-9a-f]+)
> >
> > see Documentation/devicetree/bindings/leds/leds-pwm.yaml
>
> That I do care. The schematics refer to the leds by name. There is no
> number assigned, much less hex. Making one up makes no sense.
>
> User should be able to quickly (and easily) link  what they see in the
> schematics with DT.
>
> So I'd prefer to submit a change for the regex rather than changing this

I don't get why the LEDs should be hex either. It's contradictory to
https://www.kernel.org/doc/html/latest/leds/leds-class.html

I did a simple grep and didn't find any references to
LED_COLOR_ID_ORANGE. We can debug this later.

>
> >
> >> +    };
> >> +
> >> +    leds-gpio {
> >> +            compatible =3D "gpio-leds";
> >> +
> >> +            led-orange {
> >> +                    color =3D <LED_COLOR_ID_AMBER>;
> >> +                    function =3D LED_FUNCTION_STANDBY;
> >> +                    gpios =3D <&gpio GPIOX_6 GPIO_ACTIVE_LOW>;
> >> +            };
> >
> > Ditto, but you can simply use "led" since it's the only one.
> >
> > See Documentation/devicetree/bindings/leds/leds-gpio.yaml
> >
> > Neil
> >
> >
> > <snip>
>
>
> _______________________________________________
> linux-amlogic mailing list
> linux-amlogic@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-amlogic

