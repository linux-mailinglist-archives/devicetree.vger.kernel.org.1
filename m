Return-Path: <devicetree+bounces-187162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5701FADEE40
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 15:45:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 05E044A19FC
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 13:45:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 600E118A6AB;
	Wed, 18 Jun 2025 13:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t74qUHsw"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987F62F5305
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 13:45:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750254354; cv=none; b=myaSC+0ooCnB4YmLi/6ERglZBAdR7KF+WUZlJHgPm+Cia+n3xrPmQxA0bSSAYdwT14hW5lfLlvKTHlHFIFu9BIlsjC2qZ/hqHsJQj22Z4HVpYOYRNdJLpwoh9Zye7WOW0RmaKcjQ1HIGk96fhOKayLxiTngCkPx+QWXiHbuOdiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750254354; c=relaxed/simple;
	bh=19E5xzem+HM4mzJ9G9HwPWEjZc+eWYv4kOOjLaWu+OQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=E/wkbdFsATH7zccvIYtJnJXCMYVXrq8UbxVXxr8Ousf2NBS6at019u95WJUPr2sGk62yEpsps1xH5+UNoMpy1qFSTm/rD4+9gW35JbdLmaRG7ZK4l2vuT4s7DPdUsPFdAGAmZk4xro1EvCStgYRE6cbYJM5FTkEElSMmtoaXP9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t74qUHsw; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-553be4d2fbfso4201014e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 06:45:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750254351; x=1750859151; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2/gJrRRXdsw8VIK/TYIkdg/GMO90OUx2DtzMMD7n2LE=;
        b=t74qUHswVgk4QQi/Chb/sCj05d5tCoRzQfMtrKHm0JOvhU71i/fceWJ7UatIzV1TjQ
         LZoW5Ec6a1jr7Bg2S0bqQlbwEDvPEd75IbqIgS/DJSVEptdC9BjTjaeXuMdsVUT363Lq
         EWVeNWKgKcZtE6Rmk866hrf2PHDTPzx7eyj1T5dKq3Nsq1mfAdyZW2xCzySyIUspen4W
         2ddQICNPyEueT8rDWqSbBuv0ecfz82Q4X8gq3coM8PJ9lKpSVdO5+3EZGe1ac1t7Jxtt
         H2tRJrCMjFFEoonVK/TgTQ/9fnoa1ZQpyP1agDRkL5d4qq2WZCLLVWxacZKA15sgV0s5
         MU/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750254351; x=1750859151;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2/gJrRRXdsw8VIK/TYIkdg/GMO90OUx2DtzMMD7n2LE=;
        b=IFkJ+G8JSppbw4qmVxdKpD2gb9/OzltBYcpzs19Kvz9f7n/e6Xh+IPYVzpYl+PPE4d
         nGcXZQxPNsCEtpcPuslBNeA+uVI8gc+OJu5UMqsB6QzwX5zeELQ5BVr/zf3iNpNEXTiT
         2yXq7vREmKpWooveNVr19CctAOdO2hhs7+A6UZgBoQBptQoA/vUYfCSdu/mACoXT/UEO
         derQoFU6XbEuhrKk2+6mV1EKVybDjSkPWc1WAunVVEmo7OIPgra9K7cVnL5t9FivhFbq
         kqlkvdn6pqXiopP8DE5+eBecTs3azK4uHeSBqfd319coiyzwuxvLImXginJ9qvgpNDvo
         NHeQ==
X-Forwarded-Encrypted: i=1; AJvYcCXedrG887XDOqpSAjgihikHinHjBvrjYRKXG0twYCH9ZK8RQPHIY1PIOC9FeAAp0k+v5ojqSHHPUBgb@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0g4KDEwylM5bhmjI/cpBLHWMfxYWOIBNOUWdzxpDACsS1uJs9
	Va163ef01HSyIFvIyyGpf/thXOls+wdhilp/PkGI3VqO0DaCtaCUGiG8VG2rY+JFyDt3g2eBSOs
	EYtavqX7BiW4EFGZ3lixJLiTYN3HogINHNCLgOMgEXw==
X-Gm-Gg: ASbGncvMHPSt6J9OKI6xIIs6guaG09jjWsLJwRgsP7Z2YmDoqwgFGgS79fubWjmjS1t
	rnxswOopga7fjQBWCrHYSXQAoO3UsVWSgYTWvTKuPVkHfvKBBrdGlRSpXIcW5rJVq7xJXm0qxYo
	OlLXwb+/4+5q9BfAOVE727vOEsOMYoRBPNPEE4rvtpbWU=
X-Google-Smtp-Source: AGHT+IHUziRG/lS1am2zFPjRrmYzIzsrLZlEENKDKAFZ3rfCXoeUyGuA1Pal15qAwexM+uRj2zqwrZ6IAzL5/+4dp/E=
X-Received: by 2002:a05:6512:3c9c:b0:553:2f61:58eb with SMTP id
 2adb3069b0e04-553b6f3f11fmr3977179e87.49.1750254350731; Wed, 18 Jun 2025
 06:45:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250613-hdp-upstream-v5-0-6fd6f0dc527c@foss.st.com>
 <CAMRc=MeTmwgbHv9R_=GFmjkAV4Nvc-SeSCOz1k6pnGUrF+R9Mg@mail.gmail.com>
 <CACRpkdax9ojguF1SAfiN9iZi=x3VFpCea6KnhzL3JBD9EXZepw@mail.gmail.com> <CAMRc=Me8KZPU_KbbifL-j74GMPSuDgmmacw9g1UEfy=zeGyZcw@mail.gmail.com>
In-Reply-To: <CAMRc=Me8KZPU_KbbifL-j74GMPSuDgmmacw9g1UEfy=zeGyZcw@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 18 Jun 2025 15:45:39 +0200
X-Gm-Features: AX0GCFswiuSIv0ost8RQF2yKzjiS_gJyepvrD4dGuyTD_K-1OJ1mJ0Mc6pZHztk
Message-ID: <CACRpkdYUr+82AKndieXm24Eg1-HY4LyfKZ9J_kTFKT1Nyyju1A@mail.gmail.com>
Subject: Re: [PATCH v5 0/9] Introduce HDP support for STM32MP platforms
To: Bartosz Golaszewski <brgl@bgdev.pl>
Cc: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 18, 2025 at 2:32=E2=80=AFPM Bartosz Golaszewski <brgl@bgdev.pl>=
 wrote:

> I have a rework of gpio-mmio in progress that removes the bgpio
> specific fields from struct gpio_chip. This includes moving the flags
> into a separate gpio/generic.h header. I really need to either apply
> it myself or get an immutable tag from you with this change.

OK try this, if you pull in this to your tree and work with refactorings
on top, everything should work out fine in the end:

The following changes since commit 19272b37aa4f83ca52bdf9c16d5d81bdd1354494=
:

  Linux 6.16-rc1 (2025-06-08 13:44:43 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git
tags/ib-gpio-mmio-no-input-tag

for you to fetch changes up to 4fb8c5d36a1cfd97cd715eb4256708bc09724f3d:

  gpio: mmio: add BGPIOF_NO_INPUT flag for GPO gpiochip (2025-06-18
15:40:29 +0200)

----------------------------------------------------------------
Simple change for no-input MMIO GPIO

----------------------------------------------------------------
Cl=C3=A9ment Le Goffic (1):
      gpio: mmio: add BGPIOF_NO_INPUT flag for GPO gpiochip

 drivers/gpio/gpio-mmio.c    | 11 ++++++++++-
 include/linux/gpio/driver.h |  1 +
 2 files changed, 11 insertions(+), 1 deletion(-)


Yours,
Linus Walleij

