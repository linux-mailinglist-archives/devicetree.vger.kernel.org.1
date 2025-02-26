Return-Path: <devicetree+bounces-151409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA8BA45BAC
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 11:24:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2EC07176978
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 10:24:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5C6D62459C0;
	Wed, 26 Feb 2025 10:24:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Hjnxnxtx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D7523814F
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 10:24:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740565482; cv=none; b=tZqrHU6jlnPb4OWet12b6HUz/uHilEgRAltzM4ZAU9QWCaFq+8ukVTSokACkIvMmatPnZHTe7ptgIWxDTSjZHZIB03+0/769M9eKT3FDY9G4pqES5epc2AS52jibmI/qT3VR3b9lkd4lVHL3Er7WOUnWiK18J2D40k4ue68fns4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740565482; c=relaxed/simple;
	bh=f8hhLyZlJLg3VVOM9RdCgNWjzvtlFruSMQ7KM6g2fZU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=N9RF0Qg1C5VzCDbI5vMkusR2noxhSOPJ3B2PiITnB/WSOZtGWkOnnZ+E7VCFy7HOWoKjH9Lgwub9UlOWhCuPIdWaHq5GgoNpqkof3p0h4aZ4UD1o3DLXFSBYjVJ7ADNbujK7U32DGcvy5r8ukqLPcDSuGCadAUhQQR7K8PowM3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Hjnxnxtx; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-5452efeb87aso6637977e87.3
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 02:24:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740565479; x=1741170279; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LVtrqvkPNmYmY0oGPxOkrh36jDkhWLE+ptRBX0xtIwg=;
        b=HjnxnxtxSy56laJXQZQOmpddTR++OB5Qoumo5tdaqyL2XuinuB2y5Cgm/B0HMr/Mlg
         CGI29/J8WCLYMOa+oo86sDyZwq736Osei0vgjzw3XItrlutJUC09LyLkU5acMLVN6oB+
         8UjOwds7Q/0kp35vUoJtmtHv4diI9zAuoyhJsYz0y9N7NuNwfwhItq8t4nrdwCSp4ILK
         oYoK/x+aajBlfcRIiHvvOxi5DH57bS2IVl1EBUqsjCQN2EdpKU5lb3jnhsLSo1EHKi93
         Wz3DHA7usFTAxuWIJXsHNLjSBFVG6l65U87JtFQOKT+8Lva9PKVbB1PrNVFLLJuLM3bM
         lXhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740565479; x=1741170279;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LVtrqvkPNmYmY0oGPxOkrh36jDkhWLE+ptRBX0xtIwg=;
        b=W40qhJe5PrbwerGb5/3oSWn/xuX4C09BQwIqqoHMFXk+5Zr4O/MrR5nPjGoXGjDA/Q
         pQZAKWDhWeb908H6zA06TGWMkxaAk/aBCSu4lrkbAjA4FvgCV9Nd4CKABWlSv8IIOvpP
         WzrrhroXWQ5ggNShWa3pYp1KNsScR68T8LFohoNGFX6R9Bj5Q941TYjke0sYYZjiXxpj
         pjvyRopcYsdbWW6AqxRGCxMELuZzBsso9bFdzsaM/7dSxIUMMdzpHXU497wKya2Ir475
         eYCK8F4PPZUZSBmXEukP6T4HSs4Jo+JPaDAZ9eoimB28hcfXG16n0nsCqIdDzDX3d2ph
         6KWw==
X-Forwarded-Encrypted: i=1; AJvYcCXPt95fU/EvuYQ2p4x5lJs5wanJGxg+MHTfw7Z0QMu88rTIXyAA71ao9mlHp8mrWzVK+DwgDECcQujM@vger.kernel.org
X-Gm-Message-State: AOJu0YwWV7tp0VQ0gAhLW7v7HGVLlcL3M3lUcrefw7T0FEPDbgQTtENd
	vxM6YH9kXB0kIAvOsBMtlLsWjq1xUe+k1JOCCv45/HBlAfumjj2YjKQUIqbDElM49eO4sR54XZd
	4FFbG4Hj29DvHz8BqN5YHx0I4yNAg1/sWRBLr2cyJp+eOdbjC
X-Gm-Gg: ASbGncvxj99Vgs9Oaqt9XWVKz7gCrowmnkEd3sd2Ysq0MP3QiaFr2QGh0kp4RvZ4A45
	jrdaro2/8umckbYbFzZJWN35C19Rd0MoSsdJ87nb2nJXw3JidDDpuxY29+oz8FwUc+/r6nAoo37
	H0QSwc0LE=
X-Google-Smtp-Source: AGHT+IG7rCTedQa3N//tlOn/Z+rwnS1xGhASGu57SObkcmSjqd8E+pQMLoYev9jUwKtQyOyzKJ6ryDKvddvmmgwJH44=
X-Received: by 2002:a05:6512:2211:b0:545:aa5:d451 with SMTP id
 2adb3069b0e04-5493c5837d3mr1960628e87.25.1740565478561; Wed, 26 Feb 2025
 02:24:38 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250226-03-k1-gpio-v7-0-be489c4a609b@gentoo.org> <20250226010108-GYA44567@gentoo>
In-Reply-To: <20250226010108-GYA44567@gentoo>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 26 Feb 2025 11:24:27 +0100
X-Gm-Features: AQ5f1JpPbkJVEZf5u-mwEpqGT95jx-dhaIMZLx12Jfkquh3vL3NT-QkCOF6Pjgo
Message-ID: <CACRpkdY7nzzu3-+FwpSYqmX+O559LoXHiqcvP2OxkhX+9f-3wg@mail.gmail.com>
Subject: Re: [PATCH v7 0/4] riscv: spacemit: add gpio support for K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Conor Dooley <conor@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Alex Elder <elder@riscstar.com>, Yangyu Chen <cyy@cyyself.name>, 
	Jisheng Zhang <jszhang@kernel.org>, Jesse Taube <mr.bossman075@gmail.com>, 
	Inochi Amaoto <inochiama@outlook.com>, Icenowy Zheng <uwu@icenowy.me>, 
	Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 26, 2025 at 2:01=E2=80=AFAM Yixun Lan <dlan@gentoo.org> wrote:

> Current this v7 version work great with request irq from gpio, like:
>         pin =3D devm_gpiod_get_optional(dev, "myirq", GPIOD_IN);
>         irq =3D gpiod_to_irq(pin);
>         devm_request_threaded_irq(dev, irq, ..)
>
> but have problem if request irq via of_irq_get(), something like this:
> DT part
>         mytst {
>                 ..
>                 interrupt-parent =3D <&gpio>;
>                 interrupts =3D <1 28 IRQ_TYPE_EDGE_RISING>;
>                 interrupt-names =3D "wakeup";
>         }
>
> In source code
>         irq =3D of_irq_get_byname(dev->of_node, "wakeup");
>
> I've made an attempt to patch gpiolib to support three cells "interrupts"
> syntax, but still fail, it always get last gpio irqchip of four, thus usi=
ng
> the wrong pin (e.g: will always get 3 from gpiochips 0, 1, 2, 3)

Right, we need a proper patch to fix this.

Can you paste your patch so I can see if I can spot/fix
the problem?

I think the irq cell parser needs to call out to
of_node_instance_match() - or similar - as well.

Yours,
Linus Walleij

