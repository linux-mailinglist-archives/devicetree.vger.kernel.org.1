Return-Path: <devicetree+bounces-14365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF30E7E3CED
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 13:23:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 90D10281061
	for <lists+devicetree@lfdr.de>; Tue,  7 Nov 2023 12:23:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8BB92FE1F;
	Tue,  7 Nov 2023 12:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yaKLipwy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B4612FE0F
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 12:23:24 +0000 (UTC)
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9364C28A70
	for <devicetree@vger.kernel.org>; Tue,  7 Nov 2023 04:18:33 -0800 (PST)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-579de633419so67202477b3.3
        for <devicetree@vger.kernel.org>; Tue, 07 Nov 2023 04:18:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699359512; x=1699964312; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=AjUrVizqyH1nfI6x/UZaYgw1z+MKM3l8dtyFAmAVDWw=;
        b=yaKLipwya77Nb9STHS6f5skNVFquQj9pxhrnBIy2ZOUQXhjwxxZ4DX79l/+lRFDIiw
         zDFUnybuJO3nLdzgtIO+5Cy+DsdzxBer0kY4Bb4KeKdg6w6qZ9mRMWYjpEx+ivHny6vt
         2nWCGqyaWhriac5mfb+XpB6Vjv1V1yJ12CT7Ii50NVnStSye11JRJuGLParf5lk4xYkk
         tOUxhS6zXvRTdoFmmV50HkmUuwEW6XH2JlYhKFE+vIrNd6QL8fu/GoDiuSQt6eaIucvQ
         it3dGbFKcjBQHYGKbveLKw0sJachoGYFKF/dJgSJMen8OrMQySq09VlGpe8Kcd6yZTjk
         NSrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699359512; x=1699964312;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AjUrVizqyH1nfI6x/UZaYgw1z+MKM3l8dtyFAmAVDWw=;
        b=M7r+n1/qMEBj2BBdeSonpgeE7/an6VsHHFeFFC6Ab+q2ul2lPzTlTr7jNSSqXk2/G1
         uWJgjiGOODwwJn6z0+ULxte3Ulb1sjUhImAWP55Yd7aOh/+I+WD8WeBIMiSUm6XQutRZ
         3fdDPwx1AgXB/94zbiOypIQT+MX1PJ3PlDrnuQnhN9i1oxz3bie9E2uOV3Vyyd9w1X8v
         qlymHByYOZLc7EvkNGAluQwMEKxMqmHjbsqfq0ttT12iGO+T4OX67ZbH+CDMt/7lORki
         7KXhex65NzvsJ1rHXOZ8PN3fbakmKDbM+Gs2bECUMqyA9qx/uwXAuTuIAn4vFOqFBA4L
         DJJA==
X-Gm-Message-State: AOJu0Yzo3nMe7vAc6u5zmYAqboTA1NrA64C1xDRJm3eKP6MZujmaAYmw
	ahevBomlYdW2dKh15Rrd8lFdSofQYtrox6Kx6Kp7QA==
X-Google-Smtp-Source: AGHT+IEfNk5GXDy4Op4JDSJ5jjpGKCs5RJ5m+Jq4s18y1HSS1sLqrMJRFHEjKKMGNS3lWsWeWVrZ/XIvsrSt6UA57OM=
X-Received: by 2002:a0d:e6cb:0:b0:5a8:62f2:996a with SMTP id
 p194-20020a0de6cb000000b005a862f2996amr14903778ywe.6.1699359511723; Tue, 07
 Nov 2023 04:18:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011184823.443959-1-peter.griffin@linaro.org>
 <20231011184823.443959-7-peter.griffin@linaro.org> <20231016134106.GA2643742-robh@kernel.org>
In-Reply-To: <20231016134106.GA2643742-robh@kernel.org>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Tue, 7 Nov 2023 12:18:20 +0000
Message-ID: <CADrjBPqB_tDjo68qODKsJMQLmDRoQo9U-LFR7os8bExjDNeEZw@mail.gmail.com>
Subject: Re: [PATCH v3 06/20] dt-bindings: pinctrl: samsung: add
 google,gs101-pinctrl compatible
To: Rob Herring <robh@kernel.org>
Cc: krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com, 
	conor+dt@kernel.org, sboyd@kernel.org, tomasz.figa@gmail.com, 
	s.nawrocki@samsung.com, linus.walleij@linaro.org, wim@linux-watchdog.org, 
	linux@roeck-us.net, catalin.marinas@arm.com, will@kernel.org, arnd@arndb.de, 
	olof@lixom.net, gregkh@linuxfoundation.org, cw00.choi@samsung.com, 
	tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	semen.protsenko@linaro.org, saravanak@google.com, willmcvicker@google.com, 
	soc@kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel-team@android.com, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Rob,

Thanks for your review.

On Mon, 16 Oct 2023 at 14:41, Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Oct 11, 2023 at 07:48:09PM +0100, Peter Griffin wrote:
> > Add the "google,gs101-pinctrl" compatible to the dt-schema bindings
> > documentation.
> >
> > Add maxItems of 50 for the interrupts property as gs101 can have
> > multiple irqs.
> >
> > Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> > ---
> >  .../bindings/pinctrl/samsung,pinctrl.yaml     | 22 ++++++++++++++++++-
> >  1 file changed, 21 insertions(+), 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> > index 26614621774a..6dc648490668 100644
> > --- a/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> > +++ b/Documentation/devicetree/bindings/pinctrl/samsung,pinctrl.yaml
> > @@ -35,6 +35,7 @@ properties:
> >
> >    compatible:
> >      enum:
> > +      - google,gs101-pinctrl
> >        - samsung,s3c2412-pinctrl
> >        - samsung,s3c2416-pinctrl
> >        - samsung,s3c2440-pinctrl
> > @@ -58,7 +59,8 @@ properties:
> >    interrupts:
> >      description:
> >        Required for GPIO banks supporting external GPIO interrupts.
> > -    maxItems: 1
> > +    minItems: 1
> > +    maxItems: 50
> >
> >    power-domains:
> >      maxItems: 1
> > @@ -134,6 +136,24 @@ allOf:
> >            minItems: 1
> >            maxItems: 1
> >
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: google,gs101-pinctrl
> > +    then:
> > +      properties:
> > +        interrupts:
> > +          description:
> > +            Required for external wakeup interrupts. List all external
>
> Is it external GPIO interrupts or wakeup interrupts?

These are external wakeup interrupts.

Looking again I believe this can be dropped entirely as re-reading
samsung,pinctrl-gpio-bank.yaml we are already defining the
external wake-up interrupts on each bank in gs101-pinctrl.dtsi.

>
> > +            wakeup interrupts supported by this bank.
> > +          minItems: 1
> > +          maxItems: 50
>
> For a given SoC, I don't see how this is variable? If it is variable,
> how do you know which entry is what?

It isn't variable.

Peter.

