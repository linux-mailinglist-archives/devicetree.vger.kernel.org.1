Return-Path: <devicetree+bounces-9647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D399B7CDAE1
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 13:41:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3AC06281CB5
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 11:41:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CECCB2E40F;
	Wed, 18 Oct 2023 11:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e5WzcXpU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EDC335A0
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 11:41:49 +0000 (UTC)
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1794EFE
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 04:41:47 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-5a7c08b7744so81407057b3.3
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 04:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697629306; x=1698234106; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/wt7hBmTjyhHKxT1iU8w6hvI4yVCQQDXaEm9aRSBcGw=;
        b=e5WzcXpU2fytb9XN+joCyQquPfEHbbmxmTZYnsphwz4tGBfw/uY1+dZa1pLJeAsaWQ
         zBaSGvkkSZiYlF4+gzArH/Eyr4RxfNjIy9VhRXPGrJ6LF5LFc2ePfEth/pywQDlaKC4t
         kLITA9ddJneRhayKWYbgKk5azhhkXA6HNgkWtsFSWZyUkCrUQq0ljXSC/eP/pXTjvsJ0
         S5qFZrGNS0ValRPoh869NYvQZEYj9IbABWnX9J9+KpJDvfO0SCiyva/Hqlqcr2kb9yN2
         Hwjwv3yF+XTNXDh8C6OnBTFduXVgnwWy+TLmQi8qCqJX3op6y6uWx/42zz9qDX9K5YC3
         ebMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697629306; x=1698234106;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/wt7hBmTjyhHKxT1iU8w6hvI4yVCQQDXaEm9aRSBcGw=;
        b=qnuPyRSb9I3BcOc5ZtrIugj6vLu1x0acpez6E96Zh0zEUQGeiuYHxy+yaAb2SVh1uc
         pQGtvX9RgdrLP1ieXVR9GDD89AOktjeRB1qQl+5BDf8U7zKXo4LwUs2QF+eyj08YfKTN
         pGwvYMoJHPQ1JS0Iz2/ThHq3Qg7LsWVwj3co3p+yNbnHMigTTn1yZtzvZrRmhwiH/br/
         vkM9DrXLR0rNZEJXowABbks293SXdPJQcbE63OGtXHiH1n2CUtD+sElrAQN3MxhnWyL7
         qHvHchR0HiQrKcFeo68W/80AcShVUVLQ8SZewPfx7su7V1QCxhL4xa+8r68F8PXq5bbb
         lofA==
X-Gm-Message-State: AOJu0Yxu1mkHeQhhWPiDVHl7vKvncjlTZditwA5E+3R0Nf+3Ck+Jn3yL
	oWxI1J8iOZ/ZodolNaKlOIUCXa1Vshm6zIbj95X7pw==
X-Google-Smtp-Source: AGHT+IH6Ar5ABgryO9a/1CG5P1p4amLNNPBAwWHOK/HFmzy/cNuiZKpFEYqQoBzaYhl7Y/eFSIxDdQy3k/YTcrkku00=
X-Received: by 2002:a81:92c8:0:b0:59f:6675:7771 with SMTP id
 j191-20020a8192c8000000b0059f66757771mr4389883ywg.35.1697629306289; Wed, 18
 Oct 2023 04:41:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011090510.114476-1-ychuang570808@gmail.com>
 <20231011090510.114476-3-ychuang570808@gmail.com> <7800b2d6-33c4-4c4f-8d0c-c11ff0e47535@linaro.org>
 <17a80031-98bf-48bf-8cea-c0ca4400f142@gmail.com> <254837e5-a0fa-4796-8928-277db4b98bf1@linaro.org>
 <CACRpkdaiihOex19SavWwC+S8o5qp=F=XMNm9+UXh=q2nVbOFkA@mail.gmail.com> <4ca28f03-eb05-4cd7-ace5-8cbc0d108b6c@linaro.org>
In-Reply-To: <4ca28f03-eb05-4cd7-ace5-8cbc0d108b6c@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Oct 2023 13:41:34 +0200
Message-ID: <CACRpkdbXm5f7aCnnQ58=XN6PohviPzab0LRw4f6Jq=JZXiVCqA@mail.gmail.com>
Subject: Re: [PATCH 2/4] dt-bindings: pinctrl: Document nuvoton ma35d1 pin control
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jacky Huang <ychuang570808@gmail.com>, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	p.zabel@pengutronix.de, j.neuschaefer@gmx.net, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, schung@nuvoton.com, 
	Jacky Huang <ychuang3@nuvoton.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Wed, Oct 18, 2023 at 11:53=E2=80=AFAM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 18/10/2023 10:18, Linus Walleij wrote:
> > On Mon, Oct 16, 2023 at 9:52=E2=80=AFPM Krzysztof Kozlowski
> > <krzysztof.kozlowski@linaro.org> wrote:
> >
> >>> I noticed that 'xlnx,zynq-pinctrl.yaml' and 'xlnx,zynq-pinctrl.yaml' =
use
> >>> 'power source' to specify the output voltage.  Should I follow their
> >>> approach or define a vendor-specific one?
> >>
> >> Maybe Rob or Linus have here some recommendation, but I would suggest =
to
> >> go either with rtd1319d-pinctrl.yaml approach or add a generic propert=
y
> >> to pincfg-node expressed in real units like "io-microvolt".
> >>
> >> Rob, Linus, any ideas for generic property replacing register-specific
> >> power-source?
> >
> > The existing power-source is generally used to select between (usually
> > two) different chip-internal power rails, such as 1.8V and 3.3V.
> > The format is a driver-specific enumerator.
> >
> > We *could* just patch the documentation for power-source to
> > say that microvolts is the preferred format but legacy users may
> > be using a custom enumerator.
> >
> > io-microvolt seems like a more long-term viable option if a wider
> > range of voltages are to be supported so I'm happy with that if the
> > DT folks think it's nicer. However notice that the power-source
> > property is already being hard-coded into things such as SCMI
> > and ACPI so it's not like it will ever be replaced by io-microvolt
> > and phased out as far as Linux is concerned. Not the next 50
> > years at least.
>
> This I understand.
>
> I think It is better in general if generic properties use units (e.g.
> drive-strength-microamp, output-impedance-ohms), so it could be here
> "io-microvolt". At least for the new bindings.

I agree. Even io-voltage-microvolt perhaps.

Yours,
Linus Walleij

