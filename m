Return-Path: <devicetree+bounces-160875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C556A71740
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 14:17:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C250F3A6AAC
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 13:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 321261C862D;
	Wed, 26 Mar 2025 13:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SAkJfa8J"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D5351E1DEC
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 13:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742995028; cv=none; b=YVJLiVoTCTimqcmt/YuWkIqr8FrHXnWr/cCSyDXJrTc1F5OCQ1JEXjcBO9//NpMfKBs3lbz6TtFN1jFhkCFkNxt/F0blpWanYrTpUK+IzOrMMtC6MYwFncgcd9F53vUvBLkuHAPz6Plndh8kTXiaKmy94JHUyqe55bRnIV3JC+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742995028; c=relaxed/simple;
	bh=PlpLHMfHugWlyvKNdNjrSPwA2fM3W7l6yatfEAvFyzE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OkgLaPDot9CRuyZVRLCYymOJ2BrMvO40PlZqa+TBKubWstcFlUOH+gOY02qLSivwxhA8UOkT/r8CuBBGiARobGhRPMDhCGYujZ5S7jHdF5ud3j2Kt7iSe1o9TkWIpEih2AIXYmKvo9S+yLWdTj9eiyyrapOyGBwLGctikmSvibo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SAkJfa8J; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52QA1jUu025388
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 13:17:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OSWNGu5ysI/ZrwWG3IadgQt1ZqUFERWo1HxXteYiRbc=; b=SAkJfa8JuX+DNtj9
	aR1o3nDU52THt+xRPiVBJexltNqEQQUijtXVy44OrctV9wUA9aukpqJGsXXe+zJR
	UMmBpSNlbOJn/nU7eDzIWZDZNR+5VkY7AIeZ+ZTbAeQWGviadIT8gLzpM1ut1+8O
	M8pRiZiErAdwhtiZNCS2+wZdCRg2fZjqR4VyZiRSkRcDfOJf7RArA2hexpNTCljp
	5FlrMWZOjZa0sHwSuGfhUknALabDD7cBYu4KrqmUmw2YqwrI1OATJZ4qErwxjIHl
	FTm4pNuw74nmhY48W+z3aVkYb6gEjcsd1ZuQYR9c0AqVQL8j12nGJmVM9ZWmbeC+
	Ek25Vw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45mffcghmp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 13:17:05 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8fb83e15fso13600776d6.0
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 06:17:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742995024; x=1743599824;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OSWNGu5ysI/ZrwWG3IadgQt1ZqUFERWo1HxXteYiRbc=;
        b=UitrMrXbCDAgP3C9f1Xv6o4N4KDOl2lt7S0W44XqcGVfEzq0wCg87f04pg1Mc88Lx4
         N7SFM+4JJnniIlmozVBh2y1QsdPY9t3KFFpQCQ0OX7fF9VDOaWrS2dw/i79/D6aQJbs3
         uaOPKt52bxVbSWOawlEi/+wf9ThbdoRWb04MsWBAeUPPMbYrluy8OcaUThHzOmhKZxcj
         wLTatdz/h08Rve+9FaYYeYdQigrniHEHNIQg6u8RoUCnlCUfpb6zX8aKtrE/h9UHBjET
         /jciGBA37XYmm43qY1WlAjVN2zVOreEm2gv1XLy2LhkroGOQbAANJaBnEjVto5UC1B6Z
         n8Zw==
X-Forwarded-Encrypted: i=1; AJvYcCVfBtfxPq4YEDPaOgBRdQQhCLn9g50KKO7B/KCkuZilCqZBhQoOHT3mlUtdWGGqG/s30dESXQh92Xjs@vger.kernel.org
X-Gm-Message-State: AOJu0YzW3r47jWCE19v6GgnsT0y6vB/AHriGhHqCnTc3Hi3dJpksFfNP
	yaQdgFkZ7agE3CDtvcdJR7vjmnTo5Cow7H13ctSqrwzdiSgVJYiMRtGE9+F8SfGkYk694rruDsx
	/Xz7keHr65p992DVRvQI2UpEP72XAZ4CQF2ir94r7lqW+B4wpotNkxPpb8WqS
X-Gm-Gg: ASbGncsBtQVHYbDJrVuEvl9f4QMDUGcWLILzpKDcbjECMM1+OD5wDbOlifoeCDdAjGy
	U1CGqAEodChVMTX5CVXE+bObIRVKgc4AHBRYVMrYM4N0VO1JsQ1Dw5XMcxvj1CM0P+NAvdtAaWA
	/1jxuSynLByyqk80Qie1lqTY3q/AQYQl0V+/o6AQ2FlocUXaS7HMQKmF4KZLTnWN5Y97tndKKzA
	wOVGeAHcVv9tqR+O4ORtpS15K0sMoMCQphyzcYsvkIgG9jadD8BBOYlgTxCpiVlZdA2Z3hpcSjM
	xNGhVwtlVpcbCxcVzKR4HtjatGG/3T7JtrKwO0goDBMFZxl3lxtqMcZ7v1SzmlODY09UQw==
X-Received: by 2002:a05:620a:d8a:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7c5ba1f1008mr1014048085a.11.1742995024169;
        Wed, 26 Mar 2025 06:17:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGEWk+3aH6NV32r5YxqB7ELx5oUnVppF66A+EP9/TIjpwwijOlbyXw3XzCIrY9S6UeSPK/mWQ==
X-Received: by 2002:a05:620a:d8a:b0:7c5:9ab7:3012 with SMTP id af79cd13be357-7c5ba1f1008mr1014046685a.11.1742995023623;
        Wed, 26 Mar 2025 06:17:03 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5ebccfaecfbsm9373513a12.41.2025.03.26.06.17.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 06:17:03 -0700 (PDT)
Message-ID: <b31eafb9-a485-4a95-b49f-7da865eb2579@oss.qualcomm.com>
Date: Wed, 26 Mar 2025 14:17:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 0/5] Add snps,dis_u3_susphy_quirk for some QC targets
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Prashanth K <prashanth.k@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250325123019.597976-1-prashanth.k@oss.qualcomm.com>
 <ee0848ea-7a06-4f4e-9115-5e3c0ab8bf95@oss.qualcomm.com>
 <7029a455-47be-475d-b429-98031d227653@oss.qualcomm.com>
 <db0bbc62-ecf2-4f72-a0c9-462fbaadebc4@oss.qualcomm.com>
 <5k45tcntn2bhxqt35quzfm2dsq6eug3hgqdcrta25oy47zuqja@4jclvspwob5x>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <5k45tcntn2bhxqt35quzfm2dsq6eug3hgqdcrta25oy47zuqja@4jclvspwob5x>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CdgI5Krl c=1 sm=1 tr=0 ts=67e3fe51 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=xMnwRdS-aKneeMBeM7YA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Id7eAmKQ2LSS4C2MJgVwAk_m45yI1jwl
X-Proofpoint-ORIG-GUID: Id7eAmKQ2LSS4C2MJgVwAk_m45yI1jwl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-26_06,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 mlxscore=0
 spamscore=0 mlxlogscore=999 lowpriorityscore=0 suspectscore=0 phishscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503260081

On 3/25/25 11:10 PM, Bjorn Andersson wrote:
> On Tue, Mar 25, 2025 at 05:31:28PM +0100, Konrad Dybcio wrote:
>> On 3/25/25 4:01 PM, Prashanth K wrote:
>>>
>>>
>>> On 25-03-25 08:11 pm, Konrad Dybcio wrote:
>>>> On 3/25/25 1:30 PM, Prashanth K wrote:
>>>>> During device mode initialization on certain QC targets, before the
>>>>> runstop bit is set, sometimes it's observed that the GEVNTADR{LO/HI}
>>>>> register write fails. As a result, GEVTADDR registers are still 0x0.
>>>>> Upon setting runstop bit, DWC3 controller attempts to write the new
>>>>> events to address 0x0, causing an SMMU fault and system crash. More
>>>>> info about the crash at [1].
>>>>>
>>>>> This was initially observed on SM8450 and later reported on few
>>>>> other targets as well. As suggested by Qualcomm HW team, clearing
>>>>> the GUSB3PIPECTL.SUSPHY bit resolves the issue by preventing register
>>>>> write failures. Address this by setting the snps,dis_u3_susphy_quirk
>>>>> to keep the GUSB3PIPECTL.SUSPHY bit cleared. This change was tested
>>>>> on multiple targets (SM8350, SM8450 QCS615 etc.) for over an year
>>>>> and hasn't exhibited any side effects.
>>>>>
>>>>> [1]: https://lore.kernel.org/all/fa94cbc9-e637-ba9b-8ec8-67c6955eca98@quicinc.com/
>>>>>
>>>>> Prashanth K (3):
>>>>>   arm64: dts: qcom: sm8150: Add snps,dis_u3_susphy_quirk
>>>>>   arm64: dts: qcom: sm8350: Add snps,dis_u3_susphy_quirk
>>>>>   arm64: dts: qcom: sm8450: Add snps,dis_u3_susphy_quirk
>>>>>
>>>>> Pratham Pratap (2):
>>>>>   arm64: dts: qcom: qcs615: Add snps,dis_u3_susphy_quirk
>>>>>   arm64: dts: qcom: qdu1000: Add snps,dis_u3_susphy_quirk
>>>>
>>>> Are there more targets affected, from the list of the ones currently
>>>> supported upstream?
>>>>
>>>> Konrad
>>>
>>> My initial plan was to add it for all the QC platforms, but wasn't
>>> confident enough about it. Because we have seen the issue only on these
>>> targets and hence tested only on these.
>>
>> Okay, let's proceed with these and in the meantime please query internally
>> whether it could be applicable to others too
>>
> 
> But if it applies to all qcom targets, wouldn't it make more sense to
> add the property in the qcom glue driver?

If we did that and the issue was ever fixed in future hw, we'd have to
either re-add this patchset again or invent a snps,*en*_u3_susphy_quirk

Konrad

