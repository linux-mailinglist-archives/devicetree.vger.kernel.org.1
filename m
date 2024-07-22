Return-Path: <devicetree+bounces-87377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DFB3D93958D
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 23:35:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9193E282459
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 21:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4A2C45024;
	Mon, 22 Jul 2024 21:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="aekZUnLU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57A239851
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 21:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721684102; cv=none; b=P875wINw73VfbBdABl9kzZf9w85nMd8jsYDBHImRCwuWuFNIOBBMhwy7V84q0EWCZdNPhgvZcWNsoEMF31ec6aop2ckieVTSW255Hb0OLdy9y2QHtNsgTMIEyAOkzIchqv4iYcaDjSGotZmo8Mzd51kEGtmDP0zgF9Hs9D3+mGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721684102; c=relaxed/simple;
	bh=DavKR6zlsHTTROZB3HzBGry3JUwnrQbFua6WuPnbWp4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Wp2q26mM+54iWJmjhJHcerrHtWRTz4EuYfDp+mjf8qScCgqOv3NX28LfuvRA2YTXg/XOEP2vymGxo7996JBT6dwjXQYbuxdxBOHf9gHEG99VMJVOZjJ5V5YBx/4BNdHTg7VyvGLUO/hsfeGcQnyejv/abiGCqLSZHiuwGdr90es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=aekZUnLU; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-66493332ebfso43146067b3.3
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 14:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721684099; x=1722288899; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bew7kISzf+Slt4HQdKRNoanuwNUVw3tMPgUQzbpwb8I=;
        b=aekZUnLUk6aVQQAgVJgBppyLsk0PRN9IP3rzKx7ylYE8JRGyYy+TrkHglCYMPWxMn8
         BZV5RWHtRN9Wa5gHBRlg2ui7OFf1DHkwgfYCxjYn49ixRz+spE2wri8jSAuokf4loICb
         hC86S5Vh2YXwlasYBV+eXXPSJjz9/KRyPgHF2/hmoxxvWQhoSHng7XRORlBep+dl5AVy
         HOgnuCgYkBjj8GzDshFwr9Xt7Atw8kltCkl6Wkwu7pO19e6M7L9CY/qdt33ESL5S/S5n
         +PKY5X8+G5OnYSaPlSBTBp/SV8zikL2ovoFwnX8hchTla+I2sOpLBNvUPTLDswDMGDTy
         rBBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721684099; x=1722288899;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Bew7kISzf+Slt4HQdKRNoanuwNUVw3tMPgUQzbpwb8I=;
        b=HyYYJKk9O0cbsT292tBukz042sB2qPH7cLQzIguJCPo9AhHVmDltkYplwBb8RmWX0H
         OpgVvWF6o71ku/0ygdsctYtp1PXyitjDcJvaBCdwhac/vVEqisAd5SROC+0IiVcucn6O
         Tgsh9l4Wx9nTL47N2GHWJQi2kVhGMr4YlRxFVIiDH2C6k1vm7QL8VGqGK8zDuS/LWuQd
         jw1Wr+X+JycHtnurahjifGKrygSSp7L0J1pi0ilJRmiLLY4QppnhJvGdnB+Bm0v5ZhqA
         5N2MTQU83e4ZcKeMeE0IpVCY6xzS+pRg78VRePxp6Dpmr3CL1oJsCXTA9D803vlGBqsM
         +pNQ==
X-Forwarded-Encrypted: i=1; AJvYcCUBo9F+M4ATlHv/OAp2J4UWRkfaCoLq3s/rfyGzxKIyD4rThllwUxqDGNG3MBdWwZP+prFVcsMrpvqwTgfNAunqKE4qhIJMZAFVWA==
X-Gm-Message-State: AOJu0YwBkGNm1ch27iyPOqoP7+jTTPkeOyPyc1t05UZObm7TOvn4nprR
	mwoRIwxF3Vw4kTKZbYCayfLxg+6P4NZpxpkZT8RJt1L+xKPjSIz68367w6lpgLZ/jtAvGmEucVe
	HPnVcoGTMNX5dnz0Ly2ZN6le6Itv+nTgts4eHcg==
X-Google-Smtp-Source: AGHT+IE0ltDhbLmGYW/fyUnYlpSuwc7uDLK7DxqB7eIHLb7TN7siloOmPdFA3AK/XHiKBZ174IJiHQAZ67jbE8WFQIA=
X-Received: by 2002:a05:690c:298:b0:66a:843c:4c58 with SMTP id
 00721157ae682-66a843c5e32mr107931177b3.34.1721684098995; Mon, 22 Jul 2024
 14:34:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20240719120949eucas1p1b061c716ac55b4a79ba57c407c0b2d91@eucas1p1.samsung.com>
 <20240719120853.1924771-1-m.majewski2@samsung.com> <20240719120853.1924771-7-m.majewski2@samsung.com>
In-Reply-To: <20240719120853.1924771-7-m.majewski2@samsung.com>
From: Sam Protsenko <semen.protsenko@linaro.org>
Date: Mon, 22 Jul 2024 16:34:48 -0500
Message-ID: <CAPLW+4=MSeYjWs4GbriiY2rj8FsZ0_GGVRqfxV9GH4VxDREKCQ@mail.gmail.com>
Subject: Re: [PATCH 6/6] dt-bindings: thermal: samsung,exynos: remove outdated
 information on trip point count
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
> This is not true as of commit 5314b1543787 ("thermal/drivers/exynos: Use
> set_trips ops").
>
> Signed-off-by: Mateusz Majewski <m.majewski2@samsung.com>
> ---

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>

>  .../bindings/thermal/samsung,exynos-thermal.yaml           | 7 ++-----
>  1 file changed, 2 insertions(+), 5 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/thermal/samsung,exynos-the=
rmal.yaml b/Documentation/devicetree/bindings/thermal/samsung,exynos-therma=
l.yaml
> index 4363ee625339..5a82764a4dbb 100644
> --- a/Documentation/devicetree/bindings/thermal/samsung,exynos-thermal.ya=
ml
> +++ b/Documentation/devicetree/bindings/thermal/samsung,exynos-thermal.ya=
ml
> @@ -40,11 +40,8 @@ properties:
>    interrupts:
>      description: |
>        The Exynos TMU supports generating interrupts when reaching given
> -      temperature thresholds. Number of supported thermal trip points de=
pends
> -      on the SoC (only first trip points defined in DT will be configure=
d)::
> -       - most of SoC: 4
> -       - samsung,exynos5433-tmu: 8
> -       - samsung,exynos7-tmu: 8
> +      temperature thresholds. The trip points will be set dynamically in
> +      runtime, which means there is no limit on the number of trip point=
s.
>      maxItems: 1
>
>    reg:
> --
> 2.45.1
>
>

