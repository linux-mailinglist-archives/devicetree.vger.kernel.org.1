Return-Path: <devicetree+bounces-187133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DB63ADECAF
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 14:39:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8C51F402E4C
	for <lists+devicetree@lfdr.de>; Wed, 18 Jun 2025 12:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2E2129C33D;
	Wed, 18 Jun 2025 12:32:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="qsA8uOJb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBF632E8E06
	for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 12:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750249935; cv=none; b=tQ1hpJHOhqbMMQXcRt3lbtaM/ndqPSSmgnCl3SNC9t6htmBldVSkJ8Vlw8hWb1V9Ofs8N3/aLn/d6sJMeNrTa40NdFFORORY8nBx6SqP0lu84luywUxN6B2wGclYDnnWEuJms1E6RgFkKkEGyNShdcvY6kZ2SQKk92BxxxnzBnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750249935; c=relaxed/simple;
	bh=8ru3S13YY2r1BLkrgNMzlGHZsDqoJyg0hmYDr1Azgpc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UT01SenHmqDAix/N43+cDISBfOHC7ZSewY6FLB3UkKnbWPtBPAw/wJSMq5LZ8Ou5cjF5HRyko9qICumO83ONftkY6K0ki8xrehRe5qo5dRPZOr044pSunTo98yQ22+od0R6hhd6/PxfkwfIixpG6eENoLjFkCU1g7g15MaxfFU4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=qsA8uOJb; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-553b51f5218so5207742e87.0
        for <devicetree@vger.kernel.org>; Wed, 18 Jun 2025 05:32:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750249932; x=1750854732; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1MHrtaWQYxYQbOY1jXBZbhCbwYlDmgnWya6qmbQvgdY=;
        b=qsA8uOJb3eyJllgNyKrz1nZYhJJfGVRdEZS2Kex7KUTyK1DGSB12Q2Ks2bEeyWIw52
         Z4/NcJFZFHHuHJdlf9y3PuAQ2OQkbpEmWHGFIKYJddv3+35diKVddm9gL28h+O+4hJ7O
         DuFr72FcuJLwtfeVUMRrvL8yE13b8tNoq+S8L4+71aO9VAJg9dsjpU3K5vsxhNKaGFzz
         oNetZfEn95q21gsKGeNTHe8SWIy9T/a4ReI22qPg9e5TBz0/zTvh92PGjzF0Nx5tj+Uz
         LGXt1iI4LxgPAQSz4ZF6k9xRda0S54DLhE4QGnx7B0Fg5OdlTl1BH8actiwT/m3pWLhJ
         fSag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750249932; x=1750854732;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1MHrtaWQYxYQbOY1jXBZbhCbwYlDmgnWya6qmbQvgdY=;
        b=gsBt8bTjitHJEE5k+xzt232aaVW4A5OJbv456yVtnekM+lTCqcTanmzAJW+Rerd5QS
         zY0uTb8hzC+aRSmnnLnRQJ7VaAKElOIipblE+TYugk8J0nLoS7SzFrwsVESl9kEh/jDC
         asfzptqSKbIk4HUL7aHf57d14XlQQJZPlKctaY33xrgWArRONfcIK9nOb3n07ddIaIp4
         UbwHql15olH4+QMVlU0tTsAt9mXZUsSkOCjM7N+/wTLyTVYksGBRp7YKXPJG6wxJb/GP
         K4soPP/MIVEFSJbqivdoe3zPxZe69hjMpJ/7SriSMb4akvE7Shqxg1Yc22TdT2GANoTb
         LeIg==
X-Forwarded-Encrypted: i=1; AJvYcCVzxysjftddtyEChMsi4RIr6Q3pscpHERkSMt3QFHFk+LQdbFKOlR87b4NN5Kxm27Bgm8Jts+BxnVMC@vger.kernel.org
X-Gm-Message-State: AOJu0YwZT3tQZT+fz42zy/5rYESjJlyTLrtrGXZUQnmiFlgjHYTFXvhN
	6/1fLs3QMhLLx/qLekDi0SBAajVvaXkYl8r3iDKIflEdMABgHgKiFKaaKsiZp7xTPWcAQq22y4W
	6q6EXJoFEJBZPinlP3O0FRYbf0cLJ4+ErHcI85Rbwgg==
X-Gm-Gg: ASbGncsnVtdvcrw9mtPr+2ZMAPwpELCdlPocgMtA1LH1tebG3n73f1esP10XUWz2oQo
	ASIWtN4scYtA60HwOla6PCqlLylKux3SanDOiFZITsFBL4kURkJHh9ZcPnDcav5tezQMT3hxswh
	Pva5I1wY/6pvoTQeoHgLS1z+IRheFm8kzTWsZhhpiHj5Kt5ASHY50sbGdahaGRYBjQzoLRniYtH
	Q==
X-Google-Smtp-Source: AGHT+IFAMnM7CSQpA77g/OMbt8IoqXvkUX7g9VLTQkGZp3kx9iir6pjz35t/vnj3pTtA5gMi1QAzjji43YJ6cOMM12U=
X-Received: by 2002:ac2:58f1:0:b0:553:ceed:c859 with SMTP id
 2adb3069b0e04-553ceedca11mr1249211e87.21.1750249931831; Wed, 18 Jun 2025
 05:32:11 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250613-hdp-upstream-v5-0-6fd6f0dc527c@foss.st.com>
 <CAMRc=MeTmwgbHv9R_=GFmjkAV4Nvc-SeSCOz1k6pnGUrF+R9Mg@mail.gmail.com> <CACRpkdax9ojguF1SAfiN9iZi=x3VFpCea6KnhzL3JBD9EXZepw@mail.gmail.com>
In-Reply-To: <CACRpkdax9ojguF1SAfiN9iZi=x3VFpCea6KnhzL3JBD9EXZepw@mail.gmail.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 18 Jun 2025 14:32:00 +0200
X-Gm-Features: AX0GCFsVjqlM3hFZShUrbzkpCsjw98BAff7JIDMVgVQXijZgm6doHKA1YxG22Rc
Message-ID: <CAMRc=Me8KZPU_KbbifL-j74GMPSuDgmmacw9g1UEfy=zeGyZcw@mail.gmail.com>
Subject: Re: [PATCH v5 0/9] Introduce HDP support for STM32MP platforms
To: Linus Walleij <linus.walleij@linaro.org>
Cc: =?UTF-8?Q?Cl=C3=A9ment_Le_Goffic?= <clement.legoffic@foss.st.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 18, 2025 at 2:21=E2=80=AFPM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> On Mon, Jun 16, 2025 at 10:05=E2=80=AFAM Bartosz Golaszewski <brgl@bgdev.=
pl> wrote:
> > On Fri, Jun 13, 2025 at 12:16=E2=80=AFPM Cl=C3=A9ment Le Goffic
> > <clement.legoffic@foss.st.com> wrote:
> > >
> > > This patch series introduces the Hardware Debug Port (HDP) support fo=
r
> > > STM32MP platforms.
> > >
> > > It includes updates to the mmio gpio driver, the addition of device t=
ree
> > > bindings, the HDP driver, and updates to the device tree files for
> > > STM32MP13, STM32MP15,
> > > and STM32MP25 SoCs.
> > > The series also updates the MAINTAINERS file to include myself as the
> > > maintainer for the STM32 HDP driver and adds the necessary
> > > pinmux configurations for HDP pins on STM32MP157C-DK2 as example.
> > >
> > > Signed-off-by: Cl=C3=A9ment Le Goffic <clement.legoffic@foss.st.com>
> > > ---
> >
> > [snip]
> >
> > > ---
> > > Cl=C3=A9ment Le Goffic (9):
> > >       gpio: mmio: add BGPIOF_NO_INPUT flag for GPO gpiochip
> > >       dt-bindings: pinctrl: stm32: Introduce HDP
> > >       pinctrl: stm32: Introduce HDP driver
> > >       MAINTAINERS: add Cl=C3=A9ment Le Goffic as STM32 HDP maintainer
> > >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp13
> > >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp15
> > >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp25
> > >       ARM: dts: stm32: add alternate pinmux for HDP pin and add HDP p=
inctrl node
> > >       ARM: dts: stm32: add Hardware debug port (HDP) on stm32mp157c-d=
k2 board
> > >
> >
> > Patches 1-4 and 5-9 can go upstream independently. I suggest taking
> > patch 1/9 through the GPIO tree and providing an immutable tag to
> > Linus to take patches 2-4 through the pinctrl tree. Linus: are you OK
> > with that?
>
> Yes go ahead if you want, an immutable branch based on v6.16-rc1
> is the best for me, then I pull that in.
>
> I could also just apply it and hope for the best... it usually works.
>

I have a rework of gpio-mmio in progress that removes the bgpio
specific fields from struct gpio_chip. This includes moving the flags
into a separate gpio/generic.h header. I really need to either apply
it myself or get an immutable tag from you with this change.

Bartosz

