Return-Path: <devicetree+bounces-111291-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7464B99E093
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 10:13:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2A089281D8E
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 08:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 073611B85DF;
	Tue, 15 Oct 2024 08:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="PVo7XQrQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578261B85E3
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 08:13:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728980019; cv=none; b=kxvguarOAnzndKKYwoqab97l95rlMTvx7Byegc4+ZVbv5jgb9y0w43/SWfFrp/i7JrEpGnE0M+ixLkgY8m+Q9IAWJ4k5GZZCYEw8r8KJnWYbprvdNGUKltbCCeF/sKe6rNFZz5TsH7+S9skvPAEWsOJX8UTxDAKceQ2T4rCsi+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728980019; c=relaxed/simple;
	bh=76s6i7gYpLDwoZZ7QD2swz8F8rh0lhU+G6L9FONSb5M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YUly0eDsCRDFPy9VEcjlY1U4jnbpMx3lcorjzbp/cjV1AvJLLGmbPhPbWDJi5ywNym0uFVjMM6N+TwuqgPUSxwloeG2PMM94+H8dQpisCy2RsyRNvt8+zbs1q0M5M6yTg/QRcU9dS/I6IGQO7KjVeU4bX201c1PBzVCbR/ZMBKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=PVo7XQrQ; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=google.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-20ca03687fdso451505ad.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 01:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1728980017; x=1729584817; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TA16MG/7R5xQpvUXP/XMeAYs+VSbwm9U48Qbuo70jHU=;
        b=PVo7XQrQxl/ZeAzmVU1K8Mlxan4jFpC1NW7ACazgu4DnBtetXP53gYR/r85RYBSdZ2
         SbB7ZbJjh/cL+gO4B25uTv3AqoSiLd9HD6moHH0eyhBTWdC6qMslVucl4BBbRc6CK1Mw
         XaGXeGl6paorD8dVuIUganjuGaC4lWOSmBLeKwlfenij6vR0YlwtibhY57VHlLiF8h8K
         W0EAUPyN4yfce0WEXMbDkcC/mxi94MWwn70/zCfh3mGDdoW307XhqDhVzm+pG/aWLPlJ
         F240mDycqz3bt7jlpxYhqHhYQdoYhKNiLtMb6kaBiroreEo+3dzlnUnaKu0yMiRnOqlA
         sD4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728980017; x=1729584817;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TA16MG/7R5xQpvUXP/XMeAYs+VSbwm9U48Qbuo70jHU=;
        b=LKVOHB3DROdW/80VtVWueab9bbMLN9X2wKl2Uk6zTbZlLGSind/ZjtMGfauTR6LfkK
         8NY6bfDIhxAWJ6rgY597EJs0xOvfdHq54PYLzkxmZ99j2LB+qRflIn4XoVfZHPpHad+b
         wcxsoUm+IWQ7ZR2scbuRxNQWe2jU2X5oSqySXiterZzbg21oGG1Qp5/+ao/SpsmWnZSC
         cm++sXXXN3/CsHXK34abT1FXjGfP/6BCbEmyci6YP2GAaxQGtJOFMTk3ahY3YD/1f0Df
         aLNr29sYmXv3FQSPNfANKD36zFOW9GmOKEcHLdGxTJsYM5OQnCVEvAlkWa++X0Xu7cno
         i44w==
X-Forwarded-Encrypted: i=1; AJvYcCXB8q88tTjIYc0JWFiFd/DhUn1Pz6ykDJ3RLFq0365xUNew+F37B+nCamAR+6TZcI5nv92U38q6L+Ew@vger.kernel.org
X-Gm-Message-State: AOJu0Yx2wUGlMqJbJKHHSumNqF5OyMq3ZD352LiF0n4AOsYZdh/i6pPF
	Q06klma7rEVrUQkzFt4RV8X6LiF/FrLPhira5gFUT55dDS04rcFlTh0ay5rTvg==
X-Google-Smtp-Source: AGHT+IFPYSMCddOeaPqNVedMQyNkNHHitiRtEnpSVjBP9NxlbBg1ePA85fokMg2Rqob3akpUMvOQwg==
X-Received: by 2002:a17:903:41c8:b0:20b:81bb:4a81 with SMTP id d9443c01a7336-20cc02a3b50mr5194105ad.7.1728980017312;
        Tue, 15 Oct 2024 01:13:37 -0700 (PDT)
Received: from google.com (62.166.143.34.bc.googleusercontent.com. [34.143.166.62])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d17f87cbcsm6978725ad.8.2024.10.15.01.13.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 01:13:36 -0700 (PDT)
Date: Tue, 15 Oct 2024 08:13:28 +0000
From: Pranjal Shrivastava <praan@google.com>
To: "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
	Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Joy Zou <joy.zou@nxp.com>,
	linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	Peng Fan <peng.fan@nxp.com>, Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH RFC 2/2] iommu/arm-smmu-v3: Bypass SID0 for NXP i.MX95
Message-ID: <Zw4kKDFOcXEC78mb@google.com>
References: <20241015-smmuv3-v1-0-e4b9ed1b5501@nxp.com>
 <20241015-smmuv3-v1-2-e4b9ed1b5501@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241015-smmuv3-v1-2-e4b9ed1b5501@nxp.com>

On Tue, Oct 15, 2024 at 11:14:43AM +0800, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX95 eDMA3 connects to DSU ACP, supporting dma coherent memory to
> memory operations. However TBU is in the path between eDMA3 and ACP,
> need to bypass the default SID 0 to make eDMA3 work properly.
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c | 19 ++++++++++++++++---
>  drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h |  1 +
>  2 files changed, 17 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> index 737c5b88235510e3ddb91a28cecbdcdc14854b32..3db7b3e2ac94e16130fc0356f7954ffa1a9dfb33 100644
> --- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
> @@ -80,6 +80,7 @@ DEFINE_MUTEX(arm_smmu_asid_lock);
>  static struct arm_smmu_option_prop arm_smmu_options[] = {
>  	{ ARM_SMMU_OPT_SKIP_PREFETCH, "hisilicon,broken-prefetch-cmd" },
>  	{ ARM_SMMU_OPT_PAGE0_REGS_ONLY, "cavium,cn9900-broken-page1-regspace"},
> +	{ ARM_SMMU_OPT_IMX95_BYPASS_SID0, "nxp,imx95-bypass-sid-zero"},
>  	{ 0, NULL},
>  };

Aghh, let's not put HW-specific bypass under `arm_smmu_options`.
Otherwise, this might become a huge list of SoCs wanting to bypass SIDs.

>  
> @@ -4465,7 +4466,7 @@ static void __iomem *arm_smmu_ioremap(struct device *dev, resource_size_t start,
>  	return devm_ioremap_resource(dev, &res);
>  }
>  
> -static void arm_smmu_rmr_install_bypass_ste(struct arm_smmu_device *smmu)
> +static void arm_smmu_install_bypass_ste(struct arm_smmu_device *smmu)
>  {
>  	struct list_head rmr_list;
>  	struct iommu_resv_region *e;
> @@ -4496,6 +4497,18 @@ static void arm_smmu_rmr_install_bypass_ste(struct arm_smmu_device *smmu)
>  	}
>  
>  	iort_put_rmr_sids(dev_fwnode(smmu->dev), &rmr_list);
> +
> +	if (smmu->options & ARM_SMMU_OPT_IMX95_BYPASS_SID0) {
> +		int ret = arm_smmu_init_sid_strtab(smmu, 0);
> +
> +		if (ret) {
> +			dev_err(smmu->dev, "i.MX95 SID0 bypass failed\n");
> +			return;
> +		}
> +
> +		arm_smmu_make_bypass_ste(smmu,
> +					 arm_smmu_get_step_for_sid(smmu, 0));
> +	}
>  }

Umm.. this was specific for rmr not a generic thing. I'd suggest to
avoid meddling with the STEs directly for acheiving bypass. Playing
with the iommu domain type could be neater. Perhaps, modify the
ops->def_domain_type to return an appropriate domain?

In general, adding a property/config for bypassing SIDs/devices could
potentially cause security concerns if *somehow* a device can spoof an
SID. For example, if a PCIe device is bypassed it would be easy for
another PCIe endpoint to spoof it's ID. Similarly, certain HW
implementations may provide the option to programmable SIDs, for
example, a HW register to set SIDs, which if compromised can spoof other
SIDs. Although, I'd like to see what the others think about this.

>  
>  static void arm_smmu_impl_remove(void *data)
> @@ -4614,8 +4627,8 @@ static int arm_smmu_device_probe(struct platform_device *pdev)
>  	/* Record our private device structure */
>  	platform_set_drvdata(pdev, smmu);
>  
> -	/* Check for RMRs and install bypass STEs if any */
> -	arm_smmu_rmr_install_bypass_ste(smmu);
> +	/* Install bypass STEs if any */
> +	arm_smmu_install_bypass_ste(smmu);
>  
>  	/* Reset the device */
>  	ret = arm_smmu_device_reset(smmu);
> diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h
> index 1e9952ca989f87957197f4d4b400f9d74bb685ac..06481b923284776e7dc4f3301e5cbe8ab7869a9c 100644
> --- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h
> +++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.h
> @@ -733,6 +733,7 @@ struct arm_smmu_device {
>  #define ARM_SMMU_OPT_MSIPOLL		(1 << 2)
>  #define ARM_SMMU_OPT_CMDQ_FORCE_SYNC	(1 << 3)
>  #define ARM_SMMU_OPT_TEGRA241_CMDQV	(1 << 4)
> +#define ARM_SMMU_OPT_IMX95_BYPASS_SID0	(1 << 5)
>  	u32				options;
>  
>  	struct arm_smmu_cmdq		cmdq;
>
> -- 
> 2.37.1
> 
>

Thanks,
Pranjal

