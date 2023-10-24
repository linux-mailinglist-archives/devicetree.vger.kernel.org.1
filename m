Return-Path: <devicetree+bounces-11140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3355C7D481A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 09:12:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BA032817AB
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 07:12:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E520A13AC8;
	Tue, 24 Oct 2023 07:12:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a/83O0rd"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC06134A1
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 07:12:34 +0000 (UTC)
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0CCCD10C
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:12:33 -0700 (PDT)
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-6ba8eb7e581so1113036b3a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 00:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698131552; x=1698736352; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=amFp0BVeavttuQpXCOb46m8XpZ/bsIpXzEjd5+Ix8vo=;
        b=a/83O0rdBkdMDQZyDt02QYcuE0lIIprKzdgEyUXSML5pdYXctr31KnCsKCICL4S57g
         QhJ41BrV7b1nyxLPGWAg3srra3OV+13KA6pDUray43GHjicqllO51aC2vnJbULxfhGPE
         Q8d1kiHEwKdCAB9URmvkGexBBeZ2jDuV6DepO8nXpEePkeQDEvZiaIcPncUFCCQFVT5w
         yju/nX5zjb/WSqKFy4fhd4xXmNChTe0WL5cI7Kf5GdFUZ5DNFcmB6cAUmsFE9v4G8q5e
         tDtezRD7tAfGyRLAJJA+2Wy1y0Gl9h8aLti4iGkCCJR6caXSh1lzju4K9W3gU+YqsTwp
         XV+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698131552; x=1698736352;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=amFp0BVeavttuQpXCOb46m8XpZ/bsIpXzEjd5+Ix8vo=;
        b=O3BWqY8EVY7mdzf26iC9QA4uG21+HSfEu98mYuxRIEJvQX0VZQjyZAxxtXz2k8XiMZ
         pj/dBLspgjrH8wXMuflgHyvHxe9ENEjA2fwOF+TD3B59K5nQLncYGsFtcEzxk2shKSjx
         +0jTz8oj0QVmKB9s77TyKv9ZCYq1MUqLb2NLsJyxdXI9cLu6n2MtsTM8mJV7w27lPunL
         ZqPEEecjy1cXRD4wfRnxFJnw+8OwIMropI2QTEJ233QSudCztec35aQPCac5Jw1aki9Y
         uisr7YwHnfgOxx9DPGPhK2rFLJrBbU7JxFSiJRB8EgQalDd/cVsYBWQSw/KSWFPvd5YF
         kcKQ==
X-Gm-Message-State: AOJu0YwuoYeQcttQWq+hRUHiQdKNRTy3ciR9mFo+22RyQTVm2UX99aSp
	k0OMu20p51snEJAGEYGXhuDV2Q==
X-Google-Smtp-Source: AGHT+IF7QdjXPOxjXon+i2oKSwso+lRkUoW9ta6jKJKZ5Gj11CuV1qcL5hoMrDkcOVH4ezKfGuWAow==
X-Received: by 2002:a05:6a20:2451:b0:171:737:df97 with SMTP id t17-20020a056a20245100b001710737df97mr14371285pzc.2.1698131552304;
        Tue, 24 Oct 2023 00:12:32 -0700 (PDT)
Received: from octopus ([2400:4050:c3e1:100:7c15:610f:1205:f10c])
        by smtp.gmail.com with ESMTPSA id ch20-20020a17090af41400b0026b3f76a063sm6535391pjb.44.2023.10.24.00.12.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 00:12:31 -0700 (PDT)
Date: Tue, 24 Oct 2023 16:12:27 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>, sudeep.holla@arm.com,
	cristian.marussi@arm.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
Message-ID: <ZTduWx7CH1ifI5Uc@octopus>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh@kernel.org>, sudeep.holla@arm.com,
	cristian.marussi@arm.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <20231005025843.508689-6-takahiro.akashi@linaro.org>
 <20231006132346.GA3426353-robh@kernel.org>
 <CACRpkdaLsfSBEG-h9ZNT2_Lm8tW8AZO7tedDVNeuZoQAqSkyjw@mail.gmail.com>
 <ZSTgTC4cFFpofYAk@octopus>
 <CACRpkdYD6pkccYoy90AfzV3KT7oYkBPD2_4ZW-AXzT1eUVpchA@mail.gmail.com>
 <ZS3yK/f12Mxw9rXe@octopus>
 <CACRpkdarDrVkPmyDawhZ+H94S4F=dtDSDVuKegi-eNfQNDY3rg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdarDrVkPmyDawhZ+H94S4F=dtDSDVuKegi-eNfQNDY3rg@mail.gmail.com>

Hi Linus,

On Mon, Oct 23, 2023 at 10:12:21AM +0200, Linus Walleij wrote:
> Hi Takashi,
> 
> sorry for slow response :(

Thank you for your feedback.

> On Tue, Oct 17, 2023 at 4:32???AM AKASHI Takahiro
> <takahiro.akashi@linaro.org> wrote:
> 
> > > > > We can probably mandate that this has to be inside a pin controller
> > > > > since it is a first.
> > > >
> > > > Yeah, my U-Boot implementation tentatively supports both (inside and
> > > > outside pin controller). But it is not a user's choice, but we should
> > > > decide which way to go.
> > >
> > > OK I have decided we are going to put it inside the pin control node,
> > > as a subnode. (I don't expect anyone to object.)
> >
> > While I'm still thinking of how I can modify my current implementation
> > to fit into 'inside' syntax, there are a couple of concerns:
> >
> > 1) invoke gpiochip_add_data() at probe function
> > Probably we no longer need "compatible" property,
> 
> The DT binding people made it clear to me that they really
> like compatibles for this kind of stuff so we should probably
> keep it.

Okay, I will assume this in the following discussion.

> > but instead we need to
> > call gpiochip_add_data() explicitly in SCMI pin controller's probe
> > as follows:
> >
> > scmi_pinctrl_probe()
> >     ...
> >     devm_pinctrl_register_and_init(dev, ..., pctrldev);
> >     pinctrl_enable(pctrldev);
> >
> >     device_for_each_child_node(dev, fwnode)
> >         if (fwnode contains "gpio-controller") {
> >             /* what pin_control_gpio_probe() does */
> >             gc->get_direction = ...;
> >             ...
> >             devm_gpiochip_data_add(dev, gc, ...);
> >         }
> 
> I think it is better of the pin controller just parse and add any
> subdevices (GPIO or other) using of_platform_default_populate()
> (just grep for this function and you will see how many device
> drivers use that).

IICU, then, we will have to add a "compatible" to pinctrl node
to make of_platform_default_populate() work as expected. That is:

scmi {
    ...
    protocol@19 {
        compatible = "simple-bus"; // <- added
        reg = <0x19>;

        ... // a couple of pinconf nodes

        scmi_gpio {
            compatible = "pin-control-gpio";
            ...
        }
    }
}

Is this what you meant?
In this case, however, "protocol@19" has a mixture of sub-nodes,
most are pinconf definitions which are the properties of the pin
controller, while "scmi_gpio" is a separate device.

The code will work, but is it sane from DT binding pov?

> What is good with this approach is that if you place this call
> last in the probe() we know the GPIO driver has all resources
> it needs when it probes so it won't defer.
> 
> > 2) gpio-by-pinctrl.c
> > While this file is SCMI-independent now, due to a change at (1),
> > it would be better to move the whole content inside SCMI pin controller
> > driver (because there is no other user for now).
> 
> That works, too. I have no strong opinion on this subject.

I assumed that "compatible" had been removed here.
If we retain "compatible" property, I don't care either way.

> > 3) Then, pin-control-gpio.yaml may also be put into SCMI binding
> > (i.e. firmware/arm,scmi.yaml). Can we leave the gpio binding outside?
> 
> There is no clear pattern whether to put subdevice bindings into
> the parent device binding or not. Maybe? A lot of MFD devices does
> this for sure.

The same as above.

> > 4) phandle in "gpio-ranges" property
> > (As you mentioned)
> > The first element in a tuple of "gpio-ranges" is a phandle to a pin
> > controller node. Now that the gpio node is a sub node of pin controller,
> > the phandle is trivial. But there is no easier way to represent it
> > than using an explicit label:
> > (My U-Boot implementation does this.)
> >
> > scmi {
> >     ...
> >     scmi_pinctrl: protocol@19 {
> >         ...
> >         gpio {
> >             gpio-controller;
> >             ...
> >             gpio-ranges = <&scmi_pinctrl ... >;
> >         }
> >     }
> > }
> >
> > I tried:
> >     gpio-ranges = <0 ...>; // dtc passed, but '0' might be illegal by spec.
> >     gpio-ranges = <(-1) ...>; // dtc passed, but ...
> >     gpio-ranges = <&{..} ...>; // dtc error because it's not a full path.
> >
> > Do you have any other idea? Otherwise, I will modify my RFC
> > with the changes above.
> 
> If you have the GPIO node inside the pin controller node
> and have all the details of the existing ranges available, there
> is no need to put that into the device tree at all, just omit it?

Then, of_gpiochip_add_data() (hence, of_gpiochip_add()/gpiochip_add_data())
won't work because it always assume phandle + 3 arguments. Right?

In this case, "gpio-ranges" here may have different semantics from
the other pinctrl-based gpio drivers. Doesn't matter from DT pov?

> Instead just call gpiochip_add_pin_range() directly in Linux
> after adding the pin controller and gpio_chip.
> C.f. drivers/pinctrl/pinctrl-sx150x.c for an example of a driver
> doing this. In this case the SX150X is hot-plugged (on a slow
> bus) so it needs to figure out all ranges at runtime anyway.

Are you suggesting implementing a custom function for parsing "gpio-ranges"
and calling it in pin_control_gpio_probe() instead of a generic helper?

Or do you want to always map all the pin controller's pins to
gpio pins as sx150x does?

-Takahiro Akashi

> Yours,
> Linus Walleij

