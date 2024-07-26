Return-Path: <devicetree+bounces-88421-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CCEB993D801
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 20:09:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 826D1284425
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2024 18:09:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76ED517D35A;
	Fri, 26 Jul 2024 18:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="D+QyDVFn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6826E179950
	for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 18:08:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722017300; cv=none; b=KYHfu8ECqR9O72NWpeGeuRikCNFk/vMAT7ADPtjXhJEYeiGe6sxGI4TcCMf1sr4Ixy8lZS958nB/0OF/c73Ax5wH6+K4vS0J3kW/jaiI3ih+N5zsE2VABPNAZscWGw1d5hZh7PPAD1fKXkFXfio5N9Uf4oWWxVZutlmqPTtz7mI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722017300; c=relaxed/simple;
	bh=GxmoYIeBXMGpKO1+bZK55byxlD5ApVDBz7Iy5st0gJg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KXNyTPY+sPFSWzDVjAS42vw35l+rIrhpc6W4F46yrxsd/m3ycpJSKRDUyglxnaHj8bkIDa0FylNGVyAHIgnxeOq1Q1oTXNhbCKncwJZuaMZETKvNNEq1kRkiHetnBS1xFNOhzaEaJRRZYaVOsNTmv5jBYpnSdT9UW1PDYKbv49E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=D+QyDVFn; arc=none smtp.client-ip=209.85.128.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-65fdfd7b3deso24283477b3.0
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2024 11:08:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722017296; x=1722622096; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=A0k1VjbXgRbh6rHMNc26/2pKAqBtNwTa1NeFJwoSY3w=;
        b=D+QyDVFnMmZxdzlFjgXelWCHAnLdsGVHFOxt2VFwIJkwtoIXZzhD/jPVg5QLc0c1Hf
         7cVQ/ThOopBOi1uN0rW5tFccw1G/UnkNjY8Tb69lN+h1BNS6MNDE0sxefbcvUxQUgz9m
         F/ESNm1sGRL/Qmlz5xtExaUhEiVGWQ4udY/iuRsV9BeyqiW1k+Sur+Z6edhHiw4b4kpA
         DXvio62XKbwKagkIjgIdfOLYznce+5Erd00GTTCmM1+fYV1bb5Z/8w9husIdHMUtbknT
         QdBQWE4ZNHHxrvhIwW1JRRUov1de6Uuq+/A0s2Gx+mTevJNWPPSBWc9k3suD7EggcTah
         dUGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722017296; x=1722622096;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=A0k1VjbXgRbh6rHMNc26/2pKAqBtNwTa1NeFJwoSY3w=;
        b=LfDFPV9UpAaohDV+18RW42p2VG/rySxuUTEl3eLhOXCyWt5CuXj+37CUGfEA7GPxCh
         nvs/Z95Py6AH6x2fkJfvi5yeIdTlOEyuC2jV+ghXQ5b5Vq5MQZNdTrezdW8Jf/GL0Ft2
         d91N2/SM8Gecg2opuaaLzALWHAohvp/xV/i79zM+AAvUcuVFqozC9dTc1wvk/uo3gvgX
         yjD1fZMf78kFxIz7z97JFNp5Qlrk/F+rLXhcJDfSCyrGBXXByHxTxp1oM600mjWQRQav
         Rjw8vFQG4tGIKWQ2fVpqVvhtnO5AaYSLt+gVwpw1sZ2CnZfMlRW5hcQf+dIhNk0jVOxJ
         IbPQ==
X-Forwarded-Encrypted: i=1; AJvYcCUJwPjoBAEnCxW07f2P/aR2fMvvur/gji3w0v7AUt2n7jAHi7fhbaEGX4G0XmjVqCsbWpC1R+Smijzirwnkuuugn91gWYQHTuPnLw==
X-Gm-Message-State: AOJu0Yw034oCLjrOBjEqkz6fPbiexWEODOOh2GSI8HGZDjeFdD9BJCIg
	Mjhi/gnBUdnHlsT8cN9B4S1JDIyuZslmSjS/hF43hZKrAIILhhrZUMCg2U6aWcAU2ZI01jeWbjz
	qaX+1G/YfcX0rhlAERE4DW4w9eYTDP7c4CusbLg==
X-Google-Smtp-Source: AGHT+IFkESiWao/vWnFp/DsXlGOMMM3aoXRS1ZwQbcgc7JCIUzd6EJnTYt77j/BQJ878gOluPtcgh7p7GqV6PD/zXX0=
X-Received: by 2002:a05:690c:4a01:b0:64a:e2ab:be33 with SMTP id
 00721157ae682-67a073b4271mr7940997b3.22.1722017296429; Fri, 26 Jul 2024
 11:08:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20240726110136eucas1p2c100992bb710acb5a12bb294401d4aeb@eucas1p2.samsung.com>
 <20240726110114.1509733-1-m.majewski2@samsung.com> <20240726110114.1509733-3-m.majewski2@samsung.com>
In-Reply-To: <20240726110114.1509733-3-m.majewski2@samsung.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Fri, 26 Jul 2024 13:08:05 -0500
Message-ID: <CAPLW+4n==hm=tiDOZ14LMw-nWGbu22m2rh7nEJyUR6f0AwzOAg@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] drivers/thermal/exynos: use pm_sleep_ptr instead
 of conditional compilation
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
> Slightly simpler and nothing is lost if _suspend and _resume functions
> are built unconditionally.
>
> Suggested-by: Anand Moon <linux.amoon@gmail.com>
> Signed-off-by: Mateusz Majewski <m.majewski2@samsung.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  drivers/thermal/samsung/exynos_tmu.c | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
>
> diff --git a/drivers/thermal/samsung/exynos_tmu.c b/drivers/thermal/samsu=
ng/exynos_tmu.c
> index 9b7ca93a72f1..b68e9755c933 100644
> --- a/drivers/thermal/samsung/exynos_tmu.c
> +++ b/drivers/thermal/samsung/exynos_tmu.c
> @@ -1132,7 +1132,6 @@ static void exynos_tmu_remove(struct platform_devic=
e *pdev)
>                 clk_unprepare(data->clk_sec);
>  }
>
> -#ifdef CONFIG_PM_SLEEP
>  static int exynos_tmu_suspend(struct device *dev)
>  {
>         exynos_tmu_control(to_platform_device(dev), false);
> @@ -1152,15 +1151,11 @@ static int exynos_tmu_resume(struct device *dev)
>
>  static DEFINE_SIMPLE_DEV_PM_OPS(exynos_tmu_pm,
>                                 exynos_tmu_suspend, exynos_tmu_resume);
> -#define EXYNOS_TMU_PM  (&exynos_tmu_pm)
> -#else
> -#define EXYNOS_TMU_PM  NULL
> -#endif
>
>  static struct platform_driver exynos_tmu_driver =3D {
>         .driver =3D {
>                 .name   =3D "exynos-tmu",
> -               .pm     =3D EXYNOS_TMU_PM,
> +               .pm     =3D pm_sleep_ptr(&exynos_tmu_pm),
>                 .of_match_table =3D exynos_tmu_match,
>         },
>         .probe =3D exynos_tmu_probe,
> --
> 2.45.1
>

