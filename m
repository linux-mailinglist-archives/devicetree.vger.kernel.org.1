Return-Path: <devicetree+bounces-87356-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F609393F7
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 21:04:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 798BCB2175C
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 19:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3ADAC16EC12;
	Mon, 22 Jul 2024 19:04:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kPUhrxC8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBDC81805E
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 19:03:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721675041; cv=none; b=t4IOEqFpDXlhspCJUM2LDlB4IMTd2n1MrHetDaYoxtZIqwAxbh9z7/y6hySbaGGeb0vhElqFtUR1n5TFb78FawCGUb6eyfYP7sbSpgPTwqu2DLNArI/A/lJTFAyJOWDlnl1XrvMGOEQTKo7ck7C93QxgcTK2zcTWrnYPutuC7Nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721675041; c=relaxed/simple;
	bh=ZuCr8Q3MXq7FKFxOumVO8h9QuyBPSWk2YAWb6LR+p3Y=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ui2hr/y20FyB8wM36bPNGXg0KAPpXscmWrZAQhZkiuzK2kVpVtLLT/En1QI1zG0jutNRkUWjTNYtk72R2uF3vtvzBJIRUAyn1hdnSNgv6rFhfyhNF/8vAg1BQv7B+beSpzRmqln4pT8BHqNgGrM0cRSbJGVOmEKjzDVVSrv9Ewc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kPUhrxC8; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-65faa0614dbso47773367b3.2
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 12:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721675038; x=1722279838; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/aLyzQjs5NsslSdkV31IgEOcyf1Zm6WnIlOUy4KlEfU=;
        b=kPUhrxC8xyaF3BDUKcpVMnk2VRmTGpT821t17waaW6alcXTbrOJHPFo0dS4+yXc+EK
         TTXmS5vQrZVTX13UcMRsicJ4OxFunlpf8JzDQBkzYMcTOhF7ZED4dwrku4IHA9mq3QCN
         6Bb4DzQl5Ly8WmMjGc1UFojn7V26Mo0WBLWlRNrhs8tyImvCu91933/qQfXLVfH4BiUy
         PSfqv/BY80igoKBG7+L3vDZxAM9SgTlJUSYIJcJrVBQE9XzsLxWarET5IsdX4Hkw25Rh
         8pOXnvxyLYl0Ej/iwoH7FteMkgQOemdhf5rICcOsOIPXWdV8A1T03H+T1GTNAgjAiUoA
         Wnug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721675038; x=1722279838;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/aLyzQjs5NsslSdkV31IgEOcyf1Zm6WnIlOUy4KlEfU=;
        b=VLyKnLQZwizt7BHsoojRprUS7J7atHEl/BQno8CBK6jd/bPNfc7lx9k4pwtNFvGF/+
         tz6xyCYNx9pKpLfIQe8kNkpz9+oQdVImUz86gqPfS22vPr9I48Lh9OITP45WzujDp4Nm
         frQcOAuFg+br5+sIQhlFVl4o59YL+73z5mtHkigqlWYTyxWVfzlOlyp+eYRsldu6KERV
         pHCH1DEUxyL+D+osdKZUw8jAvdsprovBY1fZDbzke1JArj/c4ZANroMXgrVtdJDhseys
         06e1xp1s90XAg8YsLbvDfsIY4OvukDlhJQNgU5DCa+qlkq5cTPuUe+fpNj9ydcWDdU0N
         5NSQ==
X-Forwarded-Encrypted: i=1; AJvYcCX8INIfUFzCo4i9VXehsZcEmtXnwaW3NuAygcDIWAX7IzifNw2ON3yno5xN91IBqtzcJnG5rN3YjKVVYnCYikK/mYgWTKR7l0IVbg==
X-Gm-Message-State: AOJu0YyPO7HyyfDzqy918aW70mWgdwEAWWcatst4dsq0+rKIZJTyAOk0
	75H70CycubrL9L5uEkuA+3qmk03ZqNqRuGC4bzf7RScJxXTu7UzP8eS6xoGMtePMXvlOER89T6w
	sNUq56js1OxQxSPtUSbecuqKj3BzHsVELf+2UzA==
X-Google-Smtp-Source: AGHT+IGHHSAltb/w1lzf5cIkIkQspIiU9P8A/vUbkhLHt8k+PzD8zXZ+mZuEGvyPGNY8yUTQbEDWGpCcg1+oltHu7YU=
X-Received: by 2002:a05:690c:5717:b0:615:1ad2:1102 with SMTP id
 00721157ae682-66a688a5612mr79225097b3.11.1721675037800; Mon, 22 Jul 2024
 12:03:57 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20240719120945eucas1p16058905c95c92840679831ae3383a67a@eucas1p1.samsung.com>
 <20240719120853.1924771-1-m.majewski2@samsung.com> <20240719120853.1924771-3-m.majewski2@samsung.com>
In-Reply-To: <20240719120853.1924771-3-m.majewski2@samsung.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Mon, 22 Jul 2024 14:03:46 -0500
Message-ID: <CAPLW+4kP25-LWArZGxQ2yy-pc1RDCVng+5Z667cCbb+h_V6A8Q@mail.gmail.com>
Subject: Re: [PATCH 2/6] drivers/thermal/exynos: use tmu_temp_mask consistently
To: Mateusz Majewski <m.majewski2@samsung.com>
Cc: linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Bartlomiej Zolnierkiewicz <bzolnier@gmail.com>, 
	Krzysztof Kozlowski <krzk@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
	Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 19, 2024 at 7:10=E2=80=AFAM Mateusz Majewski
<m.majewski2@samsung.com> wrote:
>
> Some of the usages in sanitize_temp_error were missed, probably because
> the boards being used never actually exceeded 255 in their trimming
> information. This is needed for Exynos 850 support, which uses 9-bit
> temperature codes.
>

That looks like an actual fix to me, so maybe also add the
corresponding "Fixes:" tag here?

> Signed-off-by: Mateusz Majewski <m.majewski2@samsung.com>
> ---
>  drivers/thermal/samsung/exynos_tmu.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/thermal/samsung/exynos_tmu.c b/drivers/thermal/samsu=
ng/exynos_tmu.c
> index 9b7ca93a72f1..61606a9b9a00 100644
> --- a/drivers/thermal/samsung/exynos_tmu.c
> +++ b/drivers/thermal/samsung/exynos_tmu.c
> @@ -237,17 +237,17 @@ static void sanitize_temp_error(struct exynos_tmu_d=
ata *data, u32 trim_info)
>
>         data->temp_error1 =3D trim_info & tmu_temp_mask;
>         data->temp_error2 =3D ((trim_info >> EXYNOS_TRIMINFO_85_SHIFT) &

EXYNOS_TRIMINFO_85_SHIFT=3D8 in the driver. Is that value actually
correct in case of Exynos850? I just checked the TRM and it says the
layout for TRIMINFO0 register is as follows:

  - RSVD: Bit [31:24]
  - CALIB_SEL: Bit [23]
  - T_BUF_VREF_SEL: Bit [22:18]
  - TRIMINFO_85_P0: Bit [17:9]
  - TRIMINFO_25_P0: Bit [8:0]

So maybe that shift value should be 9 instead of 8 for Exynos850? Not
sure about other platforms though, this might be also the case for
Exynos7 SoCs too (SOC_ARCH_EXYNOS7 in the driver).

> -                               EXYNOS_TMU_TEMP_MASK);
> +                               tmu_temp_mask);
>
>         if (!data->temp_error1 ||
>             (data->min_efuse_value > data->temp_error1) ||
>             (data->temp_error1 > data->max_efuse_value))
> -               data->temp_error1 =3D data->efuse_value & EXYNOS_TMU_TEMP=
_MASK;
> +               data->temp_error1 =3D data->efuse_value & tmu_temp_mask;
>
>         if (!data->temp_error2)
>                 data->temp_error2 =3D
>                         (data->efuse_value >> EXYNOS_TRIMINFO_85_SHIFT) &
> -                       EXYNOS_TMU_TEMP_MASK;
> +                       tmu_temp_mask;
>  }
>
>  static int exynos_tmu_initialize(struct platform_device *pdev)
> --
> 2.45.1
>
>

