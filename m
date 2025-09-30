Return-Path: <devicetree+bounces-222739-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1022BBAC5F9
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 11:57:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AB91D4826E3
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:57:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E3A02F60C1;
	Tue, 30 Sep 2025 09:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YeGC58qd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7886A2F39B0
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 09:57:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759226229; cv=none; b=YL8o8rCyOl1PHzP+MJQ5Sr4PIJIfT3WAqqci522GfxC9wfdnHSQuahd+ePJhbh58EfZQJmjqwv2pAL849Mtg+2TCJNHHKMcJgNBpwbf8wZbaReTUrH49BS2i4esiRyVf3JJnQ23waxCcgIUX7BPKT9maNiFI5V3yHJPaOpJvpQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759226229; c=relaxed/simple;
	bh=/Z95oUaKIQLElbOUPxd1ZP1jySYZ1kdCyhXJJEW2uQM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eHPVW1sNuUu00kb05EXjuXmH3l7tzQCdEIsczlqv4oM9C2IyO6mpHFMqTyUnHRHFhYUiIyomta27Wgp+S9Z3FK+KuAAlonxC8xr4uufKb51KFiosKcK85KwkGK3XiHiDDaeYP6YT5lhd1eOhh9PcD9MBUEsvTVGvKmKjWigeSGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YeGC58qd; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3ed20bdfdffso4698705f8f.2
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 02:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1759226225; x=1759831025; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oufkVieZ3YIJQin86xushnEct2P0xD9SyQEmKjWVRsw=;
        b=YeGC58qdL+zEmpaL/Z62WiG2uZ68vk3+jJTB/pqlxJtn85pOcEsTumpaJ4qIf+Jyqj
         nJBM7YidpwuUHkZgzgTAQ0Lg5HNOx7QP4CjgtVpb3wzvG/nX7VPR+Gz7exovZIC8NcDj
         g34NdE3vJ3vYHob47NvFakn1VKF4j4dUikbBaGQcn7HAHVOwtAYM/2/6vhqAWBdgXGwf
         ChJNy63ygLi1fA7qYxfZMSrY+rebCWTYfZHGzPq5uRuF5Lgb/i3PEDM5Jq1ss4ekzZ0b
         /iJutH++vgXu0kVK4Bc5odCJIwal99DPIBXWlp38gzIHWswiYbbW0X+okEfSC39wnUDz
         bieg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759226225; x=1759831025;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oufkVieZ3YIJQin86xushnEct2P0xD9SyQEmKjWVRsw=;
        b=t/FJAxHr72AvySuYgFfJzu2j6amKcgg4FEfhFDWQQ3ATqxsAmL97qD6C3iMJ+0nnfc
         bzp+eICyIqt3WxYXBqODGmr9ws0ESIDXqcsdaV9PqDe3dbSePGqbnXKtX3ALibdg0r/w
         M+6P9THjcMJ1Yc4TlH/k7t00eS9a1moiaL3kuwvf7lEakHU15H0cCsoLLu7FL50ibBlh
         mCnEGrAOv8x7664Yosbd9Jrm0CTPJz/XQ71SUMZBZTJFvcBjExMnav4tKb25U3GhyEFr
         pcPzzB+CJ0ehH6+r8qngvT9S9lEyBdSzkvP8yyPaEgLmmOtno9wTVjDOfHGzLkfsTadN
         8hFQ==
X-Forwarded-Encrypted: i=1; AJvYcCXRB07skvTHHwIRjimyEQ4ZeSprXV0EV13L1weUAI+6ua6Rt06uYo9uRDig64x3WOT51xttMnzOt5MH@vger.kernel.org
X-Gm-Message-State: AOJu0YypArc4Ptt+e++be6IQESVhT7b8FOwkgXCwUdAOAL41AypgbhMM
	xCBJloEsoOhzFdIVC4AYIV/VNJrCMqOqpM+Nwhy6BEsGy9tmjQxwqFrqKmDXEGDWDPM=
X-Gm-Gg: ASbGncv09uJRCc14mSSEIzfToRVdvjp+EtIt5SxH4kiE7aZRzBBGvgX2FMIqZ+jIuTt
	YQGCWmvAS6W+2S7NjJYpHXhL1+BZ/1h4k3QvBhf5w3Adn5OYQPzm91HHZK/Jha6vr9Dq18FD8Tz
	UENOLbO5bvbd+Lm650N6AIc807asgezYJHUMfiIlOAK0Gt3oKdR9L0g2z5NtYdeX8vpKhBnvceU
	ZHkx1Kzil3KZEw5ObCSL+ymc29YGAXaF3v3zmXu9+hG3C9A+VqPYdlL+huMJk2ufoJRDM/FGU4d
	fT5LWmQ17KbzmFc4MwDcNnKeCgKphddFcGs93z5qMOjFUlyvB52SDE6KQ4FCPr1YXL5t/UfM7KH
	0U4vnM1hnNBD/XXoC3mYN03pFQwilsLJQmgPpnoIfZYIL30PPcKKaAw==
X-Google-Smtp-Source: AGHT+IGLvmQk/pkaVh0/8LBFR3ZB3qQwoomGXzJTq6OzbBS6z/VS3gIUp+GuzV5+WUsqfER2C+K6dQ==
X-Received: by 2002:a05:6000:3101:b0:3eb:df84:62e with SMTP id ffacd0b85a97d-40e46514d32mr17394824f8f.3.1759226224699;
        Tue, 30 Sep 2025 02:57:04 -0700 (PDT)
Received: from [192.168.0.24] ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-40fc5602df0sm22036410f8f.36.2025.09.30.02.57.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Sep 2025 02:57:04 -0700 (PDT)
Message-ID: <f5c5254c-537e-46ad-a7cb-a8b18b07632c@linaro.org>
Date: Tue, 30 Sep 2025 12:57:02 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: document the RPMh
 Network-On-Chip interconnect in Kaanapali SoC
To: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
 Jingyi Wang <jingyi.wang@oss.qualcomm.com>, Georgi Djakov
 <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
 trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-interconnect-v1-0-4c822a72141c@oss.qualcomm.com>
 <20250924-knp-interconnect-v1-1-4c822a72141c@oss.qualcomm.com>
 <ea291acc-bfdc-4a04-ba60-fc59a55ada28@linaro.org>
 <f4e7a388-54fd-42a7-8960-be6a3de7ec6a@oss.qualcomm.com>
 <70569fdf-7a3a-495a-b1ca-d35ae1963592@oss.qualcomm.com>
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <70569fdf-7a3a-495a-b1ca-d35ae1963592@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 9/30/25 06:06, Raviteja Laggyshetty wrote:
> 
> 
> On 9/25/2025 6:10 PM, Konrad Dybcio wrote:
>> On 9/25/25 10:57 AM, Eugen Hristev wrote:
>>>
>>>
>>> On 9/25/25 02:02, Jingyi Wang wrote:
>>>> From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>>>>
>>>> Document the RPMh Network-On-Chip Interconnect of the Kaanapali platform.
>>>>
>>>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>>> ---
>>
>> [...]
>>
>>>> +properties:
>>>> +  compatible:
>>>> +    enum:
>>>> +      - qcom,kaanapali-aggre-noc
>>>
>>> Hi,
>>>
>>> Does Kaanapali have a single aggre node, or there are several ?
>>> On previous SoC, I see there are two (aggre1 and aggre2).
>>> Also in your driver (second patch), I notice aggre1_noc and aggre2_noc .
>>> It would make sense to accurately describe here the hardware.
>>
>> They're physically separate
>>
> Yes, they are physically separate but the topology treats them as a single noc
> with two slave connections to system noc which you have noticed in the topology file.

Is it any difference from previous sm8750 where there are two nodes ?
If yes, can you mention the difference and reasoning for merging them
into a single node.
If no, can you reason why the decision to merge them into a single node
this time instead of keeping it consistent ?

> 
> Thanks,
> Raviteja.
> 
>> Konrad


