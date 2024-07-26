Return-Path: <devicetree+bounces-88436-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D781D93D853
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 20:28:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 152F61C209B8
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 18:28:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3FB43BBCB;
	Fri, 26 Jul 2024 18:28:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xrSKK7uk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com [209.85.128.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58B093BB21
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 18:28:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722018505; cv=none; b=Mdrc2kZygagv/+bnP94NrpSc4CCMcwiw3+73//L+797cT4HMPaeDJM88Di4vIir2NljnbKreNiKEfIQyuCdFWbLfWEX4PAXmKmPzA9Iq1lSFb9s9nndy84WfHRIXFWYlO/YnQu1dQHCX/tvHOQtj5DQhHF4heVb/3mA22yTVZOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722018505; c=relaxed/simple;
	bh=/hCmtFduoZjXr8wWkO90G+e2CChiWzFqbkWEwH9Pngw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sUQTWe94SsNzRI3yjajLdWhx8wN5+fXtpYbda6MlxE1ZZJZ0pGs74eNow2qiPJrmDxycgy3NqzFgcMEd7qvNHppAc9VoBoYPzbjcViXUgt11U5aJ+Ppji2tVkdxydzl3Pf9TtuVsgiwNF0ZQ7GiY67Xf0XQk/OWoVTnP2MF88Sk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xrSKK7uk; arc=none smtp.client-ip=209.85.128.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-663dd13c0bbso24270707b3.1
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 11:28:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722018503; x=1722623303; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ar5LSSW/uWQjcFvb9wqwW1qn7+87e4drkqRv4fjdD+M=;
        b=xrSKK7uk+sf2Y8AqvxVCdkRpQ7f+kQT8uq3IcR2w261Q6GUJHm/TsPHyiNqEP4wgwK
         eIQGo7jMaXvzsHDZktMyFAaZfLjujZ7E79EmoWo9sH7GHziUry9bwWNa6zbGsj8XsqO7
         2TN+b1nyN4g+ZNNidcGKhiQNOXste9PbZNy8QjXp9Tm6NWNS2qPi3SRu75Iw7Prc4S9y
         Qbvj0MbqSuL0lnN4UT3v6RuK9BG7sjK3v4nLenAo7IwsOkJx1+6xZ5FZrfXXbMNEYUaE
         Wa5DKg0coI5dWAu5dpUu/pni0/C/od+XwZSDGsoMGI+a69YqTIHcj/vkGq2eOkqgT50q
         +EqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722018503; x=1722623303;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ar5LSSW/uWQjcFvb9wqwW1qn7+87e4drkqRv4fjdD+M=;
        b=KyjeW3EV5HEIa4/ymKNHavShAoivmdheSPUn9/6631yNsNPHi7qi6tAhc2c6l9lXCZ
         VZmyO0MN1jIWFWohGBWpiQo+MKbT3msLKXjxAEFqly4zLmg9I7KDcXxZgRpDSkQqWsZF
         C/n5/2Xzers50/pLIokY94TXm/s7d7vx+gb8pP4sHb/MTcdQ3XLT6MwPAtb78Fp6mrIG
         2n7h7o3OQEDYq5mogoqa+w3x4GZ+pVvJ+4K4R2HFa15tHyv15Ieis0jEFDvvvOtyO9pd
         03k0ehzK4+GOafDhgOYls63c7fs+WdSdSKUn+jwysSZaCLfHGKXn1GvM25HtZtN7ujnw
         sq/A==
X-Forwarded-Encrypted: i=1; AJvYcCX+bnIZcFP7r8b2RS96wib8yQkkDYpE1zEICt1Dy9wC1CGlhGNG15741z6PqkHwChat9BTmM5yRZnBgEwcA9dlGQmyHQF5Ry4vDyQ==
X-Gm-Message-State: AOJu0Yz7KNif33Wd/0X8OIR91V4zbtBIZFp2fwVGkjUFv/f5yXMN7wOx
	sdqP3WQUOGwZmL0e/erETZpK7Hc4ny4Gop4XL40oePXQrtZYQ7NfEI8fwRiExdx+xuwH1fbc158
	kC9UmLMZVS46AGpfHsalRKdjHeb523IqMril0MQ==
X-Google-Smtp-Source: AGHT+IHato9JiGqKZuTQ6+mFoYDwEL2j8h3hjQq7YdUcOaEIWebF9rgyOekGPj+j55VxlIaNZlt7JqiObKs/Wop42TU=
X-Received: by 2002:a05:690c:dd1:b0:644:b209:4de1 with SMTP id
 00721157ae682-67a050f3e25mr8147617b3.2.1722018503391; Fri, 26 Jul 2024
 11:28:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20240726110139eucas1p24eb41978fdad0d37a95c2c829180a203@eucas1p2.samsung.com>
 <20240726110114.1509733-1-m.majewski2@samsung.com> <20240726110114.1509733-5-m.majewski2@samsung.com>
In-Reply-To: <20240726110114.1509733-5-m.majewski2@samsung.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jul 2024 13:28:12 -0500
Message-ID: <CAPLW+4mL=sh+n_Wq30yTPuTb9UNKNX2YcgdyObdnoqwhHie8eg@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dt-bindings: thermal: samsung,exynos: add
 exynos850-tmu string
To: Mateusz Majewski <m.majewski2@samsung.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Anand Moon <linux.amoon@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 26, 2024 at 6:01=E2=80=AFAM Mateusz Majewski
<m.majewski2@samsung.com> wrote:
>
> Like most of the SoCs, it requires 1 clock and 1 register.
>
> Signed-off-by: Mateusz Majewski <m.majewski2@samsung.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

> v1 -> v2: make the clock required in Exynos850.
>
>  .../devicetree/bindings/thermal/samsung,exynos-thermal.yaml     | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/thermal/samsung,exynos-the=
rmal.yaml b/Documentation/devicetree/bindings/thermal/samsung,exynos-therma=
l.yaml
> index 29a08b0729ee..b8c0bb7f4263 100644
> --- a/Documentation/devicetree/bindings/thermal/samsung,exynos-thermal.ya=
ml
> +++ b/Documentation/devicetree/bindings/thermal/samsung,exynos-thermal.ya=
ml
> @@ -27,6 +27,7 @@ properties:
>        - samsung,exynos5420-tmu-ext-triminfo
>        - samsung,exynos5433-tmu
>        - samsung,exynos7-tmu
> +      - samsung,exynos850-tmu
>
>    clocks:
>      minItems: 1
> @@ -131,6 +132,7 @@ allOf:
>                - samsung,exynos5250-tmu
>                - samsung,exynos5260-tmu
>                - samsung,exynos5420-tmu
> +              - samsung,exynos850-tmu
>      then:
>        properties:
>          clocks:
> --
> 2.45.1
>

