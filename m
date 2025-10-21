Return-Path: <devicetree+bounces-229393-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 410E2BF6EC9
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 15:57:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 529453A5F9F
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 13:55:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FA71339702;
	Tue, 21 Oct 2025 13:54:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Z7MiLYc9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEA6B338932
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 13:54:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761054895; cv=none; b=QW4skMFSH4mDXwlW2aI51EOxFJMKMY7KpkLm1+vudmTpyyltMsb8V4WaXQoE7ftSdgq5unJHAco0ObP/PIbB7+nZytGudXiGQvqEXIYQBF490EQAXa1CwXYYHQk7AH13O3N5aKzsC4wjkEGdJ8U3YJF/1RCf9ME6d7rKqYa1P3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761054895; c=relaxed/simple;
	bh=WjXVc6EHp/g4iSC0dgl+mBlijG+pJ2E1MMjbyg07e+k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WKXEiANi7d2a4k1ane9F/+mJEf2F4CyT0imS97d8vPrnpHl8dJFOcZAJlJUP/UWfyUmgCpd5IpNVGjndtlxsO4BtwUdhh48asp3m96//eyPizZ/66O8D1j7TRW/Zxven2+22fx1eOTNw9qXFYLyKS92DAelApJWx6EvygqB/pqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Z7MiLYc9; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-71d71bcac45so59962537b3.0
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 06:54:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761054892; x=1761659692; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t7l2S0fTu5SAF3VSsMCSsLrp+bmdGs9v0RGyTD+mw5o=;
        b=Z7MiLYc94MoWtpRRdN94cauHSrYJHA2B/Y6/IEgd5CgGX96YFHY3fVWOtro0a4Gaaa
         41wtWTBU/Aeo13JTK860LTl8Is3s5pnxRuIa5yayhMDPjkCjVD1UFfBo+pNaqQAx+Di7
         +zM1UpZBKht2heAxtX4OZ1oeIdb5SfzogJ0pfrbcwaz0thc4EOWL4K1OgpnajXudnKR9
         K0qVRXO3gytM2LZRHcib8v/LBLYc97EjKP/schY7KPeJ3AvK81cCBI1zccA7cceTIMal
         K+zRA1QAe7rCu1HNMXgi05P9J9exSmXwqQ7eMoVWBygUVXRVmwsmX0J+qkBDIhITDbTj
         3HiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761054892; x=1761659692;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t7l2S0fTu5SAF3VSsMCSsLrp+bmdGs9v0RGyTD+mw5o=;
        b=XBkdOJsh+V6Tgv/qEPSNhsa7yUgNA2PTjx238JwNNWXs6pJZlq7plLzIHoEJKtA0d2
         TeDz5tofcn3Oh95/U6M3W+4Oe254cDtdHh4tHtslV4xikklK9ozWYt2umFLKg8WYOC6G
         DVDvmqyh6+3GQjbDZM6fvebGUX10Kcrfonl8f3/NedIYLNFbYsZNnxEmwd58iGUJnKpP
         xT3yqFqn0M+YU5xkzB7MCbCR33u0Qt/wpiwl0kqsz10By25NG0Y3j5oDXRf5G9KCulkU
         lmdyEgrP/g48mnLNC34MzPnk6Uoh6hSseMClU62aEYu+u7quRynM40YlmmN4lxcC329t
         jrXw==
X-Forwarded-Encrypted: i=1; AJvYcCWtuszXpTkRoH85MGIrYLW4/vN3iP7jGKRweFkngAZX3viOjhEdZ+6z/FnPCNkrh8ew3F6A4V48iig1@vger.kernel.org
X-Gm-Message-State: AOJu0YzOzKESyhK0Igd5PfqkjxAkHr3nJ8n0WV6XcM2pQkS3sk0SwTDk
	dV+zMPB/+Ebu0tdRSZ6F9OJPhZlLc4CFi2SugJyqgyrAnh1/b3FaLnfO1oETX64w8rxc9GL6SXD
	A+5SZ2qGT5r1EjWpxb1wGAmFgX048LE0cjKwI2DNY8Q==
X-Gm-Gg: ASbGncsCe8EjqCA1GyxDfUJLOpqu6Nru3/nTyqpax5M5k7RaatwZfmPDhUk7ZdzW13J
	7J+38mVilpGVY1j8d9pIcImUpnusowtGlBsZEtVz2Sdsmht4FOWDwY59pUWxN9W9M//bEeHOqqH
	HihZhvjJ90mdRUuEj04GKuynehXblUkpuXqjzU56V3s8zy9j+TlQcnJDymD8XJFu3kMxRyXsJ64
	POkE4GizfP+1+3axu9xFd2qKvykozeAsXIpr4mkbbTFHxnmP+hXAXsReN1kxOMWZAiPkLuw
X-Google-Smtp-Source: AGHT+IHBbKVNcuM7l9dFMzW3m4txAHgl/oBl0HllzJAJ6dzOGjsTsg6Juv5F+fWERMC7Ma504B1opcnGXEPDICN6WPQ=
X-Received: by 2002:a05:690e:134a:b0:63e:34ed:a131 with SMTP id
 956f58d0204a3-63e34eda971mr6291641d50.31.1761054891971; Tue, 21 Oct 2025
 06:54:51 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251016-gs101-pd-v3-0-7b30797396e7@linaro.org> <20251016-gs101-pd-v3-4-7b30797396e7@linaro.org>
In-Reply-To: <20251016-gs101-pd-v3-4-7b30797396e7@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 21 Oct 2025 15:54:16 +0200
X-Gm-Features: AS18NWDpF262ybo6_Emnnj0aCX8cQdB1lik5qoOWoSB0z0MgCBOGMTnmDv5nouE
Message-ID: <CAPDyKFpH2p=JhkuXOxL4V3QMH8GObh0qSphPCK=OM9cNe+QmJg@mail.gmail.com>
Subject: Re: [PATCH v3 04/10] pmdomain: samsung: plug potential memleak during probe
To: =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>, 
	Peter Griffin <peter.griffin@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
	linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, stable@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 16 Oct 2025 at 17:58, Andr=C3=A9 Draszik <andre.draszik@linaro.org>=
 wrote:
>
> of_genpd_add_provider_simple() could fail, in which case this code
> leaks the domain name, pd->pd.name.
>
> Use devm_kstrdup_const() to plug this leak. As a side-effect, we can
> simplify existing error handling.
>
> Fixes: c09a3e6c97f0 ("soc: samsung: pm_domains: Convert to regular platfo=
rm driver")
> Cc: stable@vger.kernel.org
> Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Andr=C3=A9 Draszik <andre.draszik@linaro.org>

Applied for fixes, thanks!

Kind regards
Uffe


> ---
> v2:
> mark as fix, as this isn't a pure simplification
> ---
>  drivers/pmdomain/samsung/exynos-pm-domains.c | 11 +++++------
>  1 file changed, 5 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/pmdomain/samsung/exynos-pm-domains.c b/drivers/pmdom=
ain/samsung/exynos-pm-domains.c
> index 5d478bb37ad68afc7aed7c6ae19b5fefc94a9035..f53e1bd2479807988f969774b=
4b7b4c5739c1aba 100644
> --- a/drivers/pmdomain/samsung/exynos-pm-domains.c
> +++ b/drivers/pmdomain/samsung/exynos-pm-domains.c
> @@ -92,13 +92,14 @@ static const struct of_device_id exynos_pm_domain_of_=
match[] =3D {
>         { },
>  };
>
> -static const char *exynos_get_domain_name(struct device_node *node)
> +static const char *exynos_get_domain_name(struct device *dev,
> +                                         struct device_node *node)
>  {
>         const char *name;
>
>         if (of_property_read_string(node, "label", &name) < 0)
>                 name =3D kbasename(node->full_name);
> -       return kstrdup_const(name, GFP_KERNEL);
> +       return devm_kstrdup_const(dev, name, GFP_KERNEL);
>  }
>
>  static int exynos_pd_probe(struct platform_device *pdev)
> @@ -115,15 +116,13 @@ static int exynos_pd_probe(struct platform_device *=
pdev)
>         if (!pd)
>                 return -ENOMEM;
>
> -       pd->pd.name =3D exynos_get_domain_name(np);
> +       pd->pd.name =3D exynos_get_domain_name(dev, np);
>         if (!pd->pd.name)
>                 return -ENOMEM;
>
>         pd->base =3D of_iomap(np, 0);
> -       if (!pd->base) {
> -               kfree_const(pd->pd.name);
> +       if (!pd->base)
>                 return -ENODEV;
> -       }
>
>         pd->pd.power_off =3D exynos_pd_power_off;
>         pd->pd.power_on =3D exynos_pd_power_on;
>
> --
> 2.51.0.788.g6d19910ace-goog
>

