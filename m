Return-Path: <devicetree+bounces-27748-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C2EB81B92E
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 15:04:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E0DE4B25191
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 14:04:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DB7355E5D;
	Thu, 21 Dec 2023 13:57:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dyjI6cK0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C84B055E44
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 13:57:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-5e730eb1770so8346047b3.1
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 05:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703167046; x=1703771846; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wVLL5bW0YfWBSEGexgyYtg+trVF7bli3OEKILg9N7tk=;
        b=dyjI6cK0RNC/IWBwTtNidlkB7BN3iZzMev+4M6CvQ+hAT3+pC5XX+1vyA0su5Eg9Fw
         1rku3VHCDc2yGu9NHIwfSn46+zDqvKMEPvI/lE2z284B24Q1ufHxWjVLer51aW2gwpQZ
         zxlYjnyjBbE+0r9wzX1c5liQ4C17F9i2p0+W2e3bG1BiIcTozcrAiO2gCG1SF5yUxlQl
         N5krboA+joOtQbBWjgyu2H7KJkJTDPK8o9tqGhlNpVj/rivdYRMq+LQJLId59Gwp6jj2
         ylV+AMNabrzN9X+M9e95fjr6qiHNR9mjMoZJl5RebvbxuRBHbLTw9RyZ2Hpt9pWnSkFZ
         bPdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703167046; x=1703771846;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wVLL5bW0YfWBSEGexgyYtg+trVF7bli3OEKILg9N7tk=;
        b=uVlUfZuIoXqMx+kevdgqND2ysm7biQT1MMmwRJG8hAghU+9xl53ZVEG3F5b7HfcPMO
         CfdG0/Rb414nENDa2WVCE6Zf/SWHwfN/fqFPBydP1TBsfSFU5/zyFkOl6FlkKcf/pZhV
         1mN+pZTsKo/RCRvg9VAVUnDdmCJ6tK87aCPmrUudNeiRHZTvQ4RvXV4ZnG03K8QaZvpb
         pXu4dKb1rwdPWAOfEOaGHnInOhHFyv4KykHAMCgpmu051C1Wf9vufY709ZpkLYBgF24f
         e/3zTziDywsyLgc+ACgFEq1NQuv/Dt0Cpsbhzn7L1n0U0kmdNuDrfU/9YrTfFoEEwGwW
         j2LA==
X-Gm-Message-State: AOJu0YxD8UcG665ExBD6sVldOhNP14uWXMisYHghBScDT3vuEhE6PU3U
	ZtSYKOPOYvGlDXl3q2wwSWzdzBpLejjRYIh9aKfwcg==
X-Google-Smtp-Source: AGHT+IFZ1qcBfCLgb/cLThThc+4qRwsmiFwVndI+yAxTHyzBnGORoB5NRPxyw4AHtrKddus3UTta0WhtQOhSqN6hFts=
X-Received: by 2002:a81:52c8:0:b0:5e7:5a66:9a9 with SMTP id
 g191-20020a8152c8000000b005e75a6609a9mr1202944ywb.90.1703167045735; Thu, 21
 Dec 2023 05:57:25 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231221083622.3445726-1-yuklin.soo@starfivetech.com> <20231221083622.3445726-2-yuklin.soo@starfivetech.com>
In-Reply-To: <20231221083622.3445726-2-yuklin.soo@starfivetech.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 21 Dec 2023 14:57:14 +0100
Message-ID: <CACRpkdYL8wK2vX7P7p4QvU9VV2CPjRv_aXiLqO+07MMCCKKk4Q@mail.gmail.com>
Subject: Re: [RFC PATCH 1/6] dt-bindings: pinctrl: starfive: add JH8100
 pinctrl bindings
To: Alex Soo <yuklin.soo@starfivetech.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>, Hal Feng <hal.feng@starfivetech.com>, 
	Ley Foon Tan <leyfoon.tan@starfivetech.com>, 
	Jianlong Huang <jianlong.huang@starfivetech.com>, Emil Renner Berthing <kernel@esmil.dk>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Conor Dooley <conor+dt@kernel.org>, Drew Fustini <drew@beagleboard.org>, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

thanks for your patch!

On Thu, Dec 21, 2023 at 9:36=E2=80=AFAM Alex Soo <yuklin.soo@starfivetech.c=
om> wrote:

> Add dt-binding documentation and header file for JH8100 pinctrl
> driver.
>
> Signed-off-by: Alex Soo <yuklin.soo@starfivetech.com>
> Reviewed-by: Ley Foon Tan <leyfoon.tan@starfivetech.com>
(...)
> +title: StarFive JH8100 AON Pin Controller

If AON means "always-on" then spell that out in the title, the world has
too many opaque TLAs.

title: StarFive JH8100 AON (always-on) Pin Controller

(...)
> +        properties:
> +          pinmux:
> +            description: |
> +              The list of GPIOs and their mux settings or function selec=
t.
> +              The GPIOMUX and PINMUX macros are used to configure the
> +              I/O multiplexing and function selection respectively.
> +
> +          bias-disable: true
> +
> +          bias-pull-up:
> +            type: boolean
> +
> +          bias-pull-down:
> +            type: boolean
> +
> +          drive-strength:
> +            enum: [ 2, 4, 8, 12 ]

Milliamperes? Then spell that out in a description:

> +  Voltage regulator supply the actual voltage to the GPIO bank while the=
 syscon register
> +  configuration in bit [1:0] indicates the current voltage setting.
> +
> +  +------+------+-------------------+
> +  | Bit1 | Bit0 | Reference Voltage |
> +  +------+------+-------------------+
> +  |  0   |  0   |     3.3 V         |
> +  +------+------+-------------------+
> +  |  1   |  x   |     1.8 V         |
> +  +------+------+-------------------+
> +
> +  To increase the device voltage, set bit [1:0] to the new operating sta=
te first before
> +  raising the actual voltage to the higher operating point.
> +
> +  To decrease the device voltage, hold bit [1:0] to the current operatin=
g state until
> +  the actual voltage has stabilized at the lower operating point before =
changing the
> +  setting.
> +
> +  Alternatively, a device voltage change can always be initiated by firs=
t setting syscon
> +  register bit [1:0] =3D 0, the safe 3.3V startup condition, before chan=
ging the device
> +  voltage. Then once the actual voltage is changed and has stabilized at=
 the new operating
> +  point, bit [1:0] can be reset as appropriate.

Actually: where is this information even used?

> +          slew-rate:
> +            maximum: 1

Milliseconds? Write unit in description please.

Yours,
Linus Walleij

