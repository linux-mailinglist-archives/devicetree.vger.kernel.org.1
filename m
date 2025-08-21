Return-Path: <devicetree+bounces-207431-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A803B2F6A7
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 13:30:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 069F55A19AB
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 11:27:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAFF130E853;
	Thu, 21 Aug 2025 11:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ACKT920q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02E9330BF76
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 11:27:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755775639; cv=none; b=tTt0aIz/CCLiA6DtMrWvIMBs5Kmz00RzQdSttTX1gClwgB9T6UrqaYjhDikUU0/N9zdoxl/juwYDZoF5Ms2ym8Leg0IN+B5gmzbLOha6fu8WFJ1mRq+PuDcpwmBdVr583eI9GZYDSC/n0CFrwsUg78+N/Zy8nPl3b1J5kKLYlKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755775639; c=relaxed/simple;
	bh=2iuhQehcGJ/STLL1wVwziWidGXccPhxvPLuOUY7+u3Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SMlMIKwdcJMbJlBOJvaTv1/t6xJRZeWRMeewwC5DQWDuGz7XX3vit5j2EbfCD8Nc8uCS8YHCB8POpFSJJpdO6UYf/Bc4aUOxRvsnw4fx+4V/1qX0yw2duzghO0FoeVu/1FtcXPbY0mHkzPQy1t6GswUI5N4GH3CHWTShr63Xkb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ACKT920q; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-55ce5090b1cso804089e87.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 04:27:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755775635; x=1756380435; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2iuhQehcGJ/STLL1wVwziWidGXccPhxvPLuOUY7+u3Q=;
        b=ACKT920qQiAd6VgrDZoeSP9T5ju8bLYhTZQVbegXxugi68H7x9K3HNxnB5qfatoho4
         9Uc9HqfLTeBngZRWRYZNufcm3st5bEqU/cHCxcCzzPq5L6DtN6mJQzFgIkZhwgWXso6/
         Qfg1ovAePCbYdYQZaZF3P0qV/OJRad1WDvDvW3RyPRMn/hp2t99np+dyIuNTFvhqE5+v
         yXijG82JAdK03KNicdw9RJ81ebZZISm9FJHBX/bwifACDlANFkqL14TDECxWHzClSek3
         8Avha6w1N5awtfvIb/pU39z1/rxaqrC2ROkbTiv8rojq7XbM0u5lqxAGPEy1DU4B1CUZ
         foxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755775635; x=1756380435;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2iuhQehcGJ/STLL1wVwziWidGXccPhxvPLuOUY7+u3Q=;
        b=BFmPcdqC0Hu6j+qnz3zMgsR4QWV14aIHIBxW7mLbWyd7JbtEyO2Ds1plhlvBuIPAOj
         AZyaX57y8o6X1SI682ZMSxshh62Afmbm4SK9RCpoCo8zHYk7uztYdQtDus3DX/OcRzJE
         vmOqrAnayeoaTLkpXs/0M2OpJN03hEfvU1kWEBAWsPljImOQOQaDEk/+cSZTKyX0aSiC
         Be4R8Kq8d1rkZfRNUYbobzT4lzu3IyEI3CNk/Py9oHXEmSevFlf8Td68CsSm96kT7zhp
         uQDrbG6Ryq4/V/lhaNQPxo0iY7gmG4kxfhlnpj6MZDDf0LlRMKd7zPld9/lnMHYNNzCZ
         vCng==
X-Forwarded-Encrypted: i=1; AJvYcCXmalIneB12dFaDhEGYUtcXt6vdgGHcRQ/9dQh5K8vz3Imtyr2BcegQh2jaitdGBgpolghyMZ6CJV8c@vger.kernel.org
X-Gm-Message-State: AOJu0YyX4P4PiEmhPMoiN+Jm0UOBAvYz6WBqffenakKWkWQeyPMzioMn
	KY/DJyecvbO+QRQvZEvgBAuQbilxgD/HtvaRJ9hx92+k/S0YzLjNDNzBMrPE7wXt0yu21VAAMvE
	XrjdRdOe4uJtpeuM1jNQPP5AExKdJYWtPtgIfbEF+2bCcfCAItawt4jg=
X-Gm-Gg: ASbGnct2vZiQERsmkLVWS3oYFmTSYRnfmoN52YhHYWlzcw4EfWnlnDTUvppv1uLIuvl
	nGKf/1gWGThwdoRNJzhUXq6IRTWacnJG4bHskg9nVRzJkRY94cDOXEk0EQsk9Ul0JOwr2xCPEkn
	eQ9Pv1DDlGoQIP7APHcnB4fpleCdqZL9HVnV8nWUs5ccxgVH7Ky8fRlEAeVS4bp3h6KLQhCBr08
	2B3p1U=
X-Google-Smtp-Source: AGHT+IHfxoqcChsLfygBUpUWn2PCNNKaUpVfkw0VSrAeJy75AQZfqbB6MGhf72lV5Y0Gxx16LXjumAnruYNQwdN8gFk=
X-Received: by 2002:a05:6512:2284:b0:553:d702:960c with SMTP id
 2adb3069b0e04-55e0d5c59f0mr805985e87.56.1755775635103; Thu, 21 Aug 2025
 04:27:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250811163749.47028-2-ziyao@disroot.org> <20250811163749.47028-4-ziyao@disroot.org>
 <CACRpkdZp8FLrxgkeZ=xzSPgny51iDZ3KRCrxpoSdgF8_=df=KQ@mail.gmail.com> <aKRw1pEUUwd4cQoW@pie>
In-Reply-To: <aKRw1pEUUwd4cQoW@pie>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Aug 2025 13:27:03 +0200
X-Gm-Features: Ac12FXx9O5o9dI7NgdWBP_7YslWNrW827bj2s6nLtLSzojwBRCZi2QrMsWTrODw
Message-ID: <CACRpkdZCs6u6Tyos_ufBoeZ9V+51btEQ2wbPv1GRp5RNGZcUyA@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: ls2k0300: Support Loongson 2K0300 SoC
To: Yao Zi <ziyao@disroot.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Huacai Chen <chenhuacai@kernel.org>, 
	WANG Xuerui <kernel@xen0n.name>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, loongarch@lists.linux.dev, 
	Mingcong Bai <jeffbai@aosc.io>, Kexy Biscuit <kexybiscuit@aosc.io>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Aug 19, 2025 at 2:41=E2=80=AFPM Yao Zi <ziyao@disroot.org> wrote:

> > Which is fine if the pins actually cannot be used for GPIO, but if they
> > can, and this is just implicit for unconfigured pins ... then add
> > functions and groups for GPIO.
>
> For 2K0300, we want these pins to be able to multiplexed as GPIOs, but
> since this pinctrl driver could configure nothing for GPIO mode pins, I
> think it's enough to implement only the gpio_request_enable() callback
> and do the multiplexing work here, is this correct?

Yes that is the quick and elegant solution.

> I originally thought it's okay to multiplex pins as GPIO with an usual
> pinctrl configuration, and didn't realize that it causes conflicts on
> strict controllers since the pin will be claimed by both pincontroller
> and GPIO controller. Thanks for the reminder.

This is true as well, some drivers use an explicit "gpio" function
and for these the the new .function_is_gpio() callback is especially
helpful.

I think it is helpful if you're using the callbacks too (we can
determine if we're already in GPIO mode) but it's not necessary.

Yours,
Linus Walleij

