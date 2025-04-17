Return-Path: <devicetree+bounces-168088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2C6A915AD
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 09:49:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D4E0441A51
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 07:49:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5628F1DB37B;
	Thu, 17 Apr 2025 07:49:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="q9FueUks"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7946621ABCC
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 07:49:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744876143; cv=none; b=ttYj7zvk3tLJp0TG7hjJoxUH/0RKpFr7o6Db7IV+pJaAcFdCwpxj3sudXxpAUMKCC2ZpOPRyESFrQ1kHvwmzxPvc2Ku1HWr3R+gaZFxS6cUPPhD75QhdK5B++ySHFqjQYxswD/yiEcTzihmTcVq6hfBXZedCPHWXGcMQmpSnemw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744876143; c=relaxed/simple;
	bh=7RxzX09exhIzgLmhmiaw9DLQIcUyhzaVuL7SP9vsi7Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QFZPBGb2xNz6PhO5wP21Rc2bJ7t0GJivEh3pX8zHBvsRSUa/TJyQ4XsCMvjYYqjySz5RnoQWvHQrh+HUTDx0sE/H+hrDSm48abQEXf1yWTK53Y8XYKeiexuuPPvrsPGTyfDGEb/E1ZVV19LwcvS9Gjn+o90guGvha9HimqnZBxc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=q9FueUks; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-54acc0cd458so576686e87.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 00:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744876139; x=1745480939; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7RxzX09exhIzgLmhmiaw9DLQIcUyhzaVuL7SP9vsi7Q=;
        b=q9FueUksayySWoqRwKZrn//UQh0pQL/1CNZQI1shj3c9N4+1roq8nL7j27UksRppiM
         pF2GRqraXlaKjFd0TCAeQLCFueE2VIYI2P5ZiM6L/leWh9awboL0fuCtqB97p3NvRnaS
         Sk2f4mASYb0kPx6a2Ix2Bq6YsW/18PjRbFdvO+UO6x3LVXI/FX6X6hwLyPvW8tx1P5u0
         uNgEG6PbgQ8zBs2gsr17FlCtJ0A1hWpexEBVru0ykg05vk8e/4sR6nd2KHPptSWRrOOA
         R6YhuFqsYSSwHZGTbW7yNIURNSHol4IuT6WVtk5HNfmrhDn03aUPTzVIUnTVbOg0mVoN
         arMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744876139; x=1745480939;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7RxzX09exhIzgLmhmiaw9DLQIcUyhzaVuL7SP9vsi7Q=;
        b=cL5K6b7bvzxZ7wg1KPHf1kOS/r3UQpAhRPSHjb5L16dScfDyJn902bvbizk+tAGTan
         Jljqmzm8o2BE9qEcs150NzgpD7PyYpJmJCuDIE+73e+ULNI+uImLJ1FJ6+GDZLuLGlIO
         j3Wj5w7vRD9yLIB3821QmVtT/0AQoi+nC4LKiuXTIi1NU/zlsMZC5Ky6UExbsbeyx+33
         gJX/+PKV9Us2IaOUtQmzu566HlFyYrO+q4/T8Cy3CeUwLW8dwzz6yZsQsV2j5bEaDhO5
         YAYEOSg1qq4l13YecWhFN348r4uSckzhn/vdWixuRxZFIQXS0rNjnYsuZhBHjTK+2maR
         svuQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLE2D48iN1MF8HFS9rtb4vv2neVO6QN92MD2jTcX1zkMuzqIQ19cEGfe5MeKTa++ogY2FkamuofUvD@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2ZtSyvTrEb/G7FB2qJ/mYv3K1rwKo4ts/IQl3dnYDVWVDe8Tv
	b4/dFeAuppIMpe93BlG5IITYctpzg3wbi7iBfACFa7sKO+MBDwlpLMmqFMI1q6QAHoX9EwlB5Ql
	W6kmw5JU6rZaaHU8XF9dM/A5gEe/VWekH7u4nCQ==
X-Gm-Gg: ASbGncvsZ8WtvD9TicxiCoBhZsSGZmAn2IpdbWzSSR7u5S6rsN1QtbrB9gPeQPs3QnJ
	BNI8WQWRjp+aY+bc0JDwMhC5Qi9gh6oln8wEviUQOwQv8mj+VFUd/Frkrfs+A5suK3gYFAsNVz3
	cGvmSDR3NEnagdMiwPMLnFoFNgjm8Cw4/Y
X-Google-Smtp-Source: AGHT+IGl0yTbl1NfzL+pnA73vcbs4ZATHO5t0DMm0OPz1AIrbTpPp3OJ9FYZF3EeE/MV9ivlE2ZNC0B+frJYLn4K+3A=
X-Received: by 2002:a05:6512:3a87:b0:545:2ab1:3de with SMTP id
 2adb3069b0e04-54d64a98d9amr1453654e87.13.1744876139576; Thu, 17 Apr 2025
 00:48:59 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240814061315.112564-1-manikandan.m@microchip.com>
 <20240814061315.112564-3-manikandan.m@microchip.com> <605ff021-0770-4363-9734-ad8114a429f9@tuxon.dev>
 <fcdb9283-07aa-4d50-ac4d-317b0a4e5f7e@pengutronix.de>
In-Reply-To: <fcdb9283-07aa-4d50-ac4d-317b0a4e5f7e@pengutronix.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 17 Apr 2025 09:48:48 +0200
X-Gm-Features: ATxdqUH-NaQn7pZOyf2E47r3u7Tt7v9sT__5pjl_S36lgww88eFiiLrSfCpmg08
Message-ID: <CACRpkdarmBy1nd903SmyXPNhS+hxxRSyKNOxdXg51Emr9MgRQQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] ARM: dts: microchip: Remove additional compatible
 string from PIO3 pinctrl nodes
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: claudiu beznea <claudiu.beznea@tuxon.dev>, 
	Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, nicolas.ferre@microchip.com, 
	alexandre.belloni@bootlin.com, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, lsc@pengutronix.de, 
	"kernel@pengutronix.de" <kernel@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 16, 2025 at 4:04=E2=80=AFPM Ahmad Fatoum <a.fatoum@pengutronix.=
de> wrote:

> The correct resolution would be to add an extra compatible to the
> binding instead of breaking non-Linux users of the device tree.

Ahmad is right, the patch needs to be reverted.

Yours,
Linus Walleij

