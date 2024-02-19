Return-Path: <devicetree+bounces-43451-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6202E85A666
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 15:51:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 18C981F20EE0
	for <lists+devicetree@lfdr.de>; Mon, 19 Feb 2024 14:51:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E882374F5;
	Mon, 19 Feb 2024 14:51:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RffIvzM7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 847B236134
	for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 14:51:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708354273; cv=none; b=HxRTxfVL2v3xiyAd1ADAYW3wH4bB4iM5SywVNHbSZ5rJQ8hemx3UEbdmUYlpTn+XlIu5lewrYpm/yjM5JbLLn+apmzss71aKxAdWnBcr7VSp0eKWSzIT362D7i94mIN70zrX7bfogb7sd8x5CdLKzxXAl0FLO+phTbUBfsD8j5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708354273; c=relaxed/simple;
	bh=VwezCsSQ9DJibqG86kh85HBeHbyDtKdujvrran4hZNM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KBrWqb0LAFfnOgT/17GHc7YpWX0wwSMrI45pJdMlSXrafHJu/LY8abKyJT5r19L5VsYrpQ8WeUMifanURDOQ5BZyzsiKDHINzUJrn1p8Zg/ciduQ0JDaqk501Q0TT9mSJx4z7kje3lEi4qQe4KnUjGTTk4dRJJkZSiyD3VD4YJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RffIvzM7; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-607f8894550so22268957b3.1
        for <devicetree@vger.kernel.org>; Mon, 19 Feb 2024 06:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708354270; x=1708959070; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3uK6DW6wRUhapLpjMNPru+6tefOfW563KnlrWQg8HD0=;
        b=RffIvzM7PIwXi9fO8mlQ+5JFl2XbP5ps9CIz/aUfK8dlhJ61+Q9RwP+ed5eJuAZUgJ
         51fWgahW3RrD+oHxFe/ppW8sXxMxqfPnBij2H26VozgvYvdf5koHKpJ26GB6JAbuDZKv
         OkxkCaDQPLW3kLZoLKwccZlYm6bNyrM5o+nPpG4+VS4uvHm8O2CM4opBnEuOtsAju48c
         O5r6wwW7w+lBlV/+Zv9M5x7frAXvN66nu7X7n3IPIbS93dIP7cHaMddDd+PsbG7meqTG
         1VU6XpNNoXSsGkKYFUK0cvIxwz01jaUr22PuNbE0NevqmISz0leS/k8H7uTQUTwaVeeu
         24yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708354270; x=1708959070;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3uK6DW6wRUhapLpjMNPru+6tefOfW563KnlrWQg8HD0=;
        b=WuxxP+eEOI2VcSzZOvHIDm0K/oORC6mFOHT6YowkgMFzUkfVw6aJzRElx6G1q9n79Z
         R5J1ZVqM5z8FMSnb9YYEeJWslFVmln4QY8dnyMVtMTRRcFHHincZ9LIjNVskdVlbpYVo
         YmH/JIAEkUPuyPWrYp+ko9q/hgr1O7KSMWb9Q84j20Yyl9bxv5Fkl9sgXowtQmh5xTDf
         B8U/EHSA3TH2JZMzaDbvoVWIeO6mUeH20NqIlbZKkQmYXfMLtQ31kf98iG0IECxNo7yt
         +042YA3qFdb1K534vLIp4HxgH9ev9JZjt0yJw1AMDLx31hTsaN3RS841qyxYoIEv7pbT
         p2EA==
X-Forwarded-Encrypted: i=1; AJvYcCVXB/Gp2JvRb1SDKvy0/Z8wDyeTN9c6zOjuLBcTrIUMchjuNcHn3QvVC3D0wuVpNEQh1zzWy+8O2cCHGXs7GgeR856l41A/EjqDkw==
X-Gm-Message-State: AOJu0YwxSHCbZ2+QFr3SwcUV06sOP+oYlYBJxEPmJxlPITqfgUqcGI6n
	F4GcYCJNhDuol4TvgwfEYvK6za+wqd+HtRnx3KZVnnhdnIsTdo/Tm4q1pjEUCPkenqC1MJ5hdyk
	GDs2tohsRZAyzfqw5myY97ekuebxEtdcAQhcgSA==
X-Google-Smtp-Source: AGHT+IH9w/3fXcqUPbXBgmVF6w9lg4F5v6yvEb8r8rQEhAiFOFvfENIsHmXjey93as80w0DTDmBiAuNLdD8NfwPl304=
X-Received: by 2002:a81:ae05:0:b0:608:5b8:ac3 with SMTP id m5-20020a81ae05000000b0060805b80ac3mr7651706ywh.18.1708354270183;
 Mon, 19 Feb 2024 06:51:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240214-mbly-gpio-v1-0-f88c0ccf372b@bootlin.com> <20240214-mbly-gpio-v1-2-f88c0ccf372b@bootlin.com>
In-Reply-To: <20240214-mbly-gpio-v1-2-f88c0ccf372b@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 19 Feb 2024 15:50:59 +0100
Message-ID: <CACRpkdawXwae7GKf4zOfVUJPLgLOeEX-8w5fbnr8O6FXuZHuaw@mail.gmail.com>
Subject: Re: [PATCH 02/23] dt-bindings: gpio: nomadik: add optional ngpios property
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

> This GPIO controller can support a lesser number of GPIOs than 32.
> Express that in devicetree using an optional, generic property.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>
> ---
>  Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml | 4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml =
b/Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml
> index a999908173d2..bbd23daed229 100644
> --- a/Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml
> +++ b/Documentation/devicetree/bindings/gpio/st,nomadik-gpio.yaml
> @@ -50,6 +50,10 @@ properties:
>    gpio-ranges:
>      maxItems: 1
>
> +  ngpios:
> +    minimum: 0
> +    maximum: 32

I can't help but wonder what good is ngpios =3D <0>; but OK.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

