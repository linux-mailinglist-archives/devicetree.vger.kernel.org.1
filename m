Return-Path: <devicetree+bounces-140300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7DCAA19235
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 14:18:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB7AE3A2A9C
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 13:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83E82213220;
	Wed, 22 Jan 2025 13:18:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sRGUXYyC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65C57212B2C
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 13:18:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737551898; cv=none; b=YwiUkCBwxpo+S23JwvPhQ465Qqdjdj4T3BZXihR+ObpdND91dkUnO8i59Lm4OOxNaQucGSLjj+5Jp40JXhzxRbvmNIdQjwJmQLW+hOYF89tl5LBtzjB8xZxxZS3n3P3IkoTndnRlwJVZwz/Bq7lXzwrR/MHms5GDs1Vl2+b97uE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737551898; c=relaxed/simple;
	bh=SzxuyU2yAyNtPusbcdvLjoKifFW9Afx1CHqAf8gK+RU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=A0PENWAIUprRq4SWodtHHDvp+PbX5ZWN64Cn6Z0baKf4TjZdEGLKR6ZGKBjOX3efH8UWmoKNib5Stx82JWzM2cPtyAwK6g2xcQ7YnIeOEjDS97t91XHK6nziGKdKM7RSXgxaGHgK69bi6KF5drigUvknhPUKFQXIYBYTmVOsr0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sRGUXYyC; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-5401e6efffcso7629933e87.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 05:18:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737551893; x=1738156693; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SzxuyU2yAyNtPusbcdvLjoKifFW9Afx1CHqAf8gK+RU=;
        b=sRGUXYyCL19CANDdq/X5/U3Z44urh+2vFm9+uGUGJEIiGib59bPL3fTZuuIgTDXmEp
         vdb8qq4PgNG36NoiRbY10w4ti5Wa6Hi8GXdc9aMWMqj7eKmSuy8YuVM1NcX8qE02JQDk
         oyiql31jxhPo5uDjrJXgRSHeTzkd3BxEyFZ1/ybaPbXHIPfO2hkUoNRnaptFgYBcRXrO
         otFhGUDXQjCC1dPGzID6TSpiDnD/Dot3iiK+qkZbElGc/jmn1slrzICaEZ9as1SpDCud
         VzRPOpWe/jeXTIOia2g8ctg0Ub5pRczz+ngSE+uXbkIQJd51+O0nZ/u0JuMwAW3k/kFE
         QH7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737551893; x=1738156693;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SzxuyU2yAyNtPusbcdvLjoKifFW9Afx1CHqAf8gK+RU=;
        b=le4Y9v4AGtAlHxCjH0JAOiwF7m/U3i+u3Z11WsEXsU8fBeMUeP0ohmhoE4H3PuOk0e
         lFPeeFQ/vYfTG0Tr9EuLxHaXPgvS45EmmOXRpxlblIHxX8MSFjGsLDXIdQq6x8OUYRH6
         hitgsXvr44+WqJlRsFHOhlIPLZ11YjzqqdPWTBXEBQGNZA4gYxUELag96mN8Ev81WvZx
         ZHMyRiSqlg5nFsVR0iqaXMRO3b512ci1Mg9BoZdeyg3uhXE6WpKVirsgxNRmxyPqgg4h
         j71l07F90lO1JrDmS/bHVwzvlrxzyJxCOQJUH/j7aszqBTe71y17Rn17VaN1w/QUHTym
         32FA==
X-Forwarded-Encrypted: i=1; AJvYcCVfctWcnEkiwiNVrW89LckmaQ0iaq/YJdu6sxnh967obJ/ooOFwIFD8hmN6ORf7qmwsipWyVF4zU5sE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0fomzAtDcjwcNHWlkb46kAIGM5lZhkX9M0KSSfjthD/AWHVOu
	CrmffMeNjwry1CQDJHTGZete10QGblS7BwXfDV5IPGLyqgZWZtdyntLF/zwsyEn9A2anmFQ8Haq
	5zONaI1ij8zzajA7A7bqYk+wzWcjQl/RnPZN3Dw==
X-Gm-Gg: ASbGncsthgRHyiQlqlTox4Q/GcLZB2WbtfAxGyziNObqcojuaz9JxG4HvhU+36x3P4l
	HKH5WTq9eJcer/N2o7cKMmtJmZL3B4oSGAgQa2wsMMJQwF3nvmw==
X-Google-Smtp-Source: AGHT+IGx94jEEbs3RXLhYMJzipQpPaITuu/cDsPO6lvIB40L+SYCX7nP/SwM57IZh5M/14/A9ZfVrtIFsKzpspJZJrI=
X-Received: by 2002:ac2:4851:0:b0:540:1b41:c75f with SMTP id
 2adb3069b0e04-5439c247804mr7518539e87.16.1737551893267; Wed, 22 Jan 2025
 05:18:13 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250113-mdb-max7360-support-v3-0-9519b4acb0b1@bootlin.com>
 <20250113-mdb-max7360-support-v3-4-9519b4acb0b1@bootlin.com>
 <CACRpkdb5rmUK06uW3M2Lsy4Wam8JvrjmGM83cJa-V3LZwTX9dg@mail.gmail.com> <D74G95A3DHG3.OD522T88GX83@bootlin.com>
In-Reply-To: <D74G95A3DHG3.OD522T88GX83@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 22 Jan 2025 14:18:02 +0100
X-Gm-Features: AbW1kvZa1bBVRjs7vofZvq4_6URi9UF8tFCRrRfOePL_D2lVGG2FqlUFUy0FJ3I
Message-ID: <CACRpkdYMvx31UBpVnWGYdNUdnQLhHgn9FW+ruLXNpy82roTJwQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/7] gpio: max7360: Add MAX7360 gpio support
To: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kamel Bouhara <kamel.bouhara@bootlin.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-pwm@vger.kernel.org, =?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mathieu,

On Fri, Jan 17, 2025 at 4:22=E2=80=AFPM Mathieu Dubois-Briand
<mathieu.dubois-briand@bootlin.com> wrote:

> I tried to switch to GPIO_REGMAP and I really like it overall, as it
> does simplify a lot the code. However, I identified two features that I
> was not able to port so far: the request()/free() callbacks and the
> interrupts.

Thanks for looking into this!

> So for the request()/free() callbacks, I cannot add them anymore, as
> they are set on the gpio_chip structure, and this structure is hidden
> behind the gpio_regmap structure. I could easily modify the
> gpio_regmap_config structure and gpio_regmap_register() to allow to
> provide these callbacks, but is this acceptable?

Of course. The template is to be used for setting it up, just
modify it if we need more from it.

> On the IRQ side, before switching to GPIO_REGMAP, I was able to define
> the IRQ configuration using the irq member of the gpio_chip structure.
> This does create the IRQ domain for me in a quite straightforward way.
> Again, I will not be able to do that anymore, as the gpio_chip structure
> is hidden.
(...)
> I had a quick look at existing drivers using GPIO_REGMAP and providing
> IRQ support: I believe they are all using REGMAP_IRQ. And I believe I
> cannot use REGMAP_IRQ here,

Then we need to modify GPIO_REGMAP so it's possible to pass
in our own gpio_irq_chip, maybe another member in
the config, simply?

Yours,
Linus Walleij

