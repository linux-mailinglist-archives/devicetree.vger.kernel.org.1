Return-Path: <devicetree+bounces-5989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9C47B9A02
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 04:42:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id D644A1C208E0
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 02:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 550547EC;
	Thu,  5 Oct 2023 02:42:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HJy6plJv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A44F47E
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 02:42:55 +0000 (UTC)
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE774CE
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 19:42:52 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id d2e1a72fcca58-692af7b641cso85210b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 19:42:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696473772; x=1697078572; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7eSqbR+iPZeaMwWM2FXXaj0hJ0gXvRe4tAkt/tdpAJ8=;
        b=HJy6plJvZkzF3vyKNrGDIoy5CXbw0aazAxmWwcgxAF8y3PR/8/E1MTvm3+gNtdNutz
         uemJchpD6FD793IcOAbof1SaeDj+gog0L1dpIxzgQweJup2JTg6URi9lGbNPknN5fC+t
         DrNX38PXkJPhwd6BIztdV2jj11EJPq19CGJNjrREbJ5feOZaA1nSN8IXJFkLq1iri6AG
         395o2BcrgRZjUTVGuynx9XzTYl9iw88z6V8wh8Gg0d/WmJo1mJozccLRxk6JKpQoyLmc
         4ZDLcrtaxAP6Sz1/ASN6Rz3SOpp5BLc/kUCHKIw4RsaNDxxThZYkaEQrpnnAcs7WTqI4
         coYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696473772; x=1697078572;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7eSqbR+iPZeaMwWM2FXXaj0hJ0gXvRe4tAkt/tdpAJ8=;
        b=WOvDLbHEPE83cZsHm8amb+I7NsY6QIJm3GO32Rs1DiN8alYXwoTQO0GLPwm7qwAj++
         C3wm+FJ0k8BwyziXY8l+DNRLyp//hJbxQac7+bxvG/JLg/9Jt3gFfnt0EiXq0VjWzi2A
         DBq9zwN/tl1IDTEcZku6H7PR2SxroRpZn/R7owwXloqnuNlOd3ax1RKyI/OGifYfHnxl
         og2GHPlzhrClIx6EmMt+l8PQEhvS4aLLMF/A4ZQxz6DYBqohF/KceX3j63rXJYEg6xHF
         LTe6sHpKucSas0KrCkWd/fEwXHVxWVM5RQA2e5fKbSyBaT6nZwcoCsP8HmtM69DotUK5
         +EBw==
X-Gm-Message-State: AOJu0YzumiCUo4DunB1/gFmRKOTaJcra63zrg1y/VrnZhMyX7AMnOD9V
	ku6zlcU2dqtX70Os9a7w4FJDTw==
X-Google-Smtp-Source: AGHT+IFnnNjSS8t30msFADUxCDG59oqiybxhdToWtAwD2iUbLmzuZczi1sC1p6VvaSyzAAJNI9y5YA==
X-Received: by 2002:a05:6a20:1584:b0:15d:f804:6907 with SMTP id h4-20020a056a20158400b0015df8046907mr4643492pzj.0.1696473772138;
        Wed, 04 Oct 2023 19:42:52 -0700 (PDT)
Received: from octopus ([2400:4050:c3e1:100:a16d:fce2:497:afb7])
        by smtp.gmail.com with ESMTPSA id d21-20020aa78695000000b00690c2cd7e0esm239580pfo.49.2023.10.04.19.42.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Oct 2023 19:42:51 -0700 (PDT)
Date: Thu, 5 Oct 2023 11:42:47 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
Subject: Re: [RFC 3/4] gpio: scmi: add SCMI pinctrl based gpio driver
Message-ID: <ZR4ipzoAU7lv/zv4@octopus>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>, sudeep.holla@arm.com,
	cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org
References: <20231002021602.260100-1-takahiro.akashi@linaro.org>
 <20231002021602.260100-4-takahiro.akashi@linaro.org>
 <CACRpkdZojfC2qr7gfzL9fj=DEYJcuPR=a1+zVWTMysK9BH_m_Q@mail.gmail.com>
 <ZR0L5Oe9oT/sEF2p@octopus>
 <CACRpkdY=5hYONDcXW4omcX7=r-JtH=AvOSVMkj72LKiaF_wJuA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdY=5hYONDcXW4omcX7=r-JtH=AvOSVMkj72LKiaF_wJuA@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Linus,

On Wed, Oct 04, 2023 at 10:35:05AM +0200, Linus Walleij wrote:
> Hi Takahiro,
> 
> I see you are on track with this!
> 
> Some clarifications:
> 
> On Wed, Oct 4, 2023 at 8:53???AM AKASHI Takahiro
> <takahiro.akashi@linaro.org> wrote:
> 
> > I'm still not sure whether my approach can be applied to any other
> > pinctrl-based gpio drivers, in which extra (driver-specific) operations
> > might be needed around the generic pinctrl_gpio helpers (i.e. gpiolib.c).
> > For instance, look at gpio-tegra.c:
> 
> Yeah, it kind of requires a "pure" pin controller underneath that don't
> want to do anything else on any operations, otherwise we are back
> to a per-soc pin control driver.
> 
> But I think it is appropriate for abstractions that strive to provide
> "total abstraction behind a firmware", so such as SCMI or ACPI (heh).

Right. So we are on the same page now.

> > > Skip this, let's use device properties instead. They will anyways just translate
> > > to OF properties in the OF case.
> >
> > Okay, I don't know how device properties work, though.
> 
> They are pretty much 1-to-1 slot-ins for the corresponding of_*
> functions, passing struct device * instead of struct device_node *,
> if you look in include/linux/property.h you will feel at home very
> quickly.
> 
> > > > +static int scmi_gpio_get_direction(struct gpio_chip *chip, unsigned int offset)
> > >
> > > Rename all functions pinctrl_gpio_*
> >
> > Well, this change will result in name conflicts against existing
> > pinctrl_gpio_direction_[in|out]out(). So use "pin_control_gpio_" prefix.
> 
> Yeah that works, or pincontro_by_gpio_ or such.

I will use "pin_control_gpio_", which still sounds confusing though.
Please modify it if you don't like.

> > Not sure how the last case (in_en && out_en && DRIVE_OPEN_DRAIN) works.
> 
> I wrote some documentation! But it is hidden deep in the docs:
> https://docs.kernel.org/driver-api/gpio/driver.html#gpio-lines-with-open-drain-source-support
> 
> > In order to be able to read a value as an input pin, I think, we need
> > to set the output status to Hi-Z. Then we should recognize it as "INPUT"?
> > In this case, however, we cannot distinguish the other case where we want
> > to use the pin as OUTPUT and drive it to (active) high.
> 
> With open drain, on GPIO controllers that do not support a native
> open drain mode, we emulate open drain output high by switching
> the line into input mode. The line in this case has a pull-up resistor
> (internal or external) and as input mode is high-Z the pull up resistor
> will pull the signal high, to any level - could be e.g 48V which is
> helpful for some serial links.

I now think I see what you meant here, but still not sure why we need to
assert CONFIG_INPUT and CONFIG_OUT at the same time from API viewpoint.

Anyhow, I will follow the logic that you suggested.

> But this case is really tricky so it can be hard to get things right,
> I get a bit confused and so we need to think about it a few times.
> 
> > > > +static void scmi_gpio_set(struct gpio_chip *chip, unsigned int offset, int val)
> > >
> > > static int?
> >
> > Unfortunately, the function prototype of "set" in struct gpio_device is
> >         void (*set)(struct gpio_chip *gc, unsigned int offset, int value);
> >
> > So we cannot propagate an error to the caller.
> 
> Grrr that must be my fault. Sorry about not fixing this :(
> 
> > > No need to add & 0x01, the gpiolib core already does this.
> >
> > Which part of gpiolib core?
> 
> chip->set = scmi_gpio_set; gets called like this in gpiolib:
> 
>  gpiod_direction_output_raw_commit(..., int value)
> {
>     int val = !!value;
> (...)
>     gc->set(gc, gpio_chip_hwgpio(desc), val);
> 
> Notice clamping int val = !!value; will make the passed val 0 or 1.

Yeah.

> > > > +static u16 sum_up_ngpios(struct gpio_chip *chip)
> > > > +{
> > > > +       struct gpio_pin_range *range;
> > > > +       struct gpio_device *gdev = chip->gpiodev;
> > > > +       u16 ngpios = 0;
> > > > +
> > > > +       list_for_each_entry(range, &gdev->pin_ranges, node) {
> > > > +               ngpios += range->range.npins;
> > > > +       }
> > >
> > > This works but isn't really the intended use case of the ranges.
> > > Feel a bit uncertain about it, but I can't think of anything better.
> > > And I guess these come directly out of SCMI so it's first hand
> > > information about all GPIOs.
> >
> > I don't get your point.
> > However many pins SCMI firmware (or other normal pin controllers) might
> > expose, the total number of pins available by this driver is limited by
> > "gpio-ranges" property.
> > So the sum as "ngpios" should make sense unless a user accidentally
> > specifies a wrong range of pins.
> 
> Yes.
> 
> And it is this fact that the same number need to appear in two places
> and double-specification will sooner or later bring us to the situation
> where the two do not agree, and what do we do then?
> 
> If the ranges come from firmware, which is subject to change such
> as "oops we forgot this pin", the GPIO number will just insert itself
> among the already existing ones: say we have two ranges:
> 
> 1: 0..5
> 2: 6..9
> 
> Ooops forgot a GPIO in the first range, it has to be bumped to
> 0..6.
> 
> But somewhere in the device tree there is:
> 
> foo-gpios = <&scmi_gpio 7 GPIO_OUT_LOW>;
> 
> So now this is wrong (need to be changed to 8) and we have zero tooling
> to detect this, the author just has to be very careful all the time.

Well, even without a change by an user, this kind of human error
may happen. There is no way to verify the correct *pin number*,
say, if I specify 100 instead of 7 in an above example.

> But I honestly do not know any better way.

One good practice to mitigate those cases might be to use a (gpio or
gpio-group) name instead of a pin number, or a "virtual" gpio device.

        foo_gpio: gpio@0 {
            compatibles = "pin-control-gpio";

            gpio-range = <&scmi_pinctrl 0 0 0>;
            gpio-range-group-name = "pins_for_foo";
        }
        baa_gpio: gpio@1 {
            compatibles = "pin-control-gpio";

            gpio-range = <&scmi_pinctrl 0 0 0>;
            gpio-range-group-name = "pins_for_baa";
        }

# Not sure multiple "pin-control-gpio" devices are possible.

-Takahiro Akashi

> > > which in turn becomes just pinctrl_gpio_set_config(), which
> > > is what we want.
> > >
> > > The second cell in two-cell GPIOs already supports passing
> > > GPIO_PUSH_PULL, GPIO_OPEN_DRAIN, GPIO_OPEN_SOURCE,
> > > GPIO_PULL_UP, GPIO_PULL_DOWN, GPIO_PULL_DISABLE,
> > > which you can this way trivially pass down to the pin control driver.
> > >
> > > NB: make sure the scmi pin control driver returns error for
> > > unknown configs.
> >
> > Well, the error will be determined by SCMI firmware(server)
> > not the driver itself :)
> 
> Hehe, I think it is good that the SCMI firmware gets some exercise
> from day 1!
> 
> Yours,
> Linus Walleij

