Return-Path: <devicetree+bounces-90898-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B0DD49470C1
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 23:41:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 37657280AB9
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 21:41:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F3D2139D13;
	Sun,  4 Aug 2024 21:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mwkuHo2V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54E618046
	for <devicetree@vger.kernel.org>; Sun,  4 Aug 2024 21:41:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722807701; cv=none; b=ox+Ijskm8uY3Prh8ynNc7ra72et0OUW0Db5cO0UDrUZs2L5PlFATiVGquJTRHAxrvi8BxJfT9vn6Ats81v/URPeCOqhb1TkZWRTQxqhg5vIOaTiZ5Y4IUxA5ndLB2lDhAZzzenHDc5vmD31dAVHWfNUdNhAupVlubc0hnJ39k5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722807701; c=relaxed/simple;
	bh=h9yLbW0AOueU3qdpWD6uH9ApUjy+LFK+W3Hg3oEv2EA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IX6vtoPpGRsrihOK5fhYCsxBht5PxjrJAFw1zVlg0/jXA5lRvivS/ul6mThtKO8GLBerIquTTTOHU4ujoxJwKoxKmV7TW6h//8pvuiijb9g56jbauQY65zljyvb45Dt2Bz7/aKD8AGJeU3o7dutaFoNOqih662Hppuh5nEHH6uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mwkuHo2V; arc=none smtp.client-ip=209.85.208.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2eea0cbc96bso7390281fa.2
        for <devicetree@vger.kernel.org>; Sun, 04 Aug 2024 14:41:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722807698; x=1723412498; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1WJ8UtmpJsQBeRARPURQqj89l8MFq5AyQ+VU5FVdBQM=;
        b=mwkuHo2V6ClPsZWDUpFhIHE95llmMmQJlwalEv67j7t2m9qQ1ngSzhEe6nTMjbGOry
         oUcC99bsF+H3veQaTp6kDc+M1rDIWMEQWXCWrFvueQJZmBCV3OQlvEq5ZOJTdGVXmecf
         hyV57tJwpJjBAT5LRYYfrh+op94GTyDciG6fE90Pk3FwBo/WxtjuPy4wbV9gOHS0YaGs
         zaZiBXkgjpTecAdBSNle9qzwXOfPzvEZWWjcWpiISImYdYIllQJBpyTEEZWy0fOhA76l
         h2a9dNIPbUAOrMvh1Nl/Q+/gdNUkRLUTjZ8+CW+OJT/yQ03/XMSASYXJxa/456bWuu1e
         nArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722807698; x=1723412498;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1WJ8UtmpJsQBeRARPURQqj89l8MFq5AyQ+VU5FVdBQM=;
        b=LMQcW/Jaq7BUsqon8cuBunYvZUuuqr5kL9T43tHHHQt0sAaeoGDCQ3onGv1XBZSjtB
         LKzoryV22We0eOf4iLwcEe4YlzRTtPCAxNOfquBCcdm5alpwfTHz5r/ZaA/nbxtA/XbH
         48uZ2PLkoaXQTFzt5c7s5yAELLKSWc5cYOxjKmVQj+C0VfIvnVNF+zuWs2Iz4ztYM5gj
         TlDeSUdd561idHnzgQ9Df68/2IOA+mVRaNv9vOgzr7tPxUdnr4h15PTj+j2bFpc4k5WS
         E31K3Gs3iwqo+Z6ailKfMblKGyK0zXPRBGoPyG/5oeHSrCbDgy3B2rPTxGa4J/3h9Hcw
         GGUA==
X-Forwarded-Encrypted: i=1; AJvYcCUWmC958sDQ4qgPB4X8Qk1gq+xT6BXKC+LvEXpAADP34k1DIPBER6A/j07H0vQi95Mmhs9hqBnx/a6g@vger.kernel.org
X-Gm-Message-State: AOJu0YzVnu/T61gODUkpwBVj4RrFWX5bkimGRmWGePJZu2qNpxbJFJ8B
	zflaNsBw5lcLtuQm2xgmAiR0KspqhhIGe7wqnip82q77CzucoeuRdfBLy/IuZ2M=
X-Google-Smtp-Source: AGHT+IHwIhcYw9EBZ7JZ/GQmjqzUENVBVYz1mxZf+3luWTxsjH6mrdYpV2L6abnhaRUz5AuZ4PT4Qg==
X-Received: by 2002:a2e:9d8a:0:b0:2ef:27fa:1fc4 with SMTP id 38308e7fff4ca-2f15aa747e9mr33884141fa.1.1722807697871;
        Sun, 04 Aug 2024 14:41:37 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f16848dfbfsm7169921fa.60.2024.08.04.14.41.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Aug 2024 14:41:37 -0700 (PDT)
Message-ID: <07eba20a-9c15-4b57-b40e-f5553e7ac48e@linaro.org>
Date: Mon, 5 Aug 2024 00:41:36 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 1/2] dt-bindings: clock: qcom: Drop required-opps in
 required on sm8650 videocc
Content-Language: en-US
To: Jagadeesh Kona <quic_jkona@quicinc.com>,
 Bjorn Andersson <andersson@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Taniya Das <quic_tdas@quicinc.com>,
 Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
 Imran Shaik <quic_imrashai@quicinc.com>,
 Ajit Pandey <quic_ajipan@quicinc.com>, kernel test robot <lkp@intel.com>
References: <20240801064448.29626-1-quic_jkona@quicinc.com>
 <20240801064448.29626-2-quic_jkona@quicinc.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240801064448.29626-2-quic_jkona@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/1/24 09:44, Jagadeesh Kona wrote:
> On SM8650, the minimum voltage corner supported on MMCX from cmd-db is
> sufficient for clock controllers to operate and there is no need to specify
> the required-opps. Hence remove the required-opps property from the list of
> required properties for SM8650 videocc bindings.
> 
> This fixes:
> 
> arch/arm64/boot/dts/qcom/sm8650-hdk.dtb: clock-controller@aaf0000:
> 'required-opps' is a required property
> 
> arch/arm64/boot/dts/qcom/sm8650-mtp.dtb: clock-controller@aaf0000:
> 'required-opps' is a required property
> 
> arch/arm64/boot/dts/qcom/sm8650-qrd.dtb: clock-controller@aaf0000:
> 'required-opps' is a required property
> 
> Fixes: a6a61b9701d1 ("dt-bindings: clock: qcom: Add SM8650 video clock controller")
> Reported-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> Closes: https://lore.kernel.org/all/0f13ab6b-dff1-4b26-9707-704ae2e2b535@linaro.org/

As Krzysztof said absolutely fairly, this one warning was not reported by me.

> Reported-by: kernel test robot <lkp@intel.com>
> Closes: https://lore.kernel.org/oe-kbuild-all/202407070147.C9c3oTqS-lkp@intel.com/
> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>

But I'm happy to review the change.

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

--
Best wishes,
Vladimir

