Return-Path: <devicetree+bounces-47156-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 599BE86C52F
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 10:30:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1258028E13E
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 09:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11F475D462;
	Thu, 29 Feb 2024 09:30:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MyfEiDU/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D8EF5B69F
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 09:30:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709199014; cv=none; b=YOjhuvwiX6hpeyg/eHVM9ZSlNLLN+R3EccgEAlCY+4bzxdnYJHD+//juxJgsyKII5i8G/7eukLVd6jonuLnwEzTetCFUiuqk66WBXKYKomez1pDqsopvp+umqhQrTZDAfRAsYyhiELNasb6NS9bPYN62Ewd/Y9rdmdqQGqexRbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709199014; c=relaxed/simple;
	bh=32/5B0NefyE5Im6y4dgv6xs8UUdR/CI5RtA6xy+a9G0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=W5QcDSUhP+pfTKf8eCvLu4XotZHUJxESU6SZyx0QrvKTZk3jLRBNg+NrY24w97ioAKFdoYq9tqNIdKEFb+YuSr42gxgbD6pj3Yt5EUjSb/TUyKNk3x/2mvwGmhja9KYUxOtOarQ0MamNlSHNOfls4UmBbHNikAYdcLFdqe8i/7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MyfEiDU/; arc=none smtp.client-ip=209.85.128.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-6087396e405so15121757b3.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 01:30:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1709199011; x=1709803811; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=32/5B0NefyE5Im6y4dgv6xs8UUdR/CI5RtA6xy+a9G0=;
        b=MyfEiDU/hNwctN/mfF8cFWJDLkWJklFEmmHrau5vDymWWXuN4q6gcJp/TiwvhqQ3sv
         FkgPV+pGtvVsLcMSdVMNhMvSll0VfdkBzon9OuMYeAow0hRtZEvF/dTkgErPcuiQEfqU
         fXDwJTyQvAt2Py47TjfALZeVh8FSJQPfBG2PQ683RpbI8HEWMLuns0V/i7GBH5zgBxkm
         G7xgFi+5V7t/2WT2lDXO5qSzMNdDl145xgo9RjDQMLvDThRb/Gaq5yCgd7MOtcWFA1Ho
         3DilfT8RLMdDnxGlpsW0xhb30RZ/azLf79zMK1htCe00x0+z9jIsVKCM5nY+LEK1/8AN
         +4ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709199011; x=1709803811;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=32/5B0NefyE5Im6y4dgv6xs8UUdR/CI5RtA6xy+a9G0=;
        b=Y/zk4Ezp5yN84AN1OG1AaVzGu6+YA4NlVqZIAaLHMTxTQBGrF74dvIHuB0zmK6v2FW
         iGVtGyEfQK8bVDA2en9VJaneRVoLboQfUGOm+TPH4UUQFWFzx86sV54RTTw0myQrXhhS
         AtQL+kZrxsKftwFYZuWXiyQwrZ+sV4JKx2wVDhWQax/LpNw07W2eN7DuNVRxqGpXyv6h
         UmzbaZFG7jWfGxtMIA7hiLTgkooBz9/JuVLUzzXStvcyjbM2EZgGJekbYA0exrew26qC
         Qzl2x3OMTCiy/7r7z1vcGnoOEGJmeRhogxjB4eaMCT7kPwWgietMpnpqMUzCN12zPqOT
         WiDg==
X-Forwarded-Encrypted: i=1; AJvYcCX63LXNoq3Do3Bs7CLFz5Q8Ctf9G8nJG+NrlkzSbriFnt5lMD24yzBctHlaWwOrK+aHWdlrKP54nmgg5MIPM8Ff3So90RKuuzNQLQ==
X-Gm-Message-State: AOJu0Yxp2VjGGYLFVPL9M/M8LfuHIYSYUcu0Z36lRttfDcdNo9/abApw
	3tpgTITyn2KcHqlSbDl6VpDN6xUhO/s4ouPXPWTvQOWxTib4YfTxYwN1ixh0mGt22ZErKyt8tNe
	PDrX+1zIMH9nMdzhJzsouxeWWDyhQ8dvtTb6tXQ==
X-Google-Smtp-Source: AGHT+IEW4s5E6g3mYFwqcNbY0h2ya2bzFGJoHdTzyRjvnNi+KrG7CYwSfoIGofcklwbV7Yav2ZNyUpLc2YKAqe52SjI=
X-Received: by 2002:a25:c750:0:b0:dc7:4645:83ab with SMTP id
 w77-20020a25c750000000b00dc7464583abmr853571ybe.0.1709199011587; Thu, 29 Feb
 2024 01:30:11 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240228-mbly-gpio-v2-0-3ba757474006@bootlin.com> <20240228-mbly-gpio-v2-15-3ba757474006@bootlin.com>
In-Reply-To: <20240228-mbly-gpio-v2-15-3ba757474006@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 29 Feb 2024 10:30:00 +0100
Message-ID: <CACRpkdYVuAMRAN_YDnZCzmjLg1+AbHyjSw7ymjCb=wFSL2=GuA@mail.gmail.com>
Subject: Re: [PATCH v2 15/30] gpio: nomadik: replace of_find_*() by bus_find_device_by_of_node()
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

> Avoid OF APIs in the GPIO subsystem. Here, replace
> of_find_device_by_node() call by bus_find_device_by_of_node().
>
> The new helper returns a struct device pointer. Store it in a new local
> variable and use it down the road.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Patch applied!

Yours,
Linus Walleij

