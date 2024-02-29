Return-Path: <devicetree+bounces-47171-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EDC2086C5A4
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:40:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A147A1F23252
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:40:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6496D60DF8;
	Thu, 29 Feb 2024 09:40:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="NoB5fSkr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f171.google.com (mail-yb1-f171.google.com [209.85.219.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA09760DEE
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199632; cv=none; b=tydOQtyxANyBgJx7v9fQHdKEB/3LmKIBbU3Z310iUoYuRU0G4lzKeeH3+iksW7Eh7CU2kKAEsVPTrg43qF5ugnzd5G0JfiGIbfdezueKKBZVNP/GK0YGbV0o4hngMDDcaUMQvRvK24PqthkQdEWdOs5CJYyeMbwkr+QEtSUtbeA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199632; c=relaxed/simple;
	bh=RyCBVNPqEW0zuUlohfUJLkEI2GPhiZBz5mwYpBOsGEA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JmtSpYwY51U/5//NvPJ52A4FIeqowv7mJvZOyIQcWHUmop7U21SZxWLzdDx4Cnm3N8KABKcHtsyD7Trd2W32cgjOodyaAkE7/VebbI6RD9NTRmvS6kWBF7vpNhudVESTt8d3IvSsEdIMFHbbGoZErUD2dpt90Vu/yr/5BARaOO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=NoB5fSkr; arc=none smtp.client-ip=209.85.219.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f171.google.com with SMTP id 3f1490d57ef6-dcbf82cdf05so738191276.2
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:40:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199629; x=1709804429; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RyCBVNPqEW0zuUlohfUJLkEI2GPhiZBz5mwYpBOsGEA=;
        b=NoB5fSkrKSan6ocgY+48JaFctszv3wGxfJInJpm3/w7juxaA2jVAFe+Tk/9D7D+VlO
         7rg9vFrwDh1QtdIeirykcHCRnPNTsNo9HEZsoLXHQpxKidhSKAXgsYX3CVB6rrr8WYmB
         TAiqBls+AVh4DL9LszDTMyK81dUOmNo4T7krWGb+qR7qgNEl+xU/MhkL+3eipI0JcJGo
         Q0JAFs8x+iXikHhB/gol8h88S6SiA/SZ4QmyWMR4vQDrCVef+iZZGlfzqP3GJ0dBZjYu
         vmn/2GSyPmBCuKDAq7boWZ6w0ehm+LrlgUXAXfueQChKt2QLCweRe4VyesezlmFQix/3
         ZViQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199629; x=1709804429;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RyCBVNPqEW0zuUlohfUJLkEI2GPhiZBz5mwYpBOsGEA=;
        b=bSIGugR8gmDKCvjc1Yobeg4KUqDHLabxx0g1f7KXn3vjUQxjImiwpkUsjBOQ/1hWwP
         ZNt6CiZm4XhnFdckduYXVkj+oTrN8STw1kTSeKpBiClmngD9cfSUweyP+YIK0prx5Ru4
         8JZadrz4kqKL81fTsPofHCrE0YnEME7F8uVT381HmcpANuaVgNL7nb45zj8z7yD7xaxY
         XfTM7bd275wS/2fm5JgRw+YMuAOpMNrY2/j05lvhIP4FPvKhpnTo2DezvLAuV0kSj3Zx
         ZH9zQLC5n48dqTByMOsH7NMkcq6S3Ol6HiNzLTHBMA64RCkZlV+RNS0gtL2c2oi/6a16
         xAUA==
X-Forwarded-Encrypted: i=1; AJvYcCXZB41w1vk5kZT0/3NzTl+fUJaqIdP+7eUxQt6GqZ19xTV3tSsUWaG6M/y8fK+j4LCotQpx8AQYk89a9npjvq1h+k4eOlEQ0+EYMg==
X-Gm-Message-State: AOJu0YzxJQ2QfVbezf4Mi6jxZF6tuOVasbs8m6hhQnWHAbj6W/7s9Qes
	jWo/Ee6LbVZpsQK9OrIy33SS1oAZk7GjAvpTe7qU8FX7Gwq30ValfwpL6ARVuDRbpTmYff6D9C0
	Fez6eszHgPFzsMWGkKUABv61tr/I9jQxX5WIzww==
X-Google-Smtp-Source: AGHT+IHfQ43WG6L84XSpM9t6dnL0FXVQqnymIslzVElLx/G8H6q4X7drU3fbrlbaRUAKc2KmV8CN9kVt8zL8ZNMFCeI=
X-Received: by 2002:a25:aa67:0:b0:dcc:4a0a:d0ba with SMTP id
 s94-20020a25aa67000000b00dcc4a0ad0bamr1560428ybi.63.1709199628907; Thu, 29
 Feb 2024 01:40:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-26-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-26-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:40:17 +0100
Message-ID: <CACRpkdb1-KH1L-ZPqzf7Y33wUeFSNvfjnRt6-YM0zxgW_4Y39w@mail.gmail.com>
Subject: Re: [PATCH v2 26/30] Documentation: gpio: mention generic_handle_irq_safe()
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>, 
	Stephen Warren <swarren@wwwdotorg.org>, Jonathan Corbet <corbet@lwn.net>, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> generic_handle_irq() must be called from a no-IRQ context. Documentation
> advices on using a fake raw lock to call generic_handle_irq() from any
> context.
>
> Since 509853f9e1e7 ("genirq: Provide generic_handle_irq_safe()"), a
> better alternative is available.
>
> To: Stephen Warren <swarren@wwwdotorg.org>
> To: Jonathan Corbet <corbet@lwn.net>
> Cc: linux-doc@vger.kernel.org
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
I leave this one off from my branch, Bartosz can apply it separately.

Yours,
Linus Walleij

