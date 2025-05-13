Return-Path: <devicetree+bounces-176657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DE7AB4FA1
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 11:24:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7A12F8C4C55
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 09:22:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44825218599;
	Tue, 13 May 2025 09:21:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zxy+1epp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21150214232
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 09:21:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747128068; cv=none; b=OEcQuHYbry5IvpgGzSvzUMzCZJjptYSz6dQv7/vwHdA1KK5/ZWMZagMosvuUv3CzpzNEBUdqmTrGQgpgR9Jo9yzSzpe6Hybkn1q37iiIrFPYMBhle2QhQ7d8HgH0KCOgvKu+ptyi6XvJLttkDHq+gR6fo+vLmUAFTv5QeTZ5T50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747128068; c=relaxed/simple;
	bh=jAG6UOMOffV3gCVoCmbgmLMxOpZlx9u8Ad39RHvZ1TI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=S0+Ng3A282gbeidTxShIKSHxEz6vxBT/WsDWMbqm8YLaNzl47rjYeGDvB/TmfUaslYwsyEUlqbt8rIu6TdnnUSEOLazVjHNpoynsJXDLSyp40Y/N/3Gt7x9Gfx6fRc3dajqWTgs4hmUWv/qEvK9Pe5hG9x/v5oPb6bhQ+ttTAKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zxy+1epp; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-550d09d4daaso932971e87.2
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 02:21:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747128064; x=1747732864; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jAG6UOMOffV3gCVoCmbgmLMxOpZlx9u8Ad39RHvZ1TI=;
        b=zxy+1eppz0AOm1YjT6rvKlsa5iMWWAkQC3+DLhyvnNkmS5KdD+kIjB7uDdODpZoBPO
         MTttUZ5XI9A0q9ACZ43hFuXk5aU7I9Fr6gVn9WvjDbi0p4Hp5ht+6vtgvWJ2nhwnHFTJ
         VNkmbpN5Y1Um747b7nCwGKbjz+/mzN/A2b8gxSjh+g86/iz+aWgrdGoihG04Ks9g6AON
         bwWF3mI57wxnODdicxu8jx3SWtApeVvgvaKbSSOniRlJAGVhNn1G0bi2PEkDdrJDsH08
         zju4mwRXBPHAtigQ7RlYRAr2veYMcd8TUJ0qkzlJ0P+cGor00OjKAXE5u7CYcjxkGiDQ
         +7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747128064; x=1747732864;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jAG6UOMOffV3gCVoCmbgmLMxOpZlx9u8Ad39RHvZ1TI=;
        b=aQyhRHYysPriM6flDKHilSRt2XXmCvLHbChs/SLKc7rC+DezSlR8fE2fG4AZKn+Zo+
         QbapwJ33voRHXyUhx3Mu0sPV1GOs5pQtp5QYkAnXBPZSGviAWOZb4sHRwyau0LsOha95
         Z5XUH5GmDvltirPt5JmC7CBwJ3GjrrVD0FYeqmm3nkdjqUd4omgzJoR3YtwmyadixGJM
         L/TggxnJl2gLwtuPun3Sog2Y7MHX7GxepoXotym0+7HSCHqqZxNxjHZtz2lgJPcAjdt3
         C91f9TEoN5+KlYd1rQy+K2CjB5tmGkzsX0fWYmSGyBAmZ/q86Rv6AbGSUM5nmuyuHGIC
         mb+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWy5xpjQUmOu5cNLqloeZjh8zitUyXPutF+6InD61nOOWHLLblQdYkzU34ZN4egFSuYr8o2z7xr6Qoq@vger.kernel.org
X-Gm-Message-State: AOJu0YwXEzXNlZw/TLFdz9llqXA0u0MZpxMxBiQWwR9Mg5ifmnJumRe2
	r6DDD1COEMIUSmHGnZlKG0hvqiAQHYyGKeQrgfV0wg1xdgcMLN3xB10yaFKp31FDUyP4If2R/CG
	623kOfRdEJ2bOzeCHItiXJglyN+o4C4iCWbaYVw==
X-Gm-Gg: ASbGnctkAE1hhIVaxqJprgCAvjitiuiIaje8wOT2mJ40potEXhFvBRZfQOpoav+N2eX
	BPoB4e7QQFN4GfVlHRNAfvB34j9JZIPGjr2bMGsEPL34hajwvrt2e7aC33uNq4cvTdt57XTlym2
	L5HRF8AH2cqbZ9q9nTRoYtqMN/FTEa2PWn
X-Google-Smtp-Source: AGHT+IGKvl0a9PYMoR7pe3tZ5kyPbARxdNFLenyjWORpsYZx6Qr+/V56jGkku8jVsQAW4x2zH8hvY9ZJIUWfZ8j8uTg=
X-Received: by 2002:a05:6512:6408:b0:545:f1d:6f2c with SMTP id
 2adb3069b0e04-54fc67c37b8mr5182580e87.18.1747128064206; Tue, 13 May 2025
 02:21:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250430-max77759-mfd-v9-0-639763e23598@linaro.org> <20250430-max77759-mfd-v9-5-639763e23598@linaro.org>
In-Reply-To: <20250430-max77759-mfd-v9-5-639763e23598@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 13 May 2025 11:20:53 +0200
X-Gm-Features: AX0GCFux1HtYoXX3UiKQeMd3kDVZuoIvGECfOVBviXvO98OxIVsjOGF-W-k86hk
Message-ID: <CACRpkdY15L5PpV9ah_0R3ZPZVMh18OR+Dg2qXiBG=8Kq79-rjA@mail.gmail.com>
Subject: Re: [PATCH v9 5/6] gpio: max77759: add Maxim MAX77759 gpio driver
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Srinivas Kandagatla <srini@kernel.org>, Kees Cook <kees@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, Will McVicker <willmcvicker@google.com>, 
	kernel-team@android.com, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-hardening@vger.kernel.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 30, 2025 at 11:03=E2=80=AFAM Andr=C3=A9 Draszik <andre.draszik@=
linaro.org> wrote:

> The Maxim MAX77759 is a companion PMIC for USB Type-C applications and
> includes Battery Charger, Fuel Gauge, temperature sensors, USB Type-C
> Port Controller (TCPC), NVMEM, and a GPIO expander.
>
> This driver supports the GPIO functions using the platform device
> registered by the core MFD driver.
>
> Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

