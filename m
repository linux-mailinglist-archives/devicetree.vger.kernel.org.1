Return-Path: <devicetree+bounces-43614-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DC9D685AE19
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 22:57:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 37708B22955
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 21:57:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21C9C5472A;
	Mon, 19 Feb 2024 21:56:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yaKQvI2I"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14FA54FA8
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 21:56:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708379807; cv=none; b=CLY2C6EGIuq7QPeeERo+nP092P0gUffnph6lRblkaXZMzmFrQhSAHcM2abQm8TWE2g2brC9mzTDybzKh+fgu67MFfrtT4TV81m4MDHnDUUYpYw3NpI31s08Gu8FaA0T7+bLMK4WEBOMF+0CVaNK+AbMsqG1wugbPAoxQjzsGCrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708379807; c=relaxed/simple;
	bh=jnwZE4S2VTxOOE1MLufKwv7MLtdIeQ/H3SGA6T3ceVw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gwF7tCJ98/bGQSa9VvXCKKDmdSYbrqwWhQ5chAyzdVzws8kbUEQLXJAUY2ORF0zDbv4GTCr8bl2piQYRMTo35c6iNHi26UXCkTS0i4A4dLx2JaM4lqxNzfafhnI8/V0b1HRlrK2Qy7n6aOwCSVDTFLWHbi8/as8f8/bDkOO8DuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yaKQvI2I; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-60821e8d625so17435147b3.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 13:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708379804; x=1708984604; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0/z7Oth3uWYAoZv2gVpy6Dr4nj1eg780SKedkbWLNvY=;
        b=yaKQvI2IzjqJefvDuWLsiN7ih+t6Ar2DuN96gdel9Da/lXfAe0CyXVGlmNudhJragY
         SAxpmWT2IVinRNrzaJaze/UJLrcjIRBH8gjrEnF9nZ7xUMQ5Pz3qeezT/EXGY2GVF1kG
         /RhvKWGnszItfi9V84Pn4iLNaaupRH9Jh0hhSQxQ3BKz2ozGC04VFtpP4wDrXDup3BUC
         GnQE1aEOmZFViAvgWMKX92tXQuzI7AzuTftCAMqsZGoVRH5X/Fpwz6l1ssAPm2UKJCqw
         js0vmBGHx2zMjkUn6Y6KwefSnUaOBQNEjChV3pz0PVUurPGG3A7qcpAVjAuxKlwJvzmI
         3PdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708379804; x=1708984604;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/z7Oth3uWYAoZv2gVpy6Dr4nj1eg780SKedkbWLNvY=;
        b=aJ6W4SPuVhx46g55qj5Ub4TYc1C7iuyZvW9BKUMeVzFOLZUs1kg2D2hf+0hEG/9WGr
         5U5JdLe9ZsvdP9YQjDM1RF2ne4gXoocNtZlhqq4eVIZkFso1jWbVpEVO4Vdw8vslIAq2
         2KTT3LZouX2BiT4HtZcKCklSWwO/q7lPOyPQWqG+KvBOf8+MC1xqK/GurLHzsOQXf7Od
         Q7Y2U67eU/djJ1hmQn/G/NYLmlZbLG5kupJAuyp4l8pcBk4TRRf2Y0Cqn3HnvAuIz7l9
         rLRJ3aGMyS7iDVuSTMW/5VrnYvjdjeX8X07KUMhdLQ8hmVIumzyFPtEFFRHP/ucQs3sh
         KpLg==
X-Forwarded-Encrypted: i=1; AJvYcCU6Y1feks1+q8KuPkgzjhM7Fm2cCEmgrg5mZnMOo6qSpxzn/bvU1s8mH9bu6bTEVe6FqjsWFmV/KKDo+r4dMgUdiNb0ejljrSm4Cg==
X-Gm-Message-State: AOJu0YwfeZfRQwX2TYPqt55mhVnskGTv78SvD9TUD0wVOBvXs8lQHgpO
	mT3Rv8hkRk38fDb7sHPnLQkxLAnhdLh5e3jZjJNSlFrjL9tCwKl3tJQhfXQh1NpQGaKz8elebJt
	5l62ht2OV2dzsdQqw8jllyYAMPrJcQQiIi7wR/Q==
X-Google-Smtp-Source: AGHT+IGcz7rDFrB3H96NwCEBK79eVL4dxmtjY7EUMR+E2Y+tyM0OKpEUleavbf8K7T1I+Q8afEbrz38cYzH/dDLZwL8=
X-Received: by 2002:a81:ae41:0:b0:607:e8c7:f9c9 with SMTP id
 g1-20020a81ae41000000b00607e8c7f9c9mr12782963ywk.1.1708379803904; Mon, 19 Feb
 2024 13:56:43 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240214-mbly-gpio-v1-0-f88c0ccf372b@bootlin.com> <20240214-mbly-gpio-v1-13-f88c0ccf372b@bootlin.com>
In-Reply-To: <20240214-mbly-gpio-v1-13-f88c0ccf372b@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 19 Feb 2024 22:56:32 +0100
Message-ID: <CACRpkdbq_QxdftNGOv3+-SpfrV_qPTB-m-atdY0hCE_s8DK64A@mail.gmail.com>
Subject: Re: [PATCH 13/23] gpio: nomadik: fix offset bug in nmk_pmx_set()
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 14, 2024 at 5:24=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Previously, the statement looked like:
>
>     slpm[x] &=3D ~BIT(g->pins[i]);
>
> Where:
>  - slpm is a unsigned int pointer;
>  - g->pins[i] is a pin number which can grow to more than 32.
>
> The expected shift amount is a pin bank offset.
>
> This bug does not occur on every group or pin: the altsetting must be
> NMK_GPIO_ALT_C and the pin must be 32 or above. It is possible that it
> occurred. For example, in pinctrl-nomadik-db8500.c, pin group i2c3_c_2
> has the right altsetting and has pins 229 and 230.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Ah good catch!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

I this something I could just apply as a fix or are there
dependencies on other patches?

Yours,
Linus Walleij

