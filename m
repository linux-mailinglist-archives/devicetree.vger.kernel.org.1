Return-Path: <devicetree+bounces-77829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D53891014A
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 12:17:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C5DC1F22A80
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2024 10:17:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 087F01A8C39;
	Thu, 20 Jun 2024 10:17:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BAB4500E
	for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 10:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718878646; cv=none; b=IsAuN5lTmAEhcAdWokXaX+wHqX2y1pYjRSt7pdkk3VFhtbGoMuN5dWL/xx2ulZo+pF3arNvzlCo7x0dg5MYy+wtipHuYyU4kWIH9BBUuRr4OWpJO1/m0xT8Na/mWmWbXHKP6INUgEf6JxnlIjO4NvWQ5XD8FNNbbhn5pHbV9VRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718878646; c=relaxed/simple;
	bh=1I3ur0ocbWFP4fWAh3mMdb00sUlMHr9RGoHljdDyqIc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=LQlcOSE4KKru0ZAAZ6pnEe5gCmVX1zvGYvwpCh7yB9KQlV6dvnmagbOBNcI73AeBJ34uu55CWmb6IU4k6fTDEYLGxD+9TUn2OeIWWU3h0YFuIimCBiY9afHWjzauq2lHQRSEMcFH5w7wbaHp/yGK5vwG+34IDCSvKFbEILI1Wjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=csie.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ec0f3b9bb8so6713431fa.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:17:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718878639; x=1719483439;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d+lxYOzrcMs2AvPs+DTpEs/Zqfcyw5bdiw2jrVTDM7w=;
        b=On4hO9uT8Wl+uMMxy+boCEKJi8Ub3CuRUy5v9Pv0WlpqegH9Bf+DVu8K5GKi88rP7h
         qQhqgLBXGmiInbrWv/A1mr4CQBKsGmf67nQ2SYGv3TWMzbjd8GMQe4O7tv20riGwxzTW
         uK2Xzb/O7F7fzLnxpqQFiyfuMBSS/iiJKI7H37PNE9kAHKlA4ma+pmKHuWvKPFGgCE1N
         Vzvy2HQMue6dDpN91Rv3cBkqMGZzxDEewOziz2EX/R6AqQCjV9LPa27Cey6IebGH6Mh5
         wgoMj8JN9v5fjtZdD5uU3Q6lmt8K+jT+5w4xQr5E31sILP7WpX9qT8vYEzup83YDK720
         0r4w==
X-Forwarded-Encrypted: i=1; AJvYcCXC3PIk9hWciNmzqA9RSIlM9nHp/AYpmPG6ux5bvogCSIq70BrakV98uiTMvNoz6L8+PJnH9luv+LliArnjI3ilFp3q2O1/692MLA==
X-Gm-Message-State: AOJu0YydYqUSogc+pfALTIPCXRCLHVIwSEIPDpgd50ipQHZQImpme0t3
	gpoc20wEXmwtD36RkhmWku7+BSpP7C3UDCyJEM/ZYwHphmHqy/Yj7Ja4U9Ze/RA=
X-Google-Smtp-Source: AGHT+IEHRDN7Y/hTRnitY+zKbDHhciao12bR9ALJW099WSuRojZny9Z8UdJ8WMaHKULioz/AfRh6qQ==
X-Received: by 2002:a2e:8199:0:b0:2ec:3423:8729 with SMTP id 38308e7fff4ca-2ec3ce27b37mr33107261fa.0.1718878638555;
        Thu, 20 Jun 2024 03:17:18 -0700 (PDT)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com. [209.85.208.179])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec25647ec2sm15028361fa.56.2024.06.20.03.17.18
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Jun 2024 03:17:18 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ec0f3b9bb8so6712321fa.1
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2024 03:17:18 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWC2p/wKkRT9VwiHtUifNhlJLW15XTIcoGKjs3dZZ2To8lU36MhcdWxcemSmNbeash9S51lj+NkixYzZ5RRtuZXFQXStNUzXhgZKQ==
X-Received: by 2002:a2e:740a:0:b0:2eb:f7a4:7289 with SMTP id
 38308e7fff4ca-2ec3cfe1769mr29351241fa.51.1718878637724; Thu, 20 Jun 2024
 03:17:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240616224056.29159-1-andre.przywara@arm.com> <20240616224056.29159-3-andre.przywara@arm.com>
In-Reply-To: <20240616224056.29159-3-andre.przywara@arm.com>
Reply-To: wens@csie.org
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 20 Jun 2024 18:17:01 +0800
X-Gmail-Original-Message-ID: <CAGb2v66mFF6ayXtTQk2C9EaH3TJ=3uVJr_y3WvCkdPmVE43S+w@mail.gmail.com>
Message-ID: <CAGb2v66mFF6ayXtTQk2C9EaH3TJ=3uVJr_y3WvCkdPmVE43S+w@mail.gmail.com>
Subject: Re: [PATCH v2 2/5] iommu: sun50i: allocate page tables from below 4 GiB
To: Andre Przywara <andre.przywara@arm.com>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Samuel Holland <samuel@sholland.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Ryan Walklin <ryan@testtoast.com>, 
	Philippe Simons <simons.philippe@gmail.com>, iommu@lists.linux.dev, 
	devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 17, 2024 at 6:42=E2=80=AFAM Andre Przywara <andre.przywara@arm.=
com> wrote:
>
> The Allwinner IOMMU is a strict 32-bit device, with its input addresses,
> the page table root pointer as well as both level's page tables and also
> the target addresses all required to be below 4GB.
> The Allwinner H6 SoC only supports 32-bit worth of physical addresses
> anyway, so this isn't a problem so far, but the H616 and later SoCs exten=
d
> the PA space beyond 32 bit to accommodate more DRAM.
> To make sure we stay within the 32-bit PA range required by the IOMMU,
> force the memory for the page tables to come from below 4GB. by using
> allocations with the DMA32 flag.
> Also reject any attempt to map target addresses beyond 4GB, and print a
> warning to give users a hint while this fails.
>
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>

Reviewed-by: Chen-Yu Tsai <wens@csie.org>

> ---
>  drivers/iommu/sun50i-iommu.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
> index dd3f07384624c..20a07f829085d 100644
> --- a/drivers/iommu/sun50i-iommu.c
> +++ b/drivers/iommu/sun50i-iommu.c
> @@ -602,6 +602,14 @@ static int sun50i_iommu_map(struct iommu_domain *dom=
ain, unsigned long iova,
>         u32 *page_table, *pte_addr;
>         int ret =3D 0;
>
> +       /* the IOMMU can only handle 32-bit addresses, both input and out=
put */
> +       if ((uint64_t)paddr >> 32) {
> +               ret =3D -EINVAL;
> +               dev_warn_once(iommu->dev,
> +                             "attempt to map address beyond 4GB\n");
> +               goto out;
> +       }
> +
>         page_table =3D sun50i_dte_get_page_table(sun50i_domain, iova, gfp=
);
>         if (IS_ERR(page_table)) {
>                 ret =3D PTR_ERR(page_table);
> @@ -682,7 +690,8 @@ sun50i_iommu_domain_alloc_paging(struct device *dev)
>         if (!sun50i_domain)
>                 return NULL;
>
> -       sun50i_domain->dt =3D iommu_alloc_pages(GFP_KERNEL, get_order(DT_=
SIZE));
> +       sun50i_domain->dt =3D iommu_alloc_pages(GFP_KERNEL | GFP_DMA32,
> +                                             get_order(DT_SIZE));
>         if (!sun50i_domain->dt)
>                 goto err_free_domain;
>
> @@ -997,7 +1006,7 @@ static int sun50i_iommu_probe(struct platform_device=
 *pdev)
>
>         iommu->pt_pool =3D kmem_cache_create(dev_name(&pdev->dev),
>                                            PT_SIZE, PT_SIZE,
> -                                          SLAB_HWCACHE_ALIGN,
> +                                          SLAB_HWCACHE_ALIGN | SLAB_CACH=
E_DMA32,
>                                            NULL);
>         if (!iommu->pt_pool)
>                 return -ENOMEM;
> --
> 2.39.4
>

