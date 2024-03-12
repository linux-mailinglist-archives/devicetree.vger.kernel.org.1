Return-Path: <devicetree+bounces-50121-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5AD879B1E
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 19:15:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31ED2284526
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 18:15:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 084F813A251;
	Tue, 12 Mar 2024 18:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iIkZ4nyI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D2FD13958F
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 18:14:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710267293; cv=none; b=oy42nwOkK2KrWqMJiXpamFYpqfkSY+l2oyHUTpi5zleug6/0HgD/iDJbnJpqXUco6Vx7UjMlgjrDgIs4PiLrjQ5k67MORvx+x5l84+h9nrCtcRF9FPtdPvC0kfU+a/tl3hDhqMfqD6XPQiVOG9J1fsf7+RMxlr09MRnP7s9f2BA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710267293; c=relaxed/simple;
	bh=NoHLxl5q4br2NmwuVbEbWC8Hgzx+ElYfgu5TSPvDZak=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K83bYMinUo2e76JuXWkBdILr1+gBXUoYM+vgA+Lxw3uJgaa9IGNGKQNoI9k5wa5AEvOLfC0Z5eJX46y4/+6YrD1LGkjKYV42i8i+gYogfV8Cq6U1zP2tNBi6sr0oxVy4gaenhvGPP3m/ptJJyIwa9VwV907xAABm6zqOvtLAHZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iIkZ4nyI; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-512ed314881so5245803e87.2
        for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 11:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710267289; x=1710872089; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ndyrovNU7gmuZatlaLPeU/xwQKMeCdI2vpreLiAY164=;
        b=iIkZ4nyI2z+siU5OovPexeDkLfJpvNaCsQrPYm5xao0TXt/wBm9LRO3ZLix5bliNWw
         szZ3Xvzyfv11pYa+p/iwKTVNFoudRH38/ol8dZ4U1k4C9KcUnWpl89bQCjeytHpx5ePa
         Tx9Ty6vnmMdfV5Z4/mKz7Ci/8gEo0y+r8sQQMWMdtl0c4FL01L9Y3K5BiobNcPM5p+ui
         Yhk1dJtEBW+9SjIpxMetnoex8+H23sUV7dbesA2L5hquRUgFURxRAHgxI/CbXlszVhYU
         sF21GGuC5+vW6MKFvCUH+nic/QyoYmenACn0aJ6h0JXbDpsUPK8wgQGFrfXYbFR/lAqk
         HOkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710267289; x=1710872089;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ndyrovNU7gmuZatlaLPeU/xwQKMeCdI2vpreLiAY164=;
        b=mIGqQqV6Jpgox+bzBnpGqpycvT8FRsmEJA/F7ZbB5x7C2YiQDIPSiA9sx1icq5etUU
         pstAWK6xksuBQV5qZH9B9t/D+3HUxf3E8If8/WmR/bf5WHsSOIlpyibT7GYEhzaSDdk0
         QDOqPSg0tCMHpnJ4J0cL0fzrtphZOTFu3DpVIW6UFo/X5DSIkQxBfPG2afFjf+ruGpFx
         VVE5vT/ALjq6Cu/QphUrfuijY4Bj/BgpA0bs2VCbieCdgbVKfbQuneElHU6IjK05wmBW
         lp5y53ooub+5ql5B41uMkf0VJ9iGbINFCU4aip3eR0yJ5wSarTDPQJRHUfeJAat/CUF5
         VyOQ==
X-Gm-Message-State: AOJu0YwsZ/wj54EuAKuqAYsCOPu5tkg4VxOj8dOlVwMOm5EL8wRDx2vu
	jGguDIxwUqDM6CDtlY28KnWZHUm4lLEHS6BDJo759l2/azqc+iG7oHtQ78KVr/A=
X-Google-Smtp-Source: AGHT+IEESLK6yRlor/BAs+mtT8DWCpjx4vz0GFvh9t3WEDBysSuHBbCc7YBtd8LxA3B7iMwul9UANg==
X-Received: by 2002:ac2:4901:0:b0:513:a140:fbf8 with SMTP id n1-20020ac24901000000b00513a140fbf8mr6285218lfi.30.1710267289328;
        Tue, 12 Mar 2024 11:14:49 -0700 (PDT)
Received: from [172.30.204.193] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id c28-20020ac25f7c000000b0051313a9bddasm1675985lfc.252.2024.03.12.11.14.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Mar 2024 11:14:48 -0700 (PDT)
Message-ID: <8e00b2e8-866e-490a-bb81-73a9cb9dc737@linaro.org>
Date: Tue, 12 Mar 2024 19:14:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/7] iommu/arm-smmu-qcom: Use a custom context fault
 handler for sdm845
Content-Language: en-US
To: Georgi Djakov <quic_c_gdjako@quicinc.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, will@kernel.org,
 robin.murphy@arm.com, joro@8bytes.org, iommu@lists.linux.dev
Cc: devicetree@vger.kernel.org, andersson@kernel.org, robdclark@gmail.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, quic_cgoldswo@quicinc.com,
 quic_sukadev@quicinc.com, quic_pdaly@quicinc.com, quic_sudaraja@quicinc.com,
 djakov@kernel.org
References: <20240307190525.395291-1-quic_c_gdjako@quicinc.com>
 <20240307190525.395291-5-quic_c_gdjako@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240307190525.395291-5-quic_c_gdjako@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/7/24 20:05, Georgi Djakov wrote:
> The sdm845 platform now supports TBUs, so let's get additional debug
> info from the TBUs when a context fault occurs. Implement a custom
> context fault handler that does both software + hardware page table
> walks and TLB Invalidate All.
> 
> Signed-off-by: Georgi Djakov <quic_c_gdjako@quicinc.com>
> ---

[...]

> diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> index 5c7cfc51b57c..7a58b1b96bca 100644
> --- a/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> +++ b/drivers/iommu/arm/arm-smmu/arm-smmu-qcom.c
> @@ -422,6 +422,10 @@ static const struct arm_smmu_impl sdm845_smmu_500_impl = {
>   	.reset = qcom_sdm845_smmu500_reset,
>   	.write_s2cr = qcom_smmu_write_s2cr,
>   	.tlb_sync = qcom_smmu_tlb_sync,
> +#ifdef CONFIG_ARM_SMMU_QCOM_TBU
> +	.context_fault = qcom_smmu_context_fault,
> +	.context_fault_needs_threaded_irq = true,
> +#endif

Is this enough for cases where CONFIG_ARM_SMMU_QCOM_TBU=y but the
dts changes aren't there? IIUC this will spam the error message in
qcom_find_tbu()

Konrad

