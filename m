Return-Path: <devicetree+bounces-29391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA0CB822B40
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 11:26:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 37EDB1F240D8
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 10:26:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2698218B00;
	Wed,  3 Jan 2024 10:26:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="gBdXRcKJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDAF518C25
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 10:26:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-7cc705bbb2eso2373567241.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jan 2024 02:26:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1704277578; x=1704882378; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1d7qdkI7VcKd65R+llbhREgSlk8bC5HVMhsfJ3f5O8Q=;
        b=gBdXRcKJFmRY66aM7eCJ7oVfMGK52ggM2gfVCX5IbNN7JWMo+ueV/HOvi2225x2OPb
         i8cx/i4O5NUnXTg866sioGWa2zGXu2iH3VZ0WSlAzFWoFgUDYY3OeNPTmU4EpK7uveBF
         Z/h6J2hWG/6PhyEkQLRTlKR5eCKxn7QlxpL4NQRZNozT0bzIXQxCZU5AGePIV/qQNnky
         gabq6OSlFHKMPGsynlrZQjivGCA8B5IcmA3t60jYX40E6OYiYee5GH4JzHvFu6WEsdLR
         1GjBF9iYnEQ18ES/nUToyiu8Q7/eApml/iui6+KbMRT6raWApfClgRoC6SECZN6BoqJw
         2IRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704277578; x=1704882378;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1d7qdkI7VcKd65R+llbhREgSlk8bC5HVMhsfJ3f5O8Q=;
        b=eBSNnluTzfNOjua8uW6bPhIPjbT6tBlhuEIbONJw38jg/jyMRBX18RPpx4FFSDzjZm
         zCO4zFNABMmNvLktaBN+eo34T4v9qisqrqRXsTJHgS6KYYBhgQCGk8DGyc8iusF9wcat
         e6OtzfUU/FqXHdw9IvKlhezMTFvHB3t44RMRTgwoCOPHodPTnYN6b9lSobvTdsW7Ajwo
         Geso9ygYYXbCKiIjxViQiIPz5Ba2sk7UR4EBlDsBJQxtE0ReEp9p82gN2olA2fB3264c
         i4v0HTuLTlgBh2DGRHYL6Ov2MhO7onVmPOcmJyamOnKVm9Jic4yZv+E1qxPk7+VeGgcq
         Z3aw==
X-Gm-Message-State: AOJu0YxuGqGtHYTUiQ4eDPshZib4jxqPEjXXf6XgL3FKP/hCOdHjLIUb
	6oS8Vw5HWKP0r9e8rtmLZPPNzvK49AkpP/HzOumIgfy1U0Hz4A==
X-Google-Smtp-Source: AGHT+IE5jAGVmqMJmEEUn9XlR3Ju9xjVR+lwzAqo9Xfbl9h69dD5XR7wi3AVa2oOSBEa2fbNaqf2DaS3Lpcd+UAX4Yo=
X-Received: by 2002:a05:6102:2d05:b0:466:fd31:def8 with SMTP id
 ih5-20020a0561022d0500b00466fd31def8mr7847832vsb.55.1704277578749; Wed, 03
 Jan 2024 02:26:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231229074508.2709093-1-JJLIU0@nuvoton.com>
In-Reply-To: <20231229074508.2709093-1-JJLIU0@nuvoton.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 3 Jan 2024 11:26:07 +0100
Message-ID: <CAMRc=McNDMBXebq_KC50F4XaXrFTCw6+GQqNmhbzPQ=2oGpLzQ@mail.gmail.com>
Subject: Re: [PATCH v10 0/3] Add Nuvoton NPCM SGPIO feature
To: jim.t90615@gmail.com
Cc: JJLIU0@nuvoton.com, KWLIU@nuvoton.com, linus.walleij@linaro.org, 
	andy@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	conor+dt@kernel.org, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, openbmc@lists.ozlabs.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 29, 2023 at 8:45=E2=80=AFAM <jim.t90615@gmail.com> wrote:
>
> From: Jim Liu <JJLIU0@nuvoton.com>
>
> This SGPIO controller is for NUVOTON NPCM7xx and NPCM8xx SoC.
> Nuvoton NPCM SGPIO module is combine serial to parallel IC (HC595)
> and parallel to serial IC (HC165), and use APB3 clock to control it.
> This interface has 4 pins  (D_out , D_in, S_CLK, LDSH).
> NPCM7xx/NPCM8xx have two sgpio module each module can support up
> to 64 output pins,and up to 64 input pin, the pin is only for GPI or GPO.
>
> Jim Liu (3):
>   dt-bindings: gpio: add NPCM sgpio driver bindings
>   arm: dts: nuvoton: npcm: Add sgpio feature
>   gpio: nuvoton: Add Nuvoton NPCM sgpio driver
>
>  .../bindings/gpio/nuvoton,sgpio.yaml          |  87 +++
>  .../dts/nuvoton/nuvoton-common-npcm7xx.dtsi   |  24 +
>  drivers/gpio/Kconfig                          |   7 +
>  drivers/gpio/Makefile                         |   1 +
>  drivers/gpio/gpio-npcm-sgpio.c                | 612 ++++++++++++++++++
>  5 files changed, 731 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/gpio/nuvoton,sgpio.=
yaml
>  create mode 100644 drivers/gpio/gpio-npcm-sgpio.c
>
> --
> 2.25.1
>

Applied patches 1 and 3.

Bart

