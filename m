Return-Path: <devicetree+bounces-44375-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CDB85DFBA
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 15:32:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A26F428622E
	for <lists+devicetree@lfdr.de>; Wed, 21 Feb 2024 14:32:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 484DD7FBC8;
	Wed, 21 Feb 2024 14:31:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WvBwT6Kx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254007FBAB
	for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 14:31:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708525911; cv=none; b=i7AVqKTcCCCYc4UE+Le/uAvhQbHVXMXlRqEmtCSYPZDD2ieGGPCydPFxsC4htqyOu0/rbFKGxT/pis6oZV5zCH5xZLqXYNsBHmkZNxLgTuOPSW5Ggn9inzC/fSzCmREstFatrEXEmB6haS1ky93CWhRn+ipdrrMNU8GpKCBOkUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708525911; c=relaxed/simple;
	bh=SzQd87jZwG+oQiOKEili2Q5rk6+fGGD3FVIw4/CT1CM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DKRMAdWCOB9AzrU7OyQQ/bBL5n3Q280PGcMTYCSHEe9BCUMzRmeFVcOatn8uzvtOcfP3+btN9gtibB1Al6kT01RuQI2QOeWW50xi9rTIZh5uF5CSYlUc5AG26uvhtwxKjlhToAgz5fC0M+iNnZAVWyQe8HVpxOUJpCfYr/grzvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WvBwT6Kx; arc=none smtp.client-ip=209.85.219.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dcd94fb9e4dso796360276.2
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 06:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708525907; x=1709130707; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SzQd87jZwG+oQiOKEili2Q5rk6+fGGD3FVIw4/CT1CM=;
        b=WvBwT6Kxg0pz41I5TVkIu6EVzlO3ZDVkCIV9Z+g8N0BHND5m7t8ljeJzvjBSHum0nk
         fzp23KDC3LOWR4Bx0hebzKNR6NvbzbTAMNq9B7gfVse5yw8y+SZvP+Ak81S91jQyX/8L
         3Htg9i3w4wF+RICufExVT1gX1Y6VUlQgr+ePd3Tzz21PO+SxKVKCGQImxb46c+y/2ifm
         cuPZEYaImpDBi971tR+T118AzAP/0R+tTQXH4i5R4yy21S1tXI/hVgbipb5iamrXxfHj
         QuolaT5uWejS1o3TNuYztREzKcG3kMlMJHvDKSnQukwSm0/u0qB2iNOXPXdzWLViqIpA
         IE7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708525907; x=1709130707;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SzQd87jZwG+oQiOKEili2Q5rk6+fGGD3FVIw4/CT1CM=;
        b=aLyrSgP5erf1dS0vmVbgKOryHzjEgT+O5PZnE4LUzR6Cq66VvMLcVvCm8vXsn7011R
         rxMLMcy+QAnF6e0a55r7o7tTKsaDnVTyMOuRJzHUQ4QOxut2wKikvbFBuJin4wlSyaHo
         nLG0RAr+3Q5JkMPJdmw4ut6QA9PlyIjExyj/xOWhxQyP0aD0VpdcFDJusQatGBLU3WBJ
         H8nqc5aEeiSMTYU0k0dICXO+vaVQ8NNatdG5+NFNjyyF/HQOcd2uIiu0EsDK+qd6y+ma
         gWRgF8dxr0HlQFzlgjQ3NKu29SHNYEFLeeRTJ3lJyZuRcraMHKLrpz7IAeU8nC8R157l
         rFHA==
X-Forwarded-Encrypted: i=1; AJvYcCWFqCpjH9SfaNYOn+UHwnhME0yJWTqDjwZieEmbjtvSEicDbfjjZRjseBmSGkbZE+ROovbKbeiFjCcZgivoEaILbqu4A1AT6AqWVg==
X-Gm-Message-State: AOJu0YxNpeTqa8xMSBV9HTSIp3x9EHnuiGS+94vJAmGmSuvwmy4GDAAw
	Azbn3nUGDf/wBQYUrkZcxR980dgeRACGk07AKlcBrD4kxbujb4o3+WbE4sHgNcfdMz8xw9QO0+0
	S3CsliC2GDEWiMXG+VgyJn4MwD32NKz50RSQu7g==
X-Google-Smtp-Source: AGHT+IHtPHuNmDP1ivorhMWyf7CtrVAVcOmamjArI6U21e7odr0+fcnGW+8ENjWO4dIYPF7XJm3UqeeahMkOdj2+Yic=
X-Received: by 2002:a25:e0d2:0:b0:dc7:5c37:5420 with SMTP id
 x201-20020a25e0d2000000b00dc75c375420mr15986478ybg.60.1708525907011; Wed, 21
 Feb 2024 06:31:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240214-mbly-gpio-v1-0-f88c0ccf372b@bootlin.com> <20240214-mbly-gpio-v1-18-f88c0ccf372b@bootlin.com>
In-Reply-To: <20240214-mbly-gpio-v1-18-f88c0ccf372b@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Feb 2024 15:31:35 +0100
Message-ID: <CACRpkdYLBGsphNkmWyPXQZvFaO2hHGHGTMt1eqz-HAa2k5F3bg@mail.gmail.com>
Subject: Re: [PATCH 18/23] gpio: nomadik: support mobileye,eyeq5-gpio
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mips@vger.kernel.org, Gregory CLEMENT <gregory.clement@bootlin.com>, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 14, 2024 at 5:24=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> We create a custom compatible for the STA2X11 IP block as integrated
> into the Mobileye EyeQ5 platform. Its wake and alternate functions have
> been disabled, we want to avoid touching those registers.
>
> We both do: (1) early return in functions that do not support the
> platform, but with warnings, and (2) avoid calling those functions in
> the first place.
>
> We ensure that pinctrl-nomadik is not used with this STA2X11 variant.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

When testing I noticed that this patch breaks Ux500 (up until patch 17
all works fine!).

But I don't know why.

Trying to figure it out...

Yours,
Linus Walleij

