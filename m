Return-Path: <devicetree+bounces-134399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id BB8979FD5FC
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:34:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 614A21657A8
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:34:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B71E280034;
	Fri, 27 Dec 2024 16:34:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XhbKLRoV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB4B938F83
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:34:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735317291; cv=none; b=NXAT2ivcrXGp81WpNK0UbDf3U3/KZcOHGxSL2I+p+GVz1K8ouxojhbWSu0xnF12Q0kZw4mIzAhqEQUCWaqCGh8rGLf6kKaY9FE683gVuRz7PQ7BQTba7nk7bDYdjvI0upFdghdafiqKgSlLV/NZ857f5Cr0nBnReoAnPXsA7hQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735317291; c=relaxed/simple;
	bh=PmkOXvBdbDaU20lQ8+3PhioDTFBuRO+YRWDTmCjdKt0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GcQVQh6S5ZGQO4hhuRwFQz8qY13IvJY7kvn7irflucUf5nTMK4wiNtsK0N1PgqbrZBHj/Ll5aPI2rhRe/782xNr1d8niuihroeU5OHp3PbfhqVs4j19jtuAdW0p7yBgaL3g41+SuN/+E/15hbn69ewBJvJ/YQpQgWPIPq38MNV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XhbKLRoV; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-5401b7f7141so6643127e87.1
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:34:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735317288; x=1735922088; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8slS+fVOfiBLyjC+6dHOYmEDiQMdL34iQQiuNik54ZE=;
        b=XhbKLRoV17xUG6Yqps1Qr/PjlyEOEo+a/yov9GGcq0t/mEDocI0DCWD0Vn0J2ANti/
         ogehaaLENw+i2s9tEUiXSSxZnEMqlAt45slDrGNI3/jUW5uiHB+XsNQRuU0QKpn5IRV9
         arDx1pFhKr4rIRYy6Uqtn6BL7PSiPiET82rPQxmeTgzlBjpoO4oMD4RqTz7E80WF2beA
         vhof73VzRQi+xUnL2uZsG0EloCy78DJ3lHhj+kjKhdSoy/ME9TNa2E7N70/n0SPRNDaI
         5cYissCYjS5urA+qo0aaXaDefj6BATxKlAHfNeCeH4+1x8R4l+VP8Fcf05ve78brhRO/
         eBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735317288; x=1735922088;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8slS+fVOfiBLyjC+6dHOYmEDiQMdL34iQQiuNik54ZE=;
        b=gG9K5neOjq/D75sIxvlmS9sz9EFTg8zlHWSlQoObnzYlb7Ky5dacFbCHpMHIG5ho+A
         wijd3dDhGL7wYCrRBpdxlpuJe9p7vwQyBoTdhIhSMPfQoaVnryTy5LH079YaP/q6Zk/X
         8rEKvgWHhqFSvUtTuaRqvJzP/oBpY7Rr6cyNJKJhU6AAoyc9QbjzzASmEFIyLzW+XbQB
         oKBG3Srbe7lhnJm6qzNSXXkGfLsRyehUdnNV+hCBDLKuV3ECQqwT1jw3+EDuzD48VLUh
         Rbywa5PIFTG0FowF4QcM7K8f0k6i/I9Wn8u8dXwTjBPbjFUyNO+vOm/7RQ2fzs/cTuRv
         81Dw==
X-Forwarded-Encrypted: i=1; AJvYcCUQmRY8Kzuwx3SApSg3oNq/3QPpj4ds4bWbp9iktozRJo7x0uIDt4qppm/cPirYYaEqNwWTaSzZe5/T@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/eP1/EmhN9kLrRCQMTgMI8hc2JCjlkmm5grgfv66tBATEcsVR
	VQIEPAjJii9RZj9+a88v81CUhx7wLGbREX8w6tU74ZYn+Q9b0Hd+uf6b+zye8EA0oPYpgyAXsp+
	ixvlmD1ZWo+4j7dNGzb0E0wgJL6fydBX1f/6uRg==
X-Gm-Gg: ASbGncvv4rop7bM2NwNFwq158cw+ZUKjQ4aZyK4Dm9Ys/vR9AmJ3BtT1UoBbysjy5Cl
	or7PkNcndxHpYQviZnoq7mzZ2iXXcTX67WKmX
X-Google-Smtp-Source: AGHT+IFKcJ0e6+Y7yFc5JdvYtyFElA1kRTbxJ9s2rI8zNUXsWpTXr/ByNHm3P2n/+XL7rUtIOMimAHQYo2dLityB/nk=
X-Received: by 2002:a05:6512:6512:b0:542:297f:4f68 with SMTP id
 2adb3069b0e04-542297f4fcdmr5265487e87.0.1735317288016; Fri, 27 Dec 2024
 08:34:48 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241225-03-k1-gpio-v3-0-27bb7b441d62@gentoo.org> <20241225-03-k1-gpio-v3-1-27bb7b441d62@gentoo.org>
In-Reply-To: <20241225-03-k1-gpio-v3-1-27bb7b441d62@gentoo.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Dec 2024 17:34:36 +0100
Message-ID: <CACRpkdZPD2C2iPwOX_kW1Ug8jVkdHhhc7iFycHtzj5LQ0XWNgQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] dt-bindings: gpio: spacemit: add support for K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Yangyu Chen <cyy@cyyself.name>, 
	Jisheng Zhang <jszhang@kernel.org>, Jesse Taube <mr.bossman075@gmail.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 25, 2024 at 1:33=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:

> The GPIO controller of K1 support basic functions as input/output,
> all pins can be used as interrupt which route to one IRQ line,
> trigger type can be select between rising edge, failing edge, or both.
> There are four GPIO banks, each consisting of 32 pins.
(...)
> +description:
> +  The controller's registers are organized as sets of eight 32-bit
> +  registers with each set controlling a bank of up to 32 pins.  A single
> +  interrupt is shared for all of the banks handled by the controller.

I looked at the driver and came to the conclusion that it's better to use
4 different instances of the chip, one for each set of 32bit registers,
so these 4 GPIO controllers are instantiated separately.

The operating system can handle the shared interrupt, there is no
need to use a single device instance just because the interrupt is
shared.

DT bindings are operating system neutral, but for example in Linux
(if we pretend this is just one possible example) then a driver
handling a shared IRQ can be requested with the flag IRQF_SHARED
and the driver can just return IRQ_HANDLED if it handled an IRQ
or IRQ_NONE if it didn't handle the irq (so other instances can
handle it).

Yours,
Linus Walleij

