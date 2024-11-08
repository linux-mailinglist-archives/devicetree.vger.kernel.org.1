Return-Path: <devicetree+bounces-120111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0637C9C18CD
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:09:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37FE71C216ED
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 09:09:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 593A21E0DCF;
	Fri,  8 Nov 2024 09:09:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ke1fw9pI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 970D81D356C
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 09:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731056964; cv=none; b=rSjvEvzuRG2m4NLDLQHNFUUa+AeBuIrW6KyyMT03k25O0HtogkHr9sMniEgw8Vp1/3hy/4SyGjTcU0rfQrsctvj8u4QRQrvkc+QUojjs14e8o5fiwOfqs6ek7hM5GYwcXk4WtUnMybI8WfJsbWSxGvRlKOAmevNieLo+m1O9FBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731056964; c=relaxed/simple;
	bh=FA4vkNb/mitqyAciN2f5UTCEggzC8PzDjAk9Yl3f00E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=JhCb2zEW0nkZ8twWDDLg8WlUd4J0/0ctzN25n4TV1okqnhDn3rrTz+piCcKvI8lUzsAJRtfTa1OZkrWRa0fc587rBpTV40n8aAPRFXb/Hw4pgi05KsaPleuKzYv2Vs8MmglfL/TCRT9Zi1thp6mOE94cIMPERz4KHT9mFIa/66Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ke1fw9pI; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-539f7606199so1846398e87.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 01:09:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731056961; x=1731661761; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FA4vkNb/mitqyAciN2f5UTCEggzC8PzDjAk9Yl3f00E=;
        b=Ke1fw9pIz5UfqKUPmgbYSC5Qa8sfPp1I7nVcrq4XW2W12/DHpbfnDpygH7X0mjaSvp
         xFlIGMw2bB/qTC/ky79qW7v4QA+2wqDtbSxShDyFmk1iCkXuxQb/EpNMW2SfGglhQWYn
         La088s1PWHi62Trnac4JXAvu+ryJ6QGA1mjcrDexEicB/qlIPS+jXN/FNpOLXebxhvFN
         UZJYaWNP1EfStZclagbmRV41+O3jDcNt/BHnL0JhPJ0MHjqu5sPGFL2TCsgRjtFAL99p
         sBZVIiKcoulsMDisxHUG8Lo8s9HimEvJN2LdoOCEW7iy/4XO7TXPEOLrtStvfv9+sQhz
         7mpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731056961; x=1731661761;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FA4vkNb/mitqyAciN2f5UTCEggzC8PzDjAk9Yl3f00E=;
        b=UCKGXmp39U2+pU/+/2Bhbedu2WrFB/kh/E8UwmDVXmRkwNEj9bPEOYqP446b0+XLQ+
         s1IoRhW+x5nksaNV6kac7CwtmAk/oRNV3N4FHleS4htDLkuA4FBH3VnJG2OoLMrCqwG2
         /tX7efKe5AB3WxCHd3YFDklPi3SE/X6ahk1uZxN1o/SWKpFodAPnR7hMM/J9V0awh8Ta
         jptfrEZtAST5yfem59D1FjGDLkH1fGqSVipD/qyVZ03Q5k0c2FkrO7EmsggB7DDBkY+w
         /BJpVOZMBeWWn8cnKmpXWt3B+DZGNzZtcuXRh/7BQ9QEP4Br6xp1tWDXcNGrqD3qIj0i
         Ocsg==
X-Forwarded-Encrypted: i=1; AJvYcCWsVVToYcfca+86lgmUfSefjhh69LGEuiLvmLjkQxwceYMS1BdmHoJgsmJ4MI7HGFOPEj54GOrbVPmH@vger.kernel.org
X-Gm-Message-State: AOJu0YzNBTf4isiIv0dL3L5zQ/I280x5EIHEpgA0aQVeei/kxWQBe3sN
	GvBueZsNJQa3z+hrM51pXDf12XqGUK73BfQi8FcF068Iozee0Ko5tY6HoqqCiW9cRnD1BX+35EV
	nKkC63Oev2MCz2X+RnIC3RACvW5fwB8gPX0IKSQ==
X-Google-Smtp-Source: AGHT+IHhr+fMSbLe+Spkx6S2HAMA1BNkht2ZD+kKrNtINXG0wH4E9HYyfyu1IwPxOm2Qn/Xqfjd2BS52cNcB5ulPJ58=
X-Received: by 2002:a05:651c:211f:b0:2f6:62a1:25fe with SMTP id
 38308e7fff4ca-2ff2028ea31mr8862541fa.23.1731056960773; Fri, 08 Nov 2024
 01:09:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241105064206.43626-1-hs@denx.de> <20241105064206.43626-3-hs@denx.de>
In-Reply-To: <20241105064206.43626-3-hs@denx.de>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 8 Nov 2024 10:09:09 +0100
Message-ID: <CACRpkdZWDZcekXBJcW7XkfrmPiQqAiECVF_S9DMcFMMgRg8qsQ@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] dt-bindings: pinctrl: sx150xq: allow gpio line naming
To: Heiko Schocher <hs@denx.de>
Cc: linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Nov 5, 2024 at 7:42=E2=80=AFAM Heiko Schocher <hs@denx.de> wrote:

> Adding gpio-line-names property works fine for this
> device node, but dtb check drops warning:
>
> 'gpio-line-names' does not match any of the regexes: '-cfg$', 'pinctrl-[0=
-9]+'
> from schema $id: http://devicetree.org/schemas/pinctrl/semtech,sx1501q.ya=
ml#
>
> Allow to add property gpio-line-names for this devices.
>
> Signed-off-by: Heiko Schocher <hs@denx.de>

This patch 2/3 applied for v6.13.

Yours,
Linus Walleij

