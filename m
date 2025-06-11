Return-Path: <devicetree+bounces-184616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2063AAD4C2F
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 08:59:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ECBBD7A9A3C
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 06:58:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A745123026B;
	Wed, 11 Jun 2025 06:59:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jocJ9c58"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAF9122F742
	for <devicetree@vger.kernel.org>; Wed, 11 Jun 2025 06:59:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749625144; cv=none; b=Rgmo1OyeK46d60noCkaOnvwKVjw19fkALel0HqFg58FjYHHQW00PZERnGCv5J++/Qt3GRR/tzCgVsMOfAr9CHNAJjp91cTFpqWrxf5zLwje+f2MKmDWD4cjfXG2jTjQeVl6HwWTIsHkF0j3v5O+JdEm8dCwvuhL8yX1tdFOP0rA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749625144; c=relaxed/simple;
	bh=dhY8tTIaHxzBeyhk1xPMKaQLngS8G/RjM44iDX1MTQE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LZ9bALvzpttq+xWTQzr3t3ifRoeOok155B7l5oVuGAfFH/e/qG2DZ29FyZYnt5R6ij3M5zI3JpK5icNTHaSOJgXsEC/nQOUsNP/gZbWuwXAaI3EVzYyZuigAhIHNYsloMrSZPwt1z7bEqfvJfNeQoILRfpITpb65CEk+ZDA1TyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jocJ9c58; arc=none smtp.client-ip=209.85.167.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f43.google.com with SMTP id 2adb3069b0e04-553246e975fso7344054e87.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 23:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749625141; x=1750229941; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=U8nA2PNnIRRvEbnFF50ioWvbhGVteh9Ywj6FtJtDCnA=;
        b=jocJ9c584qlVDVn6UJhYMjrkzw9Wz7thkJ+41v8/8fjP4fZD9JlkteyJbZBgMs60zu
         Ehr56YhE/IZZsEMaddr0kcfsM1TOO0094kwB6XyGKTuQSpH28mmYhWpUTk6vmwkSf3hP
         Wl8JHP3mzrncyKn+5pYIlREWzw0ImLZ8SScx1A+wg59wy5sA7XgYTGS5KFFQU6MmNjb3
         tl9rPz/ix2vZmjFlgzhY4eeVvlq1UFrZcz5fVjtSE2C9l8l2wYKgdr4evEt1hSkgg9yN
         lcHEdQxtyzCUcQn+gqVH1mhhgN3avvekWhpK1tSDlEVQPS+k0putfQPOMpxjjDVYjHdD
         H8RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749625141; x=1750229941;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U8nA2PNnIRRvEbnFF50ioWvbhGVteh9Ywj6FtJtDCnA=;
        b=JEg/ZUL7G8Q94GLvQcvswcwGNSv4/m/mL7wlahuBqp7B/JVDt9nsP18ZHoc0fHKlVF
         3RQigUiR/ulrGkvaB7SPyRqrAz6S7ELMVtZWZfdy+piD3eQZtKIP6bIEjJeRUnRNrlMg
         mW4nC31eqYI2eaF7BCzObkk0rKv61gz2F0J3eqrAz5NlMglxchLVHwYB3qA1WgunxNlB
         +PNk2wv8X0aBe/Os3GELnal7mst00SpdRUklzSpL3XduKulefFdgvYIgN0n9+qrsUAmu
         ap8fBWXMNVyWtSVXBn7H3Xypy4+Hic8oOMKOFVv2Pte68CxrY9xef3AKBH4JWiAJtL7L
         DObQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgDELHMlLScG6b/HNDdD+uR60jTg4iKQeed9H3AyxkZ3S0olSNbnGiAhUmb+1jVRSBayp4/Bu3jBBT@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2lSjd3+89wVaczDlzXK/dzaoRBpb9ain3y7TlIjZdp3vWQw34
	c0elTrLP4iDRvirbz0AIC5QKDRhKXpMpxxM9BUu+kGow3cxQNcPMpSzE8KjgKu5PhHfeRO3E07Y
	KRboRAnhNyvJl/pyaCyPwzGeQ2pNMeaCkJiK+H+uq5g==
X-Gm-Gg: ASbGncuHpdzbvGDMIkmUJr9RGWxkPqmTIu3NRAvXlHYTskdijYsut2KEb1XncJWtyIG
	5SGcfZkQg5rLVxy/V2o7Nd9j0uRG/7aRL1Hn5IrmMauEyDA1fHWj+6cyc39XJYe2zUf7BXRR/UZ
	L21JmaXLrO1ZdUstxoIz43skf/X2UYp4ElnUag3YF/8MI=
X-Google-Smtp-Source: AGHT+IG6utHIOdDkcpuozNh2nqM9zH/+sRrcv4+dUano9lJ8/d+qcOtmsSZATDFdcJvRJ4JBx+FV6cWHmQ4clAOQL1E=
X-Received: by 2002:a05:651c:221f:b0:30b:edfc:5d8a with SMTP id
 38308e7fff4ca-32b22100cf8mr5212561fa.0.1749625140694; Tue, 10 Jun 2025
 23:59:00 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250608-tegra186-pinctrl-v2-0-502d41f3eedd@gmail.com>
 <20250608-tegra186-pinctrl-v2-2-502d41f3eedd@gmail.com> <yw2uglyxxx22d3lwyezy34wdniouu32zppfgwqs5omny3ge5zd@iuqo4qmi55a2>
In-Reply-To: <yw2uglyxxx22d3lwyezy34wdniouu32zppfgwqs5omny3ge5zd@iuqo4qmi55a2>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 11 Jun 2025 08:58:49 +0200
X-Gm-Features: AX0GCFtY4lWmGfSr3aKIZM_841dA1Q0ZW3SK2jFhQhq_82hUZBSPfb71HJ3Q2qM
Message-ID: <CACRpkdZha_ucjWvP_NQ+z2vbD65Y3u7Q0U57NYbJ=vqQ6uPGGA@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] pinctrl: tegra: Add Tegra186 pinmux driver
To: Thierry Reding <thierry.reding@gmail.com>
Cc: webgeek1234@gmail.com, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Hunter <jonathanh@nvidia.com>, Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-tegra@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 10, 2025 at 11:40=E2=80=AFAM Thierry Reding
<thierry.reding@gmail.com> wrote:

> One thing that's not clear from this patch set is whether we actually
> need the Tegra186 pinmux driver, or you're only adding it because it
> happens to be present in a 5.10 downstream driver. Do you actually have
> a requirement for setting pins dynamically at runtime? Do you need to be
> able to set a static configuration at boot that can't be set using some
> earlier bootloader/firmware mechanism?

Actually, speaking as the maintainer of pin control I hear the following
a lot:

- We don't need pin control, the BIOS/firmware deals with it
- We don't need runtime pin control, the BIOS/firmware deals
  with it
- We don't need runtime pin control, static set-up should be
  enough

These are all enthusiastic estimates, but in practice, for any
successful SoC we always need pin control. Either the BIOS
firmware authors got things wrong or made errors (bugs) and
there is no path to upgrade the firmware safely, or runtime
usecases appear that no-one ever thought about.

Aarons case looks like that latter.

I think it'd be wise to send the message to any SoC system
architects (or Linux base port overseer or whatever title
this person may have) that a pin control driver is usually
needed.

The SCMI people heard the message and have added pin
control into the specification for that firmware interface.

Yours,
Linus Walleij

