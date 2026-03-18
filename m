Return-Path: <devicetree+bounces-277296-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QKpEFwO6umk4bQIAu9opvQ
	(envelope-from <devicetree+bounces-277296-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:43:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id D3FCE2BD671
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 15:43:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D62713083FB0
	for <lists+devicetree@lfdr.de>; Wed, 18 Mar 2026 14:35:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CD013DBD5B;
	Wed, 18 Mar 2026 14:34:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nQZ3a4lA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MaehRU4Z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AA493DBD7C
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:34:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773844443; cv=none; b=nkoS5mIvk4F7jHF6Y0cD8LSDS+AKAKLLCeSFHVYb+mB1DLxOme15ssS0xpzDhzV3mtAf6cNqi+L34OCGw/iubQ9K0vVxgtQKUm2pi6dTeMS8B7O14AO85qTUqjf6Gf05+whnW9HQ9vC9aVxXXL/SDMNJZN1wf8vWywpvGcYBdSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773844443; c=relaxed/simple;
	bh=9p6tQs+mLyee3FtMZwaNEygInWPuLE++rtiwf4wLoCg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P0n6nFtHrlVdW2kDxyl3Uhle/8XOlGzCC00e7LjVOFJr+84cZJbcdXQ7wqSXEMTSwnnLSWWJdHwRI/Wum7TTsuCmFKPEuwVacC1cE5KZTQSStd8frA5WXLSYM6PiuHCZrC7dS/36OL1A3fTpx/psJSJaUQ4oKYNQx16aTpEUMqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nQZ3a4lA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MaehRU4Z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62I9Msbn3358377
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:34:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	KvDkX8RsG9Lo1c/o4mDsdW9Ws2mDXEVxPEhrsdpPYsU=; b=nQZ3a4lAY2DD+UgK
	q5/LLvnUTzUgpKDPMOQ2OLyoMh7x0nqgwWxqx5m7U1ubuFJ+vE8DX4RKPq1kKD7V
	rdkK682e0vbRC0sDTJRFrBzpyKgsbBV3cNZUspIMM/RDFeYJ5K2J346FstTNbmrH
	ICyTaSdwJtEcsTYtwBiV96Qqm5pRXcLamRhHEimciMixnyhsIRYDckhCXrdo3926
	H7A4k9BM8yyfxDzquupt+TLH59k4kr9y8sj7D2P4FaDGa4Z52eBbQEoxYMvQXjV7
	K04wSiq2FYo1h96z9a51ADRDhsSYRIpW+gpe2RlVsTr5tLZdQ51BzFEL5xKC9PeC
	ZukWcA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cyscb14tt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 14:34:01 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-5093b92f327so71931321cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Mar 2026 07:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773844440; x=1774449240; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=KvDkX8RsG9Lo1c/o4mDsdW9Ws2mDXEVxPEhrsdpPYsU=;
        b=MaehRU4ZeIcXysnwHDk4oPeqQNuZhKx4M/1JElj0SZSUyuxnIUFnYSQfx8jeKU9yt7
         70CQu+rvUuOgE11RCJ2P+/OUZwiX1/8J1ntBOxeqCIWU7c3a+sQdKLxb6opAEdqsEPDr
         G5pxfrSQn68dIa2BzGdESXITAklZWQ4VcEGYFLvdAKWGmxq4EWSiZHXL/v98xWbEpxYZ
         cniCGscXNgasSJqHqq3eCN92kNRgDvdVcUJPJp1znaUgxrv58Merjf8H2INiD326z87q
         MoVQ5YlUP2WFdOJ9Y++IXue/gKnIGDDAQwnWonaNNHPDwFmQd5X832p5VMU7x/hXtSqe
         LRVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773844440; x=1774449240;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KvDkX8RsG9Lo1c/o4mDsdW9Ws2mDXEVxPEhrsdpPYsU=;
        b=gAMby57zliUy1YDITxdsIZjB15MhKc/H19xOKwYklRDL+h0FK9Gzmgnkw6nhTYn+y4
         2deO+52mkulRSuByAjqTS912zNguVfa0ZtycyasfuA17dCRAEsDmJAwpAUXowZsi2iLk
         ws2Ar7I9qU6DiefmexGjPWNIP+DENtZpv7v5rfMm3UGQsqP1pDNkfsxuiI72tPNORhQs
         LJ/5n/Ar4QZa1RinDlzPeNx0l2vyPXR5GwWnTFTT8OkseJMUfS7omup5LTvAivIk3Lh9
         GCUgpH1t1xFuAQGG7UNUtL+oDiamffm9kF7fLpoMGw0HPD0hWT/oRXWDLy6SFb6GqpB7
         weqQ==
X-Forwarded-Encrypted: i=1; AJvYcCWxr+a7LplslJ3w2VNETQgJXW/gRuZIPEI8mVHWYRGOE8FjUhdn8FMa6Qac1w4uroAakuonbxWDJ6fQ@vger.kernel.org
X-Gm-Message-State: AOJu0YxTjbcZf7YbLkA7QIRNzjMPbtxIzK1QR/Lmo8MKhaXsFQUyvBa1
	kv4lSOMxnbfEAA+4KTR6sU55rYFyMwxElYsCH1/AQ06c42IPJoNqboyl84Nsuy6ypTaXOFOU7bD
	Wmawh9OaoFvq+sXWmV9sOk6f6+V0uTRR+Re9nl9F2U5QtTtcYg/uGZ1fLddJlMqjk
X-Gm-Gg: ATEYQzxJQjpOirV2Mjmjm3VmsXm5lCyodTQWO4oPht+Go9CAW1Dsteuv34cGXOeoYAO
	XdqyMrSDLTRV+Ig5vOIi9avmD2XiiYFWtS3soW3TlZcftHoj6TohMzekioILEU/XmLWrNZhf7P6
	aG1lEZbL7HtUt9syru3odrEbCfDuHgcHZWFH1o0hui4OH0IZbc/RVpfDdM7wJlaFMFZFr/VEIdL
	eEyk8ZkBWhB4bDalMWnCrOSfdcU8GDHcqBzI4U5yk5RseM9Y3g4WLE3I1vMs6+66vt0GMaGWwKO
	15jCpjgyIFU77/Kqvlzhecbs2E+RlenOmNm4/YdGNQfrw7CvxOTbpB+wFHzOQWn80dh3/sUFIDB
	cUKmZAROcrOauqap4NWwlGZojIPsbMcWI2kYo5EOdzwNWtpfU
X-Received: by 2002:ac8:5f93:0:b0:509:44c3:5ffa with SMTP id d75a77b69052e-50b148bc253mr45865351cf.52.1773844440308;
        Wed, 18 Mar 2026 07:34:00 -0700 (PDT)
X-Received: by 2002:ac8:5f93:0:b0:509:44c3:5ffa with SMTP id d75a77b69052e-50b148bc253mr45864721cf.52.1773844439720;
        Wed, 18 Mar 2026 07:33:59 -0700 (PDT)
Received: from [192.168.1.29] ([178.197.219.94])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-486f4b9892esm19606605e9.19.2026.03.18.07.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2026 07:33:57 -0700 (PDT)
Message-ID: <9ea16bfe-ac9b-405c-8597-e4f398347d8f@oss.qualcomm.com>
Date: Wed, 18 Mar 2026 15:33:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] clk: qcom: dispcc-eliza: Add Eliza display clock
 controller support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20260318-clk-qcom-dispcc-eliza-v2-0-8c05581168d1@oss.qualcomm.com>
 <20260318-clk-qcom-dispcc-eliza-v2-2-8c05581168d1@oss.qualcomm.com>
 <1a00582d-66d6-4325-aafd-156cfacee8cd@oss.qualcomm.com>
 <d2975a1a-04bb-4026-a0cd-34571f99ae02@oss.qualcomm.com>
 <2227a9d2-fb34-4d54-8122-c00f54009de1@oss.qualcomm.com>
 <846ae47c-8e0e-4fdb-899d-de679d013fa5@oss.qualcomm.com>
 <xofpfzgcsmjhprnnffqrwbauisbsctg7bedtri2vxtxk5zowz4@rjlmceevwesg>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <xofpfzgcsmjhprnnffqrwbauisbsctg7bedtri2vxtxk5zowz4@rjlmceevwesg>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: JHl3iolD4HSsq8Ry6phczdKxrU-6ZSI-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE4MDEyNCBTYWx0ZWRfX0nAb3I8nDpca
 /huLWMX8IhlrUTAhNwTXdwV4ZTHX3BOj8cGkubtlUBDVIrPnpUky52umFV33as+ORuFwzFAMbXF
 3DkN5y0Ix+3aRpewL6a7vV4xVrBTpk5oklW1pdYTTlmJevfyFCVlEINTW4+oj4gXdpR0MxYGkRz
 mY7/jLd8qvGnqiYppYk0eiNQPquL4Rk36Ypoj72b1+/wL92kfVyF9nibilNIMrAPUeJGg6n66O8
 +hvBpLpO2bAwnCKJtM3GnO3TbvZXOOLgGY7PK3YQREdKfr0vFeIWTXsjgSNHBvmBkp4w7zt0rxW
 xwE5x7uLZ9P8WyGAIZYyIAZYOCuxKHOwersevnru6kRVsvyjpH3RICSXqgtP600KhZYodNnNYhm
 m7PFlbXK+IAL6NL/cjDIieedskJ301Zs/hzn9ZcFGewRNKbqj+lp+KWfFc/wMjrJG6KQJ+IL2QT
 kS+Ho1dRXmKugr3YvIQ==
X-Proofpoint-GUID: JHl3iolD4HSsq8Ry6phczdKxrU-6ZSI-
X-Authority-Analysis: v=2.4 cv=PtCergM3 c=1 sm=1 tr=0 ts=69bab7d9 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=gOEeR9iKwsj33Yj5oN/cWg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=0Xxaj_rZfRVFU6duThQA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-18_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 priorityscore=1501 bulkscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603180124
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-277296-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzysztof.kozlowski@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: D3FCE2BD671
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 18/03/2026 14:46, Dmitry Baryshkov wrote:
> On Wed, Mar 18, 2026 at 12:36:24PM +0100, Krzysztof Kozlowski wrote:
>> On 18/03/2026 12:32, Konrad Dybcio wrote:
>>> On 3/18/26 12:13 PM, Krzysztof Kozlowski wrote:
>>>> On 18/03/2026 11:48, Konrad Dybcio wrote:
>>>>> On 3/18/26 11:39 AM, Krzysztof Kozlowski wrote:
>>>>>> Add a driver for the display clock controller on Qualcomm Eliza SoC,
>>>>>> which is copied from SM8750 driver plus changes:
>>>>>>
>>>>>> 1. Additional DT_HDMI_PHY_PLL_CLK clock input,
>>>>>> 2. Eight new HDMI clocks,
>>>>>> 3. Different PLLs (lucid and pongo).
>>>>>>
>>>>>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
>>>>>> ---
>>>>>
>>>>> [...]
>>>>>
>>>>>
>>>>>> +// SPDX-License-Identifier: GPL-2.0-only
>>>>>> +/*
>>>>>> + * Copyright (c) 2021, The Linux Foundation. All rights reserved.
>>>>>> + * Copyright (c) 2023-2024, Linaro Ltd.
>>>>>> + * Copyright (c) 2024-2025, Qualcomm Innovation Center, Inc. All rights reserved.
>>>>>
>>>>> -> Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
>>>>
>>>> That's the copyright I found in the downstream code I used in few places
>>>> here (with modifications) and I am not touching them. I also don't care
>>>> about these and I am surprised this keeps popping in community review...
>>>
>>> You may not care, but our legal department does..
>>
>> And your task as community maintainer is to care about community and
>> Linux kernel, not about legal department.
>>
>> Legal department can comment here, if they care. You as maintainer have
>> rather responsibilities regardless of that legal department.
>>
>> Don't bring corpo legal stuff to the community.
> 
> Then please follow the internal company guidelines as outlined in the
> legal&marketing documents.

That's not your task to instruct people what internal stuff should they
follow or not.

Especially not implied by previous comment "Then".

> 
> JFYI, several other Qualcomm maintainers also enforce use of copyright
> headers for Qualcomm-provided patches. Konrad is not unique here.

I already objected to one of them, so I know.

You do understand that this is completely broken review process? As
every contributor, I can object to that comment with arguments (and I
did in the past), however you as reviewer do not bring any
counter-arguments for that all. You just refer "follow legal internal
stuff". No, this does not work for that.

If you bring review comment you must be able to justify it, when it is
being discussed. You cannot refer "but legal team said".

Otherwise look for comments for your contributions where you are going
to receive review "please remove all boilerplate because my legal team
told me that and I am not going to provide actual arguments why".

Best regards,
Krzysztof

