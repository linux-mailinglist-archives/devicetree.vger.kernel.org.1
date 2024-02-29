Return-Path: <devicetree+bounces-47169-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CD5386C588
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:39:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0FA3E292A5C
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADAAC60881;
	Thu, 29 Feb 2024 09:39:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sMAZZZV9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com [209.85.128.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13D8960870
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:39:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199545; cv=none; b=ddbP1P3l2qi3WL2nFR4/EeMJ4dZBALhGZqB3KU/dvt7cukum1aRZfdgSiiZh5jHLc6TDRE7NsZKcvgYTCJqUQLL68D7wKe+X9KbbGlyV5t48lxQhvZLyREVFjVXobywpnWDZB8dyJ+ijVNV781tUXM1LLI/at9fM64PeitwE8rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199545; c=relaxed/simple;
	bh=Id/0hLb1OoVGa9urk2OII9ZHzTzUCiC9fqBjkpo4oTk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qlTNM8mptFC8VEVBZvORZdiugzKeS7cM9twrQ2AREM27rHLBT1WI67mJmea9AwqL6CS+jfVmyHgkQOPwVZ/+c/pSDHHrAj8DnW4084+JucOXWGFQyKyCarKZPScuHaHrx8XA+RMsaWN6P5I255Ddh2YalUDRk1NldbsGWG46bIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sMAZZZV9; arc=none smtp.client-ip=209.85.128.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-6084e809788so14865887b3.1
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199543; x=1709804343; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Id/0hLb1OoVGa9urk2OII9ZHzTzUCiC9fqBjkpo4oTk=;
        b=sMAZZZV90iPYI4/G9PGJcTNCCMvv5Qd5Fcc8Oegz654V2iHCOAvmzhvHLmVmUHUM1C
         jjyQ0MOeoX/csV6JLIxyt85OZa9kVEizTi1jw9NblPqmOlxcbEwX30IeRfY6J9IFIawA
         AbV+bcXUiJD9z8nn6J/VpEfUMBanERNJjGQ+YeH1sLYoKet6NPi6pEL03YUtgNeyyfos
         m780tFibJOfT+Da2Z5wNZlCQCPhUToDXgig+2tqJvzvOfIqUghowkXm30w6UdRI86dkG
         vDpGNc2Tn1wtjnEYAkQgWkCeMlYgzJ7BVSUzlujOb3R1r1QQBaVdhvSenerGvD/usYQj
         a8DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199543; x=1709804343;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Id/0hLb1OoVGa9urk2OII9ZHzTzUCiC9fqBjkpo4oTk=;
        b=X/bkaS0Ek50kHBIOXBXxF1fb29qLS5I4Wan2YBNMAmB8UYzgtX3LAhkvH/ndRM0AOx
         VCEhH5inRBXE2DDV6du9qUqyzNQiYgPngs/S0dtliT5jh5AUWCS38oEXZkkeFeXSQIIi
         ySCXRWlgfIdQq9yGSmuIdFEaYxsSuHSv/pJTNH/bAGA5FPac+imFL4JCdi6lAQWkBHG+
         Yb9Sq5vntM45TwnqwD6NlcG0TwjFOqvbPAcgtKF/WJJqexvoJ+owc5y3c4YUUJrELuIb
         6ZgS2WUR4c/3SxCDI84CxHLJJNF4z8IPgFhFcoCT6zRxrnimQpWV5h4DbJu8sx+pgwUe
         7cbQ==
X-Forwarded-Encrypted: i=1; AJvYcCV6s4fKX88X5JEyrOOk8bTMHWfdtQITBOXm4FWeT10Iz3rAhcpKFwpIsMKwSo0OJYpBOFjluADi5mbJu1vkoMF+6IZxnOyA7nmSHg==
X-Gm-Message-State: AOJu0Yxirs8HJiJgk/XEnDyNbQdnvQ4AxFrdjzw2ddn6pZtJ2Ij+Ocay
	kSKwWiJwEsAqfHlOJyCRWXhFHR/D5wRVnaU8UssQKQC9iX+7Tn7rBpN5Y0tHzUBfV2iDfVeu7OU
	30yJQbRRk3EOkxbQKslbGj0719WXAYKKe53Sgow==
X-Google-Smtp-Source: AGHT+IFptHANPFZRp7pQwEznjk6ScLV2D3Oe6Z2gcGFVq3bPrlRpc7Zj2hsVukPM6YMB6JUz8/NILyAx36hRTe8VGnM=
X-Received: by 2002:a25:8308:0:b0:dc2:2d55:4179 with SMTP id
 s8-20020a258308000000b00dc22d554179mr861584ybk.17.1709199543032; Thu, 29 Feb
 2024 01:39:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-25-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-25-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:38:52 +0100
Message-ID: <CACRpkdZE-hZGPg-1cnFZ_amYT6t3p=fOpvEOcsaZY3E-Y7_Weg@mail.gmail.com>
Subject: Re: [PATCH v2 25/30] gpio: nomadik: grab optional reset control and
 deassert it at probe
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

On Wed, Feb 28, 2024 at 12:28=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@boot=
lin.com> wrote:

> Fetch a reference to the optional shared reset control and deassert it
> if it exists.
>
> Optional because not all platforms that use this driver have a reset
> attached to the reset block. Shared because some platforms that use the
> reset (at least Mobileye EyeQ5) share the reset across banks.
>
> Do not keep a reference to the reset control as it is not needed
> afterwards; the driver does not handle suspend, does not use runtime
> PM, does not register a remove callback and does not support unbinding
> from sysfs (made explicit with suppress_bind_attrs).
>
> The operation is done in nmk_gpio_populate_chip(). This function is
> called by either gpio-nomadik or pinctrl-nomadik, whoever comes first.
> This is here for historic reasons and could probably be removed now; it
> seems gpio-ranges enforces the ordering to be pinctrl-first. It is not
> the topic of the present patch however.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

