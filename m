Return-Path: <devicetree+bounces-9546-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 274837CD635
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:18:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9FE5F1F2364A
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:18:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13AB14AB5;
	Wed, 18 Oct 2023 08:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xiFrIP6f"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4897E14A9E
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 08:18:21 +0000 (UTC)
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A94E1B6
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 01:18:19 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id 3f1490d57ef6-d9a6b21d1daso7616577276.3
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 01:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697617099; x=1698221899; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FaEmtppYZAhMsYDBHeyk5qHJOFganXNI4hJEHgjEbgc=;
        b=xiFrIP6fjZCSXHuVPOgbEzSqeYUB+FMSEL4NRfS3k2N3TeUnHL3edBbvuS0YtdTTnL
         l59zCNthfddQ/eXB8mq4AZmtREcp9+iNd15A4D+ofPxsKlZr7jxzHkd1xKwcnB5j7YCR
         UNSbEZW9pvsVdV1PLJprETk8dDh8GGdLuMvdwQ8TwN/JrjZwn9HJAajPZtv6N5tEbsGB
         pjP8dQ8hrDXRK4yTM3rZhWA4YIIophv6ZGypz/4Y+VY6fqziCcmAegx0GhgC4mMOiaBj
         qM5c8OTDFZ/QjAGF7UPODPsi7XQn6XBPfBMkBkHCJrWUBMft7QvrxoH2U9m+OK/kZhzI
         ltPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697617099; x=1698221899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FaEmtppYZAhMsYDBHeyk5qHJOFganXNI4hJEHgjEbgc=;
        b=YsEOvGLgadYAXVcjKPxbLcAGkOsKxzZXmwVtwr0wi0MME3Zo8CzRWCiJ0wFirBYTWM
         qO7HAb0AvduN6ChzgzbAfFQRVMGIcQyZMRdoK0vW5zmg9szkSD1KiJHfqsABvUQ7hLj/
         YcisdCNGxmL8tZd2jJp95PViMuA97a72MXTyDrSw1CqsEP/jHmY3+7e32sdIFjqcbuWF
         f9riL5AcT1yBQNPlAfkSqD1YgFZAt4KIFIE939wx9yPzJ4yc3ph1Js56bldPUNlOFfEw
         lzjDZ6qyxwbvllwJyYEFlMKwn0VOBkw6L9zScuQQB2mhJYHeStS8+BuszwcbiBlSpGZ7
         3SAw==
X-Gm-Message-State: AOJu0Yw3OdsTrEQg5uzxARJpCDREb563MZ2MrTWFyVm2DWys0euEh+Y0
	v0dkTm5GErhtrd4sXIWeCb/ulR12M/ANebiWsFPLwQ==
X-Google-Smtp-Source: AGHT+IHS+aRA61sStPYBODFMrmmJRiulx2KlXd75EfRcMgJwP5MT9v5x1H3ytS7hzs2Li0IIu8G73H57gxRh3paxT6s=
X-Received: by 2002:a25:db07:0:b0:d9b:5428:d601 with SMTP id
 g7-20020a25db07000000b00d9b5428d601mr4246998ybf.21.1697617098878; Wed, 18 Oct
 2023 01:18:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231011090510.114476-1-ychuang570808@gmail.com>
 <20231011090510.114476-3-ychuang570808@gmail.com> <7800b2d6-33c4-4c4f-8d0c-c11ff0e47535@linaro.org>
 <17a80031-98bf-48bf-8cea-c0ca4400f142@gmail.com> <254837e5-a0fa-4796-8928-277db4b98bf1@linaro.org>
In-Reply-To: <254837e5-a0fa-4796-8928-277db4b98bf1@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Oct 2023 10:18:07 +0200
Message-ID: <CACRpkdaiihOex19SavWwC+S8o5qp=F=XMNm9+UXh=q2nVbOFkA@mail.gmail.com>
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
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Oct 16, 2023 at 9:52=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:

> > I noticed that 'xlnx,zynq-pinctrl.yaml' and 'xlnx,zynq-pinctrl.yaml' us=
e
> > 'power source' to specify the output voltage.  Should I follow their
> > approach or define a vendor-specific one?
>
> Maybe Rob or Linus have here some recommendation, but I would suggest to
> go either with rtd1319d-pinctrl.yaml approach or add a generic property
> to pincfg-node expressed in real units like "io-microvolt".
>
> Rob, Linus, any ideas for generic property replacing register-specific
> power-source?

The existing power-source is generally used to select between (usually
two) different chip-internal power rails, such as 1.8V and 3.3V.
The format is a driver-specific enumerator.

We *could* just patch the documentation for power-source to
say that microvolts is the preferred format but legacy users may
be using a custom enumerator.

io-microvolt seems like a more long-term viable option if a wider
range of voltages are to be supported so I'm happy with that if the
DT folks think it's nicer. However notice that the power-source
property is already being hard-coded into things such as SCMI
and ACPI so it's not like it will ever be replaced by io-microvolt
and phased out as far as Linux is concerned. Not the next 50
years at least.

Yours,
Linus Walleij

