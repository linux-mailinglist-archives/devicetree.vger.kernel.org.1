Return-Path: <devicetree+bounces-15629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF8F7EB04B
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 13:52:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 773ED281251
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 12:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDEC23FB33;
	Tue, 14 Nov 2023 12:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IUva1w1n"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5991F3FB24
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 12:52:52 +0000 (UTC)
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8255D52
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 04:52:49 -0800 (PST)
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-dae7cc31151so5527373276.3
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 04:52:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1699966369; x=1700571169; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dm5tIBxlFob9g4Fl4wFAfi9oUFoS3/1CELy15DVM1mI=;
        b=IUva1w1nEizlrvNSoUb3UCdQBfVmQ5Q4YZp7nEJb92vakCXDD3tvM56YuNFWj73t56
         TOoZ95mU9fpkZD2KzIW51MFjmpbE6+hIE3T+so0B1GAhA59XFPmZTZSjSDtLr8mydiBn
         Ef9QF2o6CrkfgsAZcZmj+S4j8KOM99mRlpubKhiM/m53A3QLZcc5PUzMkjqGMDY8tRdu
         PS8vjaJPg0kpvBHmKGd8zxZQbZXG+Bwl+WJuQcx5XkAv1XEgI7/vnmvOcFgAVwjfcR2L
         th8L1YtixZdLUKGq3erttfLhik3qL8eBf1l3jQIVwmRRUC1q/x+O6K6Hk1CZ3y4DfDHl
         jIhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699966369; x=1700571169;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dm5tIBxlFob9g4Fl4wFAfi9oUFoS3/1CELy15DVM1mI=;
        b=JyFF/dwoZ7McqqJ9N3pMU1V5U+3REF5WAHdIIigGx/wBcs5Be+bvB8PtYJZhU13nZW
         C68A5rQ70gKeLZDZJLOHbRa6V61h8K7YMuY4wNYItIKon12+gDuaWIKqFrZIflj5tdzV
         x2eb7NV9ut9tnsdYwjs2WB1y75w6HzDADtg+6hbbJd+K12KjuNE2UrmKfPStEG+GoRdx
         BAjlmrVx+T4+W7KzXPJ78XZ209YPHJB3vnbRZ7q5lz54dUs+PRFZ7a5z17cUhXYlTa7e
         1zrowz+q5nCjITDbYHQM/hZWB7xYJ67/UufMfC8cCtTQOillVZdSwNIcGRqrTLGKdwA1
         HnXA==
X-Gm-Message-State: AOJu0YxedJYcdGLjCAnnunPu2fI05sznItJ8sWAKPemAVUnff+5e3ixq
	aKG5GTDM0Xy9bplDf5xQkLvj/7SGs64de5iTw30reg==
X-Google-Smtp-Source: AGHT+IHb5y2/nAMzpAAbpcAqsc2332J3Hl+TEbnJYw6VgROQL9pFrDJMQLjA7DxF+w42E0bHCOIHzfYDBAjoO7yaXoA=
X-Received: by 2002:a25:6951:0:b0:da3:ab41:2fc8 with SMTP id
 e78-20020a256951000000b00da3ab412fc8mr8347458ybc.16.1699966368706; Tue, 14
 Nov 2023 04:52:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20231031095014epcas2p2814fa2bb5f940ccb0d0951667df34f98@epcas2p2.samsung.com>
 <20231031094852.118677-1-jaewon02.kim@samsung.com> <CACRpkdZRMJgWkLwKstpN_9=VGutbE1wBv+X_a15RJ=7ddNtbHw@mail.gmail.com>
 <15d9340a-dd4f-43fc-96c6-f6a8daf76e11@linaro.org>
In-Reply-To: <15d9340a-dd4f-43fc-96c6-f6a8daf76e11@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Nov 2023 13:52:36 +0100
Message-ID: <CACRpkdYrJMnJLHa1+Vtga3WdYySx9ioGzqmnf1uZKGdBxEWa_Q@mail.gmail.com>
Subject: Re: [PATCH 00/10] Introduce ExynosAutov920 SoC and SADK board
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Jaewon Kim <jaewon02.kim@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tomasz Figa <tomasz.figa@gmail.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>, 
	Thierry Reding <thierry.reding@gmail.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-pwm@vger.kernel.org, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2023 at 8:59=E2=80=AFPM Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
> On 13/11/2023 15:11, Linus Walleij wrote:
> > Hi Jaewon,
> >
> > thanks for your patches!
> >
> > On Tue, Oct 31, 2023 at 10:50=E2=80=AFAM Jaewon Kim <jaewon02.kim@samsu=
ng.com> wrote:
> >
> >>   dt-bindings: pinctrl: samsung: add exynosautov920 pinctrl binding
> >>   pinctrl: samsung: add exynosautv920 pinctrl
> >
> > It is best if I can apply these two separately once Krzysztof is happy
> > with them. I hope that would work? I don't see any specific dependencie=
s.
>
> That's fine. I might have conflicting pieces in-flight, but then I'll
> funnel these through you as well. I can apply these to my
> samsung-pinctrl tree and send them to you as usual, unless you prefer to
> apply yourself.

Oh that's best of course, you take them when you think they are ready.

I was more referring to that we should be able to merge the two pin control
patches apart from the rest of the series.

Yours,
Linus Walleij

