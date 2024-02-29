Return-Path: <devicetree+bounces-47144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 37BE486C4F0
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:24:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B9D6C28C872
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:24:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74F375A0F8;
	Thu, 29 Feb 2024 09:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="skO3Z3ES"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0C8759B7C
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709198655; cv=none; b=taZT21zKq4qvpS4KROQI9XmcztIajpfG9W0HB3IFHE03pdM/4vVzaSxN4lwKTD4ta/ScT+cHPG0Hezc2P8wIK8jO/dc2kwhwn/AyVOv76ToM3QHBe8/v5sezT0iqg4DkhkPeopUpbwT39ruJG7t2lFB+n30Vx52EvUKnCiSmJVM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709198655; c=relaxed/simple;
	bh=acHOjUiE9FcyTIji+FDfgzffemwW9Cnt/rCI5e+Lozw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jBQE4+fB7G1SGYdF18cv6is2kyJ1hH3dL9KyxmXVqB++jEanlG9mGwnCW9xEHHpWzp4Nov08P2hC5nzbJ5q7pPQSxcchcz6sV/AlUhDuFTRbrKqRZEHtfMxFpHHL4jI2VIRbzTbel3n/vsaACg4EXagjfxCgtD/3Hs9ceHrYnVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=skO3Z3ES; arc=none smtp.client-ip=209.85.219.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dcc80d6006aso754395276.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709198653; x=1709803453; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=acHOjUiE9FcyTIji+FDfgzffemwW9Cnt/rCI5e+Lozw=;
        b=skO3Z3ESPncq3Vthb3+r5exm/XuSrp6A+qR2s5irtnvnDWUm5nE6KuFMEUclWl2Q/j
         2CLDojI6Bk32/F6itPCKktSc7D0rAend5rD7kom9GnaWJ2JtwRNfYCAjrFY8ZCh1oBR4
         xqO60nNKbFwmuxviTCgzJ4qGdX4A8dow0iB/o6khzT2tmG/+Nhm006+1TrPZSzLZzyo9
         iezC1RLtV096WW7L5yp7Lg8z12E1b0o2t4MwGZdeiXHqDsUmaW7mA5hWxLluNhZLCI5h
         I1YNSwE3AB708JSOJyROvVyOeqnaN+c7xg7CdpWYVJk9j+Tayp1Wq7bs9X6JOdJ6y5XQ
         7W8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709198653; x=1709803453;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=acHOjUiE9FcyTIji+FDfgzffemwW9Cnt/rCI5e+Lozw=;
        b=f+R2awxQ5W+clVqc8szw+lKaF79zjg5Vf2X6OTXOn1F5mzdck+D1r4JOY8loTs5p8D
         AewnpuEuJU2/UQPE8RrSz6vAdiI9ZbKA2fKEASwPoZPDbM7sRley8BLT1Uh0n7qihkR6
         qKtu3WWM11ZuYBZGWxhRU6h9HjiLzWkNo84tB+7KrzB204WDX0NlV0aG2LUGwZ9QqNt/
         ilCZPi7BCZXmYHiqHSuectvPRf1/GJJpn3LVU5Vk15ORwVTmbQoJLO2NUtd2toxmd0vE
         COWNHA7lg956KG4q4rLh/2FVdRxdc5pRKBsXVBvGhnOTnt4b1S7ln9Tlna43uSW99b5+
         BbeQ==
X-Forwarded-Encrypted: i=1; AJvYcCW4t6ZS3HuKNYlHUTCbqnP200qMyTHOMKdN/ikaVvpuLs5HfSbn7hGrGmMOIgnvx66ufPUpFEbqyFUAryOR6VwSnXFwgXw3dgkxUA==
X-Gm-Message-State: AOJu0YyMG05Jin2A6HZA9qHhEkFuMa9YwGcISDcJjouj7Uuwt1VhaMKO
	3HiDFE7OMEgwlNbnLGskAEiAxpd86XIJotszXOgdtsJtMWZqGgNyCPPSxHZOI0cGKWcFrHGY7ui
	vpi8BsaU52vEHmWMHRMSoY0ggpG3okzAPRwzGLg==
X-Google-Smtp-Source: AGHT+IHuxs+y33+QXYrS7v42PbEsIL492f7ErZQmwtJt+UzdJGQk5GkoOqe+C/FQ0kYdzZUyDoNwliFQRIcjVaMqD4c=
X-Received: by 2002:a25:8451:0:b0:dc6:b9d6:1542 with SMTP id
 r17-20020a258451000000b00dc6b9d61542mr1619157ybm.48.1709198652964; Thu, 29
 Feb 2024 01:24:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-6-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-6-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:24:02 +0100
Message-ID: <CACRpkdY+cjU__XSxrSnKtZjkd=jRT13OWD8RXh3JUedNk0TPWQ@mail.gmail.com>
Subject: Re: [PATCH v2 06/30] gpio: nomadik: extract GPIO platform driver from drivers/pinctrl/nomadik/
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

> Previously, drivers/pinctrl/nomadik/pinctrl-nomadik.c registered two
> platform drivers: pinctrl & GPIO. Move the GPIO aspect to the
> drivers/gpio/ folder, as would be expected.
>
> Both drivers are intertwined for a reason; pinctrl requires access to
> GPIO registers for pinmuxing, pull-disable, disabling interrupts while
> setting the muxing and wakeup control. Information sharing is done
> through a shared array containing GPIO chips and a few helper
> functions. That shared array is not touched from gpio-nomadik when
> CONFIG_PINCTRL_NOMADIK is not defined.
>
> Make no change to the code that moved into gpio-nomadik; there should be
> no behavior change following. A few functions are shared and header
> comments are added. Checkpatch warnings are addressed. NUM_BANKS is
> renamed to NMK_MAX_BANKS.
>
> It is supported to compile gpio-nomadik without pinctrl-nomadik. The
> opposite is not true.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied.

It's good to get this move done, then we can iron out minor issues to
the GPIO part in the GPIO tree as we move along.

I will send the patches to Bartosz with an optional pull request for
this immutable branch.

Yours,
Linus Walleij

