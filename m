Return-Path: <devicetree+bounces-187030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA7DADE841
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:15:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B0305189B51B
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 10:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E782857C7;
	Wed, 18 Jun 2025 10:15:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lJgl9yHq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA2211CAA62
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 10:15:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750241727; cv=none; b=hXFhGqis89Eu3/pu8TWfPsSI/z3WqZWT0nkvefry8P2WQpRQJGnCX8lmL4nROLVLDdsbFYIaK/4RRi1BPHAkMwdmdRm6cZXnwUGKln9u9gc9S4nvr6VWAYd5Zv385VB588KoSBMa80QtOwGjNoMrwJi7x8Xg4nT3d91c2QjmU4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750241727; c=relaxed/simple;
	bh=jD921DQHaDQ1ESWyrhW1JyQ7YkUvB798UiZzCJTny/I=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=p4bD79j/j+2fDfJrcxeJqJjw2GYKr2eEdGx4dxhm5prUE4jAy7aP9d43JRuBlpLtTv4cVWUGlwrJulb21VY3Wlf3VNE00Y93Eegs7zuMBsoj6BQgTBIkeJ4GDg4/lZVptyY4DLSJS5nECx00O0vCGGOfTZ0fDkmQQ5RvWw52h7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lJgl9yHq; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-32b49ac6431so39941411fa.1
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 03:15:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750241723; x=1750846523; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jD921DQHaDQ1ESWyrhW1JyQ7YkUvB798UiZzCJTny/I=;
        b=lJgl9yHqBu8jryFDFVQ4GSv9B+Z8KJq/GKGTBxW9xGW/sWdtlDPr4FwVt/Ms4tYBw/
         wzKjkA7uMQt+M5fRcqW4WnnYuVrzDu19CLbuYJZvJGxdHdD8c7HYr8xidqWaTZ/zprWv
         MsND+kOgGtUfAzW/gPhbA1wgOZyiaEpAZjLL5+Q4lpMQA2Bh76RDvXRokkIoFpBEKbpQ
         UvWFJq2eYm7A2Lxa3BRZHaRQ5+ZmKPLgoNsLi8DVBuTUPf/xFJXj8i4XN+soFPB+pF04
         9T2MGXBT2y96bDhfzrSXSwi6qq38wufY8ertY9hZt2o4k2UXrSmqvqtOjX90BoKutrph
         QabA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750241723; x=1750846523;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jD921DQHaDQ1ESWyrhW1JyQ7YkUvB798UiZzCJTny/I=;
        b=cRe+8SLw7fFkzRtWgPjiyOxh2K9cVOlG360Kp13YtdKBYv1/vd6bv+p91ryQa0vFs7
         dnp89O3WCvxw8H+HrHGIwuNzysMxacCkcms2KbD5Ub9Rwh/griM/OAcefvBjMcsyHrd7
         tw15+wBEyy6XXVHvxSiVQdg+HaQFpOnwZXUHFZYb/Au7oIrYv9aj0N5WT74MOzUUu7Ux
         v9qJlFVnyEnY+PLh7+3G0wE8h78p8Ii55cEvqAoapRmykaNUyJ/b5BV2bkvfvX7OQXdp
         rBfd4ktyeQniBKeotdQVX5KNFxpJA64pNrMMXpxxo48LyE/FPXENkENfT8sDrc9hqW2L
         twCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXihWTVF2O5Oul0ojIR9WSJoZ8kGaFv66+jUHOslADv34mFrVT2D1MBsv5lpi86lGQ2j6ppRyekNryp@vger.kernel.org
X-Gm-Message-State: AOJu0YxYesfH0R2ykTMs6i8RvbppfGX2z1Int6NrFvkQ9XSUEPJ/JBps
	Jx6b55ypf/3F42Z6dGcRn2NvgL9My67XcUC73p5zfme+bsQs36EZZtvVYRNDOn6zrIIUUtNRcAi
	X6X+B/KUoIycX0XcpMY1yPYXD3hmBjMGN9tG5YydCQg==
X-Gm-Gg: ASbGncuDEIrZCZbQvTrYPf3IxO8lLva45Js6Je5XZFt0IjK8JvTIAQVrleBM5BOH+pm
	Ce8nY8GSdJ69R+/AQ1yjnOOmk4+9tW9tMUrRDDwxGOKUkZpMmaAng/Mkn7YVG6WvNqSohTzt0kI
	elT3ABJMUIs0ovVv8lXp6T9eDciBTXFn1G9GmlgvB7aLQ=
X-Google-Smtp-Source: AGHT+IFgJoTNO+BsB4HVVc11Iwmn03x/+8pEoCMR5VEUoD09rS2tyjDc5RccGdUlZPyD0CvACF53jo8rK9pUhRXX4xI=
X-Received: by 2002:a2e:a546:0:b0:32a:648e:7ee3 with SMTP id
 38308e7fff4ca-32b4a6dbc53mr60545701fa.25.1750241723005; Wed, 18 Jun 2025
 03:15:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1749582679.git.marcelo.schmitt@analog.com> <834e630a45f8b3ffe93f5663b356046d6c6fdd95.1749582679.git.marcelo.schmitt@analog.com>
In-Reply-To: <834e630a45f8b3ffe93f5663b356046d6c6fdd95.1749582679.git.marcelo.schmitt@analog.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Jun 2025 12:15:12 +0200
X-Gm-Features: AX0GCFu0MlYcjSENoy5QcqrOme-qHw-2bn5oP7jO7v4dKtoPQUQWh1af-rRa5E8
Message-ID: <CACRpkdax5amh2ei9QJDzT12FQwg33Mnnv5iJphzM31gL1mupMw@mail.gmail.com>
Subject: Re: [PATCH v5 08/11] iio: adc: ad4170: Add GPIO controller support
To: Marcelo Schmitt <marcelo.schmitt@analog.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, jic23@kernel.org, 
	lars@metafoo.de, Michael.Hennerich@analog.com, dlechner@baylibre.com, 
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, brgl@bgdev.pl, marcelo.schmitt1@gmail.com, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 10, 2025 at 10:33=E2=80=AFPM Marcelo Schmitt
<marcelo.schmitt@analog.com> wrote:

> The AD4170 has four multifunctional pins that can be used as GPIOs. The
> GPIO functionality can be accessed when the AD4170 chip is not busy
> performing continuous data capture or handling any other register
> read/write request. Also, the AD4170 does not provide any interrupt based
> on GPIO pin states so AD4170 GPIOs can't be used as interrupt sources.
>
> Implement gpio_chip callbacks to make AD4170 GPIO pins controllable throu=
gh
> the gpiochip interface.
>
> Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Marcelo Schmitt <marcelo.schmitt@analog.com>

Looks good to me!

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

