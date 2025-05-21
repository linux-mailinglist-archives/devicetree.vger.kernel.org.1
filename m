Return-Path: <devicetree+bounces-179073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 072DAABEB82
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 07:52:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B687517346D
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 05:52:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E90E230BEF;
	Wed, 21 May 2025 05:52:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="vVI4FQgY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78A522D4F2
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 05:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747806768; cv=none; b=avRLJCEuUHqi36fKJJ8/2EBAp7h2wu9u3W/cjNNu1i7HS9q+QGv3iPHnh/z2dXnI8iQFdNU5uPyE3iqabDqnGk/gzoBg1MN59YXJwOBa5KR6hSt4DQt1Aoc28AXk4grnrrNibaxz2ExWfRL3Ml270P5rXLD8H4wB4Vv1bWDkum8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747806768; c=relaxed/simple;
	bh=XK36jMGVzHFAZgmjJ27ea0/5+ipW+lWL7+7Z1Xg4B7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WM04eh+oIpHzfKJ4cMiKm0ZDbirHpWr1K4fYlgZhK1pN2dGCwvoM5uFeMqpZFKB1Ppla9WpCsg+I4KXSAw1nMfR9C3AhSEC3P57pevrbljVUyMLw+rAgyYaj5kifWQNKw66URTojQzX9/bFQozBM1eqIj0wD59FwJ1Ur2QdoS9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=vVI4FQgY; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-551eb5d8815so476451e87.2
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 22:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747806765; x=1748411565; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=y+6EfRxcF6nuSTzFfX95UFC3FA7d4vYOazasa3XUuf4=;
        b=vVI4FQgYbHGS07oqkP+suv1E+Ur4SKl4SO1CHd2ajs0atL4HTpw7WSMFidMKTAnX6u
         1ynFH3xt/CAsBca2Y2JcI8uk1LKt3wZIZ8I1NiZQFSyVgUSo2q4K2r6HquaPurhxRwY8
         oQ1RU+ap6BXe0HOckvQkXkXaMvRHGD9CwF5JjatPBcePdGVVMWZ/Sz3bd9HoMa4FWEY0
         TEdLFq7rptGj+u4j+79cwNvVgXsLlSryvGs0rat5vgtQZPHmUtKGva7XcmJnlcLzpmXs
         JcfZaRtWTpmAG5yu/5fKGqXnpurp7QKinfMv3/WPEDQE8ZXypxVP1fwrzC8AaWIn0aAQ
         qAXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747806765; x=1748411565;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=y+6EfRxcF6nuSTzFfX95UFC3FA7d4vYOazasa3XUuf4=;
        b=bBbtsaTD+oPfzRrIp8x+u8ZvNAfEopINUmawyAq6gddoNu+HiYcg056QGM9N+rE4JS
         9TktbeooV1ZyQgmr4oAu1hSDkIbsDKl3pNRYIHCE7jvI4SYELF6D2c/8NOubYY/z3bJ1
         p0hM+848YMYfC8ED8EL8NGEkRSR0muomVqqLi1plmWMx33PamqFRLmzWI/CcKYdHj92d
         KXiuimbbqnKBCXwMuxGqjSb3BGGVrOxVjdRN7Ay/LjYlfaz1PRC3Y2/8DfKUt3BslzDB
         IWZvrbs2sUbBjHqd4zE6mrgoo8GhesCL+A1AAMrtRRsGudGonOEo3jsVNmssgk3k7jU3
         7X0A==
X-Forwarded-Encrypted: i=1; AJvYcCVmSyEcZ1NaJTFibAth/45XJvrQa5zevD7jcDvZN+XKf85JwzCF+UOmZ/LsSDo3mlqTck4W7X9MQWYG@vger.kernel.org
X-Gm-Message-State: AOJu0Yx00NbYf+gRUyxV/M4A1LfY6G5iAfM08ZsiK8jxbu9nc6/q8n0s
	2I/QV+JS7iMZHcndxsYgdZBzUW7wXK2DWWX0OmKwVq+YehY240ueO2lro3OoU55C2TA=
X-Gm-Gg: ASbGncukMkHtxaxNu8sIH0igQJq4bHm+rPe667ujRrL09AZyRtsyGlQJfncJzg4ZsdZ
	6p9bduh0frcPRvYqYJVcmxlu7z1vqfOco/2NiuYSIp1W1tVQVdTR/oETs+H7z+pwVkymrvmyd9W
	GJ8Emw0ZCW0ibQXZoIw0VNoqY9aKywEpHadmMugMyScPciIQS07V/xoAJW16XmMFq/MwJEJk0iZ
	o7HE/JCNza0JwjMdRPJ35eClgBRNSIkGJjHKC1kTXgFYnAw2Fquwo1AsEbFUP7050PI8QrGJ+eP
	LEMupwST06AtOQ4UlPCqJ3Ta+iFrSnaMv1bqQjT1UB0Ri79FO+HXx7HYsmznL4Wcw0ONkiIdLmw
	s+ft+KYA+Y4AafnJVpkB7QdAovTC53A==
X-Google-Smtp-Source: AGHT+IFfkKSuF3lu5EAykJJmWP101sRAftrK7GAUTkyq+we+sis+bJZidTWqi/zTuN0t5a5RTdKujA==
X-Received: by 2002:a05:6512:1382:b0:54f:bdfe:ece1 with SMTP id 2adb3069b0e04-550e7248054mr2031565e87.16.1747806764709;
        Tue, 20 May 2025 22:52:44 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55206407368sm246913e87.212.2025.05.20.22.52.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 22:52:44 -0700 (PDT)
Message-ID: <76052af9-96c2-46d6-85c6-65998c389554@linaro.org>
Date: Wed, 21 May 2025 08:52:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: qcs615: Enable camss for
 qcs615-adp-air
Content-Language: ru-RU
To: Wenmeng Liu <quic_wenmliu@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, bryan.odonoghue@linaro.org, todor.too@gmail.com,
 rfoss@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
References: <20250520-qcs615-adp-air-camss-v1-0-ac25ca137d34@quicinc.com>
 <20250520-qcs615-adp-air-camss-v1-2-ac25ca137d34@quicinc.com>
 <748f96f7-d690-4823-845f-67642db97a06@linaro.org>
 <dabed183-6907-4483-8c79-616aafaf2851@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <dabed183-6907-4483-8c79-616aafaf2851@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Wenmeng.

On 5/21/25 04:32, Wenmeng Liu wrote:
> 
> 
> On 2025/5/20 20:19, Vladimir Zapolskiy wrote:
>> Hello Wenmeng,
>>
>> On 5/20/25 11:56, Wenmeng Liu wrote:
>>> This change enables camera driver for QCS615 ADP AIR board.
>>
>> what is the rationale of enabling CAMSS on the board without giving any
>> description of any sensors connected to the SoC?
>>
> 
> Hi Vladimir,
> 
> We can perform validation through the CSID TPG(Test Pattern Generator),
> so I enabled CAMSS.
> 

Since this is just a test of CAMSS without any sensors/CSIPHY, then

1. camss-csiphy-3ph-1-0.c changes from the series have never been tested
    and added as dead code, it shall be removed from the series,
2. adding voltage regulators to the board dts is void and shall be removed.

Not to substitute but in addition to the above it's still doubtful, if just
a hardware/driver test configuration deserves to be added into the dts.

--
Best wishes,
Vladimir

