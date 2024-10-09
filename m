Return-Path: <devicetree+bounces-109496-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1BE9968AA
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 13:23:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EF988280EC7
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 11:23:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E3C8198E77;
	Wed,  9 Oct 2024 11:22:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YQzP9/vA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5EE4198A38
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 11:22:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728472928; cv=none; b=bKopBIZjSsNyVUKCWDpMF7k5s5UeLye7MHAqaCJwaybZtM/WSrzda/jrJEj06VHwrEUjPy82FOQGhtwZTKMLXLsrYUzVuYVvknO2f+sCNeYcCYNLZUiJo3Ea/J9mM3hWxUhE6fJZ4DjnxQazP4YtpME7yGKvJMfXwWxB/SEGfO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728472928; c=relaxed/simple;
	bh=ToMkMJEJ8rJjCBH2FI0bPgN3A3AyN0+TDY69ZKIJIQM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=GeqzR25t46LvhlgI8OiXQwfUzC5fA+YoiGhaeQwZcej/mWlmlY6MT/5QJkCN17RU9ORO1YlCqvUV4uONYa1+O92c5GsQ0Ba9CJVZYuc+7VHqo1vmTBjkAPK7E9AJBJiUQAOMrI/ugcRf3+ZiS2jaXIUYLGnxFDeiFWVkEmzOAVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YQzP9/vA; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2fac49b17ebso53739761fa.0
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 04:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728472925; x=1729077725; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ToMkMJEJ8rJjCBH2FI0bPgN3A3AyN0+TDY69ZKIJIQM=;
        b=YQzP9/vAoFOUNF13hDBTEzwlMu19jCVGil3pZIvfd4fzNS71UAG6a7f4/2CAVXxEli
         g/DB25sirC18Hv9nI6rR6Biz5ZENEDAaH9+nKHXK72MNSH1MuYlsgqCzRnygaN+p+Rzu
         sKVKXMKmhyYTRKnY2NqjT8H9G2gQlaWK0Cozal9VQH6UZoHlWcaNez7iFrBpljtga4W7
         tAkIGatP8eASU1MxocFvMd1FbXXMHxZr2HAf+80Kbs4EAtSpWLA1BCt0m2pqo3VlwEzn
         QKwxJVLwCEWNxAZl2Qly41Qk4zjYIu2ovu7BFJFuwN5XcGTxaw1ShNx3sGLg6VRWHFSV
         NZjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728472925; x=1729077725;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ToMkMJEJ8rJjCBH2FI0bPgN3A3AyN0+TDY69ZKIJIQM=;
        b=b21n3h+WN+A1AfhoFfA2fA3iFIuGtbe+bnIwRlJui6gvWRmDi4rY7cK644IOPtA/j8
         6KJBkb3Fg1sXBcLSwYK8dYTecYyJK8c77dg7UNCmQlr93YLq3NI6Tm5qHZ2NK8KDjs/o
         lPlYHcvoRSWK/xMFp/V1FoTLbnNxEoK62DpckMq4fBmsPw2V/PJv0DYTT5+Hdf/D98cf
         TQunsM8N/uUWwu9Z12+/KpwlfW1VtVvImdLGWN8+sewG6DxOxu+sawTKK/yhAd/Fu/zr
         p61j1AqdP/u87M37L6NGgR2ZWRdsdRwLyNG9l6UWn2wj+fKeAHsTEUvo0Sdrk/aoa1X2
         u72Q==
X-Forwarded-Encrypted: i=1; AJvYcCUcZx1cMZ9Ho4mGGwKfQCX8qhV24UfAp14L76ecdZIMfL7wEOSwucW52JFwXyu9lrZfxO4O/wsL4gDP@vger.kernel.org
X-Gm-Message-State: AOJu0Ywqj+5ihFA+8PQUcyU/6c+LmIAJXjCf6Aoe2YAeTaIvXTIJG1WP
	hGy9TlocnLKq+zU1twqSevVEt+k+hooCuxeCRpdGMnY/QueSFna0N/MnBngwvxXP8Ul5LhInHfb
	kGf/D0zxN524ZpE0yVxoUJm1sePE/tU/y7ilYOQ==
X-Google-Smtp-Source: AGHT+IGQ3Ws6eewLXWXtNZ6Xp4qHWJ76HWt0M0Bzk6+R7EJ9OthHCsQrJfXtS7q4gWbrCHhdM6uWqQ2/WrrmEzIWnwA=
X-Received: by 2002:a2e:bc19:0:b0:2fa:cf73:a2fb with SMTP id
 38308e7fff4ca-2fb1873f1d8mr13097621fa.2.1728472924856; Wed, 09 Oct 2024
 04:22:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241009-mbly-i2c-v2-0-ac9230a8dac5@bootlin.com> <20241009-mbly-i2c-v2-3-ac9230a8dac5@bootlin.com>
In-Reply-To: <20241009-mbly-i2c-v2-3-ac9230a8dac5@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 9 Oct 2024 13:21:53 +0200
Message-ID: <CACRpkdYRPSYd0pX_QR6mAa8kjwFLhA=FVqxYQa=9PSpNb1jFHg@mail.gmail.com>
Subject: Re: [PATCH v2 3/6] i2c: nomadik: switch from of_device_is_compatible()
 to of_match_device()
To: =?UTF-8?B?VGjDqW8gTGVicnVu?= <theo.lebrun@bootlin.com>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-kernel@lists.infradead.org, linux-i2c@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Vladimir Kondratiev <vladimir.kondratiev@mobileye.com>, 
	=?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>, Tawfik Bayouk <tawfik.bayouk@mobileye.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 9, 2024 at 12:23=E2=80=AFPM Th=C3=A9o Lebrun <theo.lebrun@bootl=
in.com> wrote:

> Compatible-specific behavior is implemented using a if-condition on the
> return value from of_device_is_compatible(), from probe. It does not
> scale well when compatible number increases. Switch to using a match
> table and a call to of_match_device().
>
> We DO NOT attach a .of_match_table field to our amba driver, as we do
> not use the table to match our driver to devices.
>
> Sort probe variable declarations in reverse christmas tree to try and
> introduce some logic into the ordering.
>
> Signed-off-by: Th=C3=A9o Lebrun <theo.lebrun@bootlin.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

