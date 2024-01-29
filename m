Return-Path: <devicetree+bounces-36308-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABF384078B
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 14:55:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 465B928AF40
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 13:55:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C9F9E657BC;
	Mon, 29 Jan 2024 13:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D+cDND//"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C36B657A7
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 13:55:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706536537; cv=none; b=CRYs6S7vRe3kh/RpeVNgtnO4csOcq6AXumuE2j/LxmBgbWZNdDGlUHMD4G/yaNgWcZHM99jzcamCKdY3JPkPkHPXC/cHQAtLmJfe0t7E/5eMRbf/qn/wILX8CLI8TDyH3qgTYnemNa+u2Dk2pAYaB10i/f7becRg/mZk9WEgWAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706536537; c=relaxed/simple;
	bh=g5hnEmLuBTV9IeAPhqC/fOJTrs0WTAgexL990thdjRk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uaNytVR10DZrEeigeV5EU05bUQgS+qRLaZlOYTKWVtkoBNm59v3n6UKsXIhqzV8cwe9ceI5a304jkB2q5xLBw6zPDYd4OGJDkZIhaoCwV0DnzpG8HPVSgX45GK91kMxHybcKgFh4NUzel6LnQHvhf9t5fjP03WexrrMm6aO1ulc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D+cDND//; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5ffa694d8e5so33506727b3.0
        for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 05:55:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706536535; x=1707141335; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g5hnEmLuBTV9IeAPhqC/fOJTrs0WTAgexL990thdjRk=;
        b=D+cDND//IEAtDfGdtJoBR/k2/mIOIBWz5EBUecBiYYtu5ieWXQKy9YTTBhCnsip0yI
         ImC37o6dFcMk4VkUwKGhPPi608P8JfBGc8pzchlVH4gklpidIFQhqXyufQONutRPNH7Q
         MvpRZocAzLjvnf35m3/UOr3B3Bnbvq0oHb2e/sWOAbgAJaA80xlFDFHU7QyPBrCVrP10
         Q85xr9i0pwlxQdVCVzhHj29N49Ojac/1LmwGqVPtCE/F6kqbHabtIVlCQZW3+iy1iJlp
         u9HF/dlHzJBFAoa0jLX5TdJsCxgxOmx/2K0ZGijAf2lfgUt6NGq7KKgla2IRP9RHY9Wu
         VB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706536535; x=1707141335;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g5hnEmLuBTV9IeAPhqC/fOJTrs0WTAgexL990thdjRk=;
        b=qm+9XuOQLn4GVtlpA75lzeo9wXErnOu4wnkhEBFff8doYirUcsgddWOG1xkmW3AT1P
         pmCRXBaeZNBeLyQxRvsEXMgzisSimaCXfiq2GXMPJ6k1cvBunlraT1o679XuWwwPinHp
         MVpZ+YE+6nyCi0ldhiMMJSsudJpdHpNhwkoakURV47prRI/CWVFu61gw8Uuu74YseNYZ
         2/m3b2+jCMmUkWjtdKs1Mu/fA08fK3swAonHBbZz6SpYu7CoEKWICDUOPNymsvUxTEhM
         Ox27v1HDJcppzzQ5HLFmIoFs6jRee/ZxI8JiWnUsU3bjFmzab/sY+MQWQWIbzIh1HX4g
         yXkQ==
X-Gm-Message-State: AOJu0YyxfNMcVIUp1THt7+PeBaBpv7CIX+Cxb4Apur24GmHNTt/vHpmb
	TKJvsfj1DXq4U5qLbas16hUDhN12sEKNm9ixrC8rw6OZasSkU0VGK/1o15yYCK+ii6PHHzACBK2
	pS1i7DiDlGHLE9xjc/k+//kDBExUrx8L9lAc8eg==
X-Google-Smtp-Source: AGHT+IEv6CE0f/Y1NjvVVdx6TknhydnToue5+SN9kI2iG5bQIL7oCxiClJdrtrn4bl1a2DbnY4glwWflCywtSdGlGyQ=
X-Received: by 2002:a81:b14a:0:b0:603:cb87:3272 with SMTP id
 p71-20020a81b14a000000b00603cb873272mr991325ywh.23.1706536535088; Mon, 29 Jan
 2024 05:55:35 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240128163630.104725-1-wahrenst@gmx.net> <20240128163630.104725-3-wahrenst@gmx.net>
 <8f525770-7e39-4bf1-9ad3-803826ffbb1e@kernel.org>
In-Reply-To: <8f525770-7e39-4bf1-9ad3-803826ffbb1e@kernel.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 29 Jan 2024 14:55:23 +0100
Message-ID: <CACRpkdZ=wikdPVtC0KnOX7ZAg2obwALqnKARxS3uyTmhKeCuxw@mail.gmail.com>
Subject: Re: [PATCH V3 2/2] pwm: Add GPIO PWM driver
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Stefan Wahren <wahrenst@gmx.net>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	andy.shevchenko@gmail.com, Angelo Compagnucci <angelo.compagnucci@gmail.com>, 
	Philip Howard <phil@gadgetoid.com>, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-gpio@vger.kernel.org, Vincent Whitchurch <vincent.whitchurch@axis.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 29, 2024 at 10:40=E2=80=AFAM Krzysztof Kozlowski <krzk@kernel.o=
rg> wrote:
> On 28/01/2024 17:36, Stefan Wahren wrote:

> > +MODULE_ALIAS("platform:pwm-gpio");
>
> You should not need MODULE_ALIAS() in normal cases. If you need it,
> usually it means your device ID table is wrong (e.g. misses either
> entries or MODULE_DEVICE_TABLE()). MODULE_ALIAS() is not a substitute
> for incomplete ID table.

I was under the impression that MODULE_ALIAS
was something people put in to make platforms using
udev behave better by default, e.g. autoprobing these
devices better (on coldplug for "platform:*").

For example:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?=
id=3D4f46d6e7e5ffbce0ee1d1a80767fdf45e56cc863

But I might have got it all wrong :/

Yours,
Linus Walleij

