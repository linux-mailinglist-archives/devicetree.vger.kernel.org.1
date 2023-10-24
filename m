Return-Path: <devicetree+bounces-11248-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F817D4E94
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 13:10:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0318D1C2095A
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 11:10:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 747B526288;
	Tue, 24 Oct 2023 11:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y4YmxgKC"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA457498
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 11:10:05 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E62AFE
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 04:10:02 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6bbfb8f7ac4so913497b3a.0
        for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 04:10:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698145802; x=1698750602; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RE1wsH4r/PT9CdvJUxnqs/kAns7JcqtTbkS2nbmYIlM=;
        b=Y4YmxgKCt2HVyW75f+YrxDHiakcKG9Q6nBVxQLg01RAvOdk5mOPUg+E2S3OTsW243a
         75uUBbWtaBDapss81wUA6151bfQbnrmz0oelW7E07XY/ISjF9Q//ftrDEXZ2Mn9jyXNt
         TVofZ6Njca9DghJYbwzPQF+56hG1kIrlMKRyj4ctIuQ4ZhzAftOCHOYjkFD+B7Ga1QwC
         EHVI/oYvJ0uhQLav4nLxOn9cjT0EDt92Q0S5MmYLMJSlxJcDQS3SC5qWZjUh4Pvv/1qm
         Yx9leHD7TZmIoO549gWkllEHbSkYDTdI9ALw1SKp7jOBmLP/MyvWv6gVJ2KlRsKdnfI5
         i94A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698145802; x=1698750602;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RE1wsH4r/PT9CdvJUxnqs/kAns7JcqtTbkS2nbmYIlM=;
        b=xJ/r1zG9C5RrqNCWeGEePEBIBS1ybFwFQ082IwKjelX0qWos/lbMCtS4rUw+WlUBsm
         a5mcEWB/dYZinNRHrYMe3LZ1+KYgLXFGdVV8Bfs2BwfOhwKBHCXp4vKzT0MLkDZj0uNU
         1N3dy6Xy4mgaSTrGB0ORH9u4vjsNVpTH37exnyIp9fvzRJbZkaenyzb5ZDVZGHPPJzyx
         GMSk392V3SFZF47gQTOumHMS4GMG6h0ZVsL/Up6+GLy70lwKpKgRv32s6v/ZAzUzLS/L
         zgmjlsVJxZS2JXad3xigkG1e5AY2Kty7H66Ckv/vMoBNSF/hiipwSGIVNO+W9j/Jvfqq
         7VkA==
X-Gm-Message-State: AOJu0Yx5vNDemi9FFKC6/6r1izGr7SWJWo2bKIFmU43c01aOnQBlmB0e
	8KjmomHRZBeend4cW2n5paRFDsXIuf1TT5T9WucJRg==
X-Google-Smtp-Source: AGHT+IEX6WuqA5vIkcaujPmdybMRkAiT+hemmNEfBNRefkfhx9JKBoVLMwM5Lt2yToWxR/gWgGlVNg==
X-Received: by 2002:a05:6a21:8cc5:b0:17b:170c:2d11 with SMTP id ta5-20020a056a218cc500b0017b170c2d11mr11510054pzb.6.1698145801901;
        Tue, 24 Oct 2023 04:10:01 -0700 (PDT)
Received: from octopus ([2400:4050:c3e1:100:7c15:610f:1205:f10c])
        by smtp.gmail.com with ESMTPSA id f125-20020a625183000000b0065a1b05193asm7801805pfb.185.2023.10.24.04.09.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Oct 2023 04:10:01 -0700 (PDT)
Date: Tue, 24 Oct 2023 20:09:52 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Rob Herring <robh@kernel.org>, sudeep.holla@arm.com,
	cristian.marussi@arm.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, Oleksii_Moisieiev@epam.com,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [RFC v2 5/5] dt-bindings: gpio: Add bindings for pinctrl based
 generic gpio driver
Message-ID: <ZTemAK/jBtv9b5xP@octopus>
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
 <ZTduWx7CH1ifI5Uc@octopus>
 <CACRpkdba=echR=rZYKVbROfaOp4mzjTQ9RphHFyzqSNgE1jZqg@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdba=echR=rZYKVbROfaOp4mzjTQ9RphHFyzqSNgE1jZqg@mail.gmail.com>

Hi Linus,

On Tue, Oct 24, 2023 at 11:40:00AM +0200, Linus Walleij wrote:
> Hi Takahiro,
> 
> On Tue, Oct 24, 2023 at 9:12???AM AKASHI Takahiro
> <takahiro.akashi@linaro.org> wrote:
> 
> > > I think it is better of the pin controller just parse and add any
> > > subdevices (GPIO or other) using of_platform_default_populate()
> > > (just grep for this function and you will see how many device
> > > drivers use that).
> >
> > IICU, then, we will have to add a "compatible" to pinctrl node
> > to make of_platform_default_populate() work as expected. That is:
> >
> > scmi {
> >     ...
> >     protocol@19 {
> >         compatible = "simple-bus"; // <- added
> 
> Hm right, but you could also use
> of_platform_populate(np, NULL, NULL, dev);
> 
> Then the compatible match is of no concern.
> 
> Sorry for my lack of attention to details :/
> 
> If you want to restrict the population to a few select compatibles
> (maybe only "pin-control-gpio") then you can do
> that with
> 
> const struct of_device_id of_scmi_protocol_19_match_table[] = {
>         { .compatible = "pin-control-gpio", },
>         {}
> };
> of_platform_populate(np, of_scmi_protocol_19_match_table, NULL, dev);
> 
> > Is this what you meant?
> > In this case, however, "protocol@19" has a mixture of sub-nodes,
> > most are pinconf definitions which are the properties of the pin
> > controller, while "scmi_gpio" is a separate device.
> 
> That looks good to me, it makes sense to have the GPIO as a subnode
> here and mandate it with a compatible to match.
> 
> > The code will work, but is it sane from DT binding pov?
> 
> Let's let the DT people jump in on that.
> 
> > > Instead just call gpiochip_add_pin_range() directly in Linux
> > > after adding the pin controller and gpio_chip.
> > > C.f. drivers/pinctrl/pinctrl-sx150x.c for an example of a driver
> > > doing this. In this case the SX150X is hot-plugged (on a slow
> > > bus) so it needs to figure out all ranges at runtime anyway.
> >
> > Are you suggesting implementing a custom function for parsing "gpio-ranges"
> > and calling it in pin_control_gpio_probe() instead of a generic helper?
> 
> The generic helper will always be attempted but if there are
> no ranges in the device tree, it will just continue without adding
> any ranges. I suggest putting *no* ranges into the device tree.
> 
> > Or do you want to always map all the pin controller's pins to
> > gpio pins as sx150x does?
> 
> I think since the SCMI firmware knows about the available line
> and pins etc, it makes sense that the driver comes up with the
> applicable ranges on its own (derived from the information from
> the SCMI firmware) and add them, instead of trying to put that
> information into the device tree at all. Just omit it, and make your
> own ranges, and add them in the Linux driver with
> gpiochip_add_pin_range() without involving DT at all when defining
> the ranges.

As far as I understand, there is only one way for SCMI gpio driver
to know which pins are actually GPIO pins; Calling PINCNTRL_CONFIG_GET
command with "Input-mode" or "Output-mode" configuration type
against *every* pin-controller's pins.
(Here I assume that the command would fail with INVALID_PARAMETERS or
NOT_SUPPORTED if configuring the given pin as a GPIO input or output
is not possible. But the specification seems to be a bit ambiguous.)

It means that, if SCMI firmware has 100 pinctrl pins, the driver needs
to call the command 200 times in order to get the answer.

It is possible but I believe that it is clunky and painful for the driver
initialization.
I'd like to see explicit "gpio-ranges" property in a device tree.

Thanks,
-Takahiro Akashi



> I'm sorry if I'm unclear sometimes.
> 
> Yours,
> Linus Walleij

