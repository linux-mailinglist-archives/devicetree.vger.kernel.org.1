Return-Path: <devicetree+bounces-21258-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E33A5802F57
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:53:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6D692B20992
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:53:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B1951DDD7;
	Mon,  4 Dec 2023 09:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z1ihlZp5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6266BB2
	for <devicetree@vger.kernel.org>; Mon,  4 Dec 2023 01:53:16 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5cd81e76164so46669577b3.1
        for <devicetree@vger.kernel.org>; Mon, 04 Dec 2023 01:53:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701683595; x=1702288395; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=B4N5YX1BKV8oox5fEfVsppXE4Fy2jzNA7d1t/N82c1Q=;
        b=Z1ihlZp5OvACtHh8wDM8HVv9cYHgGpVvf6XuwF/q1xhvV3BuS5YPMfHQnyiYd/WR49
         YSv4lnUiHpL+ELL6YxhotvcpuHrUFm0VCRJc28m5EpLM1Lo9NH7UBOmiaoBkuHstMi0n
         tNJdaZIZxjmvlUUA8HIdNTScCS59ruHrdze4WNXHCUAkuAHm/3Kj3f/e9BoTcSgBSTMi
         V7Bn11D5fI+sxqeUyRvq3KrXk2Wjfeb78tazkOp3CpwrAmcEkED+7ziK6SN57BszxQrr
         AO9JtIBXhy5u4eA3vnkRLu3xzC16lXXws//SNG98yv+L7pThx6HjOCUS1JNk5exGiK8P
         hSpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701683595; x=1702288395;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B4N5YX1BKV8oox5fEfVsppXE4Fy2jzNA7d1t/N82c1Q=;
        b=GbYcmPH0eQBFVwW5CszI73AcQ5urYNM94sGmTl9n1kGd7xTau5BFQNoQJ6+Oi9MJye
         +xZEGW2rBaVjDNR76Mp5bLBs15Pbaxdhq/v9TNYfXpIQ2ODRGZWrsICvxZkxUIiJbsEx
         ydyzgbWXggToERQa7de735yohoYyyiiuMehCyZ/pI0gbIrYo7Lc6bXSxWfQfUAG5zTGm
         lX4rp+Q8vkkjJfO7pgCFWrDwtd0p0NTLcTbKO1guoDjsA8jjmxeBBKcGUaHUJsq4QIky
         KUhSmSwl/+OT3swVfoaJgCLf+L18H3zWuaYtiZJy7dvZK5w2Ps89hqBUfaDljz8yOcUm
         WE8Q==
X-Gm-Message-State: AOJu0YxZ+AkHn0ZDJ3Avpu9HWn2LJUkzI2p1EEfzChMqsoex7vOu6Kp5
	VvSSC7OjvzU7H5bfHwDAO20mh//PTYISlmeZZoN1Hw==
X-Google-Smtp-Source: AGHT+IHcnTMe/JadPl1Hll5euXLI4XbibjJDI0jfVQz3qrgnV13paxopm65SeTqFDG1zbpo/IAuRT5PYQjZPVvBBMpw=
X-Received: by 2002:a81:ae05:0:b0:5d4:1fe1:312d with SMTP id
 m5-20020a81ae05000000b005d41fe1312dmr5265235ywh.17.1701683595605; Mon, 04 Dec
 2023 01:53:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231128-j7200-pinctrl-s2r-v1-0-704e7dc24460@bootlin.com>
In-Reply-To: <20231128-j7200-pinctrl-s2r-v1-0-704e7dc24460@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 4 Dec 2023 10:53:04 +0100
Message-ID: <CACRpkdbsOxxemqe023jsE8vCxgY763CAZJ-Ru9dLTr=5-wqzBA@mail.gmail.com>
Subject: Re: [PATCH 0/3] pinctrl: pinctrl-single: fix suspend/resume on j7200
To: Thomas Richard <thomas.richard@bootlin.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Haojian Zhuang <haojian.zhuang@linaro.org>, Nishanth Menon <nm@ti.com>, 
	Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-omap@vger.kernel.org, 
	thomas.petazzoni@bootlin.com, gregory.clement@bootlin.com, 
	theo.lebrun@bootlin.com, u-kumar1@ti.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 28, 2023 at 4:35=E2=80=AFPM Thomas Richard
<thomas.richard@bootlin.com> wrote:

> Thomas Richard (3):
>       dt-bindings: pinctrl: pinctrl-single: add ti,j7200-padconf compatib=
le
>       pinctrl: pinctrl-single: add ti,j7200-padconf compatible

Patch 1 & 2 applied to the pin control tree, thanks!

>       arm64: dts: ti: k3-j7200: use ti,j7200-padconf compatible

Please funnel this through the SoC tree.

Yours,
Linus Walleij

