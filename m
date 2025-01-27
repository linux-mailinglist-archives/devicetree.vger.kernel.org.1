Return-Path: <devicetree+bounces-141051-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B5EAA1D3FB
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 11:00:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 989CB1664EC
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 10:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3F6361FF1A1;
	Mon, 27 Jan 2025 09:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j/tCbRpb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D5F1FECCD
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 09:59:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737971974; cv=none; b=TuRztS7Aswj6ChEKwk84nh6ELSq0wGKoTNKNawAHA/FoBxf1mSl60Cf9vNEEgdqlMw45M7nV2HxYstr6SD188AB7v6Hy4LDlUxP9iAwhk8nYRxVbRtZMmn9Q6m4YLg+MklAhV8Teon29Wx2CZzcMdV41ImaJOwStw6Nng5IcyJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737971974; c=relaxed/simple;
	bh=PDGrwIQK0S12LPOVvghHC4bvwNPOk/8FesbYnKkyLFM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ABuktXfL1LESyjly4DP/3s3AicP5wGSA3CYPItq9WPwXTG+r0yxczZBdewV8I8NnS6Y9SbvLGNvJqkDZQ6M4hds4rlSlezV3/o19LKwNLi2faUtFaooPN+9KUczOGpMPkkb4S5GdHUSPwXu7SNylKQii+hbfDR7IRA+JsSq9PMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j/tCbRpb; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-543cc81ddebso2859033e87.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 01:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737971970; x=1738576770; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nqS8yiFvPoQH42365EOQ4XQDK7lHJ8Wg2V08GdiylrY=;
        b=j/tCbRpbOWjj3W6eCQ07jg1/Y6DahG3Vo2w3+zAzPI0LVs1i//cporX1LdU/hMqQ/c
         7aANN0pfMXNvpfbkgZkptiOp2s4BtttZAyD6Ir5b9de64DdbrSesPExv0IlFuYWVSyzc
         fuICJP2QNW4GGVxpv77tcBkpugjXpNCiMbpFKguw+jApZwnEUgiar1HB04i4xxcQDwjs
         H+KFJ+rLVVOXfGajG73HlteeUO549uHcgC8tE2qnMiZYI5KPYNfClD73kSu5zMrf+fsv
         HYShxoTgu6klPtYt9+TT0S4gA0ZmQg2iXW8A/6+qhXb4DBpaH/ZnZBPhjwkC19+Xjf4z
         e50w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737971970; x=1738576770;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nqS8yiFvPoQH42365EOQ4XQDK7lHJ8Wg2V08GdiylrY=;
        b=mW9a6n/RrvT122WS4UzPJ8f6BxjxNLDCflyeJmBXhPXqt2wMT64v2QF2EdRdYw/yqj
         Z6uyeZRaF+e2JEBvkiCohTB0S1QTdRef2mCiF4qe8bLr8Fuh+f4nsedLwNQWRNaWF38K
         Q8wgoqLyw2Xu8Cg73oYP/MxG69F30CJyW5X9VlWgpfTux1hCZauZrTtIUOYwm4J2RLGb
         3CVZbczXdaYo6cXgAHP2D7HnvhKHm9JkpgJ8u4IZC3nBWVXXKnozVB+Mcj9Jnc6KrJc2
         9o0RG+JojpEIxIvACZECUpeByIxN2S1r8mt75wBLaDqsk1WOpp2tiQ78t02Fe3MLvFqr
         FFMw==
X-Forwarded-Encrypted: i=1; AJvYcCUKCrWfsXQvWPLJtRiDGahZFal0qcc0Op6u6bEqXn2H7IfrdtYV66Fv0xyVYe14XhoVcQ2XKtlIKYgB@vger.kernel.org
X-Gm-Message-State: AOJu0YwlNh2QO6p3F1xDwN7LrGg2+sARL8aKRpjp04qCFIKrUMg78Rig
	W+ot+YyfNc52UoGebktS2Mr+/hgH0wHbFdI7j1eI+yaXShSczlcKgqDZHMZDfwuxHBuK1gdyC03
	CjGweFWZ6wZU5kdL33wLBghn+bbAneZ4YfxDyqw==
X-Gm-Gg: ASbGncvnpT0ej/g5mm2nqHlpurrt8THJDIkZdztxBjQsF9f7s7N15gNjTZ5e7rwBWNv
	QWbzTae2xG8+29Xg7zPccY0xvUIyY0uzTiaHLCur45qIBUNKysTIRLka1TvCY
X-Google-Smtp-Source: AGHT+IHqpm1ys9+lwbd/QxujcbzJL4i0yKhhKzjeujkw2d5Z1I5Id1mRs2qKI/MXH9CQY+F8hE4OzkVsIK/ZHQmuZJE=
X-Received: by 2002:a05:6512:1312:b0:542:234b:9a6a with SMTP id
 2adb3069b0e04-5439c281f9amr15646461e87.33.1737971970154; Mon, 27 Jan 2025
 01:59:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250122-amlogic-pinctrl-v4-0-4677b2e18ff1@amlogic.com> <20250122-amlogic-pinctrl-v4-3-4677b2e18ff1@amlogic.com>
In-Reply-To: <20250122-amlogic-pinctrl-v4-3-4677b2e18ff1@amlogic.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 27 Jan 2025 10:59:19 +0100
X-Gm-Features: AWEUYZlw3ilYGs0ATdzTHL2yQh4eIVQWc6_6OrIXQyU_MtlIHFv72pFxPtpk8xc
Message-ID: <CACRpkdZRbpd0Kw9V=aYX5P0vJLtErNR+aBzPagSwf=AZh6QERA@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] pinctrl: Add driver support for Amlogic SoCs
To: xianwei.zhao@amlogic.com
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Xianwei,

thanks for your patch!

On Wed, Jan 22, 2025 at 4:26=E2=80=AFAM Xianwei Zhao via B4 Relay
<devnull+xianwei.zhao.amlogic.com@kernel.org> wrote:

> From: Xianwei Zhao <xianwei.zhao@amlogic.com>
>
> Add a new pinctrl driver for Amlogic SoCs. All future Amlogic
> SoCs pinctrl drives use this, such A4, A5, S6, S7 etc. To support
> new Amlogic SoCs, only need to add the corresponding dts file.
>
> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
> ---
>  drivers/pinctrl/Kconfig           |   18 +
>  drivers/pinctrl/Makefile          |    1 +
>  drivers/pinctrl/pinctrl-amlogic.c | 1053 +++++++++++++++++++++++++++++++=
++++++

Please move this file into drivers/pinctrl/meson as I requested
earlier. We can rename "meson" to "amlogic" later if that placement
is confusing.

> +config PINCTRL_AMLOGIC

There is already PINCTRL_AMLOGIC_C3 and PINCTRL_AMLOGIC_T7
as will be very apparent when you move this driver.

What is a *proper* name for this family of SoCs?

> +MODULE_LICENSE("Dual BSD/GPL");

On the top of the file you have:
> +// SPDX-License-Identifier: GPL-2.0-only

So this does not add up. Fix one or the other.

Yours,
Linus Walleij

