Return-Path: <devicetree+bounces-171593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CD978A9F34B
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 16:18:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3D7CF189E862
	for <lists+devicetree@lfdr.de>; Mon, 28 Apr 2025 14:18:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D5E025E829;
	Mon, 28 Apr 2025 14:18:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jDr2VHzL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9451E884
	for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 14:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745849905; cv=none; b=QjO+SmelLerS4zfJqKfGmgnQAD//dmcbHizbA0bVadDS+lOMCDZ5uZdSNiyzPCuLU1NNhAB4Oa1Z+rIC8Ei2zQDvehuJyqGjA149bMJRVzXu69WQbAb7Y1eIMph6HJ3sBNqGq3zoxjSbRwY0s2dsXFUDFVdpLAOo355ZJY8qb1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745849905; c=relaxed/simple;
	bh=PjRdXlsmJUpPvlWjlRcduIR1Eq5Vgg2u25y7fkkDmyw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YmJ4gXaVVG89qP1bP4g+x1e1Xx/LGXQVWteV8Fp1HhdPS7jAuRj9ut7fjzq71u+XOkT19faEaF17QH01pqX3UpPbcRu9VO/ygeuCiO7c5guzfFWoqBHip+mg0P4fhb7bioyQdfwUpzqnm6XqzMmjdn93Ug6rBBaZdZKWajgiA6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jDr2VHzL; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-54298ec925bso6342205e87.3
        for <devicetree@vger.kernel.org>; Mon, 28 Apr 2025 07:18:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745849902; x=1746454702; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nXVvurz23J2+L5kt96WXTroBQ39jU0y6cCqiWeSQLFk=;
        b=jDr2VHzLbJ50BiFc8j1G0V7lsRiKW0Se2ri1Et6wLxdaTxeg0lkudTAWLFGqdvz0AF
         lD+teb4cYJzIBQ7buAdqQV78SOo7R6uod5Gh92hVNbqhSAOxQpqiu1kpyPXyZAjoGgSz
         gmWDu67pV/X9SBZfns7cFhc+0Fip+luuTNVntv5/y61h7C6CclqkedG0nUlrYmAAYezP
         UU2GrIxHri4vbhyGsNhoWp2UjyfANNbzCaN/JK16ZRU8JFPgZnCO1+7eDmVkQJyuHGh8
         x9nPpSfMpXCPLHa6AbXE8KY7YhSYLyb4pUPdskyJOJvXiBis/yyZBkw21SuRGnOnKKM0
         3GHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745849902; x=1746454702;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nXVvurz23J2+L5kt96WXTroBQ39jU0y6cCqiWeSQLFk=;
        b=POPI5YZRchiZnY/MThaRo627ifYCO8KsHmjKvHIoSxNjYw5nPjRSCDCTz3iVxEeJHu
         3OUl212fYI0lL2m22ikOHV/9kOjPFI01VifyZpyLGPcgKFlyySMi/r1fe/2z8ecmT1dT
         3ykJH5NbBMMT+eaCe2wL/qn+dkocIqfHRD+jv3TJM2z6c7toTJ/2BHzkrOEVqqf/exLa
         7V2YE10AMZWBgFdfU0EwdyUuhVVNFPqvxFtoI3rM50VKWrThRHvitNqkKFgZfZ/P7a32
         IibdLmrJ6yT0jfux1t07iv/AA9w9UD5krYokfukPs3tBpH8x38GLuNBD659kuIkodjDG
         N8YQ==
X-Forwarded-Encrypted: i=1; AJvYcCUAGRWra1t+y0oYUETNDr9zBpa4XbFakQlWmXIKuMCvUNL8hN5DraNKzm964oHqQ1CaJx9LtUJ4TL0u@vger.kernel.org
X-Gm-Message-State: AOJu0Yxle7uEEEBGvMH0tGgn2AhsQeUlOUIesggPDVAL7P+nA2mISTqO
	LhHBv8QpJycxg0BhFoZjGcUSdXckKbBtjRz0LCQ/OKNAIE1O186XUrgsMSSHduZnCigripMDwa/
	HPx/NBrotUdayliXcbDcR+ujG22HT9YYhWYuCdg==
X-Gm-Gg: ASbGncucNyGjD1NpxubVDHM9dZ365cfI1NgxdPc8eJCBqN2u98n4u+4chDKbyWhy94y
	3bSTU2liqeq4x9UKgxXWT/zMJBB80+vKVteBQ28h8OLYeB9U0A7YNYkTpeXPmZnwlVjNi9wftZW
	5Uyb9L73zZVfN9txQBfszDYQ==
X-Google-Smtp-Source: AGHT+IGvhJeqWQVl7wUSjEu9Tai7VZXnkdRdnljHuHSmsEW0zEOC9vXIPg78pJyadRV6QxI6VqKiX008Vk2HwfUHtNE=
X-Received: by 2002:a05:6512:108f:b0:549:6cac:6717 with SMTP id
 2adb3069b0e04-54e8cc0cb31mr3406763e87.53.1745849901807; Mon, 28 Apr 2025
 07:18:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250424062017.652969-1-uwu@icenowy.me> <20250424062017.652969-2-uwu@icenowy.me>
 <CACRpkdaX0hTJSsZN6YNXASY3noZw=JsOSXzFBbxKegJ6A+2usA@mail.gmail.com>
 <7e62e720ccc51fb5c7d023adae3eab35aecf0bba.camel@icenowy.me>
 <CACRpkdY0DXxDixZVhnRuKvSVbKQ6pSfLMiT2hf9818sbNG-4hg@mail.gmail.com> <0606c146d97ff98ff1412b98f49e6da0071801d1.camel@icenowy.me>
In-Reply-To: <0606c146d97ff98ff1412b98f49e6da0071801d1.camel@icenowy.me>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 28 Apr 2025 16:18:10 +0200
X-Gm-Features: ATxdqUFE5Aj3lBDc4lYvvht68VXq-83pWEXQcwlO7tgbNAkueD3gpN4Y7TmGwKM
Message-ID: <CACRpkdbPhKwjb0dkOom6HyzTrhPWvMPhX5M=nyxw1HBHNJa0fQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: pinctrl: starfive,jh7110: add
 PAD_INTERNAL_* virtual pins
To: Icenowy Zheng <uwu@icenowy.me>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Jianlong Huang <jianlong.huang@starfivetech.com>, 
	Hal Feng <hal.feng@starfivetech.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 24, 2025 at 2:26=E2=80=AFPM Icenowy Zheng <uwu@icenowy.me> wrot=
e:
[Me]
> > I guess what rubs me the wrong way is why the external users
> > (devices, device drivers or even pin hogs) cannot trigger the chain
> > of
> > events leading to this configuration, instead of different "magic"
> > configurations that are just set up in the pin controller itself.
>
> Well I am just extending what's already in use...
>
> Currently it's already supported to route GPIOs to GPI signals, I added
> the support to route fixed level sources to them, in a similar way.
>
> If any external users ever have the need of banging the internal
> signals instead of tying it fixedly, maybe switching between different
> pinctrl configuration sets is enough? (Because this kind of operation
> could never be as high speed enough as real hardware pins)

What I am thinking is that one of the following must be true:

1. The internal pads are always set up the same way for this SoC
  in which case they should be just hardcoded instead, or at
  least just implied from the compatible string of the pin controller.

2. The internal pads are routed differently depending on different
  use cases, in which case they need to be set up or implied
  from configuration in other DT nodes describing this use.

I guess this binding if for (2)?

Yours,
Linus Walleij

