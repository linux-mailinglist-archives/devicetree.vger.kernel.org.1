Return-Path: <devicetree+bounces-134401-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD699FD60F
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 17:46:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6131A165982
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D0F01F754F;
	Fri, 27 Dec 2024 16:45:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n8FtxfpC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E3E71581E1
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 16:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735317958; cv=none; b=Xj1np0KrGgitAhqGOEhl0mHmLjkpAM3D+JtYAyJabR4cWwKEGnfxE042TFdslS61EEoM95yUmRnqHZBz8CfGP4ZqTLPM/FFcUDgY8m53VUufy+TaYM7XIQd8Wpx5IFk2u5MG2793ryvIhWWgr+zc0J2qXwZXjXOpvvgFbNtZevg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735317958; c=relaxed/simple;
	bh=OXht/Y6vderBU9G02puXKXOkbaPUGHuKezGFu6k903E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uggrL9Yip89wVRccaSlAI/tATc8QFKpxs7Bvxbpmz4NM0gc/5UFErT7krpgsa7eRSnNojrUcFuJn9LoB3jW06JPWppWo27jPphKhbPAKeUGbfC/gyNP9Q9ZR9ezsThokbBurs2wOeNUFdGmCxrg+2RqNn/pTRPxyO6+oWcWvCfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n8FtxfpC; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-54024ecc33dso9309098e87.0
        for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 08:45:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735317955; x=1735922755; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q7fXp/vP0f/slPHXp6AqH/+zdGswus47IwML1LfBAw8=;
        b=n8FtxfpCiWrXgH3A8qP1UvCqV5ZnW1aIKOUvj4i0xmcwO2HfJiSOQGLVqZmDOzeF60
         iJZSyaVgzPCLCDJuCpj7uW3bB/9M/aPwxFu6Z3pruuyEvfwvfTZzxX76vF1fparKdZDy
         1LKJH+EhYwJs8Cz7C9i1Xu91H6p6shUlKa5nrNoyAmZVgFcTDWv5w9mO5bQKRGp0bgxv
         g5VOAtn0g16esWxpYq6wTHBHjuOd6Vow083W4bYWLMgD++ipn1VexnGnT0fqA5uFRe7N
         9WZaALcqui6nMB73rkb4TLrOPvUttTvpsXbwP0d9F76Jkm6lG+HlBgMgvmLTo3cP6gNu
         ebzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735317955; x=1735922755;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q7fXp/vP0f/slPHXp6AqH/+zdGswus47IwML1LfBAw8=;
        b=R2NsZ9sfEDK1oOTrAfQl/ASRHZSbJ4G4vt7TUJNv6norWJa1bDO8jvPeZG+oWjvMGW
         M9wPBXlcLpINhjuSbMgXsdWMpJK7q/kpKDkWfzK/aOD3pEYcNI3QIotLIVib22JAevKo
         aamPk2dFIqO4PG3Yx6L2HBHdWGQppuE8NOJ6Oa+aMvh/NGDZSphLMCdD0kG2HxHGqsUi
         gODE78TH+APkYuX7NCqke9b9hq5aMx7r9RjXiwVzhVY2oKOoWM2R7VAlPErcrNMengzc
         3aXghq7f/0425RkaxpljbO2HWjjgoDryxqUA1PdAy5Q2EmsSEmCbPNzsWj/lH9vmmE1S
         ySeg==
X-Forwarded-Encrypted: i=1; AJvYcCVK+VGMom29NuCY8TGBHpUrOJ/0fjxHsI5bc1rN0aFCYUuWbxRbl+Bqzs37xC/Non9SWiR9hgGx04D8@vger.kernel.org
X-Gm-Message-State: AOJu0YyuZAdbCNKaOpa3VmLr9JfE5yqt/A2g+1vWzD4VrHmTEhG0qm8n
	L97CPQsigVGoTVnbGRBoYb5u+JDJ5fxBx8xeEUjpOxZKhvEHslRZqIBZ5LP9L8SudykGMpxyA+F
	BniJRfbFuXPDdW8WFA9chdLh7QIieIoR3dO26TA==
X-Gm-Gg: ASbGncs+S/Bf/RTD3QqAAG9G1NAvaD1wQw+l3EJTZ/POLthzDchPgqj1DOKYVtLJvn5
	DAdoi2A0tzV/5XXRsyi3zmWnvyuHSW8auXqnY
X-Google-Smtp-Source: AGHT+IE4Y7zvoqxLIS65I+tmyjASskVOS7Be/eaBw95u2qeKMMrmsBTU5x+sNw15DdYpsRw5WjHCCiT4GucOSaa46eU=
X-Received: by 2002:a05:6512:1188:b0:540:1f67:689a with SMTP id
 2adb3069b0e04-54229597fc9mr8156780e87.55.1735317954580; Fri, 27 Dec 2024
 08:45:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241225035851.420952-1-gch981213@gmail.com> <20241225035851.420952-2-gch981213@gmail.com>
In-Reply-To: <20241225035851.420952-2-gch981213@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 27 Dec 2024 17:45:43 +0100
Message-ID: <CACRpkdZ8Yve3EPB6E1nrPi0se=rgush60Q=Vce4Ux2w1QW3w_w@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: add binding doc for siflower,sf19a2890-gpio
To: Chuanhong Guo <gch981213@gmail.com>
Cc: linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Qingfang Deng <qingfang.deng@siflower.com.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Chuanhong,

thanks for your patch!

On Wed, Dec 25, 2024 at 4:59=E2=80=AFAM Chuanhong Guo <gch981213@gmail.com>=
 wrote:

> Add dt binding doc for the GPIO controller found on Siflower SF19A2890
> and various other Siflower MIPS and RISC-V SoCs.
>
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
(...)
> +  interrupts:
> +    description:
> +      Interrupt mapping, one interrupt per 16 GPIOs.

So from the driver it is very clear that this is lumping together several
GPIO blocks with 16 GPIOs in each into a bigger GPIO controller, despite
the instances are identical. They even each have an individual IRQ.

> +  ngpios:
> +    description:
> +      The number of GPIOs available on the controller implementation.
> +    minimum: 1

I would say minimum: 1 maximum: 16 default: 16.

One instance per block/bank.

> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/interrupt-controller/mips-gic.h>
> +    gpio@19d00000 {
> +      compatible =3D "siflower,sf19a2890-gpio";
> +      reg =3D <0x19d00000 0x100000>;

Just use 4 instances. Since (looking at the driver) it seems there
is an IRQ register that is "off the bulk" I would do something like:

instance 0:

reg =3D <0x19d00000 0x40>, <0x19d04000 4>;

instance: 1:

reg =3D <0x19d00040 0x40>, <0x19d04004 4>;

(...etc...)

You can add reg-names if you don't want the implicit order
of registers. (Perhaps the bindings maintainers will push for this
as well.)

> +      interrupts =3D <GIC_SHARED 246 IRQ_TYPE_LEVEL_HIGH>,
> +        <GIC_SHARED 247 IRQ_TYPE_LEVEL_HIGH>,
> +        <GIC_SHARED 248 IRQ_TYPE_LEVEL_HIGH>,
> +        <GIC_SHARED 249 IRQ_TYPE_LEVEL_HIGH>;

Just one IRQ and handle just one block per instance.

> +      clocks =3D <&gpioclk 0>;
> +      resets =3D <&gpiorst 0>;
> +
> +      gpio-controller;
> +      #gpio-cells =3D <2>;
> +      ngpios =3D <49>;

Just omit this on instances 0,1,2 and set to 1 on
instance 3.

> +      gpio-ranges =3D <&pinctrl 0 0 49>;

Augment this accordingly to one instance per bank/range.

Yours,
Linus Walleij

