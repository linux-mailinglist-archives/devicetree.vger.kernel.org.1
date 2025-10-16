Return-Path: <devicetree+bounces-227755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A2BFBE44B0
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 17:40:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B0193B3475
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 15:37:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F111D34BA5A;
	Thu, 16 Oct 2025 15:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cJzK1g4v"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C26634AB07
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 15:37:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760629045; cv=none; b=VlOZffFapz6H/SFvrOM0s8UiL308Ylg2XXpgDEO5UAo2iQrZTCQPEfzfPBZdOjKJMZLCFVbC3J5rZGqqlRz7ANo7uNqd87kZ+Bx0pXaEVep1hSON4BuaZtT4D7Hjndw+w5+pqbdpSPBOZle1zQjZoQAt8530vO5iY5cuaKc9xtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760629045; c=relaxed/simple;
	bh=IQFwym3P9+Nw3XQ9AhLnb0cLG2B7kYyMSV3AcTLlS5I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VhSZ/VXcGdho0Fdp3aT6NdxfiiPNqSep5tpJfRhwiurkOykV1wBDc7a1aeXEy9cU/DeKQI3C0KQpPPypcXNUAf/kMsLnFRle1xnohzOGiPJ+S0PX9VdIWdGAcR72RP1e6WHks24JfVjzyw49gvQAC7DZTYz15eC9MBNW0FCDyJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cJzK1g4v; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-634b774f135so1510717a12.2
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 08:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760629041; x=1761233841; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lt9AoG+5Ci07Qvd8dFqmwNsNmi0V9J5hOKNJ8ADlmH8=;
        b=cJzK1g4vWJMSH6IKrpfA/tmiEZjJfecLXtzULXUvJInL31UJk6WbXsGrMXScK0PTVV
         ikQb1tmC+mhmYbsZ6EDxLDDjDqdWkbbRfDw/Ruj32KQMOapwC92EANi4imxIVN9coYnW
         gf08bIWYfyFm8rfDml8cp9B1pEYEVtWEsW0SaDYkdK2ASrysKUEYDbP8yeffHutCKns4
         iFI9fcLIUB/vfmA6jP2el2YaDuAIdE2rR+PTg6FJzDdqStNbznBsPriVfWroqMh+cyML
         UEBJB8HHYQu4Iu7FHiHUkCDg7P9+2I9gEFaL/DqKCF1Re4MAsSm+WE/C3EINBUdXiLO/
         42nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760629041; x=1761233841;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lt9AoG+5Ci07Qvd8dFqmwNsNmi0V9J5hOKNJ8ADlmH8=;
        b=NUReoP7YTPScsbljsccY2IrBWHnDWF6+6cKc8UQSmuODNoTbz+T/+4etByIPOC5PUR
         joilNswT8jjNeH97MH1Ir+9IKC+VmYrjfANIJoFHvM/av6Ch6hNOznH/BG1tOSiJSR0u
         KHFXYGZDVfC2+BORz3thkR+nm8nA5LYqZzJl0XboiEmYhPZSyhYVo/0JvD1xAnq+hqAg
         B17TRRfYpC7RiuU+rNwUjbVSl9n0Q4whUpGIu+E/zcNM4U+gbC3+Rz0xdg1f24tm9JS9
         4uT08Q8YYsVyz3dCWdBUxjixbpN3p21kFgGexkNS36PI6FfMewG/GXQH+gLbMUkjkgPr
         vL4g==
X-Forwarded-Encrypted: i=1; AJvYcCWRVDBshAksbshCdvM34Embr41WzpZ19HHaUffqvQl8/M5Qdn9eepaya0OYrcv30hh50JMUrecnVlUv@vger.kernel.org
X-Gm-Message-State: AOJu0Yzo/t/Q822Qv56Yzsz7OZOd1cO2PQEO9bT3Ks5VmWAMK+NHTi5f
	UVNqixlSSpobvydOw4NFA/J4rn0wZgpxqk1AWd4qddzFZ+GtKZP2SEih
X-Gm-Gg: ASbGncta7LfyE6V5TFQqJ8MepS6Wm4s5ZXgSE34/DkfyFn/D32ueP03cgabCAXs4jQv
	y5s1eWVqd7KmTlanKs8ri+xFdt3AlgDBnY0dJmKD4foCgp2zFKtEJaLm2OT/SSLEdNPbtn2K+s6
	QOhpfNnHnGLY/A06lYmErPG1pPibg4ki9G642hGvZknRHV0tjbuHjUAsKplLt6tHAc9RE7NudOM
	wJVjejleroo6f2lr1U2LPxuCplwiw4ITGzmAvGMOsufX3yMY+c2aMWKHyezrQLL80Fb3HH4zuzw
	udko4ao2HHZe8UhLeP7tcQqs0Avk0ovDq1sLUHY7OfKyTlVt7AICK2Wh4VE1F3yiJxBrPiUw42F
	l0tUiqmRyGfvs+fXJcDnwWIri230ummpCgy72ncxhQMEpLUK9p1lk4JAfrW/z+qVBWtJ6xwCBck
	RvZw7YL1NRLNP8ax4E19Yb+dKM1MXedQ1Nd2xbD/2WrEH70mmUiPTDl5R1bC0ZNDbwmCjUc253l
	UEU80B+5GQ=
X-Google-Smtp-Source: AGHT+IH5rChTcQ8KMfdTwyelHm2o0px+idB9KuE6OvaeLt94wXIWXpeWcF/P5s/Pb2bnDPg7YRkZog==
X-Received: by 2002:a17:907:2d06:b0:b40:cfe9:ed2c with SMTP id a640c23a62f3a-b64769cd245mr34400266b.64.1760629040911;
        Thu, 16 Oct 2025 08:37:20 -0700 (PDT)
Received: from ?IPV6:2001:9e8:f10a:ad01:ad7e:4d4c:7985:153? ([2001:9e8:f10a:ad01:ad7e:4d4c:7985:153])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b5cb9e7a23dsm554836166b.23.2025.10.16.08.37.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 08:37:20 -0700 (PDT)
Message-ID: <22a84772-0e54-4b99-9bc7-59e7e4633807@gmail.com>
Date: Thu, 16 Oct 2025 17:37:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 2/2] gpio: add gpio-split driver
Content-Language: en-US
To: Linus Walleij <linus.walleij@linaro.org>, Peter Rosin <peda@axentia.se>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251009223501.570949-1-jelonek.jonas@gmail.com>
 <20251009223501.570949-3-jelonek.jonas@gmail.com>
 <CACRpkdbCw1Agnsy-aYPs+2PhQDFjj+=VjmGQBmxuCUfwRuWkfw@mail.gmail.com>
From: Jonas Jelonek <jelonek.jonas@gmail.com>
In-Reply-To: <CACRpkdbCw1Agnsy-aYPs+2PhQDFjj+=VjmGQBmxuCUfwRuWkfw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Linus,

On 14.10.25 10:37, Linus Walleij wrote:
> This can be made easier these days, reusing the
> forwarder library. I think! Check if I'm right.

I think this doesn't really simplify things her. As far as I can see the
GPIO forwarder is more targeted toward 1-to-1 scenarios, requiring some
(or even more?) "hackery" to fit to my 1-to-many.

> This part is maybe the most interesting:
>
>         fwd = devm_gpiochip_fwd_alloc(dev, pctrl->pctrl_data->ngpio);
>
> Here ngpio will be 1 for your usecase.

Giving ngpio=1 here makes the gpiochip only provide a single gpio. This then
needs to be the number of GPIOs defined in the DT (number of child nodes).
But in this case, the internal 'descs' is allocated accordingly and there's a
1-to-1-mapping between the external offset and internal offset. To solve this
I would have to add the same descriptor for the shared gpio multiple times.
Not sure if this is a good idea.

>> +++ b/drivers/gpio/gpio-split.c
> As mentioned I would call this gpio-line-mux.c

Sure, will be changed.

> Yours,
> Linus Walleij

Best,
Jonas

