Return-Path: <devicetree+bounces-119518-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 341B49BEF61
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 14:45:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 665971C21CC2
	for <lists+devicetree@lfdr.de>; Wed,  6 Nov 2024 13:45:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70EC1FBF6E;
	Wed,  6 Nov 2024 13:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z+cJjoeQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDBAF1FBF58
	for <devicetree@vger.kernel.org>; Wed,  6 Nov 2024 13:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730900736; cv=none; b=jhFsVTvx5xEGGqGVlfOKd1QuP1Cufnb+597HXfTFJxaS0k7+TghqDswT1YZW/X/OaijppZz7X9l7aczkpgszF0gVTO2XE0q6jBNEmhNa6AducpAaQWyYmAFc72DN0jYRXrs+D5aiv1GUlz+MxDhpFVNIF321rGoJyPHtfg/hvR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730900736; c=relaxed/simple;
	bh=oe4ysEbOGugDdM+rEZI4gTDxZGKfGa+ZNN+0xqDf504=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nfj/chu4oow14nqlpn2vqaVT65CzyEn2RH7jnNi9HWMjbn7CtZMeeGpfsU9LmHKvqbCAG6d0fdfuv0XvLZH/NXtfUty/BCEHrtKkzAtOnBu4NsCLBtlZLffCTpO2hIOp/KYvjb0LS3/6RrGm1t3/9T8MvLvEjycCdaOiEWCWrAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z+cJjoeQ; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2fb5014e2daso61863431fa.0
        for <devicetree@vger.kernel.org>; Wed, 06 Nov 2024 05:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730900733; x=1731505533; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ns1m01mlBn0TEXlYPEz7IqH4BJxD81zb8MxCwYwjObU=;
        b=Z+cJjoeQqf2SQFRLbSVXXzb4oAx36HxhUJ0ZApUEO40/TpA3i3YbMpVB67u3ZuoI3I
         QLxECA1i1pkCLsqZ+EeBrgbI/coK13307FMpRWZAaV8mYGcjeauTjd8G6CNlL5QIAdmh
         g+D8gNKVBxsGoPjWWmIne0LLchn5oJ4X2XswTwDlXvrtKgeQI/3jlA+xJ0htoq7U0GN4
         962txxxBA93/Wd7qz2npkI7TbNcwJpgpqw/sdq4M45cSzv6RSMUeIyLscQMHqpW6W/h7
         LzHaVtSk76nvzBtMe5EF0WJDGbmsMkgeajHkyZeoOa4JnmPyv+IRKRa5qj3Jh5gLfZ/r
         qAKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730900733; x=1731505533;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ns1m01mlBn0TEXlYPEz7IqH4BJxD81zb8MxCwYwjObU=;
        b=glgkJapXuHSB3lzjv/B0CoBAxPIPVp7evz4nqbWPRcLywctyhpoozW9wGk/Wc+vrnL
         CZ44Pw4m/FiHZdcd2rSb7ut/dI7nRhKcC7RApNsk1LF5hYhJoqJwlQjm2EvlTKSnFWCH
         wqDD0OMM5PPjQEg6KaKzjqKwjnspt9KnO4xLpsyAH2uIgPWAtxmFYiLX7nZgMHGyc0FW
         a3/XfntUtHILq3TN7SOwkqjFSbpkwnnG1zEehFHohA5HMENuMDE2+JUqmd5bWp2PmJTr
         KutpBmARG1PGF6dAq8Qou7FilI/SEi7lRTNt4tM5rGQGhmg/i7/4FOxSFcM0LS6eiovm
         k5ZA==
X-Forwarded-Encrypted: i=1; AJvYcCUwBdXxdFsv20Tp8SFwY/UEpfC9E1j90tvslTjAUbpQtEHoNnczuwoMqR6oCAssiFZrNeriaTAyKyWs@vger.kernel.org
X-Gm-Message-State: AOJu0YyiGDhHbnjeFtHPJWKDr1FTLzj3C+Su9+ieHph0xxfc7C5ORXuj
	fphujvDEOBRn+YyJAsxSWTT1/0KfWWGwU9TRR9ERPR8CAiN4iK6HJmq6ehhxGA0wrM2uohds3iS
	Pyr3YLxeNKC+07Sb0B0mKz9o/PKub3QLBubLVBQ==
X-Google-Smtp-Source: AGHT+IHvynIL7AAsGHjP0xg8VCy9NFb8IBkKD896d3DxIuwUkQ972HHVN3qYlfPKYVhD5LyxxH0ykk/nP4raab/ulSQ=
X-Received: by 2002:a05:651c:19ab:b0:2ef:243b:6dce with SMTP id
 38308e7fff4ca-2fedb770dfdmr103418931fa.10.1730900733100; Wed, 06 Nov 2024
 05:45:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241023-en7581-pinctrl-v9-0-afb0cbcab0ec@kernel.org>
 <20241023-en7581-pinctrl-v9-4-afb0cbcab0ec@kernel.org> <173088099542.3237297.18018729158887853624.b4-ty@kernel.org>
 <ZyssJpR7xwbMzUsm@lore-desk> <20241106110046.GR1807686@google.com>
In-Reply-To: <20241106110046.GR1807686@google.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 6 Nov 2024 14:45:21 +0100
Message-ID: <CACRpkdbf4Pb+n-F-K-JaUvytwCGUHHh8d2rYP4A9KgVTzqSnGw@mail.gmail.com>
Subject: Re: (subset) [PATCH v9 4/6] dt-bindings: mfd: Add support for Airoha
 EN7581 GPIO System Controller
To: Lee Jones <lee@kernel.org>
Cc: Lorenzo Bianconi <lorenzo@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sean Wang <sean.wang@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	linux-mediatek@lists.infradead.org, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	upstream@airoha.com, benjamin.larsson@genexis.eu, ansuelsmth@gmail.com, 
	linux-pwm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 6, 2024 at 12:00=E2=80=AFPM Lee Jones <lee@kernel.org> wrote:
> On Wed, 06 Nov 2024, Lorenzo Bianconi wrote:
>
> > On Nov 06, Lee Jones wrote:
> > > On Wed, 23 Oct 2024 01:20:04 +0200, Lorenzo Bianconi wrote:
> > > > Add support for Airoha EN7581 GPIO System Controller which provide =
a
> > > > register map for controlling the GPIO, pinctrl and PWM of the SoC v=
ia
> > > > dedicated pinctrl and pwm child nodes.
> > > >
> > > >
> > >
> > > Applied, thanks!
> > >
> > > [4/6] dt-bindings: mfd: Add support for Airoha EN7581 GPIO System Con=
troller
> > >       commit: f49f37f3cfe1482d4dc77d26f3e8c38eab630d52
> > >
> > > --
> > > Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
> > >
> >
> > Hi Lee,
> >
> > according to my understanding this patch has been already applied by Li=
nus
> > here:
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.gi=
t/commit/?h=3Ddevel&id=3D50dedb1eb1e6755ccab55f6140916c2d192be765
>
> An interesting choice.  Linus?

Yes I suggested that I merge patches 1-5 on oct 29 and applied the
day after:
https://lore.kernel.org/linux-gpio/CACRpkdYshPusdA7bDW2y8H_wp-Fm3N-YCsY1_Qn=
=3DdZqRiFy12w@mail.gmail.com/

It's because the bindings are dependent on each other, this one patch has:

+  pinctrl:
+    type: object
+    $ref: /schemas/pinctrl/airoha,en7581-pinctrl.yaml
+    description:
+      Child node definition for EN7581 Pin controller
+
+  pwm:
+    type: object
+    $ref: /schemas/pwm/airoha,en7581-pwm.yaml
+    description:
+      Child node definition for EN7581 PWM controller

Those refs will explode unless the two others are merged at the same
time.

Usually we merge the whole shebang through MFD but this one felt
different because there is no actual MFD driver, just using simple-mfd.

In hindsight I should probs not have been so trigger happy and give
some more time for this to settle... Merge window stress I guess. :/

It's fine to apply textually identical patches to two trees though as
git will sort
that out so technically it's no big deal, you can keep it applied if you
want.

Yours,
Linus Walleij

