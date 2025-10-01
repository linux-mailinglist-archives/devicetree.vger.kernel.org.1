Return-Path: <devicetree+bounces-223049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D6D92BB093C
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 15:53:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D04464A617E
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 13:53:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F3C32FC882;
	Wed,  1 Oct 2025 13:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="HUfgTKlY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66DA92FC86F
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 13:53:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759326801; cv=none; b=teWfYoGEMv5HWi6drcBOCvUeF4S6X9CdNeyPh0FTMD8AF1DU+RD6i63tWncD6Vqg6EgqQ0xsHZcBRCoCFqSBYh1bqHwFw38agJ1sgZCoILPTB4DubVMnEo1g7CZXEXrN5CWmd9gfnp1TL5Otnf2KuHahvK5FDAzOIN1Y5bEUtx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759326801; c=relaxed/simple;
	bh=HKbSceL0DqvzVkSf6+zthbI4p8KdIl+ZOzq+TUc17ps=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PukM7YVYBP7iUjezd9zC42Fbs9f2qnRd9xhPR2D/d+sNE8uPz6kr2rCYxPIImzKStEycO+r2RLpUn7MdKcFl6e5mdURYlEq1r+ZmmA4LyzDt+FBJwKXjS1AMp/bxHfHmVyfOgWmOmd5wksrNFgJPhnIR/ZsrF+vEACOS55Sgnww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=HUfgTKlY; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-363cb0cd8a1so83655351fa.2
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 06:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1759326797; x=1759931597; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iKvM2O7Z2RHzNxkLRoLXZKV8FObDukkA/ffySi/dWJQ=;
        b=HUfgTKlYyVnJ7X1ZPU4BQieTHwWZxcpgiOjQWpJyk28jeRbcttMC8NHUtrBLFEHrGz
         E5PVoqB56vzqIPnOXJr1ZQHz4ElFcUenbNAEzz7b8dVbxoGEYE8JmBCfmj2x4DweV3jg
         BuK1k6EFp6q0M8bLBuPwGmaySRBukzqSB6MD2N4k+sKp92Ifcmo9A1mvqtzkRgPN4ZVk
         fpwHo9+3bw00uZG8WtvvTjpJiqrHfIuISeG5S6+7K87SHz7L9H06bLuS4hVSCuPH5cE3
         atKETBgXOxL1UDJ3AUwHIJarIGecYy7SoBTHXjnLw8s5VfkZ5KGnwvtC58H6nCXE971P
         GsGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759326797; x=1759931597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iKvM2O7Z2RHzNxkLRoLXZKV8FObDukkA/ffySi/dWJQ=;
        b=M9npMhV/MHnxlFmdyDkIzj6kUU1YBGIvMF5P/B7nbEiqJ6a8hZUQh4k2ZObIJhqxnW
         jki2mJqM1S2df8q7HwulY0eAmWjVwp43vNASxIlDKfi36l7SlX2Un9rnJV7ALfbIboAe
         OyPHgKD7X2YJYeRrnQSDdpa9y1p4sz/GUfzEf4Zs3MgqPflFVv7TZxx9MSmJ/ts1In+s
         Elw7uKph7Uso+0dvwTnB11ijP5wyZl0O2tTX+8H/oGe1qpQ92V4MsBOzR/lXVbrkmb9f
         0Fb5unhT5mIdV2S5fEGJvrYkHbeTycGXeEig9swqn6mTYPudVDD+EayR//ftX5UQHHEe
         qnvQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOI9thwKfziciJWgm96OXMXGMfkDhncfFAzsvNLXnlREyAghx4feMwJsssYFwwNhEwX1odRL0K5zQQ@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1HuLs0pI1LZXOjtn8OCYRrA4sDZvSeQBaXFypk2Sgip3UvOOX
	TSfAmWt6ClB6FN9iD4a80ZfWbL//7ijOxtzK+D4B0paRm262addhcofUZn9GCfep7lGv+MPanXV
	tc92BUNNJt1EHoLOPnkdv6xojd9+mlSp1abXmNLgUoA==
X-Gm-Gg: ASbGnct1Kpbl16emsSgHEtUgwh7WgCdFC9r8gNSsu0Gl2pa7jOb9VqR/pAFIo50aVJB
	TBm+jpqC4WCvdasPkfkcxbgYuHDEz34RF1WPVUbUUElIKx7ZvjjhtMvd9EySPpWxTaXQXzqNAlP
	9mb+rybZXY/kx/9ghpi3PGwXUhT+nF6Nevw+VZl/L/WNHKQFwC9W0pCWxOU9wlQvDsvB+CE43mo
	3Dk7znSjW0gFdbNDYUB/oIA11rOqM2a2bGCoRXPkY4TOaKjx2k//9SMueoF4Kc=
X-Google-Smtp-Source: AGHT+IEawILhQN5Tlcl9p5Mjqx/+g8BzI0MIHHSa+12Xe6GG4A6vAQ2TFwAqsdfR65LWs2suCvY9l7MTmjpZSBMVUHs=
X-Received: by 2002:a2e:bc0b:0:b0:372:9bf0:aec9 with SMTP id
 38308e7fff4ca-373a70e9ceemr10229771fa.8.1759326797528; Wed, 01 Oct 2025
 06:53:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251001091006.4003841-1-viken.dadhaniya@oss.qualcomm.com> <20251001091006.4003841-6-viken.dadhaniya@oss.qualcomm.com>
In-Reply-To: <20251001091006.4003841-6-viken.dadhaniya@oss.qualcomm.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 1 Oct 2025 15:52:56 +0200
X-Gm-Features: AS18NWAmCgokIXZ1UkEVryOtNua26Mh7SEmTh-56Mvq0WRalU4tAqLsD_FATkks
Message-ID: <CAMRc=MfMO-+SSrTY-XQLtsDnxpj_E3TdTJ43ZxCUi-iDrvnc2w@mail.gmail.com>
Subject: Re: [PATCH v6 5/6] can: mcp251xfd: add gpio functionality
To: Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>
Cc: mkl@pengutronix.de, mani@kernel.org, thomas.kopp@microchip.com, 
	mailhol.vincent@wanadoo.fr, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linus.walleij@linaro.org, linux-can@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	mukesh.savaliya@oss.qualcomm.com, anup.kulkarni@oss.qualcomm.com, 
	Gregor Herburger <gregor.herburger@ew.tq-group.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 1, 2025 at 11:10=E2=80=AFAM Viken Dadhaniya
<viken.dadhaniya@oss.qualcomm.com> wrote:
> +
> +       if (!device_property_present(&priv->spi->dev, "gpio-controller"))
> +               return 0;
> +

Hi! I didn't notice this before you're returning 0 here, meaning the
device will be attached to the driver even though it doesn't do
anything. It would make more sense to return -ENODEV.

Bart

