Return-Path: <devicetree+bounces-186414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EEC75ADBBCD
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 23:18:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EB7613A2985
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 21:17:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01323212F98;
	Mon, 16 Jun 2025 21:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="fKa93aoH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29CAE249F9
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 21:17:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750108673; cv=none; b=tHR7SLnqHxYf2bwXPqbOkXwDYLVUmp+k54xYnIpWZJ8nxt4x8cOCZBfm6CFpzHP/fFEUiXebQCWBkiM40aqf6noghDR6PF/VWm3qMvFynOmJYO6FXHNdWUQMGuG/G+yyTb2uXgvy4w3W0xwW7BFBwczlMMqm9/hCMTxJ31tsowA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750108673; c=relaxed/simple;
	bh=SQ4FnpsNh6VpTd7gKdL4dppDBM28FgxPAn0I0bxAUa8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=TrWuQeFZWqq33PumbRbDvFnCAXaU+mNMGZPXH06fXDrkUU1wCveCvD3q4tAz0UdaTwwsdK4hvegY8hAYoliunauqIVtj3PKxqLrsfOzemJJMucVYIbfS/B1NjwyA36P3f2Gsr3GMVd9WyllXu0zsfw5adqYcF35N/WbCmwE2Zsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=fKa93aoH; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2348ac8e0b4so21315ad.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 14:17:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1750108670; x=1750713470; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=8Dte9S5IWAzLh8eHyVjwryVoXkQBlEWABWLNFJpRbeA=;
        b=fKa93aoHdFT/NxcjjI5QQWQ4ldfK/d0no5Ble6LxWcDxRdknMriDPx5A+SejPJI4Gd
         mnM3CpIjnGtjvEi4YtKss6THyRE1zkeVCEnV0MQsXy6c1ouP7BkiVplbjg13BEbNxKB6
         a+Ie1jCjsAz6DcUOk/DUb2ZzClgKsILLuFVW0jWMQZWm8y05IYM0XmKcaoCnkY+/E1uR
         aXz14LsrhJRm0EzlvLKGjVRinEzb8/X3kj/CjZi27WtxrCxkRSKp53FmCBbGJCkKh0F/
         58wM+s4b41k++8U3i1hltnDKfn9seSeCliHtQaaWRdjroVnGBfKVxQpjXqoGLngoDOB1
         3E5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750108670; x=1750713470;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8Dte9S5IWAzLh8eHyVjwryVoXkQBlEWABWLNFJpRbeA=;
        b=Rh5OE/Nc7NRaUwrhFZNnluomKmsTFOuexH8WOLkoKNEFP6uovPOJERhkyxvXQKcFBD
         HqWQMlSbkj1kXkU+WVG47z+WSuhsZVg7EzAcGLOvF+D3GyezoaCpzbJk5u+wnfOC+JhM
         uHh9FbnEid4hmqdh3p5X5AbGLSQRz8iB6XeHyO8kEZ6EGg2Ne0FQslSCdO2f9MlR0FnA
         T5E1lrzEehWQfnfBI2nyynsKnwzwHduj5UA+nqoc/uTDZa8jQKEs5T67jGlcxx+3oEOD
         IW5GuGC/2z/K5JCYCucOEZ7d5+1chZojBmPrvLWyTlkIEwFVOo8Z13Podsk8pQsuecws
         jw/A==
X-Forwarded-Encrypted: i=1; AJvYcCUAe6XEF7C93acbaVZTIMhqpjDCXDVSlKKWGGbbAJjKHw2uzItkKNium28guq9thiZ3Kw8yMPTNUzQ1@vger.kernel.org
X-Gm-Message-State: AOJu0YycNo1k7uk5WxMwBLcRf6LGtlkBfa7eOJXlBxfR+JrttH/jInIQ
	m+w3R2w3S0HFGjllmqaOUDvDIKCmQDstiU3s0gqkthf4roZ+wWqpOAKeuAFQhpVfkA==
X-Gm-Gg: ASbGncvTMzLWllBz26RiD2K8ytw5DpEb4QOsRex4z8LcRi+0lkFaYuGz1dQrr1IKTdZ
	V4PwUdXbsZ57EZBAW2DFw79M3ttamnIl0GpxS5pm89JnCRYbX2vnMniRXd7OAEwARjhn/ikCxP+
	hOkGBDPsYpIMXI+IZkeThbNYB7NlKSAObSA8Fr1tndMwegc232KffCmGGvGF8pSN8GcwxneqrZG
	AP0KqNyv5GkDoxBOwHpk7GSPM7E7v6mHz53bvyfdnZJGzVzJWW7NyGvgbSguQEScdmEgKlMVryZ
	dBtK4FXy3NA6FNBZszAOXDSyDH5P1FHtfRgKvwE1LBs3WhRB1mrSAUWN8PksWHa07U5eHQT9Kct
	4NqpxtabhXfSv94A7+ks1
X-Google-Smtp-Source: AGHT+IGAzwl1QJPvA++EDqwFMKyBsCjjEWjJhBE98c+aEAA11TrriZ5qleZr0s+YLMW9x0aRwxpKcQ==
X-Received: by 2002:a17:902:f54c:b0:234:48b2:fd63 with SMTP id d9443c01a7336-2366f0099e0mr5348025ad.21.1750108670083;
        Mon, 16 Jun 2025 14:17:50 -0700 (PDT)
Received: from google.com (232.98.126.34.bc.googleusercontent.com. [34.126.98.232])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-748900cc047sm7614113b3a.147.2025.06.16.14.17.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 14:17:49 -0700 (PDT)
Date: Mon, 16 Jun 2025 21:17:40 +0000
From: Pranjal Shrivastava <praan@google.com>
To: Xueqi Zhang <xueqi.zhang@mediatek.com>
Cc: Yong Wu <yong.wu@mediatek.com>, Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>, Joerg Roedel <joro@8bytes.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Project_Global_Chrome_Upstream_Group@mediatek.com,
	Ning li <ning.li@mediatek.com>, linux-mediatek@lists.infradead.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org, iommu@lists.linux.dev
Subject: Re: [RFC PATCH 2/8] iommu/arm-smmu-v3: Add SMMU implementation
Message-ID: <aFCJ9IuzC1Rx2atk@google.com>
References: <20250616025628.25454-1-xueqi.zhang@mediatek.com>
 <20250616025628.25454-3-xueqi.zhang@mediatek.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250616025628.25454-3-xueqi.zhang@mediatek.com>

On Mon, Jun 16, 2025 at 10:56:08AM +0800, Xueqi Zhang wrote:
> Mediatek has its own implementation for wrapper interrupts and
> power management.So add SMMU implementation when smmu device probe.
> 
> Signed-off-by: Xueqi Zhang <xueqi.zhang@mediatek.com>
> ---
>  drivers/iommu/arm/Kconfig                        |  7 +++++++
>  drivers/iommu/arm/arm-smmu-v3/Makefile           |  3 ++-
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3-impl.c | 16 ++++++++++++++++
>  .../iommu/arm/arm-smmu-v3/arm-smmu-v3-mediatek.c | 13 +++++++++++++
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c      |  3 +++
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h      |  4 ++++
>  6 files changed, 45 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3-impl.c
>  create mode 100644 drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3-mediatek.c
> 
> diff --git a/drivers/iommu/arm/Kconfig b/drivers/iommu/arm/Kconfig
> index ef42bbe07dbe..a7f98fd0f2bf 100644
> --- a/drivers/iommu/arm/Kconfig
> +++ b/drivers/iommu/arm/Kconfig
> @@ -88,6 +88,13 @@ config ARM_SMMU_V3
>  	  the ARM SMMUv3 architecture.
>  
>  if ARM_SMMU_V3
> +config ARM_SMMU_V3_MEDIATEK
> +	bool "ARM Ltd. System MMU Version 3 (SMMUv3) MediaTek Support"
> +	depends on ARM_SMMU_V3 && ARCH_MEDIATEK
> +	help
> +	  When running on a MediaTek platform that has the custom variant
> +	  of the ARM SMMUv3, this needs to be built into the SMMU driver.
> +
>  config ARM_SMMU_V3_SVA
>  	bool "Shared Virtual Addressing support for the ARM SMMUv3"
>  	select IOMMU_SVA
> diff --git a/drivers/iommu/arm/arm-smmu-v3/Makefile b/drivers/iommu/arm/arm-smmu-v3/Makefile
> index 493a659cc66b..0670065d6e9a 100644
> --- a/drivers/iommu/arm/arm-smmu-v3/Makefile
> +++ b/drivers/iommu/arm/arm-smmu-v3/Makefile
> @@ -1,7 +1,8 @@
>  # SPDX-License-Identifier: GPL-2.0
>  obj-$(CONFIG_ARM_SMMU_V3) += arm_smmu_v3.o
> -arm_smmu_v3-y := arm-smmu-v3.o
> +arm_smmu_v3-y := arm-smmu-v3.o arm-smmu-v3-impl.o
>  arm_smmu_v3-$(CONFIG_ARM_SMMU_V3_IOMMUFD) += arm-smmu-v3-iommufd.o
> +arm_smmu_v3-$(CONFIG_ARM_SMMU_V3_MEDIATEK) += arm-smmu-v3-mediatek.o
>  arm_smmu_v3-$(CONFIG_ARM_SMMU_V3_SVA) += arm-smmu-v3-sva.o
>  arm_smmu_v3-$(CONFIG_TEGRA241_CMDQV) += tegra241-cmdqv.o
>  
> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3-impl.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3-impl.c
> new file mode 100644
> index 000000000000..d39587b965ef
> --- /dev/null
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3-impl.c
> @@ -0,0 +1,16 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2025 MediaTek Inc.
> + * Author: Ning li <ning.li@mediatek.com>
> + * Author: Xueqi Zhang <xueqi.zhang@mediatek.com>
> + */
> +
> +#include "arm-smmu-v3.h"
> +
> +struct arm_smmu_device *arm_smmu_v3_impl_init(struct arm_smmu_device *smmu)
> +{
> +#if IS_ENABLED(CONFIG_ARM_SMMU_V3_MEDIATEK)
> +	smmu = arm_smmu_v3_impl_mtk_init(smmu);
> +#endif
> +	return smmu;
> +}
> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3-mediatek.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3-mediatek.c
> new file mode 100644
> index 000000000000..381268968185
> --- /dev/null
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3-mediatek.c
> @@ -0,0 +1,13 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2025 MediaTek Inc.
> + * Author: Ning li <ning.li@mediatek.com>
> + * Author: Xueqi Zhang <xueqi.zhang@mediatek.com>
> + */
> +
> +#include "arm-smmu-v3.h"
> +
> +struct arm_smmu_device *arm_smmu_v3_impl_mtk_init(struct arm_smmu_device *smmu)
> +{
> +	return NULL;
> +}
> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> index 10cc6dc26b7b..d36124a6bb54 100644
> --- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> @@ -4754,6 +4754,9 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>  	}
>  	ioaddr = res->start;
>  
> +	smmu = arm_smmu_v3_impl_init(smmu);
> +	if (IS_ERR(smmu))
> +		return PTR_ERR(smmu);

I'd suggest adding ops to struct arm_smmu_impl_ops and use them. Please
see how Nvidia's implementation makes use of `arm_smmu_impl_probe`,
maybe we could improve that function to handle mtk smmu as well.

>  	/*
>  	 * Don't map the IMPLEMENTATION DEFINED regions, since they may contain
>  	 * the PMCG registers which are reserved by the PMU driver.
> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h
> index ea41d790463e..99eeb6143c49 100644
> --- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h
> @@ -998,6 +998,10 @@ int arm_smmu_cmdq_issue_cmdlist(struct arm_smmu_device *smmu,
>  				struct arm_smmu_cmdq *cmdq, u64 *cmds, int n,
>  				bool sync);
>  
> +struct arm_smmu_device *arm_smmu_v3_impl_init(struct arm_smmu_device *smmu);
> +#if IS_ENABLED(CONFIG_ARM_SMMU_V3_MEDIATEK)
> +struct arm_smmu_device *arm_smmu_v3_impl_mtk_init(struct arm_smmu_device *smmu);
> +#endif

We'd prefer to avoid implementation-specific #if CONFIG_* across the
driver as much as possible.

>  #ifdef CONFIG_ARM_SMMU_V3_SVA
>  bool arm_smmu_sva_supported(struct arm_smmu_device *smmu);
>  void arm_smmu_sva_notifier_synchronize(void);
> -- 
> 2.46.0

Thanks,
Praan

