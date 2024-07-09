Return-Path: <devicetree+bounces-84383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA63592BF0C
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 18:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8A9811F235D3
	for <lists+devicetree@lfdr.de>; Tue,  9 Jul 2024 16:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 12CC319D09C;
	Tue,  9 Jul 2024 16:05:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="IWQ/Gd2o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE3819B5AC
	for <devicetree@vger.kernel.org>; Tue,  9 Jul 2024 16:05:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720541147; cv=none; b=iEc3JqszN4J9fYQ1WKaSyW1ku9Ayu51bu7mF9d1Yt5lqCWxgQHyUGKc3tcQK5Yp74cmS3kJDQSSHedxzHJRG6kbc0EYK2LVyeyFozXP10gN394MVo4RmiYbxHxqNi+LmN9eqx/xATXJCHgvCAnE1Xst0hEGSCD8Mt6yrzA0n6Ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720541147; c=relaxed/simple;
	bh=VF+yfPArG2Uya737SWlaNledFQMHHnudw306bPlIOaM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PIZIia5uRQtgbEA6807qk8Z3S1YiOw2vulRP7oEjfz1RhyvCsD939GRGqBiBV1uyMiRYdNpIAz9jEr2z0+tqkefLPAYOC7qCNLlMo3u+V0djjNfJAER5s6KhR+/48h7Ga3l78JldDxtSk6jUNSNaNPpSkq3o55/FTU21claDXBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=IWQ/Gd2o; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2eaa89464a3so56334531fa.3
        for <devicetree@vger.kernel.org>; Tue, 09 Jul 2024 09:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1720541143; x=1721145943; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cfXk3fTEqlZPEPFJitKkI9Zinf/x9z2xgvf/3brmGeY=;
        b=IWQ/Gd2owi5B88xlvEg93GsAgKYsKQ6qna0P6SxS4VuwQUISFYR0JrK57mZAh237Aw
         Su6lzjgu2ZkNTr2iI935vg6yHxVskP/XOQnybb1qohHWuERkM+grunj+lSJe11yJZEmY
         6kv6EvKo9+Uu7ODpx1uGFvfFe4dOpahTacQ6NWMgtKYnG8UF9puS2rctXvUjeC2mtShR
         7GCt2pc+9yU7Ee/3Blb51KVaXjuDMbw1blbFKxeJoO6rhEj6S73EfYLyteCG9x9vPuSY
         cGg65Sc3seAUfXvs6cGRcAlebFAOxVNJmnMzu3FYXZfLZlaLlRLc2/AzNVdeAQr792Zx
         tEhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720541143; x=1721145943;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cfXk3fTEqlZPEPFJitKkI9Zinf/x9z2xgvf/3brmGeY=;
        b=Epbjh2mzgSrfjRIXaHcc6gP8dKWxJGv1pUYfpLMdTqWj1v9BQmkYznhi+F8gf6BQ5X
         1cbumXYSY4Blj5tpgTru8dQOxuP2orbhoSakTAitwTN2ZpdYHA2zMiM9u8AGrWwDqBgJ
         caiub8wSUS3ceOimXUW/l8Nsi5/EdjoZhIdfm7SEeuT7RU/5Hn3HRsA0cUafLqHrUNk3
         9uyIme5QSb/KolXq6j7Jr+ToW21bfT+rImMDNFLiaOG6T4kESA35356WeeVyWtTGBieo
         qyi15C/azpUvupyj2V2UHkQ0mWEZssW4hwa/TgDoOSb38i99PmtsFlRNB7nKA3FuUEtO
         3QRw==
X-Forwarded-Encrypted: i=1; AJvYcCVcPTTyLJim5Q3stckh1s8vvAQluGAYcXe2GHBwR85GrSirtCIrW7x3jKSN61Iz4b7X4+6KB3vy9ZF0reiqV5RR9zQoT3XnHgVkhw==
X-Gm-Message-State: AOJu0Yxk6SqffPsy84CXDMNtft8kwPwBHpdJDt9YsSU0GkSVyPBMhbMk
	atDte1DnTd23TCmUhDEP/BFXWOmxgAAjakLX1BwTvkaEInPEPwwjfBBPkb/CBSd7KXPHEUVTVuI
	6W9HghTjKuc4MQaNYZ9/MFcEjyN0Kb9yPuV02pg==
X-Google-Smtp-Source: AGHT+IGKSJVfXAisUe6NcGYCOjmc/g6+k+gV6B29QgDU0qUyMmPFcYA13AfVsIS1mqs4poXl9Q2EMviFQ4lfCIG8kns=
X-Received: by 2002:a2e:9097:0:b0:2ec:4fec:812c with SMTP id
 38308e7fff4ca-2eeb3197a3dmr18848061fa.44.1720541143636; Tue, 09 Jul 2024
 09:05:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240709092354.191643-1-manikandan.m@microchip.com>
 <20240709092354.191643-5-manikandan.m@microchip.com> <172052434347.27822.16864713604407945517.b4-ty@linaro.org>
 <20240709155410.GA3589336-robh@kernel.org>
In-Reply-To: <20240709155410.GA3589336-robh@kernel.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Tue, 9 Jul 2024 18:05:32 +0200
Message-ID: <CAMRc=McwTgOjQrNtSVORWFS92tJA_G=26x-8E6U+=4qW0d6OWQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] dt-bindings: gpio: convert Atmel GPIO to json-schema
To: Rob Herring <robh@kernel.org>, linus.walleij@linaro.org
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com, 
	alexandre.belloni@bootlin.com, claudiu.beznea@tuxon.dev, arnd@arndb.de, 
	durai.manickamkr@microchip.com, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Manikandan Muralidharan <manikandan.m@microchip.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 9, 2024 at 5:54=E2=80=AFPM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Jul 09, 2024 at 01:25:51PM +0200, Bartosz Golaszewski wrote:
> > From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> >
> >
> > On Tue, 09 Jul 2024 14:53:53 +0530, Manikandan Muralidharan wrote:
> > > Convert the Atmel GPIO controller binding document to DT schema forma=
t
> > > using json-schema.
> > > The at91 pinctrl driver uses "atmel,at91rm9200-gpio" compatible strin=
g
> > > to find the number of active GPIO banks and identify the pinmux nodes=
.
> > > "atmel,at91sam9x5-gpio" and "microchip,sam9x60-gpio" have additional
> > > registers to handle drive-strength, slew-rate,  pull-down to drive th=
e
> > > pinmux configs.
> > > The new compatible string "microchip,sam9x7-gpio" is added.
> > >
> > > [...]
> >
> > Applied, thanks!
> >
> > [4/5] dt-bindings: gpio: convert Atmel GPIO to json-schema
> >       commit: 337049890b8cbbb4fb527c58976ea19f4dc747a0
>
> Patch 5 depends on this one.
>
> Rob

Oops. Linus, I see you already acked it. Do you mind me taking it via
the GPIO tree to avoid rebasing the tree?

Bart

