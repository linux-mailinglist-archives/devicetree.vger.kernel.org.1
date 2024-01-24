Return-Path: <devicetree+bounces-34642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id ECD0283A699
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 11:21:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 02C1AB22E75
	for <lists+devicetree@lfdr.de>; Wed, 24 Jan 2024 10:21:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 686A918E0E;
	Wed, 24 Jan 2024 10:21:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="hCMnp+bB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C771218E10
	for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 10:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706091680; cv=none; b=ELss9aRglHTgK4ph01j9yx1m1pRp38+ehFIUyNCpvz1oxMZQsttMIU/sFrkn3OEOevCnbS4IfYOXk7fZZTUpaoZzdLhOassO4OHZvCWFOFh5mTVvTcgC/qFLVqnIePLc/Pf1G9onCfJCzV7pWvvNBCqvz/6hlep4+xTBBN9cugU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706091680; c=relaxed/simple;
	bh=ewX7gY72o0cl/yYtspnOPfn5OfSuWve6SbfDlOaK0u4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=K1KrFFnDMsKvrXiPk47ZhTg3o25U1CQ7DmIIic2OtlIL5/fKJ2w70ytuKi7u/06RfqASm3ThfbpuUWqtBQpX78b6I2TFkYi+to+2iBwTQItOGvII1ngDbGhpLJbH5sflxpoMyu3lylicMZFzU1SPMxPEk39pxLCl9lO4jPVlJ48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=hCMnp+bB; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-5ffd5620247so34672467b3.0
        for <devicetree@vger.kernel.org>; Wed, 24 Jan 2024 02:21:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706091678; x=1706696478; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oahrr0zPn7dyTHABN+YgjB62XpZ+3yBv/LwJfePBLo0=;
        b=hCMnp+bBiLITDg/sLLkPFHu+Thcyva66Ve2kaglOP9lRu2AoY5ZVF/E1iCtcP4P41k
         nyccSxaoxN3Ym3YL5xPCvicX3b6E2We1BoCRsBxazoTTj0newp95SNpgBZwzkqTq/rK9
         5zzoPlYy7Z5sOkSquetM/YhdREcGum/clcYOWkV8/f1pQ7uszClp+o2yqpnPGqQko5Cp
         2WqjyBoFLAhihKusRdWHe7diY0DIK4W1TFWWQ9GU2h1jqHWW3rwmbi/QrU49UoyZ15xe
         nJ53Q1lClK4Te5HJi8C9BcPwrU8Ao/sbF6GFaVnSIr/OUsfDg6W1IcN1v0BLTb21nhHq
         UNDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706091678; x=1706696478;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oahrr0zPn7dyTHABN+YgjB62XpZ+3yBv/LwJfePBLo0=;
        b=sEhmCeRvTamuVwr9BQq1IDqQ3DojUor7+gKkvzQoyhoZN//vh4I4WvL0mUz6Vyo8CQ
         kisQpFAoxymmvKh0Q9XdZ0dXZOcOPXrKd1AOJLZU19aOpotI+VTrO9ibFBJ3mGAM100C
         9JztA4Z7N7KKGD1sRw5SaYoYdZfP+BVhA2f9Man/AZU8VPm7q7fKXk5MoM+CL3WbKWM+
         eKHyVnQPIYbhUUw8oQiwYnrDZGFVNDif1rdbRlmCmkOyDkS+HoeLLhEyapMMwxwfAIDr
         7aMB+tarjZw7NX6hFFq7m9g3frpKSvdmy+rXvR0jBkJ16Fz6hxNFR77MTQtsIW1YkXyb
         0Y7w==
X-Gm-Message-State: AOJu0YzZ1E5SOSafSerjZeewTZOwrc2Xd9z4ey2B9dO689KEzPIZT1Tr
	psYASaV7FdDhgDBwtmDA5Zp49mmYtfaeM2f9I4+NBXCAs9p+uH6kkvmTcWagORKmDp6xlu5dhYp
	ph1425sG4/XIfALf+v4cyztBUz4C8b7E9Zi17LQ==
X-Google-Smtp-Source: AGHT+IGVtGg/WkPzc49U9WuM15rlSuAsDRUaw6mcw+yY8QDg2i3KDIhJyIoiFrhlnelKM6n+BFEPpnW1/A4dbXsMEAc=
X-Received: by 2002:a25:c402:0:b0:dbf:6240:d8a8 with SMTP id
 u2-20020a25c402000000b00dbf6240d8a8mr457643ybf.17.1706091677756; Wed, 24 Jan
 2024 02:21:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122225710.1952066-1-peter.griffin@linaro.org>
 <20240122225710.1952066-3-peter.griffin@linaro.org> <dd8402e7-f8cc-4ddd-a748-e176b6b534a9@app.fastmail.com>
In-Reply-To: <dd8402e7-f8cc-4ddd-a748-e176b6b534a9@app.fastmail.com>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Wed, 24 Jan 2024 10:21:05 +0000
Message-ID: <CADrjBPpchS0NdqS-mRmmatOksGHc4KdRniJXGDPTS1z73eU9kA@mail.gmail.com>
Subject: Re: [PATCH 2/9] soc: samsung: exynos-pmu: Add exynos_pmu_update/read/write
 APIs and SoC quirks
To: Arnd Bergmann <arnd@arndb.de>
Cc: Rob Herring <robh+dt@kernel.org>, krzysztof.kozlowski+dt@linaro.org, 
	Guenter Roeck <linux@roeck-us.net>, Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, jaewon02.kim@samsung.com, 
	chanho61.park@samsung.com, Sam Protsenko <semen.protsenko@linaro.org>, 
	kernel-team@android.com, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	saravanak@google.com, William McVicker <willmcvicker@google.com>, linux-fsd@tesla.com, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Arnd,

On Tue, 23 Jan 2024 at 08:11, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Mon, Jan 22, 2024, at 23:57, Peter Griffin wrote:
>
> > --- a/include/linux/soc/samsung/exynos-pmu.h
> > +++ b/include/linux/soc/samsung/exynos-pmu.h
> > @@ -21,11 +21,39 @@ enum sys_powerdown {
> >  extern void exynos_sys_powerdown_conf(enum sys_powerdown mode);
> >  #ifdef CONFIG_EXYNOS_PMU
> >  extern struct regmap *exynos_get_pmu_regmap(void);
> > +extern int exynos_pmu_update_bits(unsigned int offset, unsigned int
> > mask,
> > +                               unsigned int val);
> > +extern int exynos_pmu_update(unsigned int offset, unsigned int mask,
> > +                          unsigned int val);
> > +extern int exynos_pmu_write(unsigned int offset, unsigned int val);
> > +extern int exynos_pmu_read(unsigned int offset, unsigned int *val);
> >  #else
> >  static inline struct regmap *exynos_get_pmu_regmap(void)
> >  {
> >       return ERR_PTR(-ENODEV);
> >  }
> > +
> > +static inline int exynos_pmu_update_bits(unsigned int offset, unsigned
> > int mask,
> > +                                      unsigned int val);
> > +{
> > +     return ERR_PTR(-ENODEV);
> > +}
> > +
> > +static inline int exynos_pmu_update(unsigned int offset, unsigned int
> > mask,
> > +                                 unsigned int val);
> > +{
> > +     return ERR_PTR(-ENODEV);
> > +}
>
> This won't build since you have the wrong return type.
> I would suggest you just remove the #ifdef check entirely
> and instead require drivers using this to have correct
> dependencies.

Whoops, will fix it in v2. We need those stubs for platforms like
ARCH_S3C64XX that don't have a PMU but use some of the same drivers.

Thanks,

Peter.

