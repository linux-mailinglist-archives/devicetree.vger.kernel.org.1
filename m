Return-Path: <devicetree+bounces-44382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC4B85DFE1
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:37:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 091EF285AF3
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E00EC7F7FA;
	Wed, 21 Feb 2024 14:37:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XU0P1dH4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C9F069317
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 14:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708526249; cv=none; b=kay96/Ydf0WpAmfjEWILVXJUxS0R5Za4lpBKO1+I98IvB2gyS6wN0HdOPbDA9yBnP5kxmu2kJEgb2ZuCrTu4pIQINJwkDCqaDQJPZBnhh8yadmoG48O0/lEHwsYozwohu0iy3D1ArpclM3SqK27Sz2YyQ8gMku+laBEn/bv80mU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708526249; c=relaxed/simple;
	bh=J8q0JlB/CSmcraPRz+OroMVJcRYOKeq7wFX81mHHwC0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AEWoXcljQtwuzS3Bgm3Kskz5W6ko7N87qNV7pGMyP4zRxOlvdC5V8qXu+KJiVYXc4JBMCZT1YmAEPrDqBLMCXUdGacf4Oec+cJgatUgS2DN1HjVKpxUCD6J9f7LaRFlDv22J8waMt5CHsETtM+z0kLDaD4pTdONi/CCB8PXpg7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XU0P1dH4; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-607bfa4c913so6550127b3.3
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 06:37:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708526247; x=1709131047; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=96dYgcSw1uzHwk35CUcYsL8G15ZF0LlfphttW1dNAO8=;
        b=XU0P1dH47EmAdAw554gnxahswlY2N7CeXgUBjqVbkF2itptU1PLUl42y5XyjO0vZWT
         pRm3JuvaAayAr1GDHyHoBkndoN5hkWSUvvygxeibgytIm46/TNFPG/464m9CnYKKH1xE
         E3xOy3lPOp5Uhv/2I7Sk0CppJSj4N+8fhuR+waXkBOZUAnTU8JK8QrpSLbFqi9y4nq2E
         LgY01q9KHjnEd7ZqVhrCgneVdgXRRXJLMc+sDXL0OuUgKX2r+zkc7sMILzIUvyzY0fE/
         qfJYEgjFiEO1T5mAhfeDH3+ACHt+NjlC3j3QjPw0h9UVEh6bPCHUBIJMU4R4ijBTDFwu
         riSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708526247; x=1709131047;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=96dYgcSw1uzHwk35CUcYsL8G15ZF0LlfphttW1dNAO8=;
        b=PNhz/nd7jGziNyX6OEYxOei2kiKwDWQF4oISTf99J7kwiB61WqzUbYvg1wcZYgdGWD
         T2K5EzkncdgJxsiT7LGmyzx42VI+v2KGL91N/yjrNiVDTqcuUxPkQrfrufljaXPV6I1N
         s5orzVEO2BryR/DQTJZvPWXSE0CvffGN4vnO3EfgCykd2vkbOAqX3QcVuQWNLLEqx3yd
         QOQ7ud1UkiBuVUVYIN9kzN5RzWv15VCmbJigOS+sFwTlWcyEy8RuvZrYDrNs6Roanjs+
         oL7WkGTOQ0zcEQnjdWa5tt0Gn3SxxOsPdnFtXg5E+jC22hV9Re/wKvW3KffMU/Q04dh8
         kO7w==
X-Forwarded-Encrypted: i=1; AJvYcCWmNEfOqvwkce03C97zGNAhcQMTIGbIERxKHDzTky8SI6XqEpr5RBrFvBETY6f/F3XZqk318cOgiskwePCtzZ2YoREgPJ7YlnaSGw==
X-Gm-Message-State: AOJu0Yz1saPbqxUe7AYbnRWBQGrM7trCTPd73v+DXYbk8CnKcQsEzlT8
	MNP1p0f3J6nXFdsHMddCnYIVc4+ZCbheU2rFO3s6muSLzfpHLemliHUJuDMBBmmZf0ny/cL7AMC
	cPDdJDl3WNZjAuAfVmbjf+JT9X7C+KcOH4Lo4VA==
X-Google-Smtp-Source: AGHT+IF7pOoDUqDYgFCWHrS/yspiLu24Q9Cz2m39Sye6lsyfXxK+C51y7B3RynHaRvKVKc9Ic8TVoo8lot4no3c5fF8=
X-Received: by 2002:a81:6f0b:0:b0:607:ca2e:f23e with SMTP id
 k11-20020a816f0b000000b00607ca2ef23emr17929112ywc.30.1708526247225; Wed, 21
 Feb 2024 06:37:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240214-mbly-gpio-v1-0-f88c0ccf372b@bootlin.com> <20240214-mbly-gpio-v1-5-f88c0ccf372b@bootlin.com>
In-Reply-To: <20240214-mbly-gpio-v1-5-f88c0ccf372b@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Feb 2024 15:37:15 +0100
Message-ID: <CACRpkdaSMJBFrmbTu+C1Ls8HkLH4FZsAQ6t7dC76+sVTXXHEyw@mail.gmail.com>
Subject: Re: [PATCH 05/23] gpio: nomadik: extract GPIO platform driver from drivers/pinctrl/nomadik/
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

Hi Theo,

just a quick note here:

On Wed, Feb 14, 2024 at 5:24=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> +config GPIO_NOMADIK
> +       bool "Nomadik GPIO driver"
> +       depends on ARCH_U8500 || ARCH_NOMADIK || COMPILE_TEST
> +       select OF_GPIO
> +       select GPIOLIB_IRQCHIP

Could you add:

default PINCTRL_NOMADIK

so it is turned on by default when we have that, since they are jitted toge=
ther
so closely.

Yours,
Linus Walleij

