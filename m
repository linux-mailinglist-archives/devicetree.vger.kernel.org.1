Return-Path: <devicetree+bounces-245186-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 08842CAD423
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 14:27:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D6DD7307A23F
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 13:24:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84E87314B91;
	Mon,  8 Dec 2025 13:24:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="udcYsB6K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDF883128AB
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765200296; cv=none; b=HcAmPHQi4bI6iwb4Glbx5nxa6j5MG5mLIiYhmjBgyr+XgH7Vrww/wgCVlTJb2LUOplrDai4IGqGoEJ7T3gXfLgYLCZ/7JdvI5v2C5caXHd9ryUYArN5pkVEXXODCZa5uYHW6Oau/7BEXYmN9ab+Ra0OJejXBQS9+YrmvvjrbM24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765200296; c=relaxed/simple;
	bh=N/vD9NIMBdx0UGaCEYgwqH36OYsS96bKye28iDSL2l8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WRMSP+5x2ozcNvWmFegjAnH6cMLPyImS21Duy0tcjmnJ9oHBOVS2crMZRUz5f7E6fNyq+iAABIWj3lU7qRTyNJxqKksIVHkXaJ/vA9NidpY1ZM2fMEDoRegp3Vk1ZyDQgWF2sNCWRnkbMnbvZdqhVWFEYnuuMgngpAVb+N1nXy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=udcYsB6K; arc=none smtp.client-ip=209.85.128.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-78aa49cde3dso39835947b3.1
        for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 05:24:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1765200293; x=1765805093; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mpu/cs/5xHVC6KpSzx7cFK/d7AzU0ZQ/t0FxG+WvyB0=;
        b=udcYsB6Kt0ZSGCbE/dnm6wSEYnjJT3BM7E/Mum+Tb5gCQfhLNIbJkSwJpoyrZKA/+b
         04YtkOPe0Mmi230gyIjaATyHEjyetNhCtt9Wi1+7X80L+Tfi6ZKbb1xOnrW4doNFjuj4
         u/YZ8X4w3byevPJM5kCE71kMZ47kz3wUL/+PyD9m3NILQzHZBO0tqzKlARH73KkRyacY
         Q9zbwumWgVpgPePA7edVJkfixioOKbm4k5Q+zYeHL+guwTa499aPbuhJEAJlnuxaSDEg
         mY154hcvdb+ZbH8Fd+mQ2J+cdFj3UpbqI3j3J7ywmUDmbhMEhzVTgNtiK/lNN+trTxLo
         tlbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765200293; x=1765805093;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mpu/cs/5xHVC6KpSzx7cFK/d7AzU0ZQ/t0FxG+WvyB0=;
        b=CV+EqQiMD2M1+cnePUcg9muMSPCHYbf8u6N9bWDAxVsqajKCUnoEshYeMDykTVzZ8u
         27aS0T0HeM2z4Q8zof7RwyubXGhsaLcIGhBi2czibjjeDNtwnQOR7d1448mRsC2W10Ut
         NnAAB31/Y+yU/yrNbFV0PHshnuuLpLGXYjKqFSyM8EL9DGobw9ip98NUfodb5n7AfKH2
         0wehUS7Z+mtLE84aJcPQ1A3L5IK54SKTatpmdB7GqJQb1iSiZrQwCmGVIo4XuwNr5rMB
         olkLjf/hQDcinOFGDRIPc15iavkDcoGclYFy/pr7xenaemJK4kHwNjKr8sv3pb9DCq7m
         HQhg==
X-Forwarded-Encrypted: i=1; AJvYcCU/zAw/ssyaohpQxcSlUwYnrMGZmJtmP+1Tuo33+m/CMhymqiE1pSRULGIrdS9opR+8ncerMCsqulSR@vger.kernel.org
X-Gm-Message-State: AOJu0YyzQ0bp9tb/r7PVYKBu6+B04MFrAHtuTeSXT7BtewJe07SIK3m3
	xKOgshJV85LbsLB+NJJZCdnsqroiKP0dnBzRAM+VkBsRw5u6KDvrxMwPyr/90Rk7Kdll1rXCU2N
	ab1csljlraOds2pY+Bx7ZUaygul3AKTGPco9bfCUqUQ==
X-Gm-Gg: ASbGncs+fLeaH/BE1SXQVE0+kOu92a+plE1LeWqRfoHG8oT/rVUypeiTaJ/qH/Qoepw
	ncIe6KPbZfqZDMuhfPyFhSLmUhH3XpZ1ypJjgCZ7UJ5Z2KGsGoG8QVft1+8H8vFeUlS8W7V+FHx
	oIEj9BCHFxvhiPMV+RaWIXMwuvUYMraJj4K9TtZtS35YroqogfiGXugBeaEeNystV0mHCBsbfuT
	J29zh6PbP2wy1JmEiuHqLFf2hBlTK/gEq96JGkp42jIGytnfsUjtHNtcwuqNj7cVDjBrA4i
X-Google-Smtp-Source: AGHT+IE0AuRxNzvS5+Z+cFGpwMA1CWuN4MV7VcMxk53grVuq/mo6go4caopmooiga3p9pToHn9RL/9AL66V4VXW+Eyo=
X-Received: by 2002:a05:690c:6307:b0:78c:672:9b40 with SMTP id
 00721157ae682-78c33c64ccfmr69913917b3.55.1765200292824; Mon, 08 Dec 2025
 05:24:52 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251119-pmdomain-hierarchy-onecell-v4-0-f25a1d5022f8@baylibre.com>
 <20251119-pmdomain-hierarchy-onecell-v4-2-f25a1d5022f8@baylibre.com>
In-Reply-To: <20251119-pmdomain-hierarchy-onecell-v4-2-f25a1d5022f8@baylibre.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 8 Dec 2025 14:24:16 +0100
X-Gm-Features: AQt7F2o5oTlgmjrE1oNxDidWCM19vZY0IV7rfLV5Fo8hM3AHBEnUaqgxQkEhKFU
Message-ID: <CAPDyKFq-aGXVTHCqPVQHkVRTffUS+BdK68h2zWDrBpnQGUC6mw@mail.gmail.com>
Subject: Re: [PATCH RFC v4 2/2] pmdomain: arm_scmi: add support for domain hierarchies
To: "Kevin Hilman (TI.com)" <khilman@baylibre.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org, arm-scmi@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Thu, 20 Nov 2025 at 01:58, Kevin Hilman (TI.com)
<khilman@baylibre.com> wrote:
>
> After primary SCMI pmdomain is created, use new of_genpd helper to
> check subdomain mappings, and create domain hierarchy.
>
> Signed-off-by: Kevin Hilman (TI.com) <khilman@baylibre.com>
> ---
>  drivers/pmdomain/arm/scmi_pm_domain.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/pmdomain/arm/scmi_pm_domain.c b/drivers/pmdomain/arm/scmi_pm_domain.c
> index 8fe1c0a501c9..a36bb50c7cf6 100644
> --- a/drivers/pmdomain/arm/scmi_pm_domain.c
> +++ b/drivers/pmdomain/arm/scmi_pm_domain.c
> @@ -41,7 +41,7 @@ static int scmi_pd_power_off(struct generic_pm_domain *domain)
>
>  static int scmi_pm_domain_probe(struct scmi_device *sdev)
>  {
> -       int num_domains, i;
> +       int num_domains, i, ret;
>         struct device *dev = &sdev->dev;
>         struct device_node *np = dev->of_node;
>         struct scmi_pm_domain *scmi_pd;
> @@ -110,7 +110,14 @@ static int scmi_pm_domain_probe(struct scmi_device *sdev)
>
>         dev_set_drvdata(dev, scmi_pd_data);
>
> -       return of_genpd_add_provider_onecell(np, scmi_pd_data);
> +       ret = of_genpd_add_provider_onecell(np, scmi_pd_data);
> +       if (ret)
> +               return ret;
> +
> +       /* check for (optional) subdomain mapping with power-domain-map */
> +       of_genpd_add_subdomain_map(np, scmi_pd_data);

I think we need to take better care of dealing with errors here.
Typically a negative return value should be treated as an error, while
0 should be fine, right?

> +
> +       return ret;
>  }
>
>  static void scmi_pm_domain_remove(struct scmi_device *sdev)
>
> --
> 2.51.0
>

Moreover, I wonder if we need to update the scmi-DT doc [1] too?

Kind regards
Uffe

[1]
Documentation/devicetree/bindings/firmware/arm,scmi.yaml

