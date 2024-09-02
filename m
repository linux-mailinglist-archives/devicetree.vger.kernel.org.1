Return-Path: <devicetree+bounces-98938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F36196811D
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 09:58:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 31D8A1F21CA3
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2024 07:58:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B462181B82;
	Mon,  2 Sep 2024 07:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aFrVMRvT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8920117E8E2
	for <devicetree@vger.kernel.org>; Mon,  2 Sep 2024 07:57:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725263870; cv=none; b=hY5zFJz6c9E0gCnXCVk4/Q1LcYY9iZcCYMFylCyS/xpUMWRR6aEvyMIJwsLk1Dv4xgRWqjsTlvNMRlWdWjkZ64gaawtR3EaFWKUeFOeIeljnoQOqQvVcfxV0OItcatc/QZkim7sImc5VuApU9JtJYUwKOzTgBTYJT0PDZJ8RuTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725263870; c=relaxed/simple;
	bh=En+nIWNDSFSZuQsfhskR7e/CS2zONHhXfEB14u5LG4U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=gQYGARKLlu4KeltqJhdJLhb1RrFJWNWOHDQb1HhSl9iKgUuiMjHwi7kOSjMis0VIC/+16Ov1Fl6nnTqlamW+ozpeW7B+6qo3dPv30+40VUHKfOvkjv+1V/L287m+gwSzOGjvTkKKX4LqGpxK0Ywu7P2OPJvBwc5deSHi9Jz872w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aFrVMRvT; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53351642021so4144753e87.3
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2024 00:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1725263867; x=1725868667; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PNe6UTfwv3omDdjm4VbXZLqk/p1g7r/jSnlTORtmwfY=;
        b=aFrVMRvTS4zmEafXHicYdnOzG7YFxMPyETptOvCFlUCgkLWwK4t9yT1awAWPiTcT3E
         oj/XU5oAWJXAfxdcv+F3SE/LGClwzOuhv79NT3l16WY8T230CVG68g8kBjze3Dz6JUDz
         GGA33F3i6LkPBQHwWHEX2zeKy7MDh1PvCM7yTme9W/It7FSiWZSW1DykFNhfLgd8DcHg
         QAuKF6bA5NWgR11+MATwf6uDsUT6yxM1NxVYvBeUSm6gmxXVydKv8qHT9sPiea+L9jkP
         iSwo62BbFC79HrRlzdmXLyvyuL+rSgCo8kYQfUpaIyrnmWrwOcGyfvwMrR4Qcy4D3jtm
         ZuTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725263867; x=1725868667;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PNe6UTfwv3omDdjm4VbXZLqk/p1g7r/jSnlTORtmwfY=;
        b=ExtqXLhOHssAQyCNqgWdUqX4gIUNjwoluTd6P8WBTkwYE/JpJVJrrTg1Kq8zVSthgt
         Uj/bRVxH+ZZ895zRFDoCwbns4MyLh+QqyzsWjzKf3kjHGMREY8w9TBl94fdagZwk7+EX
         O5zSiZIhunsEAO+AzT3E84eBtMsDoKEXwgP2lFkuZjxjgeenFriMoM3hniSfHSrI43Wa
         5B0MJ/2V47DNlgKZvVX0F1NnsTz6YVtt/NFQKusH/CDsDbNyvqQmceFjlQx/NfDnRuRL
         aO2CI0aS5APdtIksx6bJGj96Dldsa29LxA4wmF/pXm2DTbfslu2300lUgWEh14p5lNIb
         6NyA==
X-Forwarded-Encrypted: i=1; AJvYcCUOmA+OXehjH6BsAp41ihWAoAs1P2SIlCWjw4MkCpeKPkUwKy/NxECF6KcTqMeAVlszsYcOCflSw3Fs@vger.kernel.org
X-Gm-Message-State: AOJu0YwyNgxm4Dv2IK4/sxnr7DRrKrsqnycnfJXPgk4w0ddIktD3pd/1
	BmEQcvPB0QLfRrZYR2d/vFqswmi87W3ijkLVhisvlhLqVY233fIg3Q+m0FdHEI9CKauD6+iXR87
	rhPH9Vr9PuAcwjIPXLIuBE50ft5H11Ady1zdgIg==
X-Google-Smtp-Source: AGHT+IFg1jywu70GIrr3YvtBUAZYZFTHQtiU2/ai0tVMiXStJdKaZQevzq+obbjVJrGPamFdvFFxc2T7vlG6O+T6+Q8=
X-Received: by 2002:a05:6512:3a8d:b0:52f:c0ee:3b5f with SMTP id
 2adb3069b0e04-53546aef1f9mr6278575e87.10.1725263866032; Mon, 02 Sep 2024
 00:57:46 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240828-02-k1-pinctrl-v3-0-1fed6a22be98@gentoo.org> <20240828-02-k1-pinctrl-v3-2-1fed6a22be98@gentoo.org>
In-Reply-To: <20240828-02-k1-pinctrl-v3-2-1fed6a22be98@gentoo.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 2 Sep 2024 09:57:35 +0200
Message-ID: <CACRpkdZLdbKr41yXg6ETM6ANCD+Rbd_tnz0hQ0NyU9oRXR+PnA@mail.gmail.com>
Subject: Re: [PATCH v3 2/4] pinctrl: spacemit: add support for SpacemiT K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Conor Dooley <conor@kernel.org>, Yangyu Chen <cyy@cyyself.name>, Jesse Taube <jesse@rivosinc.com>, 
	Jisheng Zhang <jszhang@kernel.org>, Inochi Amaoto <inochiama@outlook.com>, 
	Icenowy Zheng <uwu@icenowy.me>, Meng Zhang <zhangmeng.kevin@spacemit.com>, 
	Meng Zhang <kevin.z.m@hotmail.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Yixun,

thanks for your patch! Overall the driver looks very good, it's using the
right helpers and abstractions etc.

There is this thing that needs some elaboration:

On Wed, Aug 28, 2024 at 1:31=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:

> +/* pin offset */
> +#define PINID(x)       ((x) + 1)
> +
> +#define GPIO_INVAL  0
> +#define GPIO_00     PINID(0)
> +#define GPIO_01     PINID(1)
(...)

So GPIO 00 has pin ID 1 actually etc.

But why?

If there is no datasheet or other conflicting documentation, just
begin numbering the GPIOs at 1 instead of 0 to match the
hardware:

#define GPIO_01 1
#define GPIO_02 2

and all is fine.

It's just very uninituitive for developers. I guess that there
is a reason, such as that the datasheet has stated that the pin
with pin ID 1 is GPIO 00, then this needs to be explained with
a comment in the code: "we are doing this because otherwise
the developers will see an offset of -1 between the number the
pin has in the datasheet and the number they put into the
device tree, while the hardware starts the numbering at 1, the
documentation starts the numbering at 0".

It is common that engineers from analog electronics background
start numbering things from 1 while any computer science
engineer start the numbering at 0. So this is what you get when
an analog engineer designs the electronics and a computer
science engineer writes that datasheet and decides to "fix"
the problem.

Yours,
Linus Walleij

