Return-Path: <devicetree+bounces-3659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91FD27AFB76
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 08:56:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 44D85281313
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 06:56:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED4B71BDD8;
	Wed, 27 Sep 2023 06:56:39 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6931E368
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 06:56:38 +0000 (UTC)
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com [IPv6:2607:f8b0:4864:20::92f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C50DD6
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 23:56:37 -0700 (PDT)
Received: by mail-ua1-x92f.google.com with SMTP id a1e0cc1a2514c-7aae07e7ba4so4060449241.1
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 23:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1695797796; x=1696402596; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ogHgKYOg4Pr/48DpWW/k5DqXjmMzTHrz2VavoAqChL0=;
        b=VtlD3vjw3b9qsIlToPFug2iap18BxG3lbLhkcfkI9y4ecd8E+VHNI7WdcmruujfaZU
         bZHs02deWDae8FNoT8GAJ8BmgyOWvjs9r585LO5qlekLupo0Bf3O5CPRUdu/i3qNlzgb
         sGVG18XF40qbag2saOy+wRLX+h8WPzPCx+q6nXLyZ7eBoFTX+Bzf0AMnPcaQnSQjuuKX
         xIB7juVwxW+azV1Mv7IRjbsFffzU462iZOru0OKdfEWwrgVbWMjviJdNwc8T/ROCnq/h
         qIcHwoiuzpuLOq2VEejXivx2/LrvGx2l08u70s4FUfdKNpdvh6C2c0uPwUg9T/rpvLqs
         cOlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695797796; x=1696402596;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ogHgKYOg4Pr/48DpWW/k5DqXjmMzTHrz2VavoAqChL0=;
        b=kQnttrvpeDQbER8kCLdPqiwBmrAyJv1RisxfW9mv6rLqpBWI+ssYqT9xf93SVQ+mCt
         rQhS/jVBzviCSKg04QXQatdhc5X96zpStnplmQY8WD+1F0Kfc1/VgzXtGriG2vukGhUp
         QCMkUJTpnJYs/B9VYkumHBN6vOnPyHy0VSOSIPxPq831BirH7UNH0WLd7LiPqnSizuFy
         r3SxdSzZ0E2rBIq8Z81OT30U1PzTlrVn4G9AdLmDFliZqN18Z+YNp5zIH4VwWFdR6cTo
         TWZSdMsBYwyi7nd8/TawvNxlwOahuLXACSOyombtOb+3D2ATetUha+jfU0cL9toDFH/A
         rlyQ==
X-Gm-Message-State: AOJu0Yzv9HyuyqOgycYz3bxHz8ZB6OiWheEscDyImxJaeDBfVHZkB6Iq
	Ro1FGT9/ZGHSGYdnboQajwxM7bsNwxMqHcgCVp20bQ==
X-Google-Smtp-Source: AGHT+IEu7l+qv/EzFktz29NbLQ8Mjiny3AVF2fHHy3dxJi8oJsXwR/qzlMXaz4XRHFg37LF+Nq2tqw4MF6xZYwKTDJo=
X-Received: by 2002:a67:eb16:0:b0:452:773c:e0a6 with SMTP id
 a22-20020a67eb16000000b00452773ce0a6mr1149906vso.9.1695797796250; Tue, 26 Sep
 2023 23:56:36 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230923-ixp4xx-gpio-clocks-v3-0-66f8fe4e7f15@linaro.org> <20230923-ixp4xx-gpio-clocks-v3-1-66f8fe4e7f15@linaro.org>
In-Reply-To: <20230923-ixp4xx-gpio-clocks-v3-1-66f8fe4e7f15@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 27 Sep 2023 08:56:25 +0200
Message-ID: <CAMRc=Mdk783GGe8-9__sNigr8kMedmLO1xtqtsbK2y=RMFJ4nA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] gpio: Rewrite IXP4xx GPIO bindings in schema
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Linus Walleij <linusw@kernel.org>, Imre Kaloz <kaloz@openwrt.org>, 
	Krzysztof Halasa <khalasa@piap.pl>, Andy Shevchenko <andy@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Sep 23, 2023 at 6:02=E2=80=AFPM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> This rewrites the IXP4xx GPIO bindings to use YAML schema,
> and adds two new properties to enable fixed clock output on
> pins 14 and 15.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---

I queued this, no need to resend it with the next respin of patch 2/2.

Bart

