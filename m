Return-Path: <devicetree+bounces-193204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 08E64AF9C94
	for <lists+devicetree@lfdr.de>; Sat,  5 Jul 2025 00:44:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B99D567C51
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 22:44:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AF1A28D829;
	Fri,  4 Jul 2025 22:44:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="SgG36D9h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C8591991D2
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 22:44:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751669090; cv=none; b=H9bMbK0/uYEZOPfYXLY9hlkHaYUlwi/Snt6aY73gzCCN3YJ3nVDrLVaNL/CeTpUWOrYyF1P6iGJ7V+6OwHJh97S5ANx/yLBIRwKNMFJ226UPfm+sdzz+IsD+pY8imKyz2y4wdcpf2YYTRvgkrps/dIYqwi+E9OVNd4sRVX2Mjtw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751669090; c=relaxed/simple;
	bh=Y3Qo6AMyh3vAZ7BoOZ9CqjFHltIfXfXPWxwA17fB/4o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Sev+PXUBXypNjkZjGFQ8Og7oikS+8PjJ6nrrJQ+atPIQYxugYTfrIHjJPKVM/gBvxIPPsG7KJO3AV8xeasR9kQgf1E2R5mh5KPFRelnzm+TIfpOHwzP75j6zzHMB0p0HX/HCN/ZQ6UWMpesPP3MJqY/GWc+/T0f3sqIJckDNdGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=SgG36D9h; arc=none smtp.client-ip=209.85.221.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f41.google.com with SMTP id ffacd0b85a97d-3a503d9ef59so938262f8f.3
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 15:44:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751669087; x=1752273887; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H0R2mMftv88Zra/AIwb5aEOqQ/EqgpXNN3YEG/zf/es=;
        b=SgG36D9hQ0m5tcKWZElF0xQboJRs8Xkcu6ZiIQQaIO1r29lbEoK3c5WPEK2v/SI7TB
         XYYYOMflN0LKu5K887b4tx97eDifDwyeQfawsTfXWa+j1GrSM0kz4tpmsbE9y5ZhmvTM
         DRsrhJR+XpPQW5AsvVjBSVJy7UK3aoS8GLEee6qQI5+aEn+FLRELmWrvLjGmDc5ojbfW
         XY9IzZLIjyLj+e1hHtR7ba9UUX/J4mkXH5aPBUQhBmGwinmT2gsb0E62klfwbqkw6oJ5
         vWEgJtUzGzCNssimrkZPUwsGglwb8kLgJ25f1HnD/hucYHkczbbkZ/wuJsmQIF8CoM5X
         wpCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751669087; x=1752273887;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H0R2mMftv88Zra/AIwb5aEOqQ/EqgpXNN3YEG/zf/es=;
        b=o6QVwkbH0Io2CitDsWrcMLDLTXkSz9bK/B4N2Z8/Zvq7K+94GGkxnvtBAd0ogQr2+2
         BfG8o1EvJGsWLhgaXLa5UEnnLKTzjLHkGvgoZUwWrTd9BLIUV8xowi6Jxy4OAU6WtX89
         EnP4fx/p42qNIfyPeet6UmoNOdE6QiAkVoaC6PtCynL+FDkfsdkX/e2vSiUMs0jWrClh
         wUDbY+ewtEEoXm+m0HXGQMnJaQWCPZYnxBawgKN+AcTQLWcvEsVChzLTAa2kgt7QFtNO
         n2YCqg0J1apmFYaLJnge/4BJFxks+ttVnYxzwxO/MfahKcOq8cXTNkVuUQPN0G8wBh8T
         peBA==
X-Forwarded-Encrypted: i=1; AJvYcCXe3AbXLHVguKZ48uNfisXAW474wVh7OaQxIOcunQgPNHGp7LqpkAePiycUNfqJlbc/6DT/Y6C8sh+e@vger.kernel.org
X-Gm-Message-State: AOJu0YzlNaaNzgFqTBnuXFKkc3QiuVsXMfKlwWQZfNyd5Eigo6Cj566h
	ykHw9xww/m1a+nD5Vl/qQja29e62kLaEjVYGTsnMMJNyGEKRE+S/THl4DAy9eBztDds=
X-Gm-Gg: ASbGnct8CcPYlAaPovtVdnrInffKZovKinnA3k3sJBVWdPVCAzrghMda+yH78FoKcfX
	/1RdLSB7VpGQN2k6Gz3GwJi31TYDBhVAITyW7aSDFX4jwFDRinGqkTLujnVVBxd2x8glCgBXeQS
	nt4QSPZ4JuzMmK9J+x8/TaPmGvOof7N86tU0jH3JUVnCm8PjZkdYHK+L00WO2EYwQpIrRxJJ2JK
	lumsEhUrGcF42ViZMnxjiSrFGOO0YUrS4P3/CbkBS6xz8SnU6XyJZR+X842rSyufI7nwF3ox17M
	GmtOPmL64s04zkf/5iB/G5vDtpI8mGi3ZjWdX5E3ktMD5F+SdpgB0ieqeBgEXanBwdThzTzHn27
	6PtEH0slks+MuYxILfZLGecOlYL4m
X-Google-Smtp-Source: AGHT+IGpEZrUwZf0KcjBtL/RVMyaOw7wHDyiLG1R8UVH19QzDTg+4QvrI8tBK/wuGCA67B2E3somGQ==
X-Received: by 2002:a05:6000:2912:b0:3a5:2e9c:edb with SMTP id ffacd0b85a97d-3b497038f72mr2896312f8f.47.1751669086724;
        Fri, 04 Jul 2025 15:44:46 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454b1699162sm38709165e9.31.2025.07.04.15.44.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Jul 2025 15:44:46 -0700 (PDT)
Message-ID: <6c6f6bc9-7c34-4961-8b5e-e6d02c4b2f6d@linaro.org>
Date: Fri, 4 Jul 2025 23:44:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/5] Introduce "non-pixel" sub node within iris video
 node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, linux-media@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <7b6db4fa-2f73-376d-4eb3-64c1c7e6cda3@quicinc.com>
 <f5ebf0d6-2f0b-45cc-b99a-b786e5df9edc@linaro.org>
 <5qsgbqml367yq6g5vb4lotrzulojqhi5zlwwribze373a63qrn@rxi4kwyt66m2>
 <4f38058d-a2f1-4ac5-b234-228cfb2e85ff@kernel.org>
 <1ad2ca1e-1d57-4ad8-a057-ab0d804f1d49@oss.qualcomm.com>
 <7da769b4-88e9-401f-bb21-0ff123818b9c@kernel.org>
 <6840d462-8269-4359-a6e5-d154842b62db@oss.qualcomm.com>
 <af0da28c-3ca0-41dc-aaa4-572723ea74bf@linaro.org>
 <klhvgzizub33f46buqsog54wqksqp24a5tijwyv355l2ao2imo@wdkojfebc6s2>
 <e1a6e75a-2a5d-44a2-8bbc-140eb86d1806@linaro.org>
 <2hh3zkdwgqbdurpr4tibr3gjat6arwl3dd3gxakdaagafwjdrm@aj5em4tbsjen>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <2hh3zkdwgqbdurpr4tibr3gjat6arwl3dd3gxakdaagafwjdrm@aj5em4tbsjen>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/07/2025 17:45, Dmitry Baryshkov wrote:
> What about instead:
> 
> - keep IOMMU entries as is
ack

> - Add iommu-maps, mapping the non-pixel SID
> - In future expand iommu-maps, describing the secure contexts?

Interesting, we are _adding_ so that's not an ABI break and if I'm 
reading the documentation right, there's no hard rule on what iommu-map 
defines i.e. nothing to preclude us from encoding the information we 
want here.

This might work.

drivers/pci/controller/dwc/pcie-qcom.c::qcom_pcie_config_sid_1_9_0()

You can register your platform device to the SID map you parse.

Worth an experiment.

---
bod

