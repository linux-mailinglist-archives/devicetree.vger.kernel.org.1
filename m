Return-Path: <devicetree+bounces-196583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B55EFB06490
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 18:45:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E8B9C1AA52BD
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 16:46:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 75146233148;
	Tue, 15 Jul 2025 16:45:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JK8SFQAN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF532F50F
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 16:45:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752597948; cv=none; b=Z5B2wbiqP3muHi0vN0Jy3xzvYIpnVJ8WQHuMWEEdq6t+mM0J0jlrcT/DWDCmdiHms1jix4N0uMIgGX0GmYvRwc4ph/feqsdJIfvCZWHDNwAjCXfzMyM4MQEtUhcX2C9TeMkvoI6ltHVrNJPXWZXdWrEqGHCPEGJZW2Wduk9RnMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752597948; c=relaxed/simple;
	bh=CAvq3xWwlSRxIqDtyRSbsSlWz69i/WFgheviQn0G56M=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=aXpSEycdY/1DvOScyei/Uk2eIdUexr7a+Xjp/B1bNgV103tWfQQAxRc0YLm5V81p8Qbspu3D98j8mi55gsqI/51JaTYD5HyZ/Mjh9hSz6Xy1lfyYQDPgWigd+Wu4mT0MaD0EqeX/ZPWY0W+9ybOwTJbQoHlM6KsboRf9ZjrpZuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JK8SFQAN; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDQXt014543
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 16:45:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	IRW2YfXnz75lh2P5jW3xjEn1uoHSrDyBYTGEbDrJ6Pg=; b=JK8SFQANRA7aUyB3
	55eKIFgTgJNs7dRqFY8giImNIdqwHNWCiuchVxwd+3C67IotTkNXRQ/aZL+z8CvW
	DgUBeQ9pQ+YhLYEJ7pwOEL8z6E7WEzDVARYCenu6Eq2lEpeDcmcOpkQukH9c9jrG
	wu5SfTmZVXw8O3IZphJvGdzvrE6m4+6fhhqT6X+u1OgA+7dKwH1HH2pOcOasPq79
	NtO/5yC4jNQDHIrAdOs60lfVIQiS/F47+Nn22qxo8HRiYnE2w4JERJPM4yOiJf8L
	gaTngiqAju7mp5KOVmXiF5sw3nI8A9M7JcDBLBHHoqVp63h2ddXfnMhf5KBeHoC1
	IQJaBA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dykv2u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 16:45:46 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ab716c33cdso8673001cf.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 09:45:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752597945; x=1753202745;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IRW2YfXnz75lh2P5jW3xjEn1uoHSrDyBYTGEbDrJ6Pg=;
        b=PhkPQ3xFEmI89RARzzhpb/am1PDr7jYg7ebaY+7E+vPOFxD+QRNExqP+BvhhNe59kG
         Yws9zlLnHyKTWTB41vAJACs6ZTiEhM3fr5CKquD3uWEbQ9ikRBAwTwvODhnkubLwYPeP
         vTvdH+CjnTAIa9UOXDNWtlVU4evipoFS6k+Nt+xNpdbMZnrAZYOuHtOB6sTlE8hrx1h1
         niVe98SuuKBEZ0bKIxlz/JGEAtwxy60q9CK0dBI2AHEB0oYqG1hS5zq0y4atbzXEY7nO
         DkxeZ37s7HVYIPIl+VI4nBF2FJk2bZOTlm+o6WzgteQHs+ZiX6qyXt3xy9AFvwesJyRJ
         11Yw==
X-Forwarded-Encrypted: i=1; AJvYcCW3tEHu+XlBRi0qQnfCnDu5qZPeyu5ahZuw90Rv5FI/SEvk9eUtOaWlix5zx2QMZJGiaoKIT2O9vNce@vger.kernel.org
X-Gm-Message-State: AOJu0YyN31t3QJNAmde29fFFW1+1Rpcz2vnjaRuLAhI+rEGQL0Ie4Je5
	cdT6gry9mtWjbXGQhoIi4Vmr0wB33Q5gz+58jxf6mDcRw/VCQAF3IyP7tcTTkcDm/a9pe/gJ74u
	cA0A4ilxMGhbzKLKmy3/THGL9xqCUCFSU3+S5dnh6u1gicdIBFpzaQAHOhDq1i/09
X-Gm-Gg: ASbGnctlOhOLTTvahYDvsf+us4z851myPROXNpyPufLCrV344CGVWroRjg8HEUZ+KMe
	W3H7Pl3rExIT3ykO9n5uXy85o8J4JjpBn3/RlYCsZJo0L5Ffy7Lp7hC2+udKMrtAWg4JPnV8Sc8
	eowgMnA6kJqlTQjV+eXMgaeFPQwiGLjq+/y3Xru7fMLu7Lw5er9mOmd1ivIo0DXqOOEyvSuWqWh
	R75NbqPlfNRDerhqOYjP6RNCWJpNo6Rpv5jKsg1Mo3h5s7iMOseTJN3l9iMZN7EHDpBoDgleWny
	7lA6FSeiVnoyn8wGQl8K6EDcgEyxibrUQv5TboQbM2EmWTNSaAnCIU7ThQ64PTMpnd8J/JyGXD7
	ZHtACt6hGo+xn1X8oN2sU
X-Received: by 2002:a05:622a:428c:b0:4ab:72c1:cf31 with SMTP id d75a77b69052e-4ab90c78a06mr692831cf.11.1752597944390;
        Tue, 15 Jul 2025 09:45:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHUSbiaD5h7FFwcgr9nByxMFm6MOpok7tf+ZKTIqSFYmdLyYC4qhDAeOW31yQu16CpuN+mf4g==
X-Received: by 2002:a05:622a:428c:b0:4ab:72c1:cf31 with SMTP id d75a77b69052e-4ab90c78a06mr692581cf.11.1752597943667;
        Tue, 15 Jul 2025 09:45:43 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e91c81sm1035358266b.37.2025.07.15.09.45.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jul 2025 09:45:43 -0700 (PDT)
Message-ID: <3d4a1f7b-dabb-4402-9eac-6f3d93d17ff4@oss.qualcomm.com>
Date: Tue, 15 Jul 2025 18:45:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: arm: qcom: Add bindings for IQ8 EVK
 board
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
To: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        Umang Chheda <umang.chheda@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com
References: <20250623130420.3981916-1-umang.chheda@oss.qualcomm.com>
 <20250623130420.3981916-2-umang.chheda@oss.qualcomm.com>
 <aFy7wEmP0EzGUHX+@hu-bjorande-lv.qualcomm.com>
 <39d6a38d-6728-4998-aca2-23138677123b@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <39d6a38d-6728-4998-aca2-23138677123b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: g_mxUIWJuH5aTBSZtq1rQo75nUtlaGpR
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=687685ba cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=-Hz8NQWEh57Cco_qSV0A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDE1MyBTYWx0ZWRfX3D2NgAUKouOA
 hzc5ahA5bYgQtaRFK6Klf3xHQ6rjtfgz6ItOS5F/HgLiVsInB7xXruxRIj860a1fQ2bnQZGkves
 TSeO1341HJI484CspBpLl5T2azr5E57EODcuneeqckpovj1/KAcrSa7wL4z6CdLwXC/+l7dZTTo
 TZNGqj4dNqtaJ6q34DVJc4NIDmIDG/0FAeHhE4qxNKJt2bjX75B2tb3CvgJ5PGAzS7he74MOjCC
 FDobHuywMNt5OW0PXd6g0gCz8s/1/tPYBjqxDnNDuwfgi3Z6wCNwepDsVd9ruQvvDk6RNHQgu/e
 CSUeu25NyW3VN1GNIqFUzZk9L9G6IPhPQlTYgNcX+emEHMEpGbe4WC64TvA4eMCG+fD894geBg7
 n0eJ8svI82dbZSstF1ahiEam9FriX3ZandhvwETyKTwHYDPo0WmL5Snbw5pr9aKKBCUpA/yR
X-Proofpoint-GUID: g_mxUIWJuH5aTBSZtq1rQo75nUtlaGpR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_04,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=999
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150153

On 6/26/25 10:38 AM, Konrad Dybcio wrote:
> 
> 
> On 6/26/25 5:17 AM, Bjorn Andersson wrote:
>> On Mon, Jun 23, 2025 at 06:34:19PM +0530, Umang Chheda wrote:
>>> QCS8275 is another SoC under IQ8 series of SoCs. Unlike QCS8300
>>> which has safety features, it doesn't have safety monitoring feature
>>> of Safety-Island(SAIL) subsystem, which affects thermal management.
>>>
>>
>> QCS8300 and QCS8275 are both the "Monaco" SoC, with some differences in
>> which nodes are "okay" and "disabled", and as you say here some side
>> effects thereof.
>>
>> Describing these as "Monaco" and "Monaco with Sail" would lend itself
>> for a better structure.
>>
>>> qcs8275-iq-8275-evk board is based on QCS8275 SOC.
>>>
>>> Signed-off-by: Umang Chheda <umang.chheda@oss.qualcomm.com>
>>> ---
>>>  Documentation/devicetree/bindings/arm/qcom.yaml | 7 +++++++
>>>  1 file changed, 7 insertions(+)
>>>
>>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>>> index b14206d11f8b..19823bc91a3b 100644
>>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>>> @@ -54,6 +54,7 @@ description: |
>>>          msm8998
>>>          qcs404
>>>          qcs615
>>> +        qcs8275
>>
>> Please add "monaco" instead.
>>
>>>          qcs8300
>>>          qcs8550
>>>          qcm2290
>>> @@ -935,6 +936,12 @@ properties:
>>>            - const: qcom,qcs404-evb
>>>            - const: qcom,qcs404
>>>  
>>> +      - items:
>>> +          - enum:
>>> +              - qcom,qcs8275-iq-8275-evk
>>
>> Please use the qcom,monaco- prefix. Is qcom,monaco-evk unique enough?
>> We can sync up offline on this.
>>
>>> +          - const: qcom,qcs8275
>>> +          - const: qcom,qcs8300
>>
>> Please replace these two with just qcom,monaco.
> 
> We could in theory keep the SKU id as a penultimate entry in the top
> level compatible, but I'm not sure it makes sense given what we want
> to achieve (just thinking out loud) - exposing soc_id through
> qcom_socinfo & sysfs seems to be enough, and if it's not, we can
> handle the odd cases separately.
> 
> All in all, let's go with Monaco.

We iterated on this internally and the general agreement is to keep
the numerical name for existing platforms (because drivers or anything
else may be matching against it) and introducing a second label for the
same SoC could spark a situation where a driver checks for qcom,monaco
while older DTs lack it.

We'll go codename-only with future SoC submissions.

tldr:
compatible = "vendor,boardname", "qcom,qcs8300".
filename: codename-boardname.dts

Konrad

