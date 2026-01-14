Return-Path: <devicetree+bounces-254990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B819FD1E3B7
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:53:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9510F3112E54
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:43:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A5F8393DC2;
	Wed, 14 Jan 2026 10:42:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A077D163
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768387351; cv=none; b=JFjkMJndIzEak0AiCScSl5OX8mV1qfYm/syANlPYQIcblr8Uhsl0Q7h2PVwkx/fynRviRQEIet5ExBDJsPr0g0hZ7rs3vkFfJE2ZGpe1rjeKNa/K4D54SUrH21MWcQ/Ut7M3lxnG/L2md+K/9psgd0V5Hq8bq3cqtsOL4MLTfmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768387351; c=relaxed/simple;
	bh=E0LywgZ6Y5OBOHF1U8Vz1IKUxUwFm8uKutML5xWZ8GI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Hz7IpofwoG+e6nplUzBs06Negk5vBiNP8sngIEs3mFOAbUWjO4xXI+tC+SlgtXP8PwWJ7vAyqCPWw3wLJ/2imTQALpztJByhSuJZjaSPOzibjZ7OMTqZ98811Lh0aLdgHt+tsweGO+z+fpZgJx7HIrnDpCVJcRfqOELO+Ceynlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-94240659ceaso2815439241.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:42:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768387349; x=1768992149;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H1Uaum6XUOb9s+vI8xOa+5r0BhzYwNGBohqUTsxTR+M=;
        b=ZGI9IJb6wRzOsS6RyuCgMeV7ZbXh5qtFurjAPDqpVbQ23ya1R77xSDwOg08e7ZBJoh
         tTt/S+/vImOx5xTUevT+Ctrt+qFSAdLvHQkCCR7p9IAKhQp1sMfy56rF3mNb9gwtD4G8
         PUQPNCb9kX/YXXMrXBgXI2aCiw0zbiiZ5p/inDmItBV8VeaqxFMyI2WQCcUoNDGof0q/
         NFUwOPxCnTmdvtYN+lHAknBLYevHmP5WMWVRwIqLwtlw4bNIohjNDh2L/gvRzf1zcZEH
         GNFnH1gkmIThAL6C4Ks5iS9pbTnygWO4dmDrt7pOtL7V/Xxqa17Ztu3GgBlTaujlsCRH
         vxVQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRTrTL5PKUbkkAI1QmxzpqWiomdJfGE+l5sHrbu2OlWxHZqn7OA/XWCFcf3hPGbnVoK0EDrr+OwUpc@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7lUmzyadWmu08OSwifNe9p6eLf3gzzjUOvW8PaE0lvD/sRe9j
	jgHXiHu5OzPcmZBZwCCY86NxhGGxM3F4bt723TgSyyvrK+RlGPCr5+rxn+vdZsly
X-Gm-Gg: AY/fxX5P7ekCtEultlLMXWnkFS0nZsG3z1RVceIbVKW+4z2XgXzJMFL1RVx9UWw/LCn
	TOZyLxATQ+X0+pxLxq0I1fI7hnPWpFmPjHr3SZUUgNA09XYzoKjuxJDmib54mNXP8mw+1lsBcix
	C+b3MqGDCoOI31Wzvb3uh0zZHyyuqUb3fJTVkuD/CiC60u3oBem3wnbCgRUWUcLmtYAGofXZaWh
	HCwgiXcmJPjqBxrj88RIULuyGWbyNm5wP36DABoXYOUtdEDyJfncZcPDFvS9OrkIwz9ClTpRVIQ
	Grf4cWF9K3mkd4NNd5tUwcuJic3I9keFYmYD469AptPZc6VIbvPMlUxY6CWfnFNO8TjJuNNrUzx
	laQg/PMxHcF+9zo7yoAke6cGIM5LV0EJv3nZ1XDsZJmdBcn+kUATVQw7x6IWdoNDQURN13JCPjp
	RYyNrmmYYSiCFZwhx3b7s2gNE1wUkGj/uGehpKgDECCFInDk+zyMM9
X-Received: by 2002:a05:6102:5801:b0:5ee:a184:35c8 with SMTP id ada2fe7eead31-5f17f638b15mr874488137.30.1768387349558;
        Wed, 14 Jan 2026 02:42:29 -0800 (PST)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5efb5bb6d11sm11556636137.4.2026.01.14.02.42.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 02:42:29 -0800 (PST)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-5636274b362so1673106e0c.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:42:29 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXZE4Fx9qi+zq+ybkAkD+xH4ARmz8Bf8mO9QT7EZcIwduc+9mbbtQ4soIzyLGa+/QwkweHe6VfUYSBg@vger.kernel.org
X-Received: by 2002:a05:6122:628b:b0:559:58a5:f6cc with SMTP id
 71dfb90a1353d-563a093a463mr686310e0c.4.1768387348943; Wed, 14 Jan 2026
 02:42:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260114093938.1089936-1-herve.codina@bootlin.com> <20260114093938.1089936-9-herve.codina@bootlin.com>
In-Reply-To: <20260114093938.1089936-9-herve.codina@bootlin.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 11:42:18 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUPJrqem_pKkQKU7qjkA6-6OEYW0Av3EvDr5hAO1U5ZQw@mail.gmail.com>
X-Gm-Features: AZwV_QhQn91-1OqqAw-EDfsNXlhnKQ09Nmhqb35fWgFytnsII83O23rtSSh3XAo
Message-ID: <CAMuHMdUPJrqem_pKkQKU7qjkA6-6OEYW0Av3EvDr5hAO1U5ZQw@mail.gmail.com>
Subject: Re: [PATCH v8 8/8] ARM: dts: r9a06g032: Add support for GPIO interrupts
To: "Herve Codina (Schneider Electric)" <herve.codina@bootlin.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, Saravana Kannan <saravanak@kernel.org>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, Pascal Eberhard <pascal.eberhard@se.com>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, 14 Jan 2026 at 10:41, Herve Codina (Schneider Electric)
<herve.codina@bootlin.com> wrote:
> In the RZ/N1 SoC, the GPIO interrupts are multiplexed using the GPIO
> Interrupt Multiplexer.
>
> Add the multiplexer node and connect GPIO interrupt lines to the
> multiplexer.
>
> The interrupt-map available in the multiplexer node has to be updated in
> dts files depending on the GPIO usage. Indeed, the usage of an interrupt
> for a GPIO is board dependent.
>
> Up to 8 GPIOs can be used as an interrupt line (one per multiplexer
> output interrupt).
>
> Signed-off-by: Herve Codina (Schneider Electric) <herve.codina@bootlin.com>
> Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
> Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.20.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

