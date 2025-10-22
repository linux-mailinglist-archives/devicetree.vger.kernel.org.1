Return-Path: <devicetree+bounces-229680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 86E0EBFAB33
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:53:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C37B8581053
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 07:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 661622FD690;
	Wed, 22 Oct 2025 07:52:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AQXmnxMe"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF7F2FE044
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:52:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761119560; cv=none; b=Vz/8IyyW1lmvodRpNXhlPS6HKApTvZ+S1qHWgZRmv2pqzfS72oOlAtXQlhmlyrRQpTWjtTTtPRsulmnMnZd9GulQt/Rm4ioSVCdfBi3rbqKwWJY/MnbS7n93jW/ZM0EnGG75tgzRwOhBqoq3Fj7cIlAwiC0QRE/tvcUnhUeG1PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761119560; c=relaxed/simple;
	bh=A854G8Q+az7SMF928a56CKf41JBBm3BPM7QWQ64soKM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=OcAD/5CTtc/S8ZUaSlJ2QH99NZhp/c1iTkf6/gg1COpog7eZos+wCHSNxOtnSx1NuiShAi1baor5gMXTAAZJbN3nD+zk+GqAzupZ4cWbx6+jaipIrNoOHPbQImxVHgFDIjWr9TD7c9UZtgfVOSUBW77CuWCRVibavGFy10A3OAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AQXmnxMe; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-71d6014810fso64390817b3.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 00:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761119557; x=1761724357; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5SQfEz/e2hOwh+iWueKx4wWRyZ4LmWDiG7JhS1t4UW0=;
        b=AQXmnxMeTJdLleYUKlduzqZj1iV/9xvzAGFOxUxef4/uLDtTryG5rfL4fDS6RON5ct
         u+8kpASWJFcKetduybrlyUJSlomby2CnKeoS/p2jXLzCvyAV5zDVPT6YmajIXXIlG+Ta
         HEmnR25zHgxvwbWWWChPiygIjSTlnXxAELXkEEfdSdvUy0eoFef0vqsbkMD/mDrr3GdY
         GRDhI8ER++LtcRNUjoAC2aI2Oodf4VMc7fMJZwC58p12JaBPKoQmD1kKO1QB1B5G8LXl
         aCEFwVRg86ERBKDeIhKmq3VjFx+Xkmykp78F+oSQgnWs0DEXSaNb3cJY4nNI0Ih58I6n
         P1Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761119558; x=1761724358;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5SQfEz/e2hOwh+iWueKx4wWRyZ4LmWDiG7JhS1t4UW0=;
        b=L6Bvs7B6lyQ4d3Ap3wjfib/mKOCGdCBLVnOOhjmoqSqnoUJGHOf98RuQhWwhLkltyo
         TBaF8BG1Gz6HwpZiVylEu5qHhUKjkUTt/cy4KyaeTV1kAPcJIzA23Dyxq30tiOkW1rZ9
         YR4C5RM3cIFzEk3PNJz/7snWV66WAn29DguE07nAivQNdW8kSg5Fvsf3u2kZlXe9fFh9
         HxA3t/6PI/aK8X/jIEsK359p+GTsuDUcnmb1HY4KbgkLRcMQ+DiV8/Tcvg9+rbNMTY+Q
         XZm5snTI+CoIabQsaM5Cfi1bs1s8fdEWdo0SKPHimZLTuuaeIUBSZ0p1TujLISV9PsW+
         /uOw==
X-Forwarded-Encrypted: i=1; AJvYcCXI/arzi7oUcJP18km9HuawuWlxILiZVKzhKVGGmvscTauS+GWd4LdMrPxOSIyD8EQPmlnsVhgIDVTx@vger.kernel.org
X-Gm-Message-State: AOJu0YzQOwFaat0IJUmB3KL85oPhE6vp0wC88BEjYjTV+HVoJE1InBbL
	0jjEbRML1wuBibeVCkqoulU+IfrqrsB8BItuSSE2u0A2pwofb5NXAwiRKTEhVOUOQjVnHkGN6fB
	Hh0Cz4B8Y7qyFZ0PJ5FpdBUnHFgwzZkKXjUMXG5RiFA6UvLxbZ0D+
X-Gm-Gg: ASbGncty+hnExfZkyHDk8ogL0/blM0UQmDTq4AkSQ52dKqlCcq0mWHTvP77IcPcf/hZ
	SIOm2nXnlK0pTfr0jXQvzE5WDvT2L8Vp/iScdcHsOL25jYJmv9BkmO0ihR+xPQ0CNPnVWXMDLrW
	01E7m1BxkBoxItfWATTaQNutkoEZOADm5VG8mJj3IP4+G8ciDgn+GzPbaXlapHhEJQLuztK0Iu1
	kSYqG6bmFyi+XhejDLXyRC99MyuZwpZ80gFm6eVUTFelLpIDdvIUxGlQ/jJdi1LNrfL2Yk=
X-Google-Smtp-Source: AGHT+IGOnPQWJDBN6sjrOxFjPZZTij/Niq/8Rg21Q+EknYQnuJrFX6ATSFspu4lRM1YW7AwwhMSNREKhsGRl4TKmTgw=
X-Received: by 2002:a05:690e:4008:b0:63e:1ee2:eb0a with SMTP id
 956f58d0204a3-63e1ee2ecb5mr12241395d50.26.1761119557691; Wed, 22 Oct 2025
 00:52:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251021142407.307753-1-sander@svanheule.net> <20251021142407.307753-7-sander@svanheule.net>
 <CACRpkdYde+=85f6Zfz40bMwOxSE-bszHzvBhQwC+G-E2CZr3Lg@mail.gmail.com>
In-Reply-To: <CACRpkdYde+=85f6Zfz40bMwOxSE-bszHzvBhQwC+G-E2CZr3Lg@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 22 Oct 2025 09:52:25 +0200
X-Gm-Features: AS18NWChHJVKsQEprXAlHgw_Y74ygS-pAN-Cj80aJrWmlHy4f-JX2hUVSzNGAmI
Message-ID: <CACRpkdazC7KC7HUZTkN-QqjuWXaJKLQrXfC30=GKUOymfpVJTQ@mail.gmail.com>
Subject: Re: [PATCH v6 6/8] pinctrl: Add RTL8231 pin control and GPIO support
To: Sander Vanheule <sander@svanheule.net>
Cc: Michael Walle <mwalle@kernel.org>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, linux-leds@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Replying to self:

On Wed, Oct 22, 2025 at 9:42=E2=80=AFAM Linus Walleij <linus.walleij@linaro=
.org> wrote:

> >  drivers/pinctrl/pinctrl-rtl8231.c | 538 ++++++++++++++++++++++++++++++
>
> Should we put the driver in
> drivers/pinctrl/realtek/*?

This is because these are SoC drivers and this is an MFD
expander, right. Keep it where it is!

Sorry for the noise.

This driver is finished.

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

