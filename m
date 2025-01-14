Return-Path: <devicetree+bounces-138475-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 288FAA108D7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 15:14:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9C1E18841C2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 14:14:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7CE143C40;
	Tue, 14 Jan 2025 14:14:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HQwo7w4A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB7F713D520
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 14:14:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736864070; cv=none; b=ZZRbmBVBWVsboPT3l6aG3DynX2JrXMi5ljly5A+j3vCMrDHXr8Th2NK+bOtOEwXTkG+/lCKj8ju7DosbYfhmzDtvOy3fuXwLnI9/Y3hw7zVGwiFY+BPln475WCB5bRY0UGl1pBdo7GIBjxjrvIyofhv5sLV8D25B/a5LX/l6zQU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736864070; c=relaxed/simple;
	bh=kb+N7KX0rT6TQGPdAoyZC4q4c2muk934hfkb7Zz1PYk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IhFd1wK6XnZhVvi4DAxcAb+pp0NKl0zHASnos+/wx1GErJ6GP8Aws24T9BTdyDAmwkXYjfO2CVcVbflhz6gtb57fnYDrzht87uh/97W4jKIO78prlvW00iAV7IWstSxazwqHNfStoSShSngZKLemsClL6ckBLKDcWj2seTx9nbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=HQwo7w4A; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54026562221so5735849e87.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 06:14:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736864066; x=1737468866; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kb+N7KX0rT6TQGPdAoyZC4q4c2muk934hfkb7Zz1PYk=;
        b=HQwo7w4Au6FKAwDGBLwwBdFLw/dJRQH4WnJvHHPxUHvpqpe3esDAhBJLm4oGkHav0K
         b35V32MSFWokv2mc7zfbyIXx6vyal33Yms3txIxI7oyasTbRp0DvJMV22rQX6Dn0Jod9
         S74LKAJ852hiIeWQA/rdMM+QIMyjs0H1W101J0dr1vOo6P6FgNrSHIJy3K53G8VFssT/
         0CC2SfeOnVn7wRmm0dLwacNoInM0KzLPobUTsBdOk+aRKXBrB/mdxGH9CUV4Tirozm87
         ZIWxTuPAatznJoe2hbJRSWS18U9JLutgn4hbEoZKFb5ZzKC+p7Yyq+AFsBQ3d5ZkKHbF
         9ANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736864066; x=1737468866;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kb+N7KX0rT6TQGPdAoyZC4q4c2muk934hfkb7Zz1PYk=;
        b=ra4gckCtByd3acc6W/Zqm2CPyf2wPZkeigdsDlfrVCYfzquApMaODRvb612CI7Xys0
         9fVI5ZSmpsVd50XbZvxPdQ8ePMKpr95vMNyhnBdFZS1hzVqoR/2uEskyTbqmInowA4iC
         Rm46TNy61zFtTv4mBq+grTip2arQ4MSMe1fDfoUU+rzY8O+QirRlr+psj15DjO+BE+Ed
         vC7GgjA4k7dkFLnCP/getLFAs0wyTQRARucr4JwJeXhTgDjvB8x9a2kuupWtpjkkkVjg
         2Y5O/OzaDm7mONMocu2wk6A6rphBBlk1C+H84pj0REyAVS6iDTwoAqn3l0m6C4QFNf8f
         Vcuw==
X-Forwarded-Encrypted: i=1; AJvYcCW7Sq8SEYu9zrErNvHmndO4eyQ31mrX+3y6LPdk8LqU98RzcgB4FSdzeRaftqzA1PJzudyVwXimqZpF@vger.kernel.org
X-Gm-Message-State: AOJu0YxEqa6VfbH5ERudjIAfkSSx8JOgYmmfEJa1sGUjTJT6e601HEEj
	1C30UGIT7QfhtEuRu1p8dmTR5vQXZc5RYwIWLWHzTTU8jcW2lUA8xbJinL5d/OtReVUqXe8ENpj
	77lS5Kou6+T0Xz9zSCV6gnveDgQz4vG3JlXiGRA==
X-Gm-Gg: ASbGncsqCn7VWytJ7/B1xl3P3TizgScqOjHqEFv5qXR+ivq2lNCDojGBRtAt+bZB9Yx
	nppJ/DEtaXtFTHbCJi26fhjAtELV46kUjKrj6
X-Google-Smtp-Source: AGHT+IGQT/qQTanY0VeTmw14H4V1Aaz+aOnG3UKuUwYfMTsXxCW542oDFqS8vWTFAvYHrASeV6/2sAbC1dUoPYmd1+8=
X-Received: by 2002:a05:6512:104b:b0:542:8d45:cb3e with SMTP id
 2adb3069b0e04-5428d45cce2mr7226522e87.18.1736864066034; Tue, 14 Jan 2025
 06:14:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250110123923.270626-1-szemzo.andras@gmail.com> <20250110123923.270626-4-szemzo.andras@gmail.com>
In-Reply-To: <20250110123923.270626-4-szemzo.andras@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 14 Jan 2025 15:14:14 +0100
X-Gm-Features: AbW1kvZbpuLPblFhcOWb0pAf-vXkkjGwXrNgVmso7Oy8q5LSTsj10tRLuD4ySG4
Message-ID: <CACRpkdaz7ABO2QQwv1NFaPm1dOF_maO-bxWQdPNoYAmUXDKCDw@mail.gmail.com>
Subject: Re: [PATCH 03/12] pinctrl: sunxi: add driver for Allwinner V853.
To: Andras Szemzo <szemzo.andras@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Maxime Ripard <mripard@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-sunxi@lists.linux.dev, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-pm@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 10, 2025 at 1:39=E2=80=AFPM Andras Szemzo <szemzo.andras@gmail.=
com> wrote:

> The V853 family has multiple package variants, from BGA to QFN88.
> The latter has co-packaged DRAM and fewer pins, and less features (pin mu=
xes).
> All family members can be supported by a single driver, as the available =
pins
> with allowed muxes is the same across the devices.
>
> Signed-off-by: Andras Szemzo <szemzo.andras@gmail.com>

Looks good to me, waiting for a review of the bindings before applying,
but I see no problem with the patch as it's just using the core sunxi
infrastructure and any minor issues can be fixed in-tree.

Yours,
Linus Walleij

