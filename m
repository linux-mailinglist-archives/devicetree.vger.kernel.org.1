Return-Path: <devicetree+bounces-34383-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 94E378398FB
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 20:03:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 408711F2D313
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 19:03:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 269AC86132;
	Tue, 23 Jan 2024 18:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iipmIQkc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 896E886124
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 18:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706036213; cv=none; b=auh8Uz//5i8I05JBst/nlinw+A9HgMlgTJToi34/oeMsJdSz9jtPFutdp3jAlUDzffOgNeKtORr2lA9PcAWJ5lE+ijRHpu8BxgqQRFf7K4qIJzH0l+mz4cHw5i6JFaKPT4TQzIF9+q4MJUBtFO5AVbGmkpbu0wZSFpWaWJw0+x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706036213; c=relaxed/simple;
	bh=EiIHesKgX/PFhVNwqy2Og7rCNU9y1USj/kVpkPS6WaU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Dgoft0U8eZGqmIeNQFdokFibL8TrG8XZAeVs5aJtMc/pIxa1sCdmiRz+GXEAJI5Zmap6jb7NkR1/ey+VeI4rX6K1QGZl/BVTAJV3NhfJdXc6fNLXEq1VSOc6AbgSSpeaQMM4njpVxa5aEKeFJRMbo97i/lFrI46Xo7D7tWmWHZc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iipmIQkc; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6dd82bfa998so719324b3a.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 10:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706036211; x=1706641011; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qcGjaFyuV6oG5fmaCjY3febSyfYPGoIwNdp/2kkYL1M=;
        b=iipmIQkcCFZD4g5SRV8TVVZ1UjDBmeNLH2DHDP9gfzlqHp1EnWImJKu5PDZV2y7L18
         BiRuV+601tJEBBNrOsiTOBNdxcm1Ac05zE1V3biWOhYp3EoAUcL4Ec0nm7YOvrSyh0bB
         HKTKEfchPn/luqSTBCrLhlHqjudKMLVqjeyGCqGVicypM8NpgGKAgsHGPgYORKE4tQJL
         02iytqLOO/f7OC+pUxWAohc3m0HclR6rq/PhV26++UBraLLEUSHWTbD0ALQgRWHXiiqZ
         pWG7gwP0XPJZKaRNrCBVPo/xb38UFmJYUp9HOti1G35q2pdtH90OIxhZ2S0jvIgQjlfC
         poeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706036211; x=1706641011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qcGjaFyuV6oG5fmaCjY3febSyfYPGoIwNdp/2kkYL1M=;
        b=Jck5rn/HNDRrrpswYu9Y9WWk918j3tr8WBkdRzqfuPIk2XCBjHQgIIT9bBMgVHLtr1
         GyBRGOa0OQYD8CrwnVYU3uJloIrVd7t32/TF7pJ+Cyx2gw2gbodvOCpVcfWSaLwr++O9
         6DNJ4UReDuNU+sTTs6DSsJqXKiewqE0Gtoldm5f46ZPWqmuO2l1zBJj1WPg5YgjnL5cW
         c4DS9uokNmp9SMjTJNYwOhxusBYt6oMwy2M97LT1H8m2FtAEuopiyfz1FMRldi8zvXKd
         1L4XMT5el8pFRmHiP6g2K5HeOGidVkYNnJ4GSVVYQ6aS4obCsEXM+OrlmAIjEqWiS9MJ
         BQ2w==
X-Gm-Message-State: AOJu0YzHF1wCwYChpaQ974T2aNprfGKPLAgnI6reSzhzkzJFI9K/BUXr
	DHW5Romi659+/BtEpPNuDVm1xXGBabmIBlzivI6xWjRXtxBggmb29/8xAoKD7+VFoKswoIs1KiR
	2qki9kWTqUNewhuSFrdKLcsO1O6f90Lke0FDBeA==
X-Google-Smtp-Source: AGHT+IGBJ5vltODpXdOVGit9jWbIg7HsgJuT39eJtgoyokgWzIRE3CPJ1ky54N+uNAJqa7ylh9agdHuo2o+R+sIGJ/0=
X-Received: by 2002:a05:6a20:8e0c:b0:199:915d:b93e with SMTP id
 y12-20020a056a208e0c00b00199915db93emr8467075pzj.42.1706036210843; Tue, 23
 Jan 2024 10:56:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240122225710.1952066-1-peter.griffin@linaro.org> <20240122225710.1952066-3-peter.griffin@linaro.org>
In-Reply-To: <20240122225710.1952066-3-peter.griffin@linaro.org>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Tue, 23 Jan 2024 12:56:39 -0600
Message-ID: <CAPLW+4=G5YiTZaZ5k=H1YciUwOEjKSF0w9Hd8rwymA71UmJnRQ@mail.gmail.com>
Subject: Re: [PATCH 2/9] soc: samsung: exynos-pmu: Add exynos_pmu_update/read/write
 APIs and SoC quirks
To: Peter Griffin <peter.griffin@linaro.org>
Cc: arnd@arndb.de, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux@roeck-us.net, wim@linux-watchdog.org, conor+dt@kernel.org, 
	alim.akhtar@samsung.com, jaewon02.kim@samsung.com, chanho61.park@samsung.com, 
	kernel-team@android.com, tudor.ambarus@linaro.org, andre.draszik@linaro.org, 
	saravanak@google.com, willmcvicker@google.com, linux-fsd@tesla.com, 
	linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jan 22, 2024 at 4:57=E2=80=AFPM Peter Griffin <peter.griffin@linaro=
.org> wrote:
>
> Newer Exynos SoCs have atomic set/clear bit hardware for PMU registers as
> these registers can be accessed by multiple masters. Some platforms also
> protect the PMU registers for security hardening reasons so they can't be
> written by normal world and are only write acessible in el3 via a SMC cal=
l.
>
> Add support for both of these usecases using SoC specific quirks that are
> determined from the DT compatible string.
>
> Drivers which need to read and write PMU registers should now use these
> new exynos_pmu_*() APIs instead of obtaining a regmap using
> syscon_regmap_lookup_by_phandle()
>
> Depending on the SoC specific quirks, the exynos_pmu_*() APIs will access
> the PMU register in the appropriate way.
>
> Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
> ---
>  drivers/soc/samsung/exynos-pmu.c       | 209 ++++++++++++++++++++++++-
>  drivers/soc/samsung/exynos-pmu.h       |   4 +
>  include/linux/soc/samsung/exynos-pmu.h |  28 ++++
>  3 files changed, 234 insertions(+), 7 deletions(-)
>

[snip]

> +
> +int exynos_pmu_update_bits(unsigned int offset, unsigned int mask,
> +                          unsigned int val)
> +{
> +       if (pmu_context->pmu_data &&
> +           pmu_context->pmu_data->quirks & QUIRK_PMU_ALIVE_WRITE_SEC)
> +               return rmw_priv_reg(pmu_context->pmu_base_pa + offset,
> +                                   mask, val);
> +
> +       return regmap_update_bits(pmu_context->pmureg, offset, mask, val)=
;
> +}
> +EXPORT_SYMBOL(exynos_pmu_update_bits);
> +

This seems a bit hacky, from the design perspective. This way the user
will have to worry about things like driver dependencies, making sure
everything is instantiated in a correct order, etc. It also hides the
details otherwise visible through "syscon-phandle" property in the
device tree. Can we instead rework it by overriding regmap
implementation for Exynos specifics, and then continue to use it in
the leaf drivers via "syscon-phandle" property?

[snip]

