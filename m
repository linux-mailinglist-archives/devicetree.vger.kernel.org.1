Return-Path: <devicetree+bounces-170304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3B0A9A706
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 10:55:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7728B1B87F2D
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:54:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9881B22686B;
	Thu, 24 Apr 2025 08:51:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EVV6F8V1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4D11225A47
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 08:51:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745484682; cv=none; b=umEFGE9qRfMe8iP3mz4UykJqnT6DlpUVlIGkHZBWEpxYP6HG1K8hZLdwuWVFaRYMUVwl3X0bq2PJU/LBNMZolWPsyEfGCH5HA6IeIHsu7EFSe+9Bs/l3rNBa7akdFrnQXHFFe3eXasIBfM7L0joYT7Xbo8MPp1DeOGKl+d/IXTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745484682; c=relaxed/simple;
	bh=WTjakC4kAWMQ2xS/yccnwI529/S0/2AvLYfyLQS5TVI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DftalY2amx5t3qsYSmsJ4wHhf4WwgwDokgkkwIHlGQX4lQOOdoIVj5qCJi62rALUHNUOaTSxABkRIMQqDAjPDjt1qiBXYTO4SPqCRGRAQkXWLNvX5LBW2Ae6Y8xlDsB/za6u3RKdgWdfPLL1XenqmcmZZYW/ghCTsLPOSlrCxO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EVV6F8V1; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-30bf7d0c15eso8362271fa.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 01:51:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745484679; x=1746089479; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WTjakC4kAWMQ2xS/yccnwI529/S0/2AvLYfyLQS5TVI=;
        b=EVV6F8V16wA/YF7LAuKZs4BxHwPIt6sB1mPWC/guD5RcoZOuMtxW/jo/+WFavvXhAu
         SaXtLeRvpYnQAqiiF0GIojHPwXOpFnXscIpEG+Brn6cqwR46c5yRw2LgphPSkwKiiHKI
         uuANMD+BmeEmX1cStdaboKJO6hh+hRWBH3LxZsvWPVAxAF1HGjZ2o+sh1lXb51C6UDxz
         DPKDzojpxr9p+VJcHXnDbXygVHn4b9qcbeDFAMrL7Qj/CzRqjuDEfw1ubpBYQJLMRkDn
         TgcVwFBpxqKFscO5zmM7+TS36EPxcNTt2ZVMTtXd31fExPnwagUGTYyTE7yp76zvFvmY
         fUNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745484679; x=1746089479;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WTjakC4kAWMQ2xS/yccnwI529/S0/2AvLYfyLQS5TVI=;
        b=VWdQL0F5FdcwfG6ToVNxYu04AyS1j1elX6COlEb3gl3st57ntRHjdrq/jVrFOb+QS8
         IObcdA917Ey8115pEQDenqM+VQFb81Rb2hCMqnnCcnR5RDLkqe/R+YEipczihg3afyaz
         jXr9WXUl2JAm/GFYb+awwNvjZb+1BOB314NQTIk5+ej/IoVM+0cTWr631VdrAkj6l0C9
         MLSsadF0wsLVUgkhT66MdL6ZflUs94kdQyHQKvn6M4hHEm+DDSoALyDZKYTqmUb50Y5H
         Satuyuch5s9DK4Q7iiUmZg5dlUgODajk/fDZCSg9gmzlubTYTUeKloqb+SBU5XJJbYx7
         m6WQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9gZgJXpNIQrZLJ2Y2muLLCn3c3zXUd49HhG5uGLtB/KEWwmTqOg5MPXmHIZooNGmQfPNB6sBqbJh+@vger.kernel.org
X-Gm-Message-State: AOJu0YwzYePWRsGz4OLx9PCgRT7usBIsuRCOd37aqJeXheflPACYQCZ9
	D2b8kQQ+dMjrFC2ulvCm1lqXKgBRaShOwTLgfHrBzp+IfbJwtYwJiKe1p8/V1ZOrTUYRw4XpxqT
	2JHvlRqjOHrF18W2wqA9l1JSOjDTzDiWaOHE2GQ==
X-Gm-Gg: ASbGnctveJiTUTmRf5ge0d6NsAQqEeNCCJ7b0eqCA9MzNwhvRjJz64QntqJXoICN/m+
	sVUDTFsiZjIltT5RxJKRC6qMXYPIIIrfBHDbd30J4Bgx9qCLHvCS5fXqMfdWrlNArBzulPau9+T
	ZyW2XU53hms2q9HmJh1UqThQ==
X-Google-Smtp-Source: AGHT+IHVUjEPXYrY3sHIef5LKhQER52yuzf898RP4j9oF4QvMsHg66AhVu0yfj0NhwOcjO4n0yujHvjloTqfizgTfb4=
X-Received: by 2002:a05:651c:b28:b0:30c:12b8:fb8a with SMTP id
 38308e7fff4ca-3179bd52581mr6677701fa.0.1745484678572; Thu, 24 Apr 2025
 01:51:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250424062017.652969-1-uwu@icenowy.me> <20250424062017.652969-2-uwu@icenowy.me>
In-Reply-To: <20250424062017.652969-2-uwu@icenowy.me>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 24 Apr 2025 10:51:05 +0200
X-Gm-Features: ATxdqUHVq_nL22G9xrtOjqSrYO8fC8-z8I_XXvLVBIP2wzvRpiBlPgb7WiVSR5s
Message-ID: <CACRpkdaX0hTJSsZN6YNXASY3noZw=JsOSXzFBbxKegJ6A+2usA@mail.gmail.com>
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

On Thu, Apr 24, 2025 at 8:20=E2=80=AFAM Icenowy Zheng <uwu@icenowy.me> wrot=
e:

> The JH7110 SoC could support internal GPI signals to be routed to not
> external GPIO but internal low/high levels.
>
> Add two macros, PAD_INTERNAL_LOW and PAD_INTERNAL_HIGH, as two virtual
> "pads" to represent internal GPI sources with fixed low/high levels.
>
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>

As per my other reply in the previous post, I think this should be
handled internal in the kernel instead using a tighter integration between
the GPIO and pin control parts of the driver and utilizing the
gpio-specific struct pinmux_ops callbacks.

This solution looks like software configuration disguised as hardware
configuration.

Yours,
Linus Walleij

