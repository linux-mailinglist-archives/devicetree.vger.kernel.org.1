Return-Path: <devicetree+bounces-4860-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 563637B41C0
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 17:37:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 04E882835B2
	for <lists+devicetree@lfdr.de>; Sat, 30 Sep 2023 15:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE1DD14F60;
	Sat, 30 Sep 2023 15:37:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 238EA2C9E
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 15:37:35 +0000 (UTC)
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8564BE
	for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 08:37:31 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-5a1d0fee86aso113098167b3.2
        for <devicetree@vger.kernel.org>; Sat, 30 Sep 2023 08:37:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696088251; x=1696693051; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Iij7GZPs4ta7mpI/DDP/sOC6B5pAs6vBvsF5JU59Dng=;
        b=sYzo6XUj/VGXsS/c+8iIR/YiKUJBwnimrOMTrD+9AUnOIlUUa+wIQpkqJpMyHu/bf3
         d4+1cDx5AvDqd5noI/NmQZhb10XCf2l8YeZJ+vjZgD/EBXHWLMG0DGxPXcTDNouaD37Y
         KptpNMaeTeRLAfOvYv4NWBe6a6fVZvxUlO7i8GMXc8wVhc5FpGVv285qRKt5d9Yz6M4a
         1jh5qc3Bj6I612sXZ9g4DcjZS0+7mfrkOudLL53a6W8DsPdyyCnMvvXD5BY4B3bJJJ5O
         /vNzBAyqjW70SEluDVl5R9zhVXvcSV6igSvORQ4pfcYfRmUEV0/CJ5ttuXWQddP3dS0N
         r+sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696088251; x=1696693051;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Iij7GZPs4ta7mpI/DDP/sOC6B5pAs6vBvsF5JU59Dng=;
        b=Yeesepr7ES/kOM+8gzsRhl72uGcePFhaJMkskN3p9ajEsr75dKwOoll0VLqDMqkpkq
         +eKsEHopGv5XueIgbpMYBbnVWzA2SGKP9uqU18DTAthcpjkJbYa8RXqO6PZvh2q/LW3O
         2UO/ezej3N7xMnaPChIn9dENfZcQiMLxC4f5RETWcU9KdHknsoKIRJ69L9Pbl/yVEpJ7
         bebOtNFmoesGmbX5ukqdW2WWr1Slz7aF49cpWKCZYWbnBmxsKKxfzB0q7nOmGd/slkD+
         PlmY5DPhbAC062DTEx9HaVZGH630dohPMtFKQsHtfJze9DUPgXP9L2v/lYKRQrSGRqWA
         Uz3w==
X-Gm-Message-State: AOJu0YxrX0YBrca8u7L5qj1YpsrdaTeJIv+oSdvCmKuxlGcqXHut1q54
	K2jVaYSUEV+zgvHWBKH7YnnzjXcs5EtLNFZF/jcuxg==
X-Google-Smtp-Source: AGHT+IGFEGxNW9iad1m1hopLGKbkXI8hjBmpaUfewF+ozAfJ+lrOwUFw+LD1rcN0USj40MfR4GqG12cZk9y2+fvzoII=
X-Received: by 2002:a0d:ddc1:0:b0:5a1:d4bc:7faa with SMTP id
 g184-20020a0dddc1000000b005a1d4bc7faamr7394744ywe.18.1696088251028; Sat, 30
 Sep 2023 08:37:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-pxa1908-lkml-v5-0-5aa5a1109c5f@skole.hr>
 <20230929-pxa1908-lkml-v5-7-5aa5a1109c5f@skole.hr> <CACRpkdb=8LU9Mkkn_VDcTGoH1pWn=hp9ZhN5dLm5pykif8cp-w@mail.gmail.com>
 <5715527.DvuYhMxLoT@radijator>
In-Reply-To: <5715527.DvuYhMxLoT@radijator>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 30 Sep 2023 17:37:19 +0200
Message-ID: <CACRpkdYOLjZ2thKdR7JoYxa2gr078AHO6JXu76fUU+dBzG7MPQ@mail.gmail.com>
Subject: Re: [PATCH RESEND v5 7/8] arm64: dts: Add DTS for Marvell PXA1908 and samsung,coreprimevelte
To: =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>, 
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Cc: Robert Jarzmik <robert.jarzmik@free.fr>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Michael Turquette <mturquette@baylibre.com>, 
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Tony Luck <tony.luck@intel.com>, 
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-hardening@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
	phone-devel@vger.kernel.org, afaerber@suse.de, balejk@matfyz.cz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Sep 30, 2023 at 10:25=E2=80=AFAM Duje Mihanovi=C4=87 <duje.mihanovi=
c@skole.hr> wrote:
> On Saturday, September 30, 2023 12:05:41 AM CEST Linus Walleij wrote:
> > But it exists, so I can't say you can't use it. Not my choice.
> > I understand it is convenient.
> >
> > It is possible to switch later, but only if you have a unique
> > pin controller compatible so please add that.
>
> Maybe a dumb question. I might want to do this at some point to clean up =
the
> device tree a bit, are there any such pinctrl drivers I can use as a
> reference?

Since it's Marvell after all (albeit a descendant of the 20 yo
PXA platform!) I would expect new Marvell SoCs to be more alike
the AC5 bindings that Chris Packham merged only last year:
Documentation/devicetree/bindings/pinctrl/marvell,ac5-pinctrl.yaml
Driver:
drivers/pinctrl/mvebu/pinctrl-armada-xp.c
drivers/pinctrl/mvebu/pinctrl-mvebu.c

But if this pin controller is more related to PXA (Intel) hardware
than to either Kirkwood or Armada, you might want to do something
entirely different. It depends a bit on hardware.

Hardware such as pinctrl-single.c with one mux configuration
register per pin usually follow the Qualcomm way of doing
things, which is to simply have one group per pin, then that
can be associated with desired functions:
Documentation/devicetree/bindings/pinctrl/qcom,tlmm-common.yaml
this has the upside of using all the standard bindings for
bias etc. Driver:
drivers/pinctrl/qcom/pinctrl-msm.c
then qualcomm have subdrivers for each SoC calling into this
so you have to check "real" bindings and drivers such as:
Documentation/devicetree/bindings/pinctrl/qcom,sm8550-tlmm.yaml
drivers/pinctrl/qcom/pinctrl-sm8550.c

Yours,
Linus Walleij

