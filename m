Return-Path: <devicetree+bounces-120540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8ED9C31EE
	for <lists+devicetree@lfdr.de>; Sun, 10 Nov 2024 13:24:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A2EDAB20B79
	for <lists+devicetree@lfdr.de>; Sun, 10 Nov 2024 12:24:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC33C155C82;
	Sun, 10 Nov 2024 12:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZhdGeAhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDDAD14D2AC
	for <devicetree@vger.kernel.org>; Sun, 10 Nov 2024 12:24:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731241461; cv=none; b=VDvHFl4ti16J59+4GHVakssYPHqiOjU/ubmVUXWGWFbuEo9eubYOKi4UdFou15YpmAA1Pj6+Lpflg9MoXxevksTRH0zOwrjz/SgmZizQEP5yRalvuZwuT06li0icAjtaPxnFMoYyY0AncZhw5SwVVsfbqTy3ImUhUKBNnwQYCgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731241461; c=relaxed/simple;
	bh=t/O5XpULgPnRuRQtZ3tMAMvCzvI55Pft5hCw+IljVkE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fznoCEYkuI/3zzIn8GYAwnodGl2PD8r9nyW1WBH/MOXM64nd7N4Ii2OIBgwv/ifjN+uY311YVJOLgvdN+DpGr1uGsz43vf8gOkxLDmsBtYgpzNKkrSW9HHbuIpOF5rEn3JluXG7GHoij2zDoH/XjewqT3n1avWlJCKShwh72TBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZhdGeAhZ; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4314c452180so26151205e9.0
        for <devicetree@vger.kernel.org>; Sun, 10 Nov 2024 04:24:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731241458; x=1731846258; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rvXYUadJ0YY+CbymfbcOM/wzKxval+r+XKbtSthLR0Q=;
        b=ZhdGeAhZkiZl0kZ0U7EWfuy3NIgxq83vcU+cy7czEJ6On0nRwqgX48VXMotoia7Np7
         APdetCadZj60LtGfxLYMsWAtWjdz/qpIWJhuVBPLkbx25jo6/8TtEUYWpUxRX1CGRwSW
         ktaccm5rkkNXDu+xIR5OSn7TwdDZF3vHhF+h3vnLZsV7CmtuuE+hB01H2beSCGYX3GoP
         Hz1TtV7X6qoVtFgvmeLv7Wtjqqp8y13cxRgbSzUnblQdZBf5gppJrhfmkqQz+uFw4W92
         7ZSTOk3DlDkVrBQOFFPFVL1bLzhkNsKqvESnEZS3/erSnxJP93kvqC4VTrvOneMNkuW+
         WOKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731241458; x=1731846258;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rvXYUadJ0YY+CbymfbcOM/wzKxval+r+XKbtSthLR0Q=;
        b=sHu5DT1dfO3mQTld6E+eQW3C6CS9lbOCTYtVgWXBVRPCkcxb9QFfxlnB76DaJzzPJL
         D4I/6MUfK7cg3mhOZs8O8Ho62KrEEvyntMVO6sTuzjmlyAqXoJmO2d84WjXO56tXneQu
         BCKe5Bn5suuhpENQmOcyZp9QMaeaHC7TYu8okkVHbY4wUGGg4kX87dTfd4TJDyv1gf2c
         vnfFfIcWQY7lfT3pAey4Q2xdwapJ/b5dkukcVfiHf+jxweVA0Pkq+EsxRvrO6iQHqrrk
         vApDOmrmY+gJDE5tayBf/OhNKWWybMZDoCv8QwE7V2aS+clsBQKfCu6XclpThS+YeLZG
         TtIA==
X-Forwarded-Encrypted: i=1; AJvYcCV4lUtXH5vKtP8tX2ghJiE47Vv/Pn+RGFUn4/Ga11ocsgp1whr3L/OZeddzebzEP9/q7G48jpAmJetA@vger.kernel.org
X-Gm-Message-State: AOJu0YxkJUnycgh9lRcAx55vbErK5ApzUTlUkdduMWvK95lHqfrH4e5H
	6geMGLbgECB4F3aNGYXbPG9Cjp4wv8qGWoJ14EmUzQ16dTX+2fmK5xwGtoosVtE=
X-Google-Smtp-Source: AGHT+IGhj9FWXxXNMyiRS3rVPR92d2i9obKrk1HDWxw33l4TLDIFDIzAxuSd6E/CWeUFU724XoVgXA==
X-Received: by 2002:a05:600c:4f4e:b0:431:4a82:97f2 with SMTP id 5b1f17b1804b1-432b6858db8mr83883675e9.6.1731241458324;
        Sun, 10 Nov 2024 04:24:18 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:e984:9f27:9cbb:71ca? ([2a01:e0a:982:cbb0:e984:9f27:9cbb:71ca])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432aa70a1d8sm180707145e9.27.2024.11.10.04.24.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Nov 2024 04:24:17 -0800 (PST)
Message-ID: <27aa3716-1d28-4da8-80e6-212d7f94d193@linaro.org>
Date: Sun, 10 Nov 2024 13:24:15 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 0/4] Pinctrl: A4: Add pinctrl driver
To: xianwei.zhao@amlogic.com, Linus Walleij <linus.walleij@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20241101-a4_pinctrl-v4-0-efd98edc3ad4@amlogic.com>
Content-Language: en-GB
From: Neil Armstrong <neil.armstrong@linaro.org>
In-Reply-To: <20241101-a4_pinctrl-v4-0-efd98edc3ad4@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

Le 01/11/2024 à 09:27, Xianwei Zhao via B4 Relay a écrit :
> Add pinctrl driver support for Amloigc A4 SoC
> 
> I want to find out what kind of solution is feasible to
> meet the needs of all parties. This RFC verion is one of them.
> 
> All of Amogic SoCs GPIO device requirement is met here by
> adding GPIO bank definition instead of the pin definition.
> Binding header files will no longer be added to future
> SoCs's pin devices.
> 
> The pinctrl software only adds insterface of of_xlate to support
> for transformation without affecting the overall framework and
> is compatible with previous drivers.
> 
> The code in DTS file is also readable when using GPIO, as below:
> 
> reset-gpios = <&gpio AMLOGIC_GPIO(AMLOGIC_GPIO_X, 6) GPIO_ACTIVE_LOW>;

Fine, but why not use 3 cells instead of this macro ? Since you introduced the
custom xlate, parsing the 3 cells would be easier that using a macro:

reset-gpios = <&gpio AMLOGIC_GPIO_X 6 GPIO_ACTIVE_LOW>;

Neil

> 
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
> Changes in v4:
> - Add interface of of_xlate support.
> - Add const for some variable.
> - Link to v3: https://lore.kernel.org/r/20241018-a4_pinctrl-v3-0-e76fd1cf01d7@amlogic.com
> 
> Changes in v3:
> - Remove head file from binding.
> - Move GPIO define to file *.c.
> - Link to v2: https://lore.kernel.org/r/20241014-a4_pinctrl-v2-0-3e74a65c285e@amlogic.com
> 
> Changes in v2:
> - Use one marco instead of all pin define.
> - Add unit name for dts node.
> - Link to v1: https://lore.kernel.org/all/20240611-a4_pinctrl-v1-0-dc487b1977b3@amlogic.com/
> 
> ---
> Xianwei Zhao (4):
>        dt-bindings: pinctrl: Add support for Amlogic A4 SoCs
>        pinctrl: meson: add interface of of_xlate
>        pinctrl: meson: Add driver support for Amlogic A4 SoCs
>        arm64: dts: amlogic: a4: add pinctrl node
> 
>   .../bindings/pinctrl/amlogic,meson-pinctrl-a1.yaml |    2 +
>   arch/arm64/boot/dts/amlogic/amlogic-a4.dtsi        |   36 +
>   drivers/pinctrl/meson/Kconfig                      |    6 +
>   drivers/pinctrl/meson/Makefile                     |    1 +
>   drivers/pinctrl/meson/pinctrl-amlogic-a4.c         | 1321 ++++++++++++++++++++
>   drivers/pinctrl/meson/pinctrl-meson.c              |    4 +
>   drivers/pinctrl/meson/pinctrl-meson.h              |    4 +
>   include/dt-bindings/gpio/amlogic-gpio.h            |   50 +
>   8 files changed, 1424 insertions(+)
> ---
> base-commit: 58e2d28ed28e5bc8836f8c14df1f94c27c1f9e2f
> change-id: 20241012-a4_pinctrl-09d1b2a17e47
> 
> Best regards,


