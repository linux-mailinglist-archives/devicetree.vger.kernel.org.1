Return-Path: <devicetree+bounces-213000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A990DB44613
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 21:04:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6B0331893A86
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 19:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFA9F22F16E;
	Thu,  4 Sep 2025 19:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ex+d+zAG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C9C1F2C34
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 19:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757012634; cv=none; b=IWBnJLX0/bT+W3GSRxRNfYIC4HE2jOQTps9wO2M1CDBtzIVLJBR4sU3ncYPyzalBuh/OvY0Yzq/3rawK738hl3Jk3U2AWPfXyLeLQkiEJ9KsgwsljfN9QbJhJzNPTu+c1uGoktvrzRSIext9t5pPjvYfCfK/WbDspZlehjppK28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757012634; c=relaxed/simple;
	bh=Gufh1BdYpf86NnJi9lazFUH1ZWU9lOnI4QZK9kqt6AI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T2HzWqCOaC8n7dosCP0U0/lSTSYeiobDwCDRMLP/XDIwAhi95ExZ6HXD7yEFiDKi4GPdQMWdGmy9V1C6h+/vnTpeS7SmRQfUd5H8iB9aClfgY/9BvTSdsGLXNzuW12T0M1QTY9Azylp3qwH3vODtT+KuSbeV+UhRhwHWKcYWdjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ex+d+zAG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584I6NEC008129
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 19:03:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SDRXqOYk9u/oO7fiZpDU/+GHJbO5mPAWGLkB78rVgss=; b=Ex+d+zAG7XzK6GfT
	zHvhewBWxBXjWXW5CGDYLXdH5Sxj57xPlr315X9TKytz8zI2IU5UHw4tN7Kc3Tr9
	8W95lSIiUtB96Onw++b4nOkMfRry6HS1L4i9DVGkrqLSzvROWbAA67x0jY92bfpy
	gg4GccAwOhrafeDqzPPd0Ok5PWATLCqP1zSk+KGzWKqML1SZsdS68CLXDtJ3eQTI
	Mj/j5YGIReZNwQWbyHpzhc72oOjvnxkSxrZvDE0BltKH1WSYWVe5JlSPXMSWNQNY
	7JwpVdmaZHFXdX7BjxlgYat6N/qQXX90lhChULksV7kf+1qTj3Ew9ekfGV7I2XYV
	S/bXrw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjrkb0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 19:03:52 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-249118cb74cso16463975ad.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:03:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757012631; x=1757617431;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SDRXqOYk9u/oO7fiZpDU/+GHJbO5mPAWGLkB78rVgss=;
        b=Axc8bClmAdROiNZPzvZefKjtcLr9dTq1XTm0rkHw/GturJJmdAhMuDbE4oKTlV9U4H
         HLN8c/TSOrZZBimCFMYSp/Ka+zeqxCkCH4lld6xDW+MF1e+jfGDOBfiYnVTOYeqYzL4y
         PlLRi1agH1xcMaF5uHF+jlDRgXEwoNOwOhtaJlTpwNyZV2tB4YT90cXB0ANLQPqONciC
         ZaSEnJT7/YnOp6aTvpDFlQviqEtkoDGwdAmZWTJ8wouYJuh66IMebwcxNMnlITyntKo7
         fy79E1u+zB9hXouxyJE56wFg4jRBS/mIuxdtbWZvZOY6t3oYtAB9zmodVo6yIg+O5QVV
         N6Cg==
X-Forwarded-Encrypted: i=1; AJvYcCXvwbLjNaAjkLR00fX4hIuoWAhHWcilHJ+rTjhRxhfT9vNeDcI3qVCCu6Z49H1xpT0GTk8b35NV3nIp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh24Fhp+Fadr7r9CYzfQcaozKWUmVgC6TK2Q+eWuX8OiYDWyYc
	uwLgW4iWx4kgy8jMDqnC8izh0Vfm0XZqhqgK6q++/h/gJclRrtssUcb43gva1iMENo6DmWpf7Yh
	SmE2WZ2C+A2O5wbcaoGsvd8wGQV221A218y2LkFZp5XUz0xDXu2Khe/j2qedUtSPE
X-Gm-Gg: ASbGncseiixBv57ozcXWAjw0xF1lwJZwJ+V7+OOb4IplA4GmCH69eX94u85i/PR95sk
	m+o2aMQ4fWcpNoHjuBdu76HIfU2dVZoPj8FfWgfA3q5HsEkEo+1mZUIVB9y46m1ffHFcbe3xH70
	DpX/e+K349CVbjB8gMJ0XmoAjRBvhCLNZtCplkgr+GNbSVlPyTTtO3T/UcLSYbIDwuU2tE4Ba1W
	Ornm0mCSkTpyqDkk5oxGk3S/ngyT/LkWfl529DtTVaSZNw0Lp/tLFIH13Ak0Ykw3040XgXHqgWT
	b/mLLYEUNMnhoNgEL5tACw9wI7U+PeKBQWJfetKTUP2ePmBXxkC+RfVgjm5/5giVVfDMSEO+Tfg
	vDA==
X-Received: by 2002:a17:902:ea07:b0:24a:def1:175b with SMTP id d9443c01a7336-24adef11943mr197222545ad.54.1757012630941;
        Thu, 04 Sep 2025 12:03:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHI4BIqH7bu+Rvn2HhjDhkE6EWrcPdsri+BsrvIPeqWMVW00O9ePp18ygcGWSIcdGo1rv5xYw==
X-Received: by 2002:a17:902:ea07:b0:24a:def1:175b with SMTP id d9443c01a7336-24adef11943mr197222005ad.54.1757012630403;
        Thu, 04 Sep 2025 12:03:50 -0700 (PDT)
Received: from [192.168.215.112] ([106.206.6.136])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24b2570cfb0sm72554555ad.139.2025.09.04.12.03.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 12:03:49 -0700 (PDT)
Message-ID: <68e1f0da-1fc8-44c0-bd65-4bb275daf792@oss.qualcomm.com>
Date: Fri, 5 Sep 2025 00:33:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: Add binding for gunyah watchdog
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250903-gunyah_watchdog-v1-0-3ae690530e4b@oss.qualcomm.com>
 <20250903-gunyah_watchdog-v1-1-3ae690530e4b@oss.qualcomm.com>
 <ea295ff6-5395-4470-afc2-76e5e2dc9fb5@kernel.org>
 <099a7c48-c447-40d4-9076-570f5a5058a2@oss.qualcomm.com>
 <29a91114-d862-452e-b7bf-1b659ad7d831@kernel.org>
Content-Language: en-US
From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
In-Reply-To: <29a91114-d862-452e-b7bf-1b659ad7d831@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b9e298 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=6iY0yay2K6ZbG8zVuLWUNQ==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=zWFo3qVbXcOUHq55OMAA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 8FQde79XE2MRDro6B2hZ6PXgnnBipgAw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX6Bg7aagekPP3
 VSaTE7u9JncQvSmxD7sE5GFQ7bB+fz3/D1QDmTpKOj1ZDS0G+0JLaVpIaHY5dkSlUkTvCDfDoMe
 mTlJdX9V4ACNBFMj0dpoIL0bnAZFt6MJITLmGuZW3J+GdZXCFvW8xQ6uiKGPMLd8RHMrnw7NbNA
 7OvIO7cD08quzJV0P335g7pIPytnJf6Ndn97oyYz7ZyKcM+6agbZfkj5FaIHrHEmj0lUQHFJEef
 8zGuQ1xN8OvjPpVmk0SBl4gAFzri4yka9Ih8g1GHJp69QS6L7Lbm+o352O8jGXMmTzeizcyl7qc
 LdH5ZuXzbYzG9hhcKFm2hTbl47oWMJvqaJGw2hDJWEidUH7OuBzUJBnW5azFgRbUubt0KUM0tdY
 bQvOvkLM
X-Proofpoint-ORIG-GUID: 8FQde79XE2MRDro6B2hZ6PXgnnBipgAw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024


On 9/4/2025 6:47 PM, Krzysztof Kozlowski wrote:
> On 04/09/2025 15:07, Hrishabh Rajput wrote:
>>>> +properties:
>>>> +  compatible:
>>>> +    allOf:
>>>> +      - const: gunyah-hypervisor
>>>> +      - const: simple-bus
>>> What? No.
>>>
>>> Don't create patches with AI.
>> This patch was not created with AI. Reference was taken from the patch [1].
> There is no such syntax like allOf in [1]. Nowhere in Linux kernel, btw,
> that's some total invention, thus my gut told me - it must be made with
> poor AI tools.
>
>> That being said, I see your point about the mistakes which were made
>> while adding the compatible "simple-bus".
>> I apologize for the same.
>>
>> I will make sure `make dt_binding_check` passes with latest versions of
>> dtschema and yamllint as pointed out by Rob and as should have been done
>> with this patch as well.
> No, that's not enough.
>
> You should ask for internal review. I did an extra effort, I checked
> that and:
>
> 1. You did post it for internal review, BUT:
>
> 2. Your internal testing system pointed out errors (schema failure) or
> failed itself,
>
> 3. You did not ask your internal testing system to RETEST the patch, in
> case this was a system failure. That's your mistake. If this was true
> failure of schema, then you obviously should not send it, but
> investigate why schema fails on your patch.
>
> 4. You did not receive review (at least no track of it) but decided to
> post it on mailing list. That's also your mistake, because lack of
> internal review does not mean you can post it to the mailing lists. Talk
> with your managers or colleagues about missing review, for example.
>
> Best regards,
> Krzysztof

I agree with your points. I will do my best so that situations like 
these don't arise and save everyone's time. Apologies.


Thanks,

Hrishabh


