Return-Path: <devicetree+bounces-199013-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB37B0F0CF
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:09:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D28BB1691B5
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:09:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A71022E2668;
	Wed, 23 Jul 2025 11:08:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="O4UJfqe+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4295222564
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753268931; cv=none; b=KyWWFmxmcQFoJKfoYqs0ZOetqeglHftNeiDllH3GQCYMytCiA1d00pPtY0G4zvLv357ToM74OramnD3drhL9/qQd+wkvSwhNDGau8FSxa7IkgosPY9zGkIjwkdfg1qhnUGIiYx14/onMjWJO3XZwUo1Vk/16KcUi4jZmq8rdOY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753268931; c=relaxed/simple;
	bh=3B0D+GxZIdTFezM7wUdeHc2Z7x4Bz95ATZb5mHcRHNs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pWGg4nAY2h/t99TzXfpb3iIrEqSPEsQpD9HqDIxBz1c6UJuRVmNhSzrt1corWGztO/bmHv4nppWn13DH9xmGm0Eir76QYWPlj2phq/pNGdNBaJEL4inWzhDoK2FjH7FCZgOzH2aojuBn954UsYmvtaFU9ApIv91AiA+YbyMWxs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=O4UJfqe+; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-32cd0dfbdb8so60480751fa.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1753268928; x=1753873728; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3B0D+GxZIdTFezM7wUdeHc2Z7x4Bz95ATZb5mHcRHNs=;
        b=O4UJfqe+a1uRJFOXYrDAfuQgdI3nruGymy2J58oYxaAIvgXRTPnWm6NGiDYJFUdK1n
         3xrS76FPfUfK8BHVVfS15hKXkVB/J/xh9354WQQXu+70RX6odvPSeEUhT1AsADkzuP5I
         kdyXiqtxzomhvnTxl3yZyaN5X6sSAPo52+QHDOwRjHjhZ8iSxJtT8mWdJdVsD8zWt/H1
         tecHpGmhygnVsY0QgqgAWGgYijcdJ9k3Nv6NHM0bDCmcwoHySagHnVTle3m7WZDslhkH
         p3e8gBcizrZWvAFx41f50XVsUBPi7vstLpUApiNZNRh/2JYSxzaaSwBiM55RhbA6WQA0
         PpDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753268928; x=1753873728;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3B0D+GxZIdTFezM7wUdeHc2Z7x4Bz95ATZb5mHcRHNs=;
        b=sILqbUPB/IepzeIYZx26QWaTGQBhAkSbfmFBbnPj/aUt/cEorf0ZDIkC3B+n97mAGQ
         8wVE4+oHLbSjdk/wzlcShT7tpLhcwV6IQx8UBVlT6dxiQ8OXvVr7B1Fb+9Ztj/m9DhnP
         PkSiyIODVr3GifG+gjtt8QOWtBdI5szC7AaIy3MzLSXmGRx++d3ljESf+UMKUejRK35R
         Eu2osnYqaJ+OnfIJicGRh9JW9AMfGYXCBrewwTgKjzOei0XT8mYp+SRJd//t/kdXIXeu
         fap2bOwTGdC/ugTaNnJWNp+yeFUiCWwJ3NG6OHfnI09Eiy8RLWNv6QgJrSqHV+fsQUK+
         mROA==
X-Forwarded-Encrypted: i=1; AJvYcCXFMLnxFukASXoA9pS9a94jkAuyyxjmIl1bnrVrU7qz/pZZ0G4WxQwNllhhUdIa/AXPPqWvI10xhwRJ@vger.kernel.org
X-Gm-Message-State: AOJu0YzDDkjpHkJSgRgFS2V6OkelJV7cCraduzXog7wS+7ENd5tR2I5B
	jX2x1X79Fs895+/BG+ZsKW2yffGl1hASaZtHEnyt8p4NxS+4Tn84VhOAOChx98ZA3f++1Js5/Xh
	0JIqHtsn/w32QHlBFmQO6bNTqzb2tK2ZrtPVruEJ4qg==
X-Gm-Gg: ASbGncujFBfa4bsGadAfDzPj1aBpKyxefazLF4CBK+pQqTDIp4TK7ef+D+eyNIluWwA
	IFdIhku5bNCXqO2z2AJmCnSbon9taf+t3ZI0btbFLSL1r/Aoma7foTmeCK4jImm9pMXrYkfZHp7
	hiR1MFGNGbaMNLLzlpbcEx57cUJknfN4tKMbrq/Ov9ybhGI95uLcDtyfebSJzvWZypP+LU2D8ZJ
	JoO+yQ=
X-Google-Smtp-Source: AGHT+IFKArCYdHOkQCTFcXAgfJ76l45O02eVn107esIDRp4PDEtys19CbwegoUBC08sGUKe6rDVxbL8pTwqzpc2cdT8=
X-Received: by 2002:a05:6512:39d5:b0:553:2e59:a104 with SMTP id
 2adb3069b0e04-55a513e983emr851506e87.37.1753268927568; Wed, 23 Jul 2025
 04:08:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250608-tegra186-pinctrl-v2-0-502d41f3eedd@gmail.com>
 <20250608-tegra186-pinctrl-v2-2-502d41f3eedd@gmail.com> <yw2uglyxxx22d3lwyezy34wdniouu32zppfgwqs5omny3ge5zd@iuqo4qmi55a2>
 <CACRpkdZha_ucjWvP_NQ+z2vbD65Y3u7Q0U57NYbJ=vqQ6uPGGA@mail.gmail.com>
 <yslfabklduaybg255d3ulaxmzpghyj54zdfeqkx3oxgisxf6fo@2wecuqpvvefc>
 <CALHNRZ8jq++KVKxKP2-GwMA6CauP=cM2_wt==MRAV4mOzK2kxw@mail.gmail.com>
 <xc72g7j7png443pjxu2wpsuqofgrpxvn43emkt3rv5qrjzf7vt@qzvsiy3eakub> <CALHNRZ928+=85FbvfKt1c4VX7RudU7ehuOa6wwLj8JJNz+=W-A@mail.gmail.com>
In-Reply-To: <CALHNRZ928+=85FbvfKt1c4VX7RudU7ehuOa6wwLj8JJNz+=W-A@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 23 Jul 2025 13:08:35 +0200
X-Gm-Features: Ac12FXyYD0AJUEr7X9CzcjA1Pj4U-nYzctmGPS86PrlZzjvsb6lrpBvI2Km-UA0
Message-ID: <CACRpkdbLzAJS=iqgOEzE9kD-fM9tx22JTDPgQeLwbTFKiStrtw@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] pinctrl: tegra: Add Tegra186 pinmux driver
To: Aaron Kling <webgeek1234@gmail.com>
Cc: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 14, 2025 at 7:45=E2=80=AFAM Aaron Kling <webgeek1234@gmail.com>=
 wrote:

> I started looking at the pinmux scripts a few days ago, but updating
> the pinmux driver import/export for the t194 style spiderwebbed out of
> control quickly. I expected it to be hairy, but that was an
> underestimation. Doesn't help that I'm not the most proficient at
> python either. I'll continue the effort later, but if someone with
> more familiarity wants to try, it might be quicker.

If this means people with 186 dev boards cannot use mainline
Linux and they would if this driver was applied, maybe we need
to apply it anyways?

Yours,
Linus Walleij

