Return-Path: <devicetree+bounces-57874-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C4C89F1A0
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:02:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4AF001F22692
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:02:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E87D515B10C;
	Wed, 10 Apr 2024 12:02:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="F5YryM7F"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C42F01598F2
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712750544; cv=none; b=F5ClEdptiDzJasSjbX0+cl6MLpH5BO+G3TKBG0DF45gifMfl7Ypn3L6K80p6vUm4uD+TzlMzdtGSOYR17iyaJI0hCTkSdBEfxOKJp2fGRYpzjyPdGsYzi+FSOly7drTlsFEG5lQOk1m0puN0H8XSBs9N/+xO/NDOck8jqUhAM1o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712750544; c=relaxed/simple;
	bh=xB8xNT5TZ+8idLPQRdpVsxTMm4mthuyK1wxukUtb10c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Yqwyvo+o6hAJd7B5NyYLq6lyDgiHSNOyJfAHUZoD4LKAjRtXupPEBMl92M+zHmYiNDN0ylqgB6mPIKtnjUsul4G6lUUAJ04OAwx+eeVDU713WX7HP6qS+hfMZ9Yj5tGCjphUO0N+osy5HldN8vknB0vBsA55CiFdUFETjLIbfJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=F5YryM7F; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-516db2214e6so5602430e87.1
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712750540; x=1713355340; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2rOsmIDCW9tEFKE8tS+sIYykh0jMck+s4Yo4qCRXhxo=;
        b=F5YryM7F1vB9+DeuXt/Zx6l2B9fIIjuSJRQadM3cyAHJw3flXBsZvvzKAjmdN8VGW/
         HUQlXm6T1lhn030qo4Cqyydl0NqdtPU9kUsez6oth4Pvx0ETmV0eul8TFMSrONsHBjbp
         dnPDdIVK8EPj3HiTdbq+iYhnEePTqLNc7uX1+JecPecBqT9p+9ibpds80SluKPilo/pS
         KtOg1/Lb6IJ4F6Rhkh0lH02k7nX9IZpNk1/vrS/BGJ1BdmuFXaRABtKTN3HDwgnrkFiU
         RL2kOURq8XKY5tvMfdd1u67+aXxHftyAAHfDApqDbKXQ/TZhaR4Eqp0cT3Y/KX9nYLzr
         5GDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712750540; x=1713355340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2rOsmIDCW9tEFKE8tS+sIYykh0jMck+s4Yo4qCRXhxo=;
        b=rKI3IrYUydrvQ0ZgLQ5Jj8KGBsNFfa1Nh/j1KVoWjU46HL29o4hMzZBirzau3Lndwi
         Fnqk4fN5eyHwLDFnIK8kybaul8lpI7VmFe5FSyIwwJCxFHDHKcC0UMZv3QikUljXQ48Y
         UPrrIm+Ool6dKq1T5e3ZEiDnKYvg65UqyS4j8b+zLoJupcH5/+Y8GpIhjYpIgI2ARzn6
         MSBZTs2NqvQ2GT/GG7h4PIXO6WFSPNs0DzINVm5pFp0xRpoUtPovVBTlZljfsjAiUvVB
         AabxUH799uR82khdN5me3wySx8VuGgERBQpoYce5vE+o1HG/2UIqkkNwSGXUuUQrHCss
         95Dg==
X-Forwarded-Encrypted: i=1; AJvYcCWbaoM7uQmyas/6KvYLotMR8UkRZyIy6/4kVtgnn5CqVU13fEs/yk12H3uEXN436vNT8+uQO6FfG9mdNhUc1CL91N/HTw7QjTX/RA==
X-Gm-Message-State: AOJu0YxmCvS97Pf7UQ8oD79YG1JPsuk2up6pDCFPrLpfpF4eQ8NLpl2+
	uaRrfRwxV64BFNzhVOwZAOcZH0JUfRW+4LuhUxjZKmU2pXb+74culJN8/+ch+UI=
X-Google-Smtp-Source: AGHT+IGilayBjVPPPsJrW4/d24tX8SyRvpVvblAytZMmw2oDFnm170N+wpXAz9u0jhqkmG3BfjRZ1g==
X-Received: by 2002:a2e:bc18:0:b0:2d8:5a4b:1623 with SMTP id b24-20020a2ebc18000000b002d85a4b1623mr2006539ljf.7.1712750539998;
        Wed, 10 Apr 2024 05:02:19 -0700 (PDT)
Received: from [172.30.204.89] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id bg22-20020a05651c0b9600b002d6c051d299sm1796301ljb.56.2024.04.10.05.02.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 05:02:19 -0700 (PDT)
Message-ID: <38e9be7d-f52d-4610-88d8-362557326b4d@linaro.org>
Date: Wed, 10 Apr 2024 14:02:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 2/7] iommu/arm-smmu-qcom-tbu: Add Qualcomm TBU driver
To: Georgi Djakov <quic_c_gdjako@quicinc.com>, will@kernel.org,
 robin.murphy@arm.com, joro@8bytes.org, iommu@lists.linux.dev
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, andersson@kernel.org,
 robdclark@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 quic_cgoldswo@quicinc.com, quic_sukadev@quicinc.com, quic_pdaly@quicinc.com,
 quic_sudaraja@quicinc.com, djakov@kernel.org
References: <20240329210638.3647523-1-quic_c_gdjako@quicinc.com>
 <20240329210638.3647523-3-quic_c_gdjako@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240329210638.3647523-3-quic_c_gdjako@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/29/24 22:06, Georgi Djakov wrote:
> Operating the TBUs (Translation Buffer Units) from Linux on Qualcomm
> platforms can help with debugging context faults. To help with that,
> the TBUs can run ATOS (Address Translation Operations) to manually
> trigger address translation of IOVA to physical address in hardware
> and provide more details when a context fault happens.
> 
> The driver will control the resources needed by the TBU to allow
> running the debug operations such as ATOS, check for outstanding
> transactions, do snapshot capture etc.
> 
> Signed-off-by: Georgi Djakov <quic_c_gdjako@quicinc.com>
> ---
>   drivers/iommu/Kconfig                         |   9 +
>   drivers/iommu/arm/arm-smmu/Makefile           |   1 +
>   .../iommu/arm/arm-smmu/arm-smmu-qcom-tbu.c    | 372 ++++++++++++++++++
>   drivers/iommu/arm/arm-smmu/arm-smmu-qcom.h    |   2 +
>   drivers/iommu/arm/arm-smmu/arm-smmu.h         |   2 +
>   5 files changed, 386 insertions(+)
>   create mode 100644 drivers/iommu/arm/arm-smmu/arm-smmu-qcom-tbu.c
> 
> diff --git a/drivers/iommu/Kconfig b/drivers/iommu/Kconfig
> index 0af39bbbe3a3..b699e88f42c5 100644
> --- a/drivers/iommu/Kconfig
> +++ b/drivers/iommu/Kconfig
> @@ -374,6 +374,15 @@ config ARM_SMMU_QCOM
>   	  When running on a Qualcomm platform that has the custom variant
>   	  of the ARM SMMU, this needs to be built into the SMMU driver.
>   
> +config ARM_SMMU_QCOM_TBU
> +	bool "Qualcomm TBU driver"
> +	depends on ARM_SMMU_QCOM
> +	help
> +	  The SMMUs on Qualcomm platforms may include Translation Buffer
> +	  Units (TBUs) for each master. Enabling support for these units
> +	  allows to operate the TBUs and obtain additional information
> +	  when debugging memory management issues like context faults.
> +
>   config ARM_SMMU_QCOM_DEBUG
>   	bool "ARM SMMU QCOM implementation defined debug support"
>   	depends on ARM_SMMU_QCOM
> diff --git a/drivers/iommu/arm/arm-smmu/Makefile b/drivers/iommu/arm/arm-smmu/Makefile
> index 2a5a95e8e3f9..c35ff78fcfd5 100644
> --- a/drivers/iommu/arm/arm-smmu/Makefile
> +++ b/drivers/iommu/arm/arm-smmu/Makefile
> @@ -3,4 +3,5 @@ obj-$(CONFIG_QCOM_IOMMU) += qcom_iommu.o
>   obj-$(CONFIG_ARM_SMMU) += arm_smmu.o
>   arm_smmu-objs += arm-smmu.o arm-smmu-impl.o arm-smmu-nvidia.o
>   arm_smmu-$(CONFIG_ARM_SMMU_QCOM) += arm-smmu-qcom.o
> +arm_smmu-$(CONFIG_ARM_SMMU_QCOM_TBU) += arm-smmu-qcom-tbu.o
>   arm_smmu-$(CONFIG_ARM_SMMU_QCOM_DEBUG) += arm-smmu-qcom-debug.o
> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom-tbu.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom-tbu.c
> new file mode 100644
> index 000000000000..e3202ed89566
> --- /dev/null
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom-tbu.c
> @@ -0,0 +1,372 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include <linux/interconnect.h>
> +#include <linux/iopoll.h>
> +#include <linux/list.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/mutex.h>
> +#include <linux/platform_device.h>
> +#include <linux/spinlock.h>
> +
> +#include "arm-smmu.h"
> +#include "arm-smmu-qcom.h"
> +
> +#define TBU_DBG_TIMEOUT_US		100
> +#define DEBUG_AXUSER_REG		0x30
> +#define DEBUG_AXUSER_CDMID		GENMASK_ULL(43, 36)
> +#define DEBUG_AXUSER_CDMID_VAL		0xff
> +#define DEBUG_PAR_REG			0x28
> +#define DEBUG_PAR_FAULT_VAL		BIT(0)
> +#define DEBUG_PAR_PA			GENMASK_ULL(47, 12)
> +#define DEBUG_SID_HALT_REG		0x0
> +#define DEBUG_SID_HALT_VAL		BIT(16)
> +#define DEBUG_SID_HALT_SID		GENMASK(9, 0)
> +#define DEBUG_SR_HALT_ACK_REG		0x20
> +#define DEBUG_SR_HALT_ACK_VAL		BIT(1)
> +#define DEBUG_SR_ECATS_RUNNING_VAL	BIT(0)
> +#define DEBUG_TXN_AXCACHE		GENMASK(5, 2)
> +#define DEBUG_TXN_AXPROT		GENMASK(8, 6)
> +#define DEBUG_TXN_AXPROT_PRIV		0x1
> +#define DEBUG_TXN_AXPROT_NSEC		0x2
> +#define DEBUG_TXN_TRIGG_REG		0x18
> +#define DEBUG_TXN_TRIGGER		BIT(0)
> +#define DEBUG_VA_ADDR_REG		0x8
> +
> +static LIST_HEAD(tbu_list);
> +static DEFINE_MUTEX(tbu_list_lock);
> +static DEFINE_SPINLOCK(atos_lock);
> +
> +struct qcom_tbu {
> +	struct device *dev;
> +	struct device_node *smmu_np;
> +	u32 sid_range[2];
> +	struct list_head list;
> +	struct clk *clk;
> +	struct icc_path	*path;
> +	void __iomem *base;
> +	spinlock_t halt_lock; /* multiple halt or resume can't execute concurrently */
> +	int halt_count;
> +};
> +
> +static struct qcom_smmu *to_qcom_smmu(struct arm_smmu_device *smmu)
> +{
> +	return container_of(smmu, struct qcom_smmu, smmu);
> +}
> +
> +static struct qcom_tbu *qcom_find_tbu(struct qcom_smmu *qsmmu, u32 sid)
> +{
> +	struct qcom_tbu *tbu;
> +	u32 start, end;
> +
> +	mutex_lock(&tbu_list_lock);

#include <linux/cleanup.h>

guard(mutex)(&tbu_list_lock);

and remove the unlocks

similarly for the spinlocks below

Konrad

