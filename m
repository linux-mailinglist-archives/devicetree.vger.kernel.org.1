Return-Path: <devicetree+bounces-213302-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A100DB450E8
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 10:10:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5413B3BDCCE
	for <lists+devicetree@lfdr.de>; Fri,  5 Sep 2025 08:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EF1A2FD7A4;
	Fri,  5 Sep 2025 08:10:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bn5TQY4F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3151F2FCC13
	for <devicetree@vger.kernel.org>; Fri,  5 Sep 2025 08:10:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757059831; cv=none; b=NROJl5IsgNGpV61Rq4sg3eVTJP2hvupUhzF8YC2ANbs4HnCvgDxAXC9huP0y7eBe7JI3Xq8vj3oK3d7jCTVs/UwyfV9CPKYRFoy+7TtJ+Wu8O1XQ4oH2zmDF3k2R7r6tzkqsTnmuKqFHg3E+GL1/821L4Ws0tKIsU8tKcr31MkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757059831; c=relaxed/simple;
	bh=BtGTpK92RV2Z6TkeFuzCre6Mq/G4NqRshn0AGkTNf4M=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=J3wvip/zdSSjCiFEgKebBdE3pKCx4+Iq/ymytFCyuoL5byfhH1l5jD3Ls3DsiMoOIeGOSEHAslnLDY6DPSyCgCm2zxwA7ehYi5l+byTkPPxGuCNAjR942N4YlrD90q/0g7SaP4NrSVdWQJGmK3RTyoVK+p6Apbgm8BkjyhqUIxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bn5TQY4F; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-336dc57f562so17020531fa.1
        for <devicetree@vger.kernel.org>; Fri, 05 Sep 2025 01:10:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757059828; x=1757664628; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BtGTpK92RV2Z6TkeFuzCre6Mq/G4NqRshn0AGkTNf4M=;
        b=Bn5TQY4FBlGSlUcjEP+x3Di67lMAFi5yaMEi5qM+uA2mKdG79IcWxmnuhjx6zlGJws
         87CUAK4UH4zuWowgtNdTjNQfE6BX/p8oT93qCOZhSx2ygm2iRd+xnNRiqfHIY3edK4wp
         hrytwv8oKbIwmIYNPJmOhNraz05bJUQgJPdVu5AakjpJnhyv/PeXjVgQl/iCzRRf8nAZ
         Vc4To6kk/LcIngsy/Ryr9EMmlvw52hHfFHMNd7tXueiX3Jb8rTXTZyfPD/jFm05PpaxP
         x/MCZcK3qYafQ2wr1/qimNT8iv1hsopNK7dmAq5MuUJ3AD15BbYDtCX06sGg3M0quAjC
         ogeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757059828; x=1757664628;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BtGTpK92RV2Z6TkeFuzCre6Mq/G4NqRshn0AGkTNf4M=;
        b=XZCoZjXxbI8A7ymfE+qnBTvImI/+7gydiEstItLWva/yHKKDhnSBRmIrZSc08Vcuz4
         ulwJXkcKs9WwsdcivL8YmkI/QBQHM1B8CGNFDU8KYfAdya9jC6bnkBovXGWJ/KdKWNQ6
         wfD7gqCuuwyNLRIjozowgAU51KHLeOVeIzQgWELDvJQay5DThGOX4cQTL4DzzFOH6eE2
         Qj7mM6c1XzhRAbuhW3D/R1VKWZ0+QxbhAHCURYK2QuDmOs7b5HSN0JpZlHerjVsYr2Mc
         ZcY3w4tLrXFyT+7yyChQNGyihrx05545txZfd+DDoN7nBhFUFWEoeQjpNm5GaRDyVOva
         1qfw==
X-Forwarded-Encrypted: i=1; AJvYcCUg96/NDQMddL89SS6VYGPax6QbvABq9WT6wW4ykqTlFn/53JItXWoedrj4TYGmGa84kYb1sa1vevE3@vger.kernel.org
X-Gm-Message-State: AOJu0YwUlRMf9MloTKkrIUgfBCn9d+ifJt30o/Wpi1KaEnrVKVPEM1KN
	Th0oDXFUZ+76gdooP7Aaz8E4LJpgrij7EC2Uhht+DZJmHZ4LZo7yxqgyulGCUp7K4ebHW7pqquv
	wQENEf40b41iyVlXtTYC4MC6wR64A3jBPztSMzbrMtw==
X-Gm-Gg: ASbGncukRv+HRwOHA3iBq827qyWR4xPfJpLnDRKzPhOx2HZTYs6gWfvqLCfZ2FFFRoL
	qGmOy1HPfkbwnCOYPvj8fOTaROp5uN+8hMQnM6WWblAyl2mBaOJm8dlqS3/R4Puy3g93SWbrVkp
	MeZr/70q5NshtYBxFD+q3c9ZpjGS0X0IcRwVEp981sZRBYYntOxmkx75ciIhwcahqxXUJmrCMsb
	1zMGNM=
X-Google-Smtp-Source: AGHT+IHGuueojXvcDw+IxXf2H0yV1IZv2l/On0WYvOmWs3UEZEA+8rzZONaAnBMOjzPj+g4/KV47tq/0JIxyMnlIPRA=
X-Received: by 2002:a05:651c:989:b0:337:f40b:ceff with SMTP id
 38308e7fff4ca-3381e2bd8bfmr6337601fa.0.1757059828213; Fri, 05 Sep 2025
 01:10:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1757053456.git.mazziesaccount@gmail.com> <fc3cffa3b75d1fcd19df0ff794e6ad75c8c87373.1757053456.git.mazziesaccount@gmail.com>
In-Reply-To: <fc3cffa3b75d1fcd19df0ff794e6ad75c8c87373.1757053456.git.mazziesaccount@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 5 Sep 2025 10:10:16 +0200
X-Gm-Features: Ac12FXwzrJgD4cqNVEMDwjcqLjGCJuYfaMNmrTkon9AkUOYZTyb9cMdwIMQNW6c
Message-ID: <CACRpkdaY3P7uj8dQfDbauvyJ_sSYPeUC7kK+DTMrkfT+BcLjCw@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: iio: adc: ROHM BD79112 ADC/GPIO
To: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>, Jonathan Cameron <jic23@kernel.org>, 
	David Lechner <dlechner@baylibre.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Marcelo Schmitt <marcelo.schmitt@analog.com>, 
	Javier Carrasco <javier.carrasco.cruz@gmail.com>, 
	Tobias Sperling <tobias.sperling@softing.com>, Antoniu Miclaus <antoniu.miclaus@analog.com>, 
	Trevor Gamblin <tgamblin@baylibre.com>, Esteban Blanc <eblanc@baylibre.com>, 
	Ramona Alexandra Nechita <ramona.nechita@analog.com>, Hans de Goede <hansg@kernel.org>, 
	Herve Codina <herve.codina@bootlin.com>, Alisa-Dariana Roman <alisadariana@gmail.com>, 
	linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 5, 2025 at 8:42=E2=80=AFAM Matti Vaittinen <mazziesaccount@gmai=
l.com> wrote:

> The ROHM BD79112 is an ADC/GPIO with 32 channels. The channel inputs can
> be used as ADC or GPIO. Using the GPIOs as IRQ sources isn't supported.
>
> The ADC is 12-bit, supporting input voltages up to 5.7V, and separate I/O
> voltage supply. Maximum SPI clock rate is 20 MHz (10 MHz with
> daisy-chain configuration) and maximum sampling rate is 1MSPS.
>
> Add a device tree binding document for the ROHM BD79112.
>
> Signed-off-by: Matti Vaittinen <mazziesaccount@gmail.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>

Looking good!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

