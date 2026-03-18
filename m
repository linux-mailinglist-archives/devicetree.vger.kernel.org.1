Return-Path: <devicetree+bounces-277168-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0CmlKQWPumnSXgIAu9opvQ
	(envelope-from <devicetree+bounces-277168-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:39:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 101382BAF35
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 12:39:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7A77E3064675
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 11:36:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D08DC3C5544;
	Wed, 18 Mar 2026 11:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="olnI2wtJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RkV/NOwn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A93C63C276A
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773833789; cv=none; b=lCO9+bHwAQ6TnFEVH2ygE5tDSLbTvRgh3j6wJiNGbwXl/qYmG+U6zJqYayNX5uVzw/a6lkBhQdbk1yLEC49SWfbJj386FKUFKMpysiHuH0H1/bWBXZ9aJ7yBAOMmHXNdsnCI7oDtn10RZDtEm2i8Ohv0GqJJnzwKCwmECUjrfHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773833789; c=relaxed/simple;
	bh=6HHWVybq0B6lYWd9+iWN30dQUWTovV+r0fcvkzXr0VI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C/CWz81nw9rAkM3GFQQhtwD17sGb7ecVE3u23h8i/EJDdjeWDsdmu7rdguMrTn9AvFvoWqb+eUO81PsQmcRhuFTRd0WWwH3LfxxAod9pLBO951AW/mCvFZl0ot5J6x0T3NQ6C4PRtM98FiAJ6TMnZfcbF2LHHXvuMWSVUjAWgI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=olnI2wtJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RkV/NOwn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I8n51N084743
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:36:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Yy7Z1kHkosnYj/2AM+aRz7vi1e+/TI88w0bNr9oWboU=; b=olnI2wtJ/VDXYx9m
	Nre6qNntujuiZ8ABiE7iWGonOESj1jqWzaRhue54BaASJvac3ck9F6Gi2PPkhBIb
	Ct6fO1pvNVmyQOU8BQ7COT9oYVe6PHqIRDTNTce7UShn7Gl2w1W4G4jJtRgFXNlL
	n/JwT9gTc0BCrYjr/u+oKYAZKFX6/jDY7NJtuJTNsejSCVGqfvywBPPlFJGOcrRe
	52AdOlFQ5LSYTw23qWN4eQgQ8Kmw9oPXwrElJyU8nPZ0EUOv3xsgTW4DauoOTEbx
	FLwmy7ZhaMDxvBvfhvxbmrd5w8h84s5acy9Ju4lC2w6hT+HLWN7expSZ4wpUALdo
	hMKsvQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cykqet1gx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 11:36:27 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50923a9bec8so18640181cf.3
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 04:36:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773833787; x=1774438587; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Yy7Z1kHkosnYj/2AM+aRz7vi1e+/TI88w0bNr9oWboU=;
        b=RkV/NOwnAJSldVd8NSLHNUzk4Wz29yGfl8PWMFC3nizl+mzGRkzMH3vCVPhKCVVUyg
         w2u9pvnedOofoTadWB6IFuup31GK7i59Vl/NsXGFhfdMCVraZQ7XFoPzrGFiwRpE/tYj
         RkkN+5crrjdgSVNdYB1nLi8k78bNYtNFWEy6uTEpRwd10MM4rKFfsi800IsGjxR/OTlq
         N1tSyQS8SAkb65lXe4u5/Pik370c7KbHOeLSrCXEuYdNt8FKL5WJgLTrQ5HmGVNa+pj7
         0I1mOyg42pXVALh/tTnbzlYUk1Vzirdg73+xQSIvzBiX1WXBWhXa5fd8+1SJiyPbFOQg
         wLCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773833787; x=1774438587;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Yy7Z1kHkosnYj/2AM+aRz7vi1e+/TI88w0bNr9oWboU=;
        b=StETwQZsoftxlT2l/LTIRle+hFBw7F7ua8kIMdSvFREA20/bnUtblg7nhuBZgaz48L
         FlWsneTDrxJLjM86U5dWRtdxTIj4XwpmO0M6l/uarfOXi6aWqP7d2WuXJ2s9EvZbPRCR
         PNnUzpy7ke/w6UwdkEOTxsej1xvndRIrWPR8E7k2XY0RLke6QcYas3SI4eKU6Z847+A9
         3oaPoOQQPVuYhC0pIRp6RJXN7hyh3yzZR5/IgqNf8z9R5Qn84g9KP7baZcZO3V4c2hVH
         eaekmjSY9WQ9QBeK1OBYFTeKIqaCK3yQmvoA5suxgqLd2v0M+gZMmGvl8zCdWNLDqjTo
         KDkw==
X-Forwarded-Encrypted: i=1; AJvYcCWrfsXL8mLR0nuT/UOt9lzjndTxlhL2XCbaC3kZ/DnAkxBwUHNCgdL9Cty93hxYD+RwE+1sFOyT5Q6D@vger.kernel.org
X-Gm-Message-State: AOJu0YxiwOscEtTkmYB2pPcijW6VYOvZlM9qmEDJpd+kZ8xmoiqKKL1d
	0HPghFGG02/9Zj7DLzwsHwQTKSof1pSmwia9x+FQHX9vrXMFWfiuH7ZzVquOga8sDahX4UmuGGW
	hJRL6O14+0R9y39U5bHUCEeJw5blp11MzIYQn47HJN8OFNv4s4T1JUhDysZqnIuKw
X-Gm-Gg: ATEYQzxITPuYkLyFpTzat/uISUg8T8r1X2XUinmxRfs+N5dF0/iCMmFLqLt94tLGM/b
	D52HnjwV4TrIiKeZsuU0EU12etHDQT/JUMUq0oKwVfiRbFKi4epVmutvhf7iXB6072ZiJC5pmmg
	O01n2Xw8tvA3UKJekMTJ1VxzKeEqWZv1SyYZbTBGy+jcIAejvY8xqmdJ4PYVK0mwC2UZgpTkyW0
	u0/ZBP5I2XrZY49GS/Z/bbe2XqvZFAGf3hFNy9ZLi2AEcHgTIsxmapwdjKmRWhMnqDZQ6BOTZ3n
	HCjSxTTbljPjzh7BnARWsTdfbc/zEGLKiyVqwrCmp7z7CJd8SnywtBZLLE7/b/P24Ms66iV3DGG
	444P4ku5yrJbmtYJ0emWxsASNiUqiD9P6hy3WAZ4jcEBHdiME
X-Received: by 2002:a05:622a:1196:b0:509:1cf9:ea06 with SMTP id d75a77b69052e-50b14889b65mr37679991cf.56.1773833786967;
        Wed, 18 Mar 2026 04:36:26 -0700 (PDT)
X-Received: by 2002:a05:622a:1196:b0:509:1cf9:ea06 with SMTP id d75a77b69052e-50b14889b65mr37679541cf.56.1773833786423;
        Wed, 18 Mar 2026 04:36:26 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4856ea8fb0dsm251504145e9.3.2026.03.18.04.36.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 04:36:25 -0700 (PDT)
Message-ID: <846ae47c-8e0e-4fdb-899d-de679d013fa5@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 12:36:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] clk: qcom: dispcc-eliza: Add Eliza display clock
 controller support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
 <20260318-clk-qcom-dispcc-eliza-v2-2-8c05581168d1@oss.qualcomm.com>
 <1a00582d-66d6-4325-aafd-156cfacee8cd@oss.qualcomm.com>
 <d2975a1a-04bb-4026-a0cd-34571f99ae02@oss.qualcomm.com>
 <2227a9d2-fb34-4d54-8122-c00f54009de1@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <2227a9d2-fb34-4d54-8122-c00f54009de1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDA5OCBTYWx0ZWRfX3CQsfqOL7qMj
 8dsCbXj4IQTLPpYNbZ7AHug++30IslQFG+WZSuKAeLb1u47JtBWJYmWQk9t93wW1Mho+/af+edJ
 UkvEYSkmLu51rPiXTsFio9vaHbToogVaIrPs6RYK/ECBOjXA+uKBEnEAyULuR2iDBd7Nf21x9M/
 K98O3f5mxbVsIOqJfalRwZzZ8WU+qJY5zUqQycHXMu07v3yneTIQgQIrCbWNPM9HHudsK8YzZ4g
 DloecK75ZUHEhD6tXMZz8Lsq0MW5SPC7ILjjKqDW1kbWYIpS1PmUFj7XLVGnK0RgDWymF2zhkG8
 lutceyl/3UMBXieh2ajl68rXlAjACqGMyW2ScAztXHivIM+DKyM6E3GEwpvBtNtSBzfJKG9+nGJ
 HF/UWcdwVq1EKAdf/1JVOm+PoXrpsyEZfYEn+gploQXTTz8LcEua0lZ41nFzlMuNqR/4mOICaNJ
 H5vh3qKa5HSh0NYsh1A==
X-Authority-Analysis: v=2.4 cv=Cd4FJbrl c=1 sm=1 tr=0 ts=69ba8e3c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=BJVpgZEWj_MAxDIDL34A:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 5SF643dpGLMukhRyLJsyJ3BvAp3arHUf
X-Proofpoint-GUID: 5SF643dpGLMukhRyLJsyJ3BvAp3arHUf
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 suspectscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2603050001
 definitions=main-2603180098
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-277168-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 101382BAF35
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18/03/2026 12:32, Konrad Dybcio wrote:
> On 3/18/26 12:13 PM, Krzysztof Kozlowski wrote:
>> On 18/03/2026 11:48, Konrad Dybcio wrote:
>>> On 3/18/26 11:39 AM, Krzysztof Kozlowski wrote:
>>>> Add a driver for the display clock controller on Qualcomm Eliza SoC,
>>>> which is copied from SM8750 driver plus changes:
>>>>
>>>> 1. Additional DT_HDMI_PHY_PLL_CLK clock input,
>>>> 2. Eight new HDMI clocks,
>>>> 3. Different PLLs (lucid and pongo).
>>>>
>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>> ---
>>>
>>> [...]
>>>
>>>
>>>> +// SPDX-License-Identifier: GPL-2.0-only
>>>> +/*
>>>> + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
>>>> + * Copyright (c) 2023-2024, Linaro Ltd.
>>>> + * Copyright (c) 2024-2025, Qualcomm Innovation Center, Inc. All rights reserved.
>>>
>>> -> Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>
>> That's the copyright I found in the downstream code I used in few places
>> here (with modifications) and I am not touching them. I also don't care
>> about these and I am surprised this keeps popping in community review...
> 
> You may not care, but our legal department does..

And your task as community maintainer is to care about community and
Linux kernel, not about legal department.

Legal department can comment here, if they care. You as maintainer have
rather responsibilities regardless of that legal department.

Don't bring corpo legal stuff to the community.

Best regards,
Krzysztof

