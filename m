Return-Path: <devicetree+bounces-251364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 319DFCF2581
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 09:15:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 514DE30111AC
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 08:12:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4AE12877E6;
	Mon,  5 Jan 2026 08:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XLZso7zr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h9BS8ipN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5462D839D
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 08:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767600724; cv=none; b=Yim57n2zMMpZOTczMZozgG1LgjGk3+Rkg7DGHtL/65hLBCp5zIKXeoV30Y2UjPh1fSk9b1zPTURbiQ34H0wfXvohu7XFbg/bOTArakEIYl1hUYuI+VrE3lqDLUUvffSgacAZ/SjSSxhiHt3Vf9lQP3bBiPds1XunA65aCb6mjFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767600724; c=relaxed/simple;
	bh=sL9mmiw1Ek3nuTojJp6/bs/wbFVaj40tOMUCFczLO7U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kf0HMnt3F01LT7+wORAa6ViVfCF0oa3rER2vm0M2q+mHyK0lHNF6e3QA4LsbP8akqOX0RYgAPxqwDzE6fp2zuoQcrSTVy3Qh1y80phwqFj+RFXRmK0wGuk9idRoZ6Cvm49eLvPndvMPLFeslHZhFaV+sPx/CYjGHoAfyu97tPno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XLZso7zr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h9BS8ipN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 604Mtwrk3874963
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 08:12:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XvRC78V+Kcb+nz16MxAbPrDUiGsyPydNzbtsD7OPmqk=; b=XLZso7zrivKUnDv9
	NxOu+vqyx28a8ODMzFnjZBgWg6xSsuDSHZjaZeEU7zaHZBm1WVTh3JZDrvnQVEo0
	h+qagLywE8UOtl20FPaMbHr1j1NQF3ODexLJtOJq3GtAy6/0jKzYrJbICWNxrtP9
	nEDKqHsR6+ffAzHYjBfVtIraGclIYXbACH+mlncnZK8KJNGJBGymcFwG7Fl7aIuV
	RNKmOWWIm8Wj03/ctx5lJ5fja56CjRssyOE1QUu9VBGxVvRLMxDD7PXJOSiWhvW/
	/XLGq20AVCnnTxXo9FVpUVMt+F6WjvVgfVC8JWAs1qs/3GOZewbW+huIsbze/NdJ
	PhVqxA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bfyx0h6g7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 08:12:01 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-7d481452732so26066875b3a.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 00:12:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767600721; x=1768205521; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XvRC78V+Kcb+nz16MxAbPrDUiGsyPydNzbtsD7OPmqk=;
        b=h9BS8ipNSNqknt9lhaz2ZMICOWOJK03fU5K0uC4yyJiPPjRa0kKrswgwQjKPcnvZkb
         zLoi/1KbTZRBeGsB23lKfbjhR50+bcCpCCuDVQtezlvWBQG5/TJ8ERSaLiGd+vzr7pQ6
         xwMTQ4whwFaqG9hSR1hYerhDsZljI46nLz/YT25NsxG7URKhX2T5q97EVu0AEcHxLVX5
         kKbAS8NXuFs0eF9x5X7F/gfB+2EGXp6/2rZiX4wHJkf8VlTIWcWUtAJ+ohtJjqv5HwI9
         NDG2p0ntg1gHZlornyq2CrcGa6VWpcf4f20fFuIvWLjrf/XOOInVbFfoi0fT5WBdRqMP
         /EBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767600721; x=1768205521;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XvRC78V+Kcb+nz16MxAbPrDUiGsyPydNzbtsD7OPmqk=;
        b=Qb0SBa9y8U797gp8kq7nsDVNcz80slVlx5rZ+mRxsNluoAvqcTJbbrdzuXUmQc/0vf
         Egi+4cmGbjDMcQ9nyD/0JWZItKOS9L/34k336y0LmrRe/sSoX+p/Vm1HRJzoYgJTRpG4
         YspB5NX1DUs080r+00+1CzBJUUfTmHtFD6Q1dH2IoenLKMU75rVMJ/PQ1T/YDeRYIJSE
         PhIylevevVbNuP/LWC18eYtGvFpGvXJhRo1WxD+Rz1dU+Uim/dcl8vCspHuAgllUoBTw
         CUSEt1nbzikZe2k+L9k/gP3dgnoiB2YWPOqFK4yXK7LVlju8MRc/yD7dHXWRm1RhxmOA
         o7cg==
X-Forwarded-Encrypted: i=1; AJvYcCUA28+X3+H26k5kS8ezQKabuJD48Iaxj89vGnbpsB6uMOzzzpga+mPE0mb/Degh1aZVO5fyrk9g10cy@vger.kernel.org
X-Gm-Message-State: AOJu0Yyg0FXpy3hQLhXUrtU6aGfZmNkAJ+KdVmCtvQXkMxLYrWx/IRzz
	kdjovOK5d7T5fXXyOm+tlsqQN4caer2eDbz7JHHKs4QXFHScZWYPxIWVb9T9p0603kkAxt9yTN+
	DkKm0N1kO3g+UjaclseeB85r1DM4ZSAXirMyj4s4BN87jG834CBJVGl7HMsD/UWgD
X-Gm-Gg: AY/fxX54VxdyrZbecK+Gygxh5Sh9ZDQRT7p+ulAQmSvLhoky3YPMyV7DrZ/LPbwo7qD
	Fm1FUPgXw5SMarsmSTLDNH178pa6heAXcgDgojb987eRZNiM9x1QzSdGQ/resk8DoER63BRnMom
	7xokslOHK1NP8UQmwn1ArNhtRJDz7KO13l9FsjFnxbgzTJ87e+Ecf3YLhqkxE44RxrIK/B/ShuL
	5iO3zY9fqRgcBtTyc/WfnHfvPzp8nxfhNETLBDOloDHCUT1de2Xw/hQVFei6NVYs6deJcuW18IV
	sgd8risvQoxioV6KERy25fTEDb7o+IFSav+932st296fzzwEmyq9k8rOhXfTIreSlZAbRUVdtFT
	NHEhiDAuzYsprRQdI72UW0pETO9fg07z7YlqqePCQgJd/14xn41U=
X-Received: by 2002:a05:6a00:418f:b0:7e8:450c:61d5 with SMTP id d2e1a72fcca58-7ff66d5fe18mr37831961b3a.69.1767600720933;
        Mon, 05 Jan 2026 00:12:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE4pEalQ/S1gzH+PCmh2lNBlkf/m1qweLCoP8v4jj2jAYqu7jgAZHqb7rFgDkAig+pTtomiSw==
X-Received: by 2002:a05:6a00:418f:b0:7e8:450c:61d5 with SMTP id d2e1a72fcca58-7ff66d5fe18mr37831937b3a.69.1767600720455;
        Mon, 05 Jan 2026 00:12:00 -0800 (PST)
Received: from [10.217.216.105] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7ff7e88cd71sm47276718b3a.64.2026.01.05.00.11.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 00:12:00 -0800 (PST)
Message-ID: <c106658b-7fe4-47cb-95b8-1970b397444a@oss.qualcomm.com>
Date: Mon, 5 Jan 2026 13:41:52 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 1/4] dt-bindings: phy: Add QMP UFS PHY compatible for
 x1e80100
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com,
        manivannan.sadhasivam@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
        nitin.rawat@oss.qualcomm.com
References: <20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251231101951.1026163-2-pradeep.pragallapati@oss.qualcomm.com>
 <20260102-heretic-angelic-narwhal-5d9d8c@quoll>
Content-Language: en-US
From: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>
In-Reply-To: <20260102-heretic-angelic-narwhal-5d9d8c@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=CZYFJbrl c=1 sm=1 tr=0 ts=695b7251 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=ZAgaqRceEw1IiIRpFMgA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDA3MiBTYWx0ZWRfX2ftWWEX1eY3A
 t3FsUKVh273XWYx9gCGBjV+Kyhyan0imx10klakWsqimNfU+dw+7v0GjnL05GD+bFttxm5tRx26
 U0Vt/Rp0qtCSP6uUXUK/w5kOkyPxlLN7DaZpX3tLRFCt4X96O7GDm+bTjn+rgg7pC2+PYAqG3ws
 tXlotXihqoWuqy6dkmAnV4tnwTX6DMT99F37rfuxSFU7hKsQJgvt1zCfH1fYBwTCDt6dG3eQwCN
 W77p5E0H9Zo4njdSGRbEzMw33siXQiIUNEzXaNgOOaVWZmjVsA2nvhkQhuhzlVa2WWURf2mgE/k
 vGh/H8a+uxYUetVv13Tr5sO2KvYfeefBhhzH9swpFgRkPvyWsw8RKE/Tg1QeuQySeXNGpbOspt2
 OCsdhftnrutkM9lNTRtmmvRYOhAOChnQQf7Ld+YS002e6nz+wkR61bR6DMbRSneHZ9dBEqzB8ir
 wB+Kr+fcIjPnl4sq+yA==
X-Proofpoint-GUID: 3N4PNSW8pvy6wIvFH_2-SQCxmqTAA-M-
X-Proofpoint-ORIG-GUID: 3N4PNSW8pvy6wIvFH_2-SQCxmqTAA-M-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 bulkscore=0 lowpriorityscore=0
 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050072



On 1/2/2026 4:53 PM, Krzysztof Kozlowski wrote:
> On Wed, Dec 31, 2025 at 03:49:48PM +0530, Pradeep P V K wrote:
>> Add the QMP UFS PHY compatible string for Qualcomm x1e80100 SoC to
>> support its physical layer functionality for UFS. Use SM8550 as a
>> fallback since x1e80100 UFS PHY shares the same tech node, allowing
> 
> What is a "tech node"?
At brief - tech node represents a generation (e.g., 7nm, 5nm, 3nm) of 
semiconductor fabrication technology.
> 
>> reuse of existing UFS PHY support.
>>
>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>> ---
>>   .../devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml    | 4 ++++
>>   1 file changed, 4 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> index fba7b2549dde..552dd663b7c9 100644
>> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-ufs-phy.yaml
>> @@ -28,6 +28,10 @@ properties:
>>             - enum:
>>                 - qcom,kaanapali-qmp-ufs-phy
>>             - const: qcom,sm8750-qmp-ufs-phy
>> +      - items:
>> +          - enum:
>> +              - qcom,x1e80100-qmp-ufs-phy
>> +          - const: qcom,sm8550-qmp-ufs-phy
> 
> 85 < 87, keep the order by last compatible. It was already screwed by
> Xin Liu in previous commit but you do not have to grow discouraged
> patterns.
> 
sure, i will update in my next patchset.

> Best regards,
> Krzysztof
> 


