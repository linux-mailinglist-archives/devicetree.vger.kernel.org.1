Return-Path: <devicetree+bounces-8564-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 16A3B7C8C3F
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 19:27:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B0140B20A67
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:27:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB26321A1C;
	Fri, 13 Oct 2023 17:27:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gwulx8Fp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E2101B280
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 17:27:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0B61DC433CD;
	Fri, 13 Oct 2023 17:27:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697218041;
	bh=XPp/N2DrY886TmYtke+2pdg6aNdeRFGp8q1vWyV87IU=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=gwulx8FpUwUeCCL9aE/iQo6qD4lq6Acm1Rnba0amXnQz5YQNDA1BUzqbcmBUmjMwy
	 dDW99F5Na8QJ2YHzvB9EaRdGACIXaN2rbRP4DM4fqCsr5W3SIrCddjDDm/KytLtBWD
	 N3Eh6NC7OqOPQJaXXfoiSOFpeNAlyv8udyXGbTXOI2vbLlY+hx9lW3/HBULOimfT5R
	 +xnB+yqQlCGTFJPVwsCQjs0vXVQ5+dNae/vzPI1n2K5dFBJmHwuF074o/QBXaiI8YP
	 6TT3GbujconqjfShBNYF/JS8h010bj/cQWmJSDKW6/xFzJdtwPJkPaya+A9+AmVhX2
	 Ttk52yWUI9HIA==
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50305abe5f0so3089925e87.2;
        Fri, 13 Oct 2023 10:27:20 -0700 (PDT)
X-Gm-Message-State: AOJu0YzLtTd9ANjdQPi7+AEJD7IJ9Zk3D2ZkV84cLl/LuGW8Wy259X9W
	/v407RTXI/4iOOAwTDQgyAhEzSgW481mb8fALQ==
X-Google-Smtp-Source: AGHT+IEizvXO2mNiDj59lp5atM3o+Uro0LVK63GgCo+PNfwGLPyinV3lNsPocGD4O5YiMYdfS//6qiiSo5V+aBS7Lfo=
X-Received: by 2002:a05:6512:250c:b0:503:55c:7999 with SMTP id
 be12-20020a056512250c00b00503055c7999mr28450678lfb.34.1697218039162; Fri, 13
 Oct 2023 10:27:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230924181959.64264-1-n2h9z4@gmail.com> <20231010132921.GA628810-robh@kernel.org>
 <0ec4f647-77b9-4b3f-9cbd-6fb122f09462@roeck-us.net>
In-Reply-To: <0ec4f647-77b9-4b3f-9cbd-6fb122f09462@roeck-us.net>
From: Rob Herring <robh@kernel.org>
Date: Fri, 13 Oct 2023 12:27:07 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKhF8apt7==97yHAUo=B8M1oFQFc=ZCYTYAavNqOVAKCQ@mail.gmail.com>
Message-ID: <CAL_JsqKhF8apt7==97yHAUo=B8M1oFQFc=ZCYTYAavNqOVAKCQ@mail.gmail.com>
Subject: Re: [PATCH v3] dt-bindings: watchdog: atmel,at91rm9200-wdt: convert
 txt to yaml
To: Guenter Roeck <linux@roeck-us.net>
Cc: Nik Bune <n2h9z4@gmail.com>, wim@linux-watchdog.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
	skhan@linuxfoundation.org, claudiu.beznea@microchip.com, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 10, 2023 at 8:56=E2=80=AFAM Guenter Roeck <linux@roeck-us.net> =
wrote:
>
> On Tue, Oct 10, 2023 at 08:29:21AM -0500, Rob Herring wrote:
> > On Sun, Sep 24, 2023 at 08:19:59PM +0200, Nik Bune wrote:
> > > Convert txt file to yaml.
> > >
> > > Signed-off-by: Nik Bune <n2h9z4@gmail.com>
> > > Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> > > ---
> > >
> > > Changes in v3:
> > > - Removed trailing whitespace in an element of the maintainers list.
> > >
> > > v2 patch: https://lore.kernel.org/linux-devicetree/20230924172004.592=
08-1-n2h9z4@gmail.com/
> > >
> > >  .../watchdog/atmel,at91rm9200-wdt.yaml        | 33 +++++++++++++++++=
++
> > >  .../watchdog/atmel-at91rm9200-wdt.txt         |  9 -----
> > >  2 files changed, 33 insertions(+), 9 deletions(-)
> > >  create mode 100644 Documentation/devicetree/bindings/watchdog/atmel,=
at91rm9200-wdt.yaml
> > >  delete mode 100644 Documentation/devicetree/bindings/watchdog/atmel-=
at91rm9200-wdt.txt
> >
> > Are the watchdog maintainers going to pick up this and other watchdog
> > bindings?
> >
>
> Tricky question. I am way behind with my reviews, and historically you ha=
ve
> picked up some of themm, so I really never know what to do with bindings.

The default is the subsystem maintainers take them, but yes I do pick
up stuff from time to time for $reasons. Largely that was early on in
schema conversions and there wasn't much checking, but now that's much
better and I only tend to pick up stuff if it's been weeks without
getting applied. Last cycle I found a few wdog bindings that hadn't
been applied (from Apr or May), so I've been keeping more of an eye on
them.

Rob

