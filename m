Return-Path: <devicetree+bounces-10026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C56D7CF65F
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 13:13:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD1771C20982
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 11:13:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D109318C3B;
	Thu, 19 Oct 2023 11:13:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LnfDtTrX"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C7518C1A
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 11:13:38 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DE0811F
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 04:13:36 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4079ed65582so22883955e9.1
        for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 04:13:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697714015; x=1698318815; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=POZqwrn3QOIkuNwW6uoa6fDBdqF1NUX/ckhVqnX/nGM=;
        b=LnfDtTrXD+yj+uVRr8qunQ0kIOafx0qb8DABRt8tNjPpYjTdTcOvG5n6HP6sImfmxw
         6wpjIFWq8SV9PODmf3K/oM8Z++Zifc1HIJ+qrsItCshl2KtKP0FKzV/8NyMBWhHox4aL
         5uEi3u2H3V9bZJE9ZoFDwLQux8Y7L5yAcbZM2rTGfHEKMivz7O+WxPdShPu2RL/Wk7PU
         BvXZjLz00igiX0SWJPnkeZhnzhPkJ1SGzQsbx4lXwwVlseA8G8DUuekgLc8SA9bNjvq5
         UnSReHkaid1fEb8SzP016IjineELQ61fveMzZKFPpJUJ1dvXd4BUkrlYqyzOaRe+z2As
         rR0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697714015; x=1698318815;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=POZqwrn3QOIkuNwW6uoa6fDBdqF1NUX/ckhVqnX/nGM=;
        b=OoVG73jl4QEH6zoY8kxKA+DCB4mihgNGQBH1GdmAulTLnWxbgy+VHzLrzzu8ljpiuG
         iRvIS5191qF1ZPK3mp+GVRlATIsdteGU5P/7tRaZpQ3YPDiqeW9/6DUthePcoD6s5XUE
         voGFaZQx4ZkiSTi4fl88C8pCRU+nNcjo/1Vq08Wm1pB0dvf1+KkV76SWNJk5LsGy+GpS
         Gy/Glo+nMvDnnF8fzaW6DnhWqujjxq+JBAHJ/JBG7HfxW45zQI9jLfFbXtwxK98xPZgr
         a15l2imrURbeh5goqDjRnw+F6Dvi4VQlHlIAnQBy4zPZA3hYIXvqy/bNWAzdJGzrwUAU
         kRlw==
X-Gm-Message-State: AOJu0YxJyKMrlqTKsWwv7btcKNCX0DGavkRZN7P9Fg38QkeIMK1NvNyJ
	mZtmyCx5IM0MyVV2rm/elA8KoA==
X-Google-Smtp-Source: AGHT+IESelDfNhrhBDzW3Tww8D/Nax8XajqTmvOsjCQY9+TpZo5BfDRDQhEygSKOyZRhdOccwizXEA==
X-Received: by 2002:a05:600c:a0a:b0:408:3c10:ad47 with SMTP id z10-20020a05600c0a0a00b004083c10ad47mr1531323wmp.40.1697714014660;
        Thu, 19 Oct 2023 04:13:34 -0700 (PDT)
Received: from [172.30.205.86] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id q12-20020a05600c2e4c00b0040648217f4fsm4089784wmf.39.2023.10.19.04.13.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 04:13:34 -0700 (PDT)
Message-ID: <1cdc2a68-a1e8-4cf2-8a1a-899d14f8db80@linaro.org>
Date: Thu, 19 Oct 2023 13:13:34 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/6] iommu/arm-smmu-qcom: Add support for TBUs
Content-Language: en-US
To: Georgi Djakov <quic_c_gdjako@quicinc.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, will@kernel.org,
 robin.murphy@arm.com, joro@8bytes.org
Cc: devicetree@vger.kernel.org, andersson@kernel.org,
 linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 quic_cgoldswo@quicinc.com, quic_sukadev@quicinc.com, quic_pdaly@quicinc.com,
 quic_sudaraja@quicinc.com, djakov@kernel.org
References: <20231019021923.13939-1-quic_c_gdjako@quicinc.com>
 <20231019021923.13939-3-quic_c_gdjako@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231019021923.13939-3-quic_c_gdjako@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/19/23 04:19, Georgi Djakov wrote:
> The ARM MMU-500 implements a Translation Buffer Unit (TBU) for each
> connected master besides a single TCU which controls and manages the
> address translations.
> 
> Allow the Qualcomm SMMU driver to probe for any TBU devices that can
> provide additional debug features like triggering transactions, logging
> outstanding transactions, snapshot capture etc. The most basic use-case
> would be to get information from the TBUs and print it during a context
> fault.
> 
> Signed-off-by: Georgi Djakov <quic_c_gdjako@quicinc.com>
> ---
>   drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c | 12 ++++++++++++
>   drivers/iommu/arm/arm-smmu/arm-smmu-qcom.h |  4 +++-
>   2 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> index 7f52ac67495f..655c7f50ca84 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -1,12 +1,14 @@
>   // SPDX-License-Identifier: GPL-2.0-only
>   /*
>    * Copyright (c) 2019, The Linux Foundation. All rights reserved.
> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved
>    */
>   
>   #include <linux/acpi.h>
>   #include <linux/adreno-smmu-priv.h>
>   #include <linux/delay.h>
>   #include <linux/of_device.h>
> +#include <linux/of_platform.h>
>   #include <linux/firmware/qcom/qcom_scm.h>
>   
>   #include "arm-smmu.h"
> @@ -466,6 +468,16 @@ static struct arm_smmu_device *qcom_smmu_create(struct arm_smmu_device *smmu,
>   	qsmmu->smmu.impl = impl;
>   	qsmmu->cfg = data->cfg;
>   
> +	/* Populate TBU devices if such are present in DT */
> +	if (np && of_device_is_compatible(np, "arm,mmu-500")) {
I'd say this can be unconditional.

> +		int ret;
> +
> +		INIT_LIST_HEAD(&qsmmu->tbu_list);
This list is unused.

Konrad

