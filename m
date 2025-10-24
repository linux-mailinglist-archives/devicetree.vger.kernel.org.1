Return-Path: <devicetree+bounces-230612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C592C046E8
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 07:58:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id EC1F94E1FF1
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 05:58:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02ADF242D62;
	Fri, 24 Oct 2025 05:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PH5RI428"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16F1574C14
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 05:58:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761285487; cv=none; b=XT2TIAhlWIjl08XybdK3ozgcMo8z7X3tb6b+5RlJ4Rzp0LPb56KNfxFZUNJFRmdqA8gulCHxHM7ELSa85Kim6mPlNncV9dJX8hpGjOqY7ZZxgxJw0miR2AUncKu0V4Vmx7EezWIaSAwsWeH+frRVAW9w991lS/3Mqmi95NjiJK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761285487; c=relaxed/simple;
	bh=NmsrupTRkisYQFGhFjZ0bRbIdltnfvRER/RQe8hkLqU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Zh1ECr/1uaQCY9/QqQUwavZbyeLrTTtbSc4d5T7qubecvUwGGApOZqJpbnn4wVJ/Ie839ZkmuakxQheLeIzIS3t2/rD4UHHO6xj7ystq7AqmyIQ4byZl4RSOCL2lTg753JFaEEh2Sd9w4qDbxTJ+Dm8E8yVZUdcMp//L1K3UJf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PH5RI428; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-42557c5cedcso1124594f8f.0
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 22:58:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761285484; x=1761890284; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WlbgzRvJgE4Sx6EeAuF7s2GqiVQJOvGqllksow3opC4=;
        b=PH5RI428SNOsHpUF7L5WveuXG45u84EWGn778+3Wr8bMdv+wkVkqB49ktt4SK7xIHj
         Tncr5zM4G6R8tSxbmhiHD6juJAH2sQxz2za0S6PGE4mXwEaNctpDMKkn6STQASqJme2e
         pMIv19vxtvk/unKYgHvS5Dg3InBKAt9dmXDE2huuB1GxdXvdHTY8+tFrsNES3Rf382ae
         Kqgfv+/8L2sxsOqv9QtP2utjHEClW3Txz9Pup/PpINbpc/XbsbrLWgRsXHjyRAf8S1fG
         DbDFc+11K0EfswLo1VmQyR7wLkTmePf4g55KqAEzGPySCRFmcXzID++dMRKkWq8vhBoz
         FkLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761285484; x=1761890284;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WlbgzRvJgE4Sx6EeAuF7s2GqiVQJOvGqllksow3opC4=;
        b=pkeBziRY4td8n5qsrwOk1VPIN09oCAY7WrqjaQqoaOnzM6NkuPXyE04iHBSHxsiH0Y
         zMyuXPk5oXhzL672fFMSRu9gaDazvpdNgHgz8wQIAgy0wTuir+ULqkSXz6nXsYt7PBng
         6Rm9EFyfVJrQGNqWlMJcfI2dHhcV6CSiyEXMYUOXLg5kDIsEeiMlDSSs8+0DTCAiuxPQ
         zgOkYpOqcWamXsADw7YfXvuZdE2R3v3QedAPzxAGgx99TW6VKiFmaLGMWF3nyUW+b2G7
         9sRcI+oNrzZETrN3n5A/GNpR/mxAthv8slA91dCPe4evRqbwDQO5Ts5GIyeJk7nJ69gu
         YYDg==
X-Forwarded-Encrypted: i=1; AJvYcCU1QFhKWh+qqug1RPMpqI6WTV9Q2WrE8OC5U1E27KzVvV+t/LBFlMlFIss6zO2emM3noO7lL3E3wXGV@vger.kernel.org
X-Gm-Message-State: AOJu0YzMDlwAZwLmsjopevz+AZfqjOjJbqW6AAbzO+Ul+SWLbLiu8/P0
	MnYSRxn/tnHmiO8aUMcf3gGYt2Tl+jQqqrLCTd88UcPuuTaxEvP1JNmaveUAxdvxLzM=
X-Gm-Gg: ASbGncui8nY7a5H5bUZK7W/8WJSA8pc9oUKU+k18on537XiagQoI9oMN9B7HKwXYuKG
	/6adCerO/V3OkhoT5j7WDG0sZFe5/zEKveRG1jgSRhnqxoOHcNNXz5yoQi41Rz5cVH1j0H9zlO4
	8hCQwBevT+n0c1SDEIw1rbgBQY99xaD/yPJosTqfqvAkup3c6BNupRV2u4SV3vfrMOEaORxfQLb
	vCd6si7VV4vXy6rmx8An3GeZzuYCJUwkBVDoSeZL/6TrKVbm451jA90gSeL806l19QQJpkXcxvl
	KbDj72gAw3MYtJ+upvJYY30wN72OAz84vvk+5CstqQSYicWP/8cN/GGDjJwEcMusBhSqlYDThql
	y6V+bJ4ZH5Xf98SiYwz6sptWFdtk1ZbOd4JBt0Z00LXvrLmKcWP0a+6jYvQfFki8QOYBrM9sZup
	zzps9ucQReS4ggtZ2cci8=
X-Google-Smtp-Source: AGHT+IF4FcOKkucmDNCM2/KKpneCA+i1yPeXTsA/LVynPTPJC5AXKg32KTh4dcKAlcjbp/p6c5h7Xg==
X-Received: by 2002:a05:6000:2387:b0:429:8d0f:e92 with SMTP id ffacd0b85a97d-4298d0f106emr1607568f8f.6.1761285484311;
        Thu, 23 Oct 2025 22:58:04 -0700 (PDT)
Received: from [10.11.12.107] ([79.115.63.145])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47496c14a26sm76466825e9.4.2025.10.23.22.57.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 22:58:03 -0700 (PDT)
Message-ID: <b1b6271a-1f75-4cfb-9af0-4d60b578f2dd@linaro.org>
Date: Fri, 24 Oct 2025 06:57:54 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: rng: add google,gs101-trng compatible
To: Krzysztof Kozlowski <krzk@kernel.org>,
 =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>,
 Olivia Mackall <olivia@selenic.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>,
 Peter Griffin <peter.griffin@linaro.org>,
 =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Cc: semen.protsenko@linaro.org, willmcvicker@google.com,
 kernel-team@android.com, linux-samsung-soc@vger.kernel.org,
 linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20251022-gs101-trng-v1-0-8817e2d7a6fc@linaro.org>
 <20251022-gs101-trng-v1-1-8817e2d7a6fc@linaro.org>
 <113ee339-566a-4cc2-9786-89252ae072e0@kernel.org>
Content-Language: en-US
From: Tudor Ambarus <tudor.ambarus@linaro.org>
In-Reply-To: <113ee339-566a-4cc2-9786-89252ae072e0@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/22/25 5:31 PM, Krzysztof Kozlowski wrote:
> On 22/10/2025 13:19, Tudor Ambarus wrote:
>> Add support for the TRNG found on GS101. It works well with the current
>> exynos850 TRNG support.
>>
>> Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
>> ---
>>  .../devicetree/bindings/rng/samsung,exynos5250-trng.yaml       | 10 +++++++---
>>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> 
> No power domains here? I would prefer to see such additions together
> with the compatible, if that is possible.

It's part of the misc power domain.

I'll add the following in v2 and keep your R-b tag. Thanks!

+  power-domains:
+    maxItems: 1
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> Best regards,
> Krzysztof


