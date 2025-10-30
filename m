Return-Path: <devicetree+bounces-233244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 73D80C20206
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 13:59:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 16AE64E5DC6
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 12:59:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 538ED3446AF;
	Thu, 30 Oct 2025 12:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fw1E+tts"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f41.google.com (mail-oo1-f41.google.com [209.85.161.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AA76340A51
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 12:59:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761829161; cv=none; b=ep6KNhaa2aBHkJ2baVtO+qjOXEnAG7p94CCkRl305AgjIulhp/yMAkj9bXePQgB7aO+f1NMxo07Zu6zMUkv4WAJv1cXdbB6sXakn7L7cx00nMPLv3dIl7yvXm4YKBsbRPdxyXR5/wmFwkR22RHB91G2WDQi1b6Tq2E7mRBHMc7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761829161; c=relaxed/simple;
	bh=nOnIPQ3cOTasc1cQWtl8J0uDzRnMImDchYg9bAXZ71A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=l93nP6ldF8OJnlik+r02gg8UeVPmMTiwu4XyoXnLcZ1BlLsvMgvxBf5/0i7LkmcXvQvlrd/I1Dk861ESKayJzcgi3C61unkPBgDhWg4T7dvqiamEWmzOYN9jkVBXiSkvH29MS7VcInsNDJEPJXnMkGjH3hWS6RNydZCe/EGUyDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fw1E+tts; arc=none smtp.client-ip=209.85.161.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oo1-f41.google.com with SMTP id 006d021491bc7-6567a0d456bso503895eaf.1
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 05:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761829159; x=1762433959; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MUngWjQHOsHWyGvCCrS6bQFp36pm2JD9uz37P37Y7PE=;
        b=fw1E+ttsMfaEI0PZtDenTKw8DZuyYRUCa1Z+ErhNrug1W/ogOPI86CPynmt9mmNQQx
         anuMqpfeOHDA6ehYrScDQGI/BbdBIHNcyLbestc0tp/htfyrV3TF84qZtvqnt/8z9UCt
         IvBdsB8cSE9TjVocHRkFO5QmnhuAbATRDVhRjTMj9ghmAwUXDthM7obqVjTljWtOkW4D
         lr5JNtBd5YNeFRBHUBmA/drsaRHkFVwo9gLwHFnkq6MbVcFGwA6XTWZnLu4FBVlDFoti
         KqyBwT0a5l55uerTHaNcHV+Xd3r7CoBxjc1J4OuaIL1x25RU1fGIqWLAga/lOYxcIYVd
         4KOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761829159; x=1762433959;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MUngWjQHOsHWyGvCCrS6bQFp36pm2JD9uz37P37Y7PE=;
        b=gTr/d5wKIlRq5E9qwynAad2Ti6c8xe5NyxcsRIetAnj2Fy7NNRQMZ8CiANpULFG+O5
         T83WnIVJmRDagtMEa+/SrBgEhotjYXJ6JmwGlIuaCnro/caRunL6qdv7tmkfyvRirz3A
         woROaMbDNdYH0MSI4M8mg1wV020RLEud/5DWi+1Zq+/dstAJg/s61X0OqWhX8ldjCYMH
         u092KT1wXtn14hs+PCVzRgIZ9FsGcauX7XA/wOqPRtS7dMVxfEwPc5RIThTGNCkBbg0F
         CmGLJ9Df0zTgqItabpa39ctmb0VUFbPwZKU/JROZmPXhxYAYhI5i5+K6i4QWYn1ovUVu
         4YAw==
X-Forwarded-Encrypted: i=1; AJvYcCUV1XNEPqhXFZFNtPmHXPIUQxBmAQYEv+s5xggU9hIThyl/o4OGwJPT9R/8eiD6cbjDikV6XHxoIoJM@vger.kernel.org
X-Gm-Message-State: AOJu0YwYv6+1KLm0dJNeLOIMejqcFZHYOsJ8LevSaE9VW8YY0bg3T66W
	/NyxVw/S0BPnEb6TMaDC5EjCDLx4eKx4uV+qDqaOsL3wZ/IjIwW6Wf+TU4h1JO0jxfK94DqhEwi
	TjyJSypbUTOgwCETvcjWLKykaL5UdbEzNLUUaExBRpA==
X-Gm-Gg: ASbGncs6N7F/WdqFxP+amLt/BUenx3pAQaF+SEh55c56ts+5MA7//jK6tWs0rysdtb9
	Ce6eQf8N7IzTybnA94TAcjQAlTUR8KW1rwVDstIqbWYzCL3Wx+IlZk802+uwfkjJXzJ6bikuG7U
	11iuaWYbBnnb+wEMkLvNDl/U03VDth2ieHtVqNXLslYfhZdPX79cHik22UmI/j43z/4iYDoxa5V
	3tEKluByKdVyL6gE/yezm2Aj2oEAhw98XJ3QjmtFfHOByHeWWjnOYO8os/RTLMdZ/DzQes=
X-Google-Smtp-Source: AGHT+IFRuom+Xy9+RtTqY/d40GyBxzKZzSrQelpowXgj61eicpzP8axPc1aHoehl9CjeTBFVcIIo9t5t5GGK2d4bm9g=
X-Received: by 2002:a05:6820:4b0f:b0:656:777d:e689 with SMTP id
 006d021491bc7-65677ec0f4amr2805499eaf.4.1761829158477; Thu, 30 Oct 2025
 05:59:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1761753288.git.dan.carpenter@linaro.org>
 <3fd4beba-0d0b-4a20-b6ed-4e00df109b66@app.fastmail.com> <aQMUu08phVPqfgEB@stanley.mountain>
 <dbd5558a-90d9-404c-ae98-a8c04cdad08a@app.fastmail.com> <aQNccP-lHqgygmsu@stanley.mountain>
In-Reply-To: <aQNccP-lHqgygmsu@stanley.mountain>
From: Peter Griffin <peter.griffin@linaro.org>
Date: Thu, 30 Oct 2025 12:59:06 +0000
X-Gm-Features: AWmQ_bnA-rI4dp9Qdvin1M-58PMqgIsTTWEVmCI1FLpELioMXMO8Bqz7-50ytD4
Message-ID: <CADrjBPoZM3rP3nNWvw9ca0CDBz1KOUYpGVamXYyV3o1-XQ02Bg@mail.gmail.com>
Subject: Re: [PATCH 0/2] mfd: syscon: introduce no-auto-mmio DT property
To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Arnd Bergmann <arnd@arndb.de>, John Madieu <john.madieu.xa@bp.renesas.com>, 
	Chen-Yu Tsai <wens@kernel.org>, Lee Jones <lee@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	linux-kernel@vger.kernel.org, Rob Herring <robh@kernel.org>, 
	=?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Content-Type: text/plain; charset="UTF-8"

Hi Dan / Arnd,

Thanks for taking a look at this issue Dan!

On Thu, 30 Oct 2025 at 12:39, Dan Carpenter <dan.carpenter@linaro.org> wrote:
>
> On Thu, Oct 30, 2025 at 09:33:39AM +0100, Arnd Bergmann wrote:
> > On Thu, Oct 30, 2025, at 08:33, Dan Carpenter wrote:
> > > On Wed, Oct 29, 2025 at 08:43:33PM +0100, Arnd Bergmann wrote:
> > >> On Wed, Oct 29, 2025, at 18:27, Dan Carpenter wrote:
> > >> > Most syscons are accessed via MMMIO and created automatically.  But one
> > >> > example of a syscon that isn't is in drivers/soc/samsung/exynos-pmu.c
> > >> > where the syscon can only be accessed via the secure partition.  We are
> > >> > looking at upstreaming a different driver where the syscon will be
> > >> > accessed via SCMI.
> > >> >
> > >> > Normally, syscons are accessed by doing something like
> > >> > syscon_regmap_lookup_by_phandle_args() but that function will
> > >> > automatically create an MMIO syscon if one hasn't been registered.  So
> > >> > the ordering becomes a problem.  The exynos-pmu.c driver solves this
> > >> > but it's a bit awkward and it would be even trickier if there were
> > >> > several drivers accessing the same syscon.
> > >>
> > >> What would happen on the current exynos platform if we just take away
> > >> the 'regs' property? I would hope that we can avoid encoding what
> > >> is essentially operating system policy in that driver and instead
> > >> just describe it as a device that expects to be implemented by
> > >> firmware and doesn't need registers?
> > >
> > > Exynos solves this because they only have one phandle so when they parse
> > > it, that's when then they create the syscon.  If you had multiple drivers
> > > accessing the same syscon then that doesn't work.

It's slightly more nuanced than that. Exynos has multiple users of the
PMU syscon (Watchdog/various Phys drivers etc). But the ordering there
is enforced there by initcall levels. The "only user" of the
exynos_get_pmu_regmap() is pinctrl driver which is the same initcall
level as exynos-pmu.

> >
> > I'm not following the logic here.  Do you mean that they avoid the
> > issue today by ensuring that the regmap is always probed before
> > its only user, or do you mean something else?
> >
> > > If we left out the "regs" property it wouldn't be created automatically
> > > but syscon_regmap_lookup_by_phandle() will return -EINVAL and probe would
> > > fail.  It needs to be -EPROBE_DEFER so the probe tries again after the
> > > regmap is registered.  We'd need to add a check like this (untested):

Leaving out the "regs" property and adding the -EPROBE_DEFER check
seems like a neat solution to me. I would like to see -EPROBE_DEFER
for custom syscon regmap well supported, so we can modularize all the
drivers that are currently builtin when ARCH_EXYNOS is selected.

> >
> > Right, this is exactly what I had in mind. With a new kernel and old
> > dtb, this would not change anything, while an old kernel but new dtb
> > would run into a different bug and fail to probe instead of using the
> > wrong device. I think both cases are fine.
> >
> >      Arnd
>
> Actually, probably the right thing to do is to leave out the "syscon"
> compatible.  That's what the drivers/soc/sunxi/sunxi_sram.c driver does.
> There is still an ordering issue where the sunxi_sram SoC driver needs
> to be probed first or the stmmac driver probe will fail.  There is probably
> some kind of way that SoC drivers are always probed earlier?

IIUC that would avoid creating a MMIO syscon, but wouldn't solve the
-EPROBE_DEFER part of it?

regards,

Peter

