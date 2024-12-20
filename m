Return-Path: <devicetree+bounces-133078-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC0F9F92C0
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:02:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 438B47A3AA5
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 13:02:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D221CBE8C;
	Fri, 20 Dec 2024 13:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b="sWEJGebz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B499C1C5F25
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 13:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734699732; cv=none; b=KqKPb9gosZteo/dvTiystqqshqNCvkxSfz2Vvka5HSnINgwdahbqqk9dmL0tGF10rZ3r2XPqharOnvVi3+RGs1rBJlJPkpqA+ur/tQdOO8E5Atd1pvOqjQ+9kqQpW/P6peGpNQA3tlCEjYLBHsy9qFUxSdQZZv9IVlP3TC/Tbtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734699732; c=relaxed/simple;
	bh=UJUoqMSoN46C6emAk6ngwii5w0Pg5f+ZVhkuvKrwfnk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JtUI/XOVY6I0QZ1EsgIRgBRX5nt8PTQqdKQhlKS/6iiifzBPR9YTo6lFOxzuizXdcRTLNZlmGVdcc9CgVZjFBs+tE8HD9kxjnv54ZD0wPoOmgKZsn/Mle4JE3AM2ipCaNUMIZesbTejUGzkpSxvQ5rXPnv6Ie6vKuzTf8r+52LU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com; spf=pass smtp.mailfrom=raspberrypi.com; dkim=pass (2048-bit key) header.d=raspberrypi.com header.i=@raspberrypi.com header.b=sWEJGebz; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=raspberrypi.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=raspberrypi.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6ef4b6719d1so16437397b3.2
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 05:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=raspberrypi.com; s=google; t=1734699729; x=1735304529; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fu02/Fmh4ZbtCqxR5/+0fGOTzDcq8jLPwYadQJ7QU4I=;
        b=sWEJGebzj9iMaVvJWg0OIij+9RSLcmJ5PvbvVWrrgCHpA5tfPCdx/Kx+5A1OHcCIuB
         o4KSp9Y+f1A/fdzM4c1l+vd59XTMZZZtMzhC1r+5bIZpi0HMYLYPJ4k+ohvIwtacDLgM
         c7JaT4vmGWOSNjiAOIpzaAccsbJHrKlOrTys60Sfvtqs2C/Gfl/MuCOHwmM/S6bq1gCY
         /yYzq28Mqm4g0yOC/kyEqfRpUQAxWSiJAxIPgLRvfH6bMesIRM1YMpZ+Y08Otasz711T
         /k8gu/SPLBmjmuXzJ5kV33aUvogYlNhIcoLL9/vrxltwagqTb+P1usl0mfGWasrafIUB
         jYvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734699729; x=1735304529;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fu02/Fmh4ZbtCqxR5/+0fGOTzDcq8jLPwYadQJ7QU4I=;
        b=GQCTNxVrXqrSQUgmIgPsc35ZajobyEJQHsTyOJ+bN61jmqZwEoIsuEcrSlvOlZokDk
         xH1MyZ5d3Wzvaikyrl03BAkZRGED2T9xIrPQFfLQgoXZBJi6cZcojjtcEX+QVHkH5Dd/
         LJi9FNuN/MLnf+KHYADYkU3wa/nTn3Z0Y7jMMhePP6gd/tPKaNo77lNo0eADBC1KulIn
         uFmBcVmqMLqJtk9Nv0nRHshat0u8lOFewYvNfuF3BhphlTBzEYyEIUqVAYovqXaWwUmI
         TFLB1ZHWQCKM7OOzxCJVBt73iQWe0Gc0RuVaAZQ/gF3H2ZXQKXt9yMukql1XIPqQ4UvT
         rOtw==
X-Forwarded-Encrypted: i=1; AJvYcCX3556qkICFMV93382ifaO9cdrZsp8aVx+iDgxHtNX5cslZU9yiQGr0GfFsuKCZbi0XsGNnAt7WuHre@vger.kernel.org
X-Gm-Message-State: AOJu0YxSK6ZhfT0Qikm90hpuRaz3XkthTDPdkOQ4SsG9Sqikeh0w6tsm
	C2j37Mef6T1byAn5BEjM/PhUliOdlOWq9X+cVFY6HNb9WhqNmT6u/b0bdC7N5uRN3VBobBjVmBk
	gykIba5U+iejFSc5nY9VtVuD+pT7FlgJJV/5Zhw==
X-Gm-Gg: ASbGncsLModMk/0R69O7sl/6obSMNR/Mka5kSos494hzr0wudJmFB/dslpz+B+nxm85
	VFFUMP/NFaU1xfzmIvWk+Az6lXtRYWh56jrb+eA==
X-Google-Smtp-Source: AGHT+IFzQLWMZQE/IRCrzQuJ49iVkiuSr8lSUXTeAQq7Q5a0dorvlXsI8IoArLc+t/qm0OgPgCykCrt4mTj6yv3UQxo=
X-Received: by 2002:a05:690c:368f:b0:6ef:60db:5e8d with SMTP id
 00721157ae682-6f3f80d626dmr17834807b3.4.1734699729509; Fri, 20 Dec 2024
 05:02:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
 <20241212-dt-bcm2712-fixes-v3-3-44a7f3390331@raspberrypi.com> <CACRpkdaB9kqcjmhaXd5RxpYvqdSVMZkj0wHAtEgdqDs03+wzJg@mail.gmail.com>
In-Reply-To: <CACRpkdaB9kqcjmhaXd5RxpYvqdSVMZkj0wHAtEgdqDs03+wzJg@mail.gmail.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Fri, 20 Dec 2024 13:01:51 +0000
Message-ID: <CAPY8ntBJqukSJs7VUXvUFAsiKqNWknL8VjgtQG_VAEmw576EPQ@mail.gmail.com>
Subject: Re: [PATCH v3 3/7] dt-bindings: gpio: brcmstb: permit gpio-line-names property
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>, 
	=?UTF-8?B?TWHDrXJhIENhbmFs?= <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Ray Jui <rjui@broadcom.com>, 
	Scott Branden <sbranden@broadcom.com>, Doug Berger <opendmb@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>, Stefan Wahren <wahrenst@gmx.net>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Linus

On Fri, 20 Dec 2024 at 12:50, Linus Walleij <linus.walleij@linaro.org> wrot=
e:
>
> On Thu, Dec 12, 2024 at 7:36=E2=80=AFPM Dave Stevenson
> <dave.stevenson@raspberrypi.com> wrote:
>
> > gpio-line-names is a generic property that can be supported by any
> > GPIO controller, so permit it through the binding.
> >
> > It is permitted to have a variable number of GPIOs per node based
> > on brcm,gpio-bank-widths, so define an arbitrary maximum number of
> > items based on current users.
> >
> > Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Thank you.

> Perhaps Bartosz can just apply this one patch separately?

I believe he already has, but commented against the cover letter
rather than this patch -
https://lore.kernel.org/linux-arm-kernel/173434013318.38429.808413721248542=
013.b4-ty@linaro.org/

  Dave

> Yours,
> Linus Walleij

