Return-Path: <devicetree+bounces-87343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E535D9393A3
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 20:40:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A6743281E39
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 18:40:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E9E116FF47;
	Mon, 22 Jul 2024 18:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e/wE/RZQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C21D16EC16
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 18:39:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721673601; cv=none; b=ry8C+5X/xGoXCT+hSodl4Ihu/vlspWpzB8VsF/oQqUEOCAACPv0+Nfjz2OmCJBJHzGZXuDVXih/7FCS8/LC/Td9NDK2hgmkdzFsSMplgcQAWv6sF8stPZTFGTolXAUUhWPUBqbA6lllu9/7OUnvPfFDLqDpTWjfnk043jr5Vx6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721673601; c=relaxed/simple;
	bh=jiivNKC7lQbRfNg1Kjpt39Y+ifXLk9Fuixvd9EbV8+Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b6X/vZz4r6KBU7u9KDl6L4RiuU7DcgA7vC5V/r5XJr7tAoC90pPzGvnOxmYu+oPhfiPeYqsuIJQ3cMTwhAjduGL9LEQaECs63a4L1ED7lLkqmL0edXgK6Gli6GiWM+H8KHC6yj+vpQDVtL4TrXu1EBsGHpdDzQqCgl1RySEfC3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e/wE/RZQ; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-66526e430e0so48939277b3.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 11:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721673598; x=1722278398; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r1c97fZFJ3UOJw/ZZR/BLt9bIZt0krqS+WJPVRsmyTw=;
        b=e/wE/RZQWHKigEckl6HNT959oxaZ7ZC4jQi2uz1f11XBtrOdCSL2IOvOfawiqHTWY4
         tqpzp4yG3rGi4ZGCajXWslVG50XnJXqXKtX+dIta6m1COUOZeOsXLqdsuRKGm+lcFfAd
         JR7M7CRlc7TXZ0rXSmKvHAsASWPu6j+7RUNhKb4V4Lyj19ngD64lp2Z++aHEu5b7U6Pf
         Ng3r19lk1eFB3CC7zBBxHg5eVdm4OpHmDC6YJnPRWt4cWfKlH0JM28FzAIhjLRct+CSC
         3JWKtX4DABpBOXkQCTldq7Go43GrHCZZMcGdG730JvLrdyojYM/YDhr5Sqqzs1tknvAc
         q5wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721673598; x=1722278398;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r1c97fZFJ3UOJw/ZZR/BLt9bIZt0krqS+WJPVRsmyTw=;
        b=DWs6iIuV+csZp82TJPazr4Odu8HwQS8bZ4lVCqeWMI2aPOklBRKj341E9GNA4CoTBt
         Zd4H0V5cgkQxe2qSYpeoFCABrLsK+pC1DHI9CvZvUwXUkZ1tTlNEBXKUJBynpoPr8VOO
         rS3uc+N9RiB/jiE7YW7iIb3e2OjfNXqlMYbD3U6O/yvlesJ0bT5LN9aqgluAIWkm7TgF
         q6s/GSYqhHSVVDqdymCks6IQiPbIAEFZi1P9rE+C97O8fs7WXF1R2vVBeSCuTvkiobcs
         w6fpEBbG4Pw9lPcaK5gqV1Dqh/xNH2aNWckeWsLOpRrlLwguFVu8Q+oeOf06+842gt11
         BsSA==
X-Forwarded-Encrypted: i=1; AJvYcCWeCw9216xyz9jg+8EVZrwM+5iWXbtCQ4QTeetgKdoJQccuVGzPw6mUAEEnB02yXyEBxtne1TxkAF8BTWbAyHMrLdeld53xVHnDnw==
X-Gm-Message-State: AOJu0Yx7grcmvvRUIVop9t/hwwIPUQ409v+DoDTaxyT1fgKQVJ2bHyiH
	AnpXxX2+205X+uTZYdR2AZBaVd6P673M8uNat1LxdrGjKUufqgcZV9+f4cjh4JUyemPikq63AGw
	fWNFWV8Z4Bmo9lvswsXt3RQdGSan91oqQDhz/yw==
X-Google-Smtp-Source: AGHT+IEReHOHNiIFa0oMgVRxlCG9RA8ftspFBW9UmBDqwYk4Nh57Mi8IAfbccJjJtUaTYgJaPpM1V++zASopTbzE/EM=
X-Received: by 2002:a05:690c:2e0d:b0:64a:7e85:9a94 with SMTP id
 00721157ae682-66ad91c36aamr79649327b3.21.1721673598539; Mon, 22 Jul 2024
 11:39:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20240719120944eucas1p29318fb588150b15f60f637fbea48271f@eucas1p2.samsung.com>
 <20240719120853.1924771-1-m.majewski2@samsung.com>
In-Reply-To: <20240719120853.1924771-1-m.majewski2@samsung.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Mon, 22 Jul 2024 13:39:47 -0500
Message-ID: <CAPLW+4m0xG5yHOT_ucGdrOhLZvjhga8caqHQZmVH6HHKUnBgkw@mail.gmail.com>
Subject: Re: [PATCH 0/6] Add initial Exynos 850 support to the thermal driver
To: Mateusz Majewski <m.majewski2@samsung.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mateusz,


On Fri, Jul 19, 2024 at 7:09=E2=80=AFAM Mateusz Majewski
<m.majewski2@samsung.com> wrote:
>
> This series adds initial Exynos 850 support to the thermal driver
> together with its requirements (tmu_temp_mask fix, making data->clk
> optional, adding the new string to dt-bindings), while also cleaning up
> a bit (using DEFINE_SIMPLE_DEV_PM_OPS and removing some outdated
> information from dt-bindings).
>
> Mateusz Majewski (6):
>   drivers/thermal/exynos: use DEFINE_SIMPLE_DEV_PM_OPS
>   drivers/thermal/exynos: use tmu_temp_mask consistently
>   drivers/thermal/exynos: check IS_ERR(data->clk) consistently
>   dt-bindings: thermal: samsung,exynos: add exynos850-tmu string
>   drivers/thermal/exynos: add initial Exynos 850 support
>   dt-bindings: thermal: samsung,exynos: remove outdated information on
>     trip point count
>
>  .../thermal/samsung,exynos-thermal.yaml       |  33 ++-
>  drivers/thermal/samsung/exynos_tmu.c          | 279 +++++++++++++++---
>  2 files changed, 270 insertions(+), 42 deletions(-)
>
> --

Thank you for the contribution! Did you by chance test it on any
hardware, perhaps on E850-96 board? Just noticed there are no dts
changes in this series (or as separate patches). If no -- I'll be glad
to assist you on that, if you can share dts definitions for E850-96
and the testing instructions with me.

Thanks!

> 2.45.1
>
>

