Return-Path: <devicetree+bounces-118118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D6609B90C6
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 12:56:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 03FEEB22436
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 11:56:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 845EE19B3E3;
	Fri,  1 Nov 2024 11:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MxzH+GCR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E82519925B
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 11:56:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730462182; cv=none; b=lMSRo4zdcsqgmvH+meOe1wu3hPknxpkb5xEtp1XDFACO+lqNpNTOIw1dRrNFGSGaplW5qzWwsejDF7YkXbUR7x5nxXMom9/RbgC/WhpYvbY++ItjnshIu24v6ZE0B/EDUtVreXfH6e8Dfj4PFqLLHhtu6UtzorZcmIiNZFAQeF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730462182; c=relaxed/simple;
	bh=1Uojm1GMg7+SmttJF2ZuBBVhB5ST+uLPitvJ1/9BMXM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=aABn59Z19OACReFK/+Xap8356JU8ke/tnbGtgm1viHOfjEfIpBFPQ/zs4pMQqC6SiZIW6xfTZtqCCPhRSqHZ7dlhiBplbd3epeFDpAK4dBCDKNZ6OLlEjkkRmE8nFQvWAzmgkU44htlKWtAip4UMrixnwBBEBxnrA8ni3c7ZnG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MxzH+GCR; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-2fb443746b8so16411001fa.0
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 04:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730462178; x=1731066978; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PR7nhijIFPqEwqWUXxfWpQdSj2cyoar1EyPI7jC4FfI=;
        b=MxzH+GCRv9ClLXszj1vkA7X0oGAXClXXgEIfvB1I/fqumEFDtqAzfp3hURIQrIAVEZ
         BsqbkaFi5p3FyjrPwEk4hGz5p94qimaZQXAlI7Ps+m69KiH8Gbw4dgRTSE2mb6EHnH4N
         wi3vSnMtzyNMr7ipbOc+lxfww/zjYouA+g2Fy/JvBb0lY8OC6Nw9we4tjJHv8j9xHcqC
         BAo0oh3U+8LGjpDZCm6O4mJaKarznjkDV/o4EOKJsTDsR/VR9PTHJcaU12FxvYyDAeEf
         5JdKWuQtH5k8F1vC1JFfyoIGkWUw5zNWqP7LAivnTuIenqLG6C0GX4ozJ7SW3/FF5C+J
         LQsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730462178; x=1731066978;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PR7nhijIFPqEwqWUXxfWpQdSj2cyoar1EyPI7jC4FfI=;
        b=cIeOevOy72lhx5ZWtYimumEqkp9xbK8bRj40ALTbiH8Tw3IbHKVUIhF4C0jA969iap
         9kXt+l3tWmShM+H3MGcluPTTlnJxKfk0CJuHaW8dezg3s1m+v8Pndf8+ZPATiF0X76Fx
         CahEVMsam8qxPDv2Vv6DJpE4yV29ByZEQBui8YRO8mjhDNXQgNwRjN7TKu4WInZbrZ9E
         fuPuIlJfZZuQ+0mv0K/WK38fCaBW/viFH7QeDOXTwDHFOULbSMUofjGrP3S4yl3p2YWZ
         pp9okUV8QfPL4Wx1nhL1ITnoCncqUJblsXHSQ6G3wJ20I6gES9jZ+0fM52C/zHD45cbY
         53BA==
X-Forwarded-Encrypted: i=1; AJvYcCUXr48gulVFWDloI2IklZebfIw0yW3jWaKEXj0d8WjjOoEWOMKOwYOtQfwaBZjEHw7lw7KQD1BAMAV/@vger.kernel.org
X-Gm-Message-State: AOJu0Yzy2gTzvEvfF84vLX5HLOiH3QbZKN09PrzSgDIsbj/LhkdeuTXW
	gcc0ZS1C2Qf/zWRi9Iy33eQAM8quUOX6P3/C6o5v2GYEoRzSqVgHuhvjSwb8RP/FMN7tBu4qUiK
	kHOMugY0qkFocZtIk7S1MxXUZpC0L7Yb0ZpVH6Q==
X-Google-Smtp-Source: AGHT+IG201tjRpH4xAJy3js1MXvAZgMS+IPv3AAVo1TZLrpjjIYjlw9AiqUvvc+CIbPttUv3zlvfcUINXBzKPHjno0Q=
X-Received: by 2002:a05:651c:211a:b0:2fc:9550:d658 with SMTP id
 38308e7fff4ca-2fcbe004950mr124110461fa.24.1730462178345; Fri, 01 Nov 2024
 04:56:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241101080614.1070819-1-andrei.stefanescu@oss.nxp.com>
In-Reply-To: <20241101080614.1070819-1-andrei.stefanescu@oss.nxp.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 1 Nov 2024 12:56:07 +0100
Message-ID: <CACRpkdbFQ6f6xg906ZREOgDifSWwfFWdxCqDxcLALZdYg6PWWQ@mail.gmail.com>
Subject: Re: [PATCH v5 0/7] gpio: siul2-s32g2: add initial GPIO driver
To: Andrei Stefanescu <andrei.stefanescu@oss.nxp.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Chester Lin <chester62515@gmail.com>, Matthias Brugger <mbrugger@suse.com>, 
	Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>, Larisa Grigore <larisa.grigore@nxp.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Lee Jones <lee@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, 
	Dong Aisheng <aisheng.dong@nxp.com>, Jacky Bai <ping.bai@nxp.com>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, NXP S32 Linux Team <s32@nxp.com>, 
	Christophe Lizzi <clizzi@redhat.com>, Alberto Ruiz <aruizrui@redhat.com>, 
	Enric Balletbo <eballetb@redhat.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, imx@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 1, 2024 at 9:06=E2=80=AFAM Andrei Stefanescu
<andrei.stefanescu@oss.nxp.com> wrote:

> Andrei Stefanescu (7):
>   dt-bindings: mfd: add support for the NXP SIUL2 module
>   mfd: nxp-siul2: add support for NXP SIUL2
>   arm64: dts: s32g: make pinctrl part of mfd node
>   pinctrl: s32: convert the driver into an mfd cell
>   pinctrl: s32cc: change to "devm_pinctrl_register_and_init"
>   pinctrl: s32cc: add driver for GPIO functionality
>   MAINTAINERS: add MAINTAINER for NXP SIUL2 MFD driver

How do you want to merge this?

Can the MFD and pinctrl parts be merged separately, or shall
it all go into MFD or all into pinctrl?

I can certainly merge it if Lee ACKs the MFD patch.

Yours,
Linus Walleij

