Return-Path: <devicetree+bounces-117194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D7A169B5576
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 23:03:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B463283D1A
	for <lists+devicetree@lfdr.de>; Tue, 29 Oct 2024 22:03:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A57F520A5CE;
	Tue, 29 Oct 2024 22:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MoW+GWGq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78005209F4B
	for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 22:03:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730239410; cv=none; b=tXfl8GNZ3Jlu5eb4poaxv+GCtXIxCvwKs+QskXGWxEVG6uD/XvlOE/7lzBHo8tLKwgdcz5ZCFp3KUBqLZUeMcHKbam473jSBZEW8ydAHLYYS2pIUY56XBFLCQ7qJoxga9pBy1m8lRGyf86x/iMCYLLOZ0LbdtHdB1tut2JhcP94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730239410; c=relaxed/simple;
	bh=2pAo8yXwp7EZT+YMqcaITNqvg6hNd8KJ9Uj2bnSqyIs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Zo6CtYeUO9JinOxro80Hvu0pGPflKJvOfMwpSE+sqEWDvwsxBG0u9FTS86wTdQ12OLDpHBkwairw3Y8iLMNYd9ey+fH/8bMKCKxpfxpk7brRDtVC762s8vW+/7L4QOPffaAAtCTPPrPpZJpeY7pZEVyb169l8AEPmO+aC8eVjgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MoW+GWGq; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2fb4fa17044so60075251fa.3
        for <devicetree@vger.kernel.org>; Tue, 29 Oct 2024 15:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730239407; x=1730844207; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2pAo8yXwp7EZT+YMqcaITNqvg6hNd8KJ9Uj2bnSqyIs=;
        b=MoW+GWGqFYb18C38tw767NGzbRWH7mPLNINeizqDuRC1iYBwICoZ4QfVIurrWPclsd
         JNCRZpHd+mw/fjfA1+vcs4BefNK7vBgCPG3ecRoB4W5KMP744EcEq6/rN2ck5YGDLSk8
         KZlUCr0X+o5F+vg1zqHE3n7012CcBvpEJ59RuGb1R4xK8maLJGQcDc2OUNnaBCrQdxay
         YqFbvri7MJ1OEaYi45IgM53jTIlYOZz8uSA065IwKqGERX5fTsc1oaOEH/YZ4qMGXDHW
         LtmdL2WyrqrTks5fkwLOO2Fio9zAFoQETN2YcXgIMrrPrG6ixiR7ZApvOiF64y+WUhnZ
         LoIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730239407; x=1730844207;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2pAo8yXwp7EZT+YMqcaITNqvg6hNd8KJ9Uj2bnSqyIs=;
        b=ewUU8Ac4A3JDLyHpw0/Ybz51IU6eyrG5ci3PDJOjGBvAfe9xn3CV5rLqwou6kmbKiD
         nOQkP1jTVVHgj092MxB7fZQYsK+cIEFXgh7oGChXX2pN50xpRQ4liwVxyKSJdlnBJsks
         hv1E9qA7hxY1AOci2J4cRMkPoU7D+78N/EjQoQJClaJ6Yak5Kin88dViuU2QpRpjA5rO
         WoKG48mWZ9k4KETbwTdfNDGzJ/CF4F4ljEQqiKYGnHuLOQH77c8n0H6Mh92eeecMFd8a
         J0uFSzfW+W6rdz8eu50b6VF2lQ03vB7zLQJ00ycGmaLuKf1CLUr0v0AQyX94yIUADfkD
         I7Nw==
X-Forwarded-Encrypted: i=1; AJvYcCUIxawk2TuT0/S3qj7xVKEqIaTEGHQ+w9/yizKB8gN/mx6dnQCyu9GRIFNLYRdyLPdNZpkx6ulk5nhC@vger.kernel.org
X-Gm-Message-State: AOJu0YyRw6rNjEj8HZ7iaxRKXtpy9rr9fIW04V+6hRLejezgoDVjfxlY
	s/VZwxBr2fbta8HBnHVTlINmDF3umNeuNpXz2DjTgJTRCg5kYwW5/4jaH82ivmJu+gS5JDoVL4G
	KFP0MY/Hpl2lyj9ICk3NPpGWQP5Dwoq3+d6HuIw==
X-Google-Smtp-Source: AGHT+IGcZQz6tTz7pENhFcPJcjvryEeZRAirjIXuUi7C7dPCymNJLcuzkHhPfZv22aI+RYtsi5iRg8Bn14ptPLiFVos=
X-Received: by 2002:a2e:be9f:0:b0:2fb:3bef:6233 with SMTP id
 38308e7fff4ca-2fcbe08cf3bmr61215001fa.33.1730239406513; Tue, 29 Oct 2024
 15:03:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241023-en7581-pinctrl-v9-0-afb0cbcab0ec@kernel.org>
In-Reply-To: <20241023-en7581-pinctrl-v9-0-afb0cbcab0ec@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 29 Oct 2024 23:03:14 +0100
Message-ID: <CACRpkdaEQYBim8TuDCCw15QDUWhHC-VqhGq1Le7eOd76k56zwQ@mail.gmail.com>
Subject: Re: [PATCH v9 0/6] Add mfd, pinctrl and pwm support to EN7581 SoC
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Sean Wang <sean.wang@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Lee Jones <lee@kernel.org>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	upstream@airoha.com, benjamin.larsson@genexis.eu, ansuelsmth@gmail.com, 
	linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 23, 2024 at 1:21=E2=80=AFAM Lorenzo Bianconi <lorenzo@kernel.or=
g> wrote:

> Introduce airoha-mfd driver in order to load pinctrl and pwm drivers for
> EN7581 SoC. airoha-mfd is needed since both pinctrl and pwm drivers
> needs to access the same memory block (gpio memory region) to configure
> {gio,irq}_chip and pwm functionalities respectively, so model them as
> childs of a parent mfd driver.

OK someone has to merge this and I suggest that I merge patches 1-5
(all bindings and the pinctrl driver) since the different bindings have
dependencies between them.

Then Uwe can merge patch 6/6 (the pwm driver).

Anyone against?

Yours,
Linus Walleij

