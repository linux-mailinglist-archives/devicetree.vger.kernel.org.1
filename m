Return-Path: <devicetree+bounces-205880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 675ABB2ACB3
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 17:26:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88ABE18A5DE9
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 15:22:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9FCF255E53;
	Mon, 18 Aug 2025 15:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="u06rAZbl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0DB62561A7
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 15:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755530541; cv=none; b=nhx0FeuUwvu3M3C3+2uCJf49qW9LBM9L6dp45/ZN7mXYtyCUC98oU+NUgzOW6wG1OnQRrPTp9aNyeydYTJ9PWQdVQiHYjz7mV7mFCqJqXZrpZ+s0H1b5ch2YBmmcwMt3Pcj+zytQBo3aXbmPjhflVpwyc6nNSvkgvXaALSkU2DQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755530541; c=relaxed/simple;
	bh=TZB6OzqRHkfT0at7DfysjFW1dYU/QwDxNcArpH9FPJQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kDKcb3B06CGqell5fXN9Ah3Lc3OQg35SgMiOZuXfd/kAjb7gVofiDYmcqHD5h+Dl63Fi2EmmQq0pfNd8RFLUChVUFpBgBjmHuDNczXPyelboCwxwXX7TK/vGquKfheXek2ok8KFk0bghICWFhPnl3S4bdPz+gkNQlSyzthZi4d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=u06rAZbl; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-333f8d1cbcdso35716021fa.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 08:22:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755530538; x=1756135338; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yVZcBNGwpkq+v3DR0vvpafxBkSL/1KeRhlI8oyXPu5U=;
        b=u06rAZbl2IKE5aHqI29nVAjfqYPmxsWvrYsyHBlAY+SwekxsfWfAGIC8oAlGGBhBOD
         wugb5qxb3xnEuUyB8rXIbkTNNY8fdDdsbNTIc/Au5PBccylFzxKaJosRKuhoo0fJHZJG
         NIlWCQ7Vtd4B2yhHdr2A7aOtM7LnoqyPru8SHYjAZVk3u/K2WTVWF8VUTAAeS3t1rto5
         zyiy9gXs4sZ/3SLQ2tBq64TO64PUhPUC8CWNb1kHMFwD9sihRygUxt6BIyA3SaaULwfg
         2RvGGxV6djsdbbsQBJg7tWrbdJYxzxk8lNdguUDp6rMxHPJtwI2sf18JqKPZYLGnlP7g
         kuvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755530538; x=1756135338;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yVZcBNGwpkq+v3DR0vvpafxBkSL/1KeRhlI8oyXPu5U=;
        b=na+aUwKePF7HuroV/ypxfvtMgWJDuPkR+9LUBzj/UtvSp08sZK6MmehmdnSderkceW
         ul5CKf6B4Sscz/DjDbhrOKiaA/ZF6eednF2vbAuufKYO7zgRXRLx9u+wPHRCy9i2XF9T
         3xFbASEGBUh2l7faKemgqeeXA2HhVXIZRcdiMUs+U7ivqX+j8hdSGpltruNP6RaPOGOj
         ySuwp6TCGUrcteF2P1p3mtbg4nQgw7r/F24YvI9dxnvkRVDu3ZX0sj/FuR2mCgyan4aY
         Dtr5bRlDUMEMx8GKuVGz3EKEn7tKnUDLncvHlcfqM4I2LdeHO5eXiS3aPUG+KU9Pqkvp
         D7+w==
X-Forwarded-Encrypted: i=1; AJvYcCXz/j6H/vFZKZLa0Ng4tqLtW+yDqsAqcbYizzhcBA8p0XFGqLCmphO00VHVeYnMehDNuCJuwfBd+Fe+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9a2xvYGdyiHe1RktQIvVo91M8dFJuSoUMC2WeRUZJAxmMWrws
	DaI3HOsNr/sp8oFEUZpncu8J+MobEhuyKg3I9iETuN3FFpe7J+de6i+48HctImc7Wlrjvi6d++b
	CjGBSwnKaHVsPcHC9a+fx9W0mLd8UHww1yN/NSuBGgA==
X-Gm-Gg: ASbGncuZdq5dX5zRNAqqjXXlTCzeY2WxCjp3G6sATPmvw5DpcKpzRwsqHiJEymR4rBY
	hiEJfvB1+du1vZdLO3uQjzb7S0+bi86sJ62PXk/UKyt9oYUJdHE03QmjYtzxos9RnOee5+1QSSv
	mhwcBsHdLDn80vVH/AoCUgUoaPGUEW1RYfuuUZ+bZB9ose5kWJEUCuxzJWUAuodvGoHcm89QTKM
	+7OJ/X0bbbp
X-Google-Smtp-Source: AGHT+IEuIn7Pd5TPUO8L66bFb+S5ecBGsVI6khVLYk/8B6wK0KvSrOChhN5fjVMUxuyUcCqgOaWvaaAbYkhBGXf3lsc=
X-Received: by 2002:a2e:bc1b:0:b0:333:ad65:c4bd with SMTP id
 38308e7fff4ca-3340990b5cbmr39999151fa.23.1755530537596; Mon, 18 Aug 2025
 08:22:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250801-mtk-dtb-warnings-v1-0-6ba4e432427b@collabora.com>
 <20250801-mtk-dtb-warnings-v1-8-6ba4e432427b@collabora.com> <CAGXv+5EHk=f62+KiLo-aWMcd0-q+_59kno+uOW5rdYaq5q+5tQ@mail.gmail.com>
In-Reply-To: <CAGXv+5EHk=f62+KiLo-aWMcd0-q+_59kno+uOW5rdYaq5q+5tQ@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 18 Aug 2025 17:22:05 +0200
X-Gm-Features: Ac12FXwpejZ0ETsmnb_X42vgeTPsfQZWI7EY17l_sz1-eYnLo5UFkub2X4VrxBw
Message-ID: <CACRpkdbWctNH0XJfcHfVJM9Etp0WCXpdyhhyaQemH-Xc0LDr0A@mail.gmail.com>
Subject: Re: [PATCH 8/9] arm64: dts: mediatek: mt8183-kukui: Fix
 pull-down/up-adv values
To: Chen-Yu Tsai <wenst@chromium.org>
Cc: Julien Massot <julien.massot@collabora.com>, kernel@collabora.com, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Ikjoon Jang <ikjn@chromium.org>, 
	Enric Balletbo i Serra <eballetbo@kernel.org>, Weiyi Lu <weiyi.lu@mediatek.com>, 
	Eugen Hristev <eugen.hristev@linaro.org>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Julien Massot <jmassot@collabora.com>, 
	Sean Wang <sean.wang@kernel.org>, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-sound@vger.kernel.org, linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 6, 2025 at 8:38=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org> wr=
ote:
> On Fri, Aug 1, 2025 at 7:18=E2=80=AFPM Julien Massot wrote

> >                 pins-clk {
> >                         pinmux =3D <PINMUX_GPIO124__FUNC_MSDC0_CLK>;
> >                         drive-strength =3D <MTK_DRIVE_14mA>;
> > -                       mediatek,pull-down-adv =3D <10>;
> > +                       mediatek,pull-down-adv =3D <2>;
>
>         bias-pull-down =3D <MTK_PUPD_SET_R1R0_10>;
>
> and so on.
>
> ChenYu

I agree with ChenYu, the more standardized properties are the better it is.

All the custom properties makes sense for an engineer working with just
that one SoC (like the SoC vendor...) but for field engineers who have
to use different SoCs every day this is just a big mess for the mind.

The standard properties are clear, concise and tell you exactly what
they are about.

The argument should be in Ohms though, according to the standard
bindings, but maybe the value of MTK_PUPD_SET_R1R0_10 is
something like that?

Yours,
Linus Walleij

