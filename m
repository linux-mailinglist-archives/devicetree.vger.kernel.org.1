Return-Path: <devicetree+bounces-60910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A6FF38AAF5F
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 15:32:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D8C831C22B46
	for <lists+devicetree@lfdr.de>; Fri, 19 Apr 2024 13:32:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 516E412A14C;
	Fri, 19 Apr 2024 13:32:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l0zhs5QQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C232412AAE9
	for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 13:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713533525; cv=none; b=Mhs/NjN//oONjYKQRuguH4/dk9Bdp2gCKctFvlL4XPdSLIXrNkh9EdzTUu5jWz/Kas6Ox5WiUsuNCRuXx0APGw0wgMpcCqQyF+AX0wVpbXC+QhKWwoTqc9hag17+4bH4Zw80CCuVFX/MuFDNVjaM+l1ws79z0RdADUOTz1hBNGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713533525; c=relaxed/simple;
	bh=fhRZLpFsQ7ybY9l+xJ4w5t3vGVBb7qMjYrDhTzkEaLs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XYAoyQbmAPHEHBrb3b2/qP1KOhIEnaC/q534FDeqVtZL8uzXYcNJxTZiVLYnN4lfbMyr9LYTqeNy8iJj466MiyQqmp4yNjPMfUpuJb5UDqE1wCFF/kiYHuJE1RdUXczwvHNajW707zp14bamCnPXo00JT8kSSCGV6Q1n2aDTd3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l0zhs5QQ; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-617e42a3f94so22442627b3.2
        for <devicetree@vger.kernel.org>; Fri, 19 Apr 2024 06:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713533523; x=1714138323; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fhRZLpFsQ7ybY9l+xJ4w5t3vGVBb7qMjYrDhTzkEaLs=;
        b=l0zhs5QQ46Yrg9eznLOBmJB40eeR3b3xojDdVlcHzBBBsv4Ici7Zb+aVEp54UG0V3u
         v9pci332u9976NuzrU1Ca6NTqlG0Fz+kYn7ITeCBKY5xEw6SQ53sbH16/oWMKqmIn7Ua
         ErD+7nI59w6NDrqvEOMv5xCh6vqMEpHAYBraxctXaUZXpwSEW44p9c2I+JHKFj9US5NW
         Hiq/L5GtSU3X9fEb7rstVRSOO8S3dQ5QToJdh5+z2g3MkKXARY0I79Iq7PdAbbGNjL56
         lQSTjEyHhTVK9YlgguQxFL71kNlmxcD5Cg+F3CPRmBvpXk5Tbc9SfjmaNEE68+lyFGIS
         fxnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713533523; x=1714138323;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fhRZLpFsQ7ybY9l+xJ4w5t3vGVBb7qMjYrDhTzkEaLs=;
        b=WmBMcU1pCG7EaeA3XLnpl9TmDspukoeVpYFs+jKimuofpyYTO/tNZyhJf9NESD1SMc
         e9HyS2qEqnBe8JuaPknrAFu9hG8u+QqED3JW40EYnXWqsQY9UYXxIn4PyNtLOLsQXbUg
         qlUDKdU8WVWgdK6LEs/UxijpjHl/cGnpXJpsz/fki9HzIzznics7vni6cmY6BljGHBqv
         yny/Bm1zhgzAUHOa5tudN4emwH/XBXb9mfqxh1YhQylpDX/PqznbGu/3W6duUoRqVhHQ
         UDk2/Pc7p72NV08AdUvHqILZ6FoTnD/kx8dDXfKDW4ShiwV0eeotId6bAwnF7/2LCCA6
         SPOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWzAqCClElOpsNCuWf+4ZFnRlrW7cfxi34O1Z4mLKSDDZ+MyxohX7OsUsdDqUUfkahTOsYMbOVZ5evT67nDtdeb4QTk1+siKrTB/A==
X-Gm-Message-State: AOJu0YwCuKAS6hQ8smEMBr5rZyXMcnQAMS3mw44DQVXgHYuBYr2ay/nd
	/BuLuIXfXr466u8RbO+hcqqF7xnViAZm0JwYQ2O/mDMqT8WwZHr2vltR/HQXraFCDXtWTVYU+bF
	p8K3uuz6YmDIAkY2JX4nAn8xMQdYzBJMxpiMLwg==
X-Google-Smtp-Source: AGHT+IEou1g+hlEnF+UZTysGeCw64FZcHI0UHv68Ib6xcR70RGN0JzF6vOEoAr0MN7ZeCOnx92d1upOtm7sToLZnVFo=
X-Received: by 2002:a25:dc53:0:b0:dcf:f78f:a570 with SMTP id
 y80-20020a25dc53000000b00dcff78fa570mr2107378ybe.7.1713533522845; Fri, 19 Apr
 2024 06:32:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240416161237.2500037-1-knaerzche@gmail.com> <20240416161237.2500037-4-knaerzche@gmail.com>
In-Reply-To: <20240416161237.2500037-4-knaerzche@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 19 Apr 2024 15:31:52 +0200
Message-ID: <CACRpkdbRTOV=t4Y+xKR0P+q=N9XmTWkAWHWptF=-uSrA-9Cq_A@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] pinctrl: rk805: Add rk816 pinctrl support
To: Alex Bee <knaerzche@gmail.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Chris Zhong <zyw@rock-chips.com>, 
	Zhang Qing <zhangqing@rock-chips.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 16, 2024 at 6:12=E2=80=AFPM Alex Bee <knaerzche@gmail.com> wrot=
e:

> This adds support for RK816 to the exising rk805 pinctrl driver
>
> It has a single pin which can be configured as input from a thermistor (f=
or
> instance in an attached battery) or as a gpio.
>
> Signed-off-by: Alex Bee <knaerzche@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Lee: pls apply with the rest to the MFD subsystem when you
are happy with the patches.

Yours,
Linus Walleij

