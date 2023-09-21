Return-Path: <devicetree+bounces-2153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id B4D867A9CB1
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:23:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E7DB3B231E4
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:17:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98237436A6;
	Thu, 21 Sep 2023 18:10:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 915B342BFB
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:10:52 +0000 (UTC)
Received: from mail-io1-xd2b.google.com (mail-io1-xd2b.google.com [IPv6:2607:f8b0:4864:20::d2b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA5EBAC7AC
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:02:25 -0700 (PDT)
Received: by mail-io1-xd2b.google.com with SMTP id ca18e2360f4ac-792726d3aeeso49552539f.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 11:02:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695319345; x=1695924145; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fBhNwxRW2TiFrElAif7iI6ZafZNTH+8pl3WgNjQm1nI=;
        b=Z/2KP6Sxxaf8bygb4HfzsCXQiQwaHwcRQKv1mk/9W2vMHd7fSyPIYsTqMqBSJJwoTP
         Ymc/Ior90+xXan+HtQ6YJz2joNdyxGtX0NGMds/U1MOI6YMmkRj28/o9evCPpL12PJPu
         5MDITYsLZ0PlKhuCaukjiE3byypajHdy4x8q8AZWH/CG8GNGSY3OKMHchhiC3V+73mfO
         8dUPRFdB4mcrfDEayh1OjgUa37tFGZRAXzsjXxc9sRMTrZH+ZkuhoXnFT5LJtXXJknMS
         875mp9fGhof/pJcBaGrhlGO6EiCOPYSDQXFUIwIiapPYnE/dXVzTFx7K3d7QKMrlXVqV
         Mlmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695319345; x=1695924145;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fBhNwxRW2TiFrElAif7iI6ZafZNTH+8pl3WgNjQm1nI=;
        b=p4vONlBp9R33TKikLHJP2lCwxfwW3Rv7kGwYiPWrMNSX2/iq2zmuZkZBqWUMod37WS
         IBECiEHSV0/v5gYIeDQsnzTCUKaf/Sg+Regct2Q16N+UvKXgkNV01bJjHnL4f+xNSXH7
         GDfznSXaiaW3P79gsuUU2mAgQEcu/0SFPFQZJ5skwqHFWYGMTqkDLyrpkD1bmz+8bZpi
         1Yrg3WREmTQPJZcQbLpnhyXaQel41hF9v78WjmCk1c/2tqLK1W+0s/U6zozwDpMKr+SQ
         ZcpuPIH8SK865VY4/1KIQOJrXZzKNeH0Wu+rga6zSHBu2ZOYt/jtCVDYF/Kd0IasvqH/
         XeIw==
X-Gm-Message-State: AOJu0YxXNJCpt6dVc08QVba8rgI1g4vK/bmXRFZqOr0NeU/0nvfK39Zc
	a+TWcPYgldJFuKoySGE8FfFEHLChh8Oa9TNJqgMSfvJcokhkv5VR
X-Google-Smtp-Source: AGHT+IFvn2xj3bCzCzglyhTLZ+/0AMj6N+3hw5k/GAMytQtun5T0UTI9xu+zqnMzKuqsF39WZXpX1QhtPlsDG/KwFrs=
X-Received: by 2002:a81:a041:0:b0:586:a2f9:648e with SMTP id
 x62-20020a81a041000000b00586a2f9648emr6026906ywg.4.1695299654629; Thu, 21 Sep
 2023 05:34:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921-ixp4xx-gpio-clocks-v1-0-574942bf944a@linaro.org>
 <20230921-ixp4xx-gpio-clocks-v1-2-574942bf944a@linaro.org> <ZQwngrU9fxdSGSKs@smile.fi.intel.com>
In-Reply-To: <ZQwngrU9fxdSGSKs@smile.fi.intel.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Sep 2023 14:34:02 +0200
Message-ID: <CACRpkdadMCXyWYycMHZ0m7ZscTayJs=378e8DPJDkEEyTOeLUA@mail.gmail.com>
Subject: Re: [PATCH 2/2] gpio: ixp4xx: Handle clock output on pin 14 and 15
To: Andy Shevchenko <andy@kernel.org>
Cc: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
	Krzysztof Halasa <khalasa@piap.pl>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DATE_IN_PAST_03_06,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Thu, Sep 21, 2023 at 1:23=E2=80=AFPM Andy Shevchenko <andy@kernel.org> w=
rote:

> Maybe
>
>         if (...)
>                 val =3D 0;
>         else
>                 val =3D readl();
>
> ?

Neat, I'll do this!

> > +     /*
> > +      * Enable clock outputs with default timings of requested clock.
> > +      * If you need control over TC and DC, add these to the device
> > +      * tree bindings and use them here.
> > +      */
>
> Shouldn't this be integrated into PPS subsystem?

PPS is for GPS, we *could* integrate it into the clk subsystem (with
configuration cells and all hoopla) but as I state in the cover letter
I think it becomes overengineered for this legacy system, there are
no users or benefit of that added complexity as compared to these
few-liners.

Yours,
Linus Walleij

