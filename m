Return-Path: <devicetree+bounces-57878-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CE98889F1CD
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 14:13:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 59D2C1F22BDB
	for <lists+devicetree@lfdr.de>; Wed, 10 Apr 2024 12:13:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 421C515B126;
	Wed, 10 Apr 2024 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AE6/jIle"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68CAB15B0F4
	for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 12:13:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712751233; cv=none; b=sBzhr/JJNXr6YYX9qBDu0BzBIf0tEwhKEea13cxlxR1Vljbvv0DSyQNTsZbcu4ah/o7pBD+WH8EdwC22Wk6ACi5/5j0QSDhpkgypxVgbnrYSAzAEqK9W0yFLaKpJdjjAW9rUiD4qy4ZwWVdHT79l/CTLybVHCV8oWdKg1rsAqqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712751233; c=relaxed/simple;
	bh=tPOwWBLJB1MFKLdgaiVGADweFkVnXcVDzi3Q/kHAnnE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MFRWLQWuejsThbyzOYJaiLF4nwIpo22MIEkZnB8ojW0UUm2ofULdemom3LTCeF0Jq1s4adW89JL6YpVnKgP7c5wQm2FtowQBeAeFSpv5NhNcTP9aKCJrw8KV3nhqcxtbek3NJNkHDBDvi5kaizqU2xvlJMy4O/ZLqQR4CTTl37A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AE6/jIle; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2d895e2c6efso36430801fa.0
        for <devicetree@vger.kernel.org>; Wed, 10 Apr 2024 05:13:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712751229; x=1713356029; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fg3Vvg1Xh24G2Zq6sw5q/UepOitA2ehB5IlHwOwMid8=;
        b=AE6/jIleDC01iHut8D9J15ANPEcyc+JoIZh8Mn+SrCnr0F+weeJTaKFi+UlOQEoevp
         OuBu2ssS9uk2xZToAF1cAomOe4N8UiykAOCsNwZFS3QlMAjPL9Uw86SVNNZ8fC9bgywh
         zvYCZaFlU2twJKhkKeypYiP8witOxT9WykbJ37lFJwlyP5RfweFWXQa6F6T5i2xZcX70
         DF/pLuCPrDR31Ykog/RJBR6Qn9ll9hNjU7mAVTX+g9KxKp2bFsbRnTUjUNJljIUonpVW
         zFjzuyM4JiG4jp5bfv48oH+KdqyRZAc63ZsOT3tBpt8FMcI+RKIzz6ZaC/0t+Ji2bkLe
         hyfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712751229; x=1713356029;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fg3Vvg1Xh24G2Zq6sw5q/UepOitA2ehB5IlHwOwMid8=;
        b=RUSE30hTR2ZhM350f1eOw1v21OT2Uc+7jq+h625Fou7trisxc7akXEMqaDb1lIfyQV
         3KNDYUoyiGm83KQQN5HLxGNhzAq/+x9E8IPXhx1DBIuswvFnnIT1j5oIVeMkHrVVSGtF
         KOG/EbqOeu5eQWsgktavaFNZ6iCrKIaO2fdYh5tREG6unZWdFOai2kT60aEbUOUQGWf/
         b7mYxJHXhrJkLr1kaxBT2BAROSfu4YmM0/aefEU5Z8CIfbCi7ATSgdJWPMgtd1NaA+m4
         9Yvo7wIbJYTRoI+6puMufgZ7YEWwhmOXlTkDegjfp90KuqLFFFs/dFX2ypYqXx5UKc0o
         wXhQ==
X-Forwarded-Encrypted: i=1; AJvYcCXmtQMTIf/qxdttONQNfhq3X+xvMcs8nV2dxRWuskkuf6/o+hX2m0gWa3LzXffZQKvOwMEa+kgGaHUft478cjKmAvVT8q73jzjKag==
X-Gm-Message-State: AOJu0Yy9voKpOoIW/sGxO3OudWwAScYzYp5Gn6qtjdSo9E5HVNzvOI4T
	fERhcfVoNpNuSltnqvVZfifPQpj44ydXG1SDfOhJJ9Rd3wqlbgEgp4/GzMZ5tyU=
X-Google-Smtp-Source: AGHT+IHOo1ulqABkUnEGstlgxKD4JbzMIdEWJXhF8DM9ulnSol2Yvi8EP7p0sUbwyjQKpLh8x3ZXsg==
X-Received: by 2002:a05:651c:198c:b0:2d8:527c:7ada with SMTP id bx12-20020a05651c198c00b002d8527c7adamr2137546ljb.38.1712751229448;
        Wed, 10 Apr 2024 05:13:49 -0700 (PDT)
Received: from [172.30.204.89] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id z17-20020a2eb531000000b002d8e5cb062esm21673ljm.113.2024.04.10.05.13.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Apr 2024 05:13:49 -0700 (PDT)
Message-ID: <86d349ee-9db3-4da3-93ff-6891c1c2dafa@linaro.org>
Date: Wed, 10 Apr 2024 14:13:47 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 7/7] arm64: dts: qcom: sc7280: Add DT nodes for the
 TBUs
To: Georgi Djakov <quic_c_gdjako@quicinc.com>, will@kernel.org,
 robin.murphy@arm.com, joro@8bytes.org, iommu@lists.linux.dev
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org, andersson@kernel.org,
 robdclark@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 quic_cgoldswo@quicinc.com, quic_sukadev@quicinc.com, quic_pdaly@quicinc.com,
 quic_sudaraja@quicinc.com, djakov@kernel.org
References: <20240329210638.3647523-1-quic_c_gdjako@quicinc.com>
 <20240329210638.3647523-8-quic_c_gdjako@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20240329210638.3647523-8-quic_c_gdjako@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/29/24 22:06, Georgi Djakov wrote:
> Add the device-tree nodes for the TBUs (translation buffer units) that
> are present on the sc7280 platforms. The TBUs can be used debug the
> kernel and provide additional information when a context faults occur.
> 
> Describe all the registers, clocks, interconnects and power-domain
> resources that are needed for each of the TBUs.
> 
> Signed-off-by: Georgi Djakov <quic_c_gdjako@quicinc.com>
> ---

[...]

> +		compute_dsp_0_tbu: tbu@151ed000 {

The labels are swapped between this node and the one below (the rest is ok)

> +			compatible = "qcom,sc7280-tbu";
> +			reg = <0x0 0x151ed000 0x0 0x1000>;
> +			interconnects = <&nsp_noc MASTER_CDSP_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;
> +			power-domains = <&gcc HLOS1_VOTE_TURING_MMU_TBU1_GDSC>;
> +			qcom,stream-id-range = <&apps_smmu 0x1000 0x400>;
> +		};
> +
> +		compute_dsp_1_tbu: tbu@151f1000 {
> +			compatible = "qcom,sc7280-tbu";
> +			reg = <0x0 0x151f1000 0x0 0x1000>;
> +			interconnects = <&nsp_noc MASTER_CDSP_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ACTIVE_ONLY>;
> +			power-domains = <&gcc HLOS1_VOTE_TURING_MMU_TBU0_GDSC>;
> +			qcom,stream-id-range = <&apps_smmu 0x1400 0x400>;
> +		};

Konrad

