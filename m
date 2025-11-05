Return-Path: <devicetree+bounces-235117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EC45C34B21
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 10:09:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 65903346C10
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 09:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD3552E4279;
	Wed,  5 Nov 2025 09:09:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CeGv7ysD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QYgG/wr8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 526B628D8DF
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 09:09:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762333780; cv=none; b=DUex7SM0AiTklWDTy1bmlGvL9VH3QCoOQ0PmIAjKBtVA80BRemzpVJ0d3Xk26srRwjqv84zBM1N+KeoqCQn+QG6vnX1+l8G/qEuPv7+FDqDjV8Bu0GJGhXfd0/RQLgZZoRT4ViBTY34DrvTvP8h/aBVuz9WyaZocpIFh0H3CP0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762333780; c=relaxed/simple;
	bh=DuyibBwlS16eTmbuqE4VFLviK3weahnDnhuDAdd587E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KXvmoTiWkI9b7hr3iGBewn9HlmQ/ZuXnfntaOw6UPOVxV17o6soIAEMLUnohWt2jwo0gqsci9C2rQJJJBJoGFJr3nb/boAWBhW8DgzJO4lO2aPIy6O/Up87pHTwRkT+xxQEbE4HRCxDIiqW1ktmYfjCTHQ0DHNY+urNKuN9Vz70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CeGv7ysD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QYgG/wr8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A587LC52928847
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 09:09:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nK7DC1IMtSjbTQ9eM6xGUT/x7vNfyLmo7q+p1AF+pTc=; b=CeGv7ysDx9vEl5Fj
	aMqMyyM4ecNJjpH+EvWJxm1G2o3tj49/ZmygOxzBHGwLTngNabXrJkMnmPPhv9bn
	+7wPceXBWfc3szHNzKWmrAqUfz+epWnW87KuCD1uMRsrQec5Pe18ClnrVtasJPhS
	d8YVjWl02vHQ3qjnhBJsqAy3NgUHzkTeYxy12JwNGy/U+NRgripwa6JVUKFO6Fb2
	TdcAQAC1Zco251JsuBWWnsKo4lUnhH2rGUBIkBZ9e3SQmZE7M/81VO1EmKaB4Qk3
	Tk1+sD7uX2DxVYQ0007knodvUWBT0Tbfo4O84h4j2qybyu+thCdDaflJ/inngERe
	Xxh+ig==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7me5tqs6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 09:09:38 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87dfd456d01so20884076d6.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 01:09:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762333777; x=1762938577; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nK7DC1IMtSjbTQ9eM6xGUT/x7vNfyLmo7q+p1AF+pTc=;
        b=QYgG/wr8ApOnyM+VlAzE183l7DBU2Jd+ikGKKLnMoBi9/qPgTqL06K+sXBKT9gF5e/
         0v2hl9BhTIwCfa/ye+iSO74urb/1ZT33Iig3AC2VGuJzlEwKVhcMCX8cRr6/1s52yN1u
         BfcjOdLq1Rtuj455d4Zw07rt4EpOmmVlLCdM4y4Bx2vyIJWLbUPGmXiaZZMbPm/ACimG
         oVpHLSI4VHlRTN5LtBmUCLybuvxwt0Zkh1o2DM+QRqECbB05djDADoKE8LUn/ybhYSZq
         EwjACtuOIZzYgKd27Visy8z+ARZYEoNNmVpm3Mw5jB794LitrPmDAJ5LvS+qFIs7W5c3
         9Aag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762333777; x=1762938577;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nK7DC1IMtSjbTQ9eM6xGUT/x7vNfyLmo7q+p1AF+pTc=;
        b=TplwdMJWzGslzXxUn6nfntJrB9r+ltPF+lgffcgMBOzR6V3hd/T1YSS1N4lC/n6tw9
         m1aMicQyAhl4eiuTs4E4CVccde0z6yfYlwYvWJSSJBG4uoMVI4IA/3fwJA+5PHcGXjJO
         TGqCCW2FLKVp3i5sVVcYL7dNvmTS2l/tN7ugYQ0gVkmmDttD1NxHcOt84Ok+3R5FAR2V
         mvqYbYB3pcB47WycyX1H0hMkOszbCdYT9VwsyoXMfYCQrNVrIKdYVsCX2cCWAm4lvjsE
         ZLJJoM0mns1vJuQAohY7CG6XQLTsWHJcbyIuxIyfSkwXHgpFeU1N9XYbHGREySOU2+DO
         wd3A==
X-Forwarded-Encrypted: i=1; AJvYcCUIQt2u2R7FnqhO+7zGnt/WK/1aqlIH9iQEAfoSTZI/ZQ6o202KGo0KGcAn6806MIpN57wS5Kr45zIh@vger.kernel.org
X-Gm-Message-State: AOJu0YxvBIHsxY9bNRAnYdrXDKgQ4VyDm1+frwJxi4mQZlFObjmLdOJA
	EZxbF+0tiIlptxkqd8XXKw8T/jHYOvquWRUD8k9BtXMj2nQJL6Mb6Tq4m6eMV6i9IiVgvggOafD
	DwYFwU2OG1n22/Ge2eQiwcDZObAq+uT0IlKzd30kx91u4+zTBi5e9UlII2EaHQdoF
X-Gm-Gg: ASbGncuMgORDFkXO2E/EdQcglULKo2ClG8IqQb5PbZo3hUuy72QafAxW9yyF+K5yOEa
	tRjrgXUOY6iIE7hTs3+aaPog8jiI/ZTdY70TAr83dUEXff2K833JXxTcCrKtWLQlXTttZGydTwF
	D35Z4SRf4U/Wfs2rlazY9oehsjiscfFt7pJ2eE4VRsObaRTRe4dWZcFqxGq0QAyRlWFY9GyK+vF
	z/kDBc/E91Y8XPPbwb+Bvov8hte3/c/ypjfcLoG+z1SiF1zdCxsTv8Mnq4iPItKgR96CXRlma3C
	wU2N/9dIV4dhfK9DYu9Q8iR0wXmWNYymtavWfE+Sti0D5/jfyoeEGOzAiD1868G8J2IR6l9KAjr
	ztsUC2LnApOB0S2AOFS42mgVJ7MYe0VUJyG/2NxnbSDDMHLGLqD4gBGqW
X-Received: by 2002:a05:622a:1a0a:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ed7233253bmr20208791cf.4.1762333777431;
        Wed, 05 Nov 2025 01:09:37 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJ8qazVdRxb2HPWUGZnt0hJ3G3Yu31pg3BrDUWBi9VZDTTGHvUX8RIKyYz1xHi/Pys6k6MmQ==
X-Received: by 2002:a05:622a:1a0a:b0:4e6:eaff:3a4b with SMTP id d75a77b69052e-4ed7233253bmr20208571cf.4.1762333776901;
        Wed, 05 Nov 2025 01:09:36 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-640e6a5cb52sm4081058a12.23.2025.11.05.01.09.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 01:09:36 -0800 (PST)
Message-ID: <7affc5e7-14b9-4959-9943-40e416f64d92@oss.qualcomm.com>
Date: Wed, 5 Nov 2025 10:09:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: hamoa: enable ETR and CTCU devices
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251104-enable-etr-and-ctcu-for-hamoa-v1-0-af552cfb902c@oss.qualcomm.com>
 <20251104-enable-etr-and-ctcu-for-hamoa-v1-2-af552cfb902c@oss.qualcomm.com>
 <25b7abfe-1881-41e5-914b-ee16ce63ed3e@oss.qualcomm.com>
 <8a7dd1b4-505a-4507-8cc1-75d955c706eb@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8a7dd1b4-505a-4507-8cc1-75d955c706eb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: GgULy3tZ3M7Tkzuvl600IzKyoEXUPqK0
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA2NyBTYWx0ZWRfXwbRk0MUjHo/j
 FWU3SEXeTpQqdZOIYtRSVVo3aCeUScR2YpqAtFfKEuIGpKN8iJlvV8IfuIAKggglt4PO3YcA/nn
 fviI81zl2gcUrGwbDcuRBIiTYcKTaXGUajSbZO/kVKS143Nz6RzZiLJsMr4qbZ4uquRuaQqN048
 OFfctInxT5SvUgR5ZOHvKQ/OqK9zERYpU2MpQMeDNg2UQDCWvvDP+X/zAUeZquaPPr0AVL8LST2
 SpfofSv3hNySfuIW4z/Gx/67GYM9gSh2Y2fWSmm/n7KInt4zranYArwxjoz3sio9ZF96mmlpEOb
 +IMHDgcm7ljCOpJ6e/i3LCrhDAjXG/t+mxZc/U+fQOE5JiXgnWPsexMxzuIiBZSbQWpyGKCwoUq
 l/iHJBL2et5UsqyJV+3iickLRDIUMw==
X-Proofpoint-ORIG-GUID: GgULy3tZ3M7Tkzuvl600IzKyoEXUPqK0
X-Authority-Analysis: v=2.4 cv=IpsTsb/g c=1 sm=1 tr=0 ts=690b1452 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=qzgm85ZZqHKQ8I3g2P4A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_03,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 suspectscore=0 impostorscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511050067

On 11/5/25 2:14 AM, Jie Gan wrote:
> 
> 
> On 11/4/2025 8:47 PM, Konrad Dybcio wrote:
>> On 11/4/25 9:10 AM, Jie Gan wrote:
>>> Embedded Trace Router(ETR) is working as a DDR memory sink to collect
>>> tracing data from source device.
>>>
>>> The CTCU serves as the control unit for the ETR device, managing its
>>> behavior to determine how trace data is collected.
>>>
>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/hamoa.dtsi | 160 +++++++++++++++++++++++++++++++++++-
>>>   1 file changed, 159 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>> index a17900eacb20..ca4a473614ee 100644
>>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>> @@ -6713,6 +6713,35 @@ data-pins {
>>>               };
>>>           };
>>>   +        ctcu@10001000 {
>>> +            compatible = "qcom,hamoa-ctcu","qcom,sa8775p-ctcu";
>>
>> Missing space between after the comma
>>
>> no issues otherwise
> 
> sorry for the mistake. Do I need send a new version to fix it?

I think you do since Krzysztof made some comments

Konrad

