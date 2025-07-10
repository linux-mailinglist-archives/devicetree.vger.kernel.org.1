Return-Path: <devicetree+bounces-194803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B0EAFF981
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 08:17:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A1D1B1C24B1D
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 06:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D231E2882D0;
	Thu, 10 Jul 2025 06:13:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tmqHRrGg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C62028000B
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 06:13:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752128008; cv=none; b=VnGQvx1xwUT8CweJV72eTg7rMCRS1UU8P2hi7jV8bfIr6LX9WqDU7EeznF78XX2P5pBtI8yEkQkhVZiBLSUlpHWRqNxLB9A7yzjr2JI6f6ya5P3gT0/QNDvclf4FSKGQfoAfr1w8yOkXxUtIXDo8m9bLH8nPalfivcOCRJIDqns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752128008; c=relaxed/simple;
	bh=qIGl3ofMZN4YGC3+hkJsdrAC35OHZlbE6ayWuOboDj4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=RaqmprDU2lJCcFpO1hX2EWvffKvfSmhT88t9+jhGGAaIkOz+1L9rser4n+204S2zUs9a5Tdnc+yy6iRCBUKyR5bush2KYLmBi3kWFjhCm7z0Ke72u1yUxV+99m1XIfCR+BhqCEyAi+eoE06xtSRM7rp6tZ3ilMBao9YWrOU33gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tmqHRrGg; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-453634d8609so3092085e9.3
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 23:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752128005; x=1752732805; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=qIGl3ofMZN4YGC3+hkJsdrAC35OHZlbE6ayWuOboDj4=;
        b=tmqHRrGgF119Ca7LrTG9ZjPOTC1QplpRbxALP32kclNpwJtAi30wUtPNbvlGDSa2s8
         4HivoM5G5GMbDrgZAJGs7FtuRtzphgEkEZ4h7BSbb2vVcL7ptZ/SH+q1xyZpbUK3iWs5
         0f0MxLd1V2v1tqPI6vrd+6NhDaDR1MQSH+psCcozHJLLs2iFCcbA7yB+n78rzuKSirhu
         gGBKPHrs3Kzv2r2KaGuBM2IyK/o22C2ktLLpEgAayainrtVVGNNoZPW1kSEgMk60Tk9M
         55iiBN7om6Vsvp0GA4IYqBPyJNyKgxCXQlBPrLSB7N9k4hl1ZpG23R49fhkdzFm9Ky11
         13nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752128005; x=1752732805;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qIGl3ofMZN4YGC3+hkJsdrAC35OHZlbE6ayWuOboDj4=;
        b=uRDa9YCZdp/dEOIQPnvzNVAT2NVXP9lCl4lqycv6IjajCYUbBKOzi7py2n0mM9F0wR
         Nadl6nUBuugpMZx60hXu0L6qIpFZ72PcUF31siOUW0G1w5bVwci0LDJgTvsbuK2gJ7qu
         WAkD+PoomNXDE4ZLnPxlDpdVvrUsULeLqj+St9lkvBfZKPYpaIHCgXb30L0x26BryLsW
         br4cNJJkYjbtUI2kKQIQqjEsl8B6JUI8zurPAE0w06jiks5whvKL/T+WJjrnQCXn9liM
         Z6JELtkZhYdOJUtG/9Cj7k4xQPhWK5/A79/8QpDHVjgM/9l8Z7xRomQydRyduucHazpI
         w86g==
X-Forwarded-Encrypted: i=1; AJvYcCVpqYNxaQ3bZdAAWXPSw45MGlpedpbzNXaassFvEegR/d8K0PnSOu3IPiyVVCM3XY3EfkU2X3/jQbBb@vger.kernel.org
X-Gm-Message-State: AOJu0YyX/z+t7Jr8e6Vz8H7I8ZHanK+2ai4Zt+t1bhJ+0Tj9l9jQEcsq
	KldkPT8CH/uLY8lyoOMp9VQ4CvaJ68VkExozZqyXRnfGYguaRPRaTOuY7AIwCMgqsN4=
X-Gm-Gg: ASbGnct2jyzhttkHXThKC397vOYFU5HNyqwQewrH3G6gh5V7IrKXjnaac/f4M03J01l
	Wm8+4SLvYCbMtSD9yUj6Oa/6p/3/w4GysGsW7jUvN5vtOfVmPH8FcP5e2NRWvX31e66V6SLYcKK
	uQSjFdoaHf7IjiRDbY0JU/lC5obJbMbYPgMB0NDtS91HoJwHyugh1BuFncpwF7lDlzJAjDSeirv
	JQYSDwul8HV/4J+VL+91moOwPJy7K7ZfDaq2D0rAgMGv734O13Aai/rM61p4Q9DLnqjhCBZ2lql
	T05aDaEh3UuokCT/5B6PZtkg4RT5a9eXWyVOl9Kn/SDBuQWIZelKcnbvZpoRYPEBvQ==
X-Google-Smtp-Source: AGHT+IGiIzBae/Gufxz9lausYNLZM0rhTyqOuwPMyv4+f1cfDIVfKWfit+8EynHpXSbDAsUNoJUfhg==
X-Received: by 2002:a05:600c:3512:b0:453:78f:fa9f with SMTP id 5b1f17b1804b1-454d52fb600mr47227905e9.11.1752128004704;
        Wed, 09 Jul 2025 23:13:24 -0700 (PDT)
Received: from draszik.lan ([80.111.64.44])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8bd1741sm928783f8f.18.2025.07.09.23.13.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 23:13:24 -0700 (PDT)
Message-ID: <e653f4b90422ee9ac09c62292dfb7a2af1f897d0.camel@linaro.org>
Subject: Re: [PATCH v4 02/32] dt-bindings: clock: samsung,s2mps11: add
 s2mpg10
From: =?ISO-8859-1?Q?Andr=E9?= Draszik <andre.draszik@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>, Rob
 Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Sylwester
 Nawrocki	 <s.nawrocki@samsung.com>, Chanwoo Choi <cw00.choi@samsung.com>,
 Alim Akhtar	 <alim.akhtar@samsung.com>, Michael Turquette
 <mturquette@baylibre.com>,  Stephen Boyd <sboyd@kernel.org>, Russell King
 <linux@armlinux.org.uk>, Catalin Marinas	 <catalin.marinas@arm.com>, Will
 Deacon <will@kernel.org>, Alexandre Belloni	 <alexandre.belloni@bootlin.com>
Cc: Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus
	 <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rtc@vger.kernel.org
Date: Thu, 10 Jul 2025 07:13:22 +0100
In-Reply-To: <20250409-s2mpg10-v4-2-d66d5f39b6bf@linaro.org>
References: <20250409-s2mpg10-v4-0-d66d5f39b6bf@linaro.org>
	 <20250409-s2mpg10-v4-2-d66d5f39b6bf@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1+build1 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Wed, 2025-04-09 at 21:37 +0100, Andr=C3=A9 Draszik wrote:
> The Samsung S2MPG10 clock controller is similar to the existing clock
> controllers supported by this binding. Register offsets / layout are
> slightly different, so it needs its own compatible.
>=20
> Acked-by: Stephen Boyd <sboyd@kernel.org>
> Acked-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Friendly ping - can this patch be merged please?

Cheers,
Andre'

