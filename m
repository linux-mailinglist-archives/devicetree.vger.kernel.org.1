Return-Path: <devicetree+bounces-5726-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C3A57B7A22
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 10:35:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 7C9F61F21E5E
	for <lists+devicetree@lfdr.de>; Wed,  4 Oct 2023 08:35:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40FDCDDAF;
	Wed,  4 Oct 2023 08:35:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAB31FD9
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 08:35:20 +0000 (UTC)
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8471EA6
	for <devicetree@vger.kernel.org>; Wed,  4 Oct 2023 01:35:18 -0700 (PDT)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5a200028437so22698527b3.1
        for <devicetree@vger.kernel.org>; Wed, 04 Oct 2023 01:35:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696408517; x=1697013317; darn=vger.kernel.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V9Pvz5wjW4nQEQ8U042AuTMhwGm2vJJWl+JdrrFRANE=;
        b=mOp6+SvvY1EPvyAmrP0haBzCOHQTDIV2iQyA6NxNWzZBRqFsLTRbkuUV9Cr60uliXn
         z8YIx4lW/6DaL17qylB0Kv+lXip64aEMiKrGyDbl3VFSBdgxujoZO0NE7VVKZrBgW7kp
         DFWhxJenY0juQNs0L9xbvs0EGaoJT+y3KUR4ccdQbyZ33WMl3YVJVgQoYM+AF6QCZDxK
         Rc7H6rNcF3qgZpW6ysEoDREtyLh1dnwP8WoitzfglPCwG7oQVO+BfFQGEw/6ErfV8hWc
         PXIiiYXGc0uRXdwhT2UfB4ez5Mi/iBp64HYVf6/UJ4z/dWgRHOSz2hm9zbMicMGZffnn
         snzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696408517; x=1697013317;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V9Pvz5wjW4nQEQ8U042AuTMhwGm2vJJWl+JdrrFRANE=;
        b=s3olRwEIs2CUxmOv8w7TUwxD0WG58lDRraLTttyAv6BfqBWtp2kTUU9gD5+2Xm7pGh
         KCbVAJXNPneA0B6HmCKp1BG4JRssl0DGXjsjYZePa57Y5uQjYxzWsapUa/XLtVgiFLyB
         9uQP8GNFLG25BVAtzTOLhKf07b7yjnMgO1fDYXev/BJDQsE6GeV1g2yPuj8GleCN0DCS
         YUOgoT7VR69VdqyuktW9nCM9mNo76WozOkXLVz5WZt38rVcHjB7QefkvWmsVKIMkwkV7
         GzLBdsdlLwYEcAbSJLEe2hgiEX8vckyLjEfS6Y6ovD4Etr5FugEjHigs+r0tEGl4+led
         NZQA==
X-Gm-Message-State: AOJu0YwrZS1TnZkxDGe1V17YSgQ7bE4cfAeU3NjczWsWSCKMkIZQdKP+
	MJ+y7T5DEs2iqZmg4O/Wp5tZhMAtjwalNzYaagTABta0SFjVBWOuCJI=
X-Google-Smtp-Source: AGHT+IH5ngf97qNt6bu22r6TovmZpeCObZ1P4vs+ZHMOMTu1yaL2qGufLWfX5gIBKVU2oIFa2UbP+oCYEwSXWYxeI0o=
X-Received: by 2002:a0d:d203:0:b0:58d:7ec3:16c4 with SMTP id
 u3-20020a0dd203000000b0058d7ec316c4mr1815920ywd.34.1696408517703; Wed, 04 Oct
 2023 01:35:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231002021602.260100-1-takahiro.akashi@linaro.org>
 <20231002021602.260100-4-takahiro.akashi@linaro.org> <CACRpkdZojfC2qr7gfzL9fj=DEYJcuPR=a1+zVWTMysK9BH_m_Q@mail.gmail.com>
 <ZR0L5Oe9oT/sEF2p@octopus>
In-Reply-To: <ZR0L5Oe9oT/sEF2p@octopus>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 4 Oct 2023 10:35:05 +0200
Message-ID: <CACRpkdY=5hYONDcXW4omcX7=r-JtH=AvOSVMkj72LKiaF_wJuA@mail.gmail.com>
Subject: Re: [RFC 3/4] gpio: scmi: add SCMI pinctrl based gpio driver
To: AKASHI Takahiro <takahiro.akashi@linaro.org>, Linus Walleij <linus.walleij@linaro.org>, 
	sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	Oleksii_Moisieiev@epam.com, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Takahiro,

I see you are on track with this!

Some clarifications:

On Wed, Oct 4, 2023 at 8:53=E2=80=AFAM AKASHI Takahiro
<takahiro.akashi@linaro.org> wrote:

> I'm still not sure whether my approach can be applied to any other
> pinctrl-based gpio drivers, in which extra (driver-specific) operations
> might be needed around the generic pinctrl_gpio helpers (i.e. gpiolib.c).
> For instance, look at gpio-tegra.c:

Yeah, it kind of requires a "pure" pin controller underneath that don't
want to do anything else on any operations, otherwise we are back
to a per-soc pin control driver.

But I think it is appropriate for abstractions that strive to provide
"total abstraction behind a firmware", so such as SCMI or ACPI (heh).

> > Skip this, let's use device properties instead. They will anyways just =
translate
> > to OF properties in the OF case.
>
> Okay, I don't know how device properties work, though.

They are pretty much 1-to-1 slot-ins for the corresponding of_*
functions, passing struct device * instead of struct device_node *,
if you look in include/linux/property.h you will feel at home very
quickly.

> > > +static int scmi_gpio_get_direction(struct gpio_chip *chip, unsigned =
int offset)
> >
> > Rename all functions pinctrl_gpio_*
>
> Well, this change will result in name conflicts against existing
> pinctrl_gpio_direction_[in|out]out(). So use "pin_control_gpio_" prefix.

Yeah that works, or pincontro_by_gpio_ or such.

> Not sure how the last case (in_en && out_en && DRIVE_OPEN_DRAIN) works.

I wrote some documentation! But it is hidden deep in the docs:
https://docs.kernel.org/driver-api/gpio/driver.html#gpio-lines-with-open-dr=
ain-source-support

> In order to be able to read a value as an input pin, I think, we need
> to set the output status to Hi-Z. Then we should recognize it as "INPUT"?
> In this case, however, we cannot distinguish the other case where we want
> to use the pin as OUTPUT and drive it to (active) high.

With open drain, on GPIO controllers that do not support a native
open drain mode, we emulate open drain output high by switching
the line into input mode. The line in this case has a pull-up resistor
(internal or external) and as input mode is high-Z the pull up resistor
will pull the signal high, to any level - could be e.g 48V which is
helpful for some serial links.

But this case is really tricky so it can be hard to get things right,
I get a bit confused and so we need to think about it a few times.

> > > +static void scmi_gpio_set(struct gpio_chip *chip, unsigned int offse=
t, int val)
> >
> > static int?
>
> Unfortunately, the function prototype of "set" in struct gpio_device is
>         void (*set)(struct gpio_chip *gc, unsigned int offset, int value)=
;
>
> So we cannot propagate an error to the caller.

Grrr that must be my fault. Sorry about not fixing this :(

> > No need to add & 0x01, the gpiolib core already does this.
>
> Which part of gpiolib core?

chip->set =3D scmi_gpio_set; gets called like this in gpiolib:

 gpiod_direction_output_raw_commit(..., int value)
{
    int val =3D !!value;
(...)
    gc->set(gc, gpio_chip_hwgpio(desc), val);

Notice clamping int val =3D !!value; will make the passed val 0 or 1.

> > > +static u16 sum_up_ngpios(struct gpio_chip *chip)
> > > +{
> > > +       struct gpio_pin_range *range;
> > > +       struct gpio_device *gdev =3D chip->gpiodev;
> > > +       u16 ngpios =3D 0;
> > > +
> > > +       list_for_each_entry(range, &gdev->pin_ranges, node) {
> > > +               ngpios +=3D range->range.npins;
> > > +       }
> >
> > This works but isn't really the intended use case of the ranges.
> > Feel a bit uncertain about it, but I can't think of anything better.
> > And I guess these come directly out of SCMI so it's first hand
> > information about all GPIOs.
>
> I don't get your point.
> However many pins SCMI firmware (or other normal pin controllers) might
> expose, the total number of pins available by this driver is limited by
> "gpio-ranges" property.
> So the sum as "ngpios" should make sense unless a user accidentally
> specifies a wrong range of pins.

Yes.

And it is this fact that the same number need to appear in two places
and double-specification will sooner or later bring us to the situation
where the two do not agree, and what do we do then?

If the ranges come from firmware, which is subject to change such
as "oops we forgot this pin", the GPIO number will just insert itself
among the already existing ones: say we have two ranges:

1: 0..5
2: 6..9

Ooops forgot a GPIO in the first range, it has to be bumped to
0..6.

But somewhere in the device tree there is:

foo-gpios =3D <&scmi_gpio 7 GPIO_OUT_LOW>;

So now this is wrong (need to be changed to 8) and we have zero tooling
to detect this, the author just has to be very careful all the time.

But I honestly do not know any better way.

> > which in turn becomes just pinctrl_gpio_set_config(), which
> > is what we want.
> >
> > The second cell in two-cell GPIOs already supports passing
> > GPIO_PUSH_PULL, GPIO_OPEN_DRAIN, GPIO_OPEN_SOURCE,
> > GPIO_PULL_UP, GPIO_PULL_DOWN, GPIO_PULL_DISABLE,
> > which you can this way trivially pass down to the pin control driver.
> >
> > NB: make sure the scmi pin control driver returns error for
> > unknown configs.
>
> Well, the error will be determined by SCMI firmware(server)
> not the driver itself :)

Hehe, I think it is good that the SCMI firmware gets some exercise
from day 1!

Yours,
Linus Walleij

