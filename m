Return-Path: <devicetree+bounces-7925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C86367C620F
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 03:08:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 050731C2099B
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 01:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1485653;
	Thu, 12 Oct 2023 01:08:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="h3Fais/e"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BA6652
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 01:08:25 +0000 (UTC)
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBFA9C4
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:08:23 -0700 (PDT)
Received: by mail-pf1-x42f.google.com with SMTP id d2e1a72fcca58-6a4ff9d7e86so112568b3a.0
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697072903; x=1697677703; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5Hqg5K5lCDwesjzlytbXw7y9NPHtgi5OC1j95rwRDts=;
        b=h3Fais/epn5+luxL2Xsm/KMzuWv4DkBMrBixViTzH8w2KKThFVDBaXUT346npXFs3o
         QaWpAa24DXo3bdhrK+vBbEA4I/TKDDx7gMAcsfvudnWrZC13et+ymVfh8soevm2OOIH/
         1VfpjPSyKn5YfD62ovq1QWao1Q1h8vHpbmkXIyENParBdCoOkOdcjF3IMQA+d9m/dT8D
         0BkWH+aw35C0jsFIdFZtHZCYYTf77rtlWZyQJtdf0SM+DQfDHAebOO5m9J7SZB/Fxhd7
         6srr239OZfwqFvsd1x9lwdN/lZr+flhE9SEorA7xUIUGgGP/4bHeLntbifi0dnA+eiWI
         ZBMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697072903; x=1697677703;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5Hqg5K5lCDwesjzlytbXw7y9NPHtgi5OC1j95rwRDts=;
        b=D7ByWz9xxLK0NXxZ5DAQ8gOa32WPViSOC6LGizXcwSjm4aPVZhS7Zq5yGDfQTLl9sZ
         nH+LUG+HYOknrUE96Pl2clmjMBy1vwKFaZMPiUo2gfhHwgEUgig+2JHQJiQfDrh9UarE
         wA3soOjYaW+b8kt3nfk78w8dva7EMImhuOWLL/3Aos2cN+W2+TxUPjKrludPaEB25VVg
         YBmE5QDM5yJKnSXMLmTGMXqilmnukXDbKADhevgG8mOwy7fyIKLzlaXOkBLJ6pkLp+Sd
         11GCJTvJsuEt8Pm6WTkWc45B6N47pZtVATIgPItrbbklcb4NOJydOWQ8Bxx4eNyXWAE8
         yI1w==
X-Gm-Message-State: AOJu0YylC5YguaruZGC+Cde2svfq+PfCz+5p/+8J6JkYkdwyK1UQCAfd
	LvbHOBpAx08EqyEm+MSOzjT++A==
X-Google-Smtp-Source: AGHT+IGpxl6YkWuTo1INXVAtkAIE60MX0AlQ4nrSuCV88LRkBuh+MynPfutMlVzITCYoPfp66FDd1g==
X-Received: by 2002:a05:6a20:8408:b0:172:55c1:f1d4 with SMTP id c8-20020a056a20840800b0017255c1f1d4mr6361133pzd.4.1697072903036;
        Wed, 11 Oct 2023 18:08:23 -0700 (PDT)
Received: from octopus ([2400:4050:c3e1:100:f7a8:3d44:f8cb:28e])
        by smtp.gmail.com with ESMTPSA id jd22-20020a170903261600b001bc930d4517sm526508plb.42.2023.10.11.18.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Oct 2023 18:08:22 -0700 (PDT)
Date: Thu, 12 Oct 2023 10:08:17 +0900
From: AKASHI Takahiro <takahiro.akashi@linaro.org>
To: Linus Walleij <linus.walleij@linaro.org>, Oleksii_Moisieiev@epam.com
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, sudeep.holla@arm.com,
	cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Subject: Re: [RFC v2 4/5] gpio: add pinctrl based generic gpio driver
Message-ID: <ZSdHAYsmh/mzISKC@octopus>
Mail-Followup-To: AKASHI Takahiro <takahiro.akashi@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Oleksii_Moisieiev@epam.com, Bartosz Golaszewski <brgl@bgdev.pl>,
	sudeep.holla@arm.com, cristian.marussi@arm.com, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20231005025843.508689-1-takahiro.akashi@linaro.org>
 <20231005025843.508689-5-takahiro.akashi@linaro.org>
 <CACRpkdZ+QkZp7_se7vN7i_Nx_c3woT_OzVnj3YHju3mZS+Ku8A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACRpkdZ+QkZp7_se7vN7i_Nx_c3woT_OzVnj3YHju3mZS+Ku8A@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Linus and Oleksii,

On Tue, Oct 10, 2023 at 02:00:40PM +0200, Linus Walleij wrote:
> On Thu, Oct 5, 2023 at 4:59???AM AKASHI Takahiro
> <takahiro.akashi@linaro.org> wrote:
> 
> 
> > Some pin controllers provide not only a method to set up lines but
> > also gpio function. With this commit, a new generic gpio driver will
> > be provided. It is implemented purely by using pinctrl interfaces.
> > One of such pin controllers is Arm's SCMI.
> >
> > Signed-off-by: AKASHI Takahiro <takahiro.akashi@linaro.org>
> > ---
> > RFC v2 (Oct 5, 2023)
> 
> RFC v2 looks very good to me, definitely something that can be merged
> as a starting point once the hardware has been tested.

Thank you for your support.
I think the easiest and best way to test the code is that Oleskii will try
my patch on his platform, r-car, on which I believe that SCMI FW for pin
controller is already available since he tested his pinctrl driver.

@Oleskii, can you please take a time for the test?
(I will assist you in case of any error.)

> > +static int pin_control_gpio_direction_input(struct gpio_chip *chip,
> > +                                           unsigned int offset)
> > +{
> > +       return pinctrl_gpio_direction_input(chip->gpiodev->base + offset);
> > +}
> > +
> > +static int pin_control_gpio_direction_output(struct gpio_chip *chip,
> > +                                            unsigned int offset, int val)
> > +{
> > +       return pinctrl_gpio_direction_output(chip->gpiodev->base + offset);
> > +}
> 
> IIRC Bartosz is working on a patch set getting rid of this kludge having to
> call with base + offset in every driver, replacing it with generic calls that
> you can just assign in the gpio_chip.
> 
> When this gets applied these changes will likely be in place so you will
> get rid of this too.

I will try to keep eyes on Bartosz's patch.

Thanks,
-Takahiro Akashi


> Yours,
> Linus Walleij

