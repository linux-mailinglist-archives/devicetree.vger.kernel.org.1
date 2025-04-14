Return-Path: <devicetree+bounces-166594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3517EA87C51
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 11:50:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28D7218945D1
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 09:50:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD50E267395;
	Mon, 14 Apr 2025 09:49:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h1evmA5s"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9E3B264FAE
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744624196; cv=none; b=RrdUfyARCKQE/WR4VeB/Xnn4j83SXmPdNiz2ORgybSfeq7K/3vDEbR3Pjfug7D4RYnLujJfESXDD1UF/ZPZUygwzng7z6AMwCVGcUPIrZH21VeSClqFV//Z42xeiagDufB80zHQc9get1EZpEuSlSJ5yd+oKEcJG6Zv8JlUUNxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744624196; c=relaxed/simple;
	bh=UpCWjbJlvqX+lZRx1GWi09bIQhROQ34WhK48kOtNG4Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gmoUtDimVqzMIQ3y79afba3n3XLRt0kzsuVL89Cu1Yd1hK2rR9wJSvGhuWeL81biwlCbZjYIj4MbNaFvw8BsVAy9AjleU+NzvM8y1ONsJQH/bZSWjyh4SQqJ4H0O3DImYRIPYTxmM31l2Ub+8iKYDgCW/tKlpt37bmkgTF5T09E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h1evmA5s; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99qJ7001777
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:49:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	otwibO+B1RJWMfT84nQrsXKdELhQ7z3K4EdM/HQ4kbU=; b=h1evmA5sLBCjOty0
	enCqC7PLiGv+sARxC9HV4xxZs5BSkX4K+HSbG5FmS+BtUv67m58dEvzC7Nfplz4r
	P4Dw11xn7RQyIbleTY+Ywlpyul5RjNwiLRIZSb+lctLPN8xEqETpxNFnOU5VDELN
	jXDEy1JyCkN+tJBZ5sMj+Z5ue4O6E7lXBfiuwACT0KZiCyW/DWEbiE7t841RSiUk
	K+Y0vT4S6XkjOr3na2CM7nj4J6EhxuIUYqSzTtjyVKHwQOoTBe4Nz9wyCzFMC4sx
	yRhkfveEd1oGUMSD7qzLOIF3b4ysZa4zuYq+4oqHCHz/dBtLIRcDxrnKxnkt1Ba1
	hRXK8Q==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ydhq4akk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 09:49:53 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c552802e9fso110818285a.0
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 02:49:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744624192; x=1745228992;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=otwibO+B1RJWMfT84nQrsXKdELhQ7z3K4EdM/HQ4kbU=;
        b=VXEkw0mnyCC8sGhHlomYauFBEKff35UYOOG5OClxQv+CnKb5Jym6AqHoE83u41xQAd
         d/ImpAlymk8MBYPaCfV1/3m2EwJE9Cdc7AeFMxerQEPQeepAafYUNw9Nt0kn8cwd6E2s
         WVxnyAXE5UI/snHD+EVe1yiiadyleQLWwZmsKSIKUYIAeKoLr/gcLssKC8/OcTucX51h
         FsLXml4OoTRpaPu+n/CED9TSgrWr4bAVuYkMe89ALqzdNPNmpKcSB0MLscFpsPSMpXpO
         DgIVerwIuqiaNfeI0qPMqurcxpZoixNQuefXZCykWi+X/Vbe88aNJsT0Dssq2QZ9M2pB
         5vhw==
X-Forwarded-Encrypted: i=1; AJvYcCX7cCoU2hjnq+1Nog8Qq6IlnGo9xXBd1TeVI9Z7JnFbBVbSeU3d0pd1jl9+4qutA68+VC9AAT+sXiLR@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Z9dLgvhZVcgKztPqC8Tqr/fcR/ngxKWjEj9oHCfNsbHyTKzE
	2FgQ/40+3CtErcwu3sefKYVuOsVlBx8vZNdumrwHYBNLtB6Le6Od/s36mpAQ2Yqd9pHiEUouW6Z
	Fq2SDGjtiNoIA0jeJb++6nKcGxKpTatKPQGyI+ZlM/vnBgZhImjC2GGMeVhkp
X-Gm-Gg: ASbGncv2YwUymifadNBYQ4s9ABgGBfzljrX4ZlKKJeJ7W9MfVRSDoEET68ITrtsO5A2
	YXvCO16OP0RqRb/GCmnO1WuDeu8nHxCoMoT5g4rHrw/wH/5rNFVCp7chalYHvBWc9pu6+3ewoML
	P1CG2tz66FBL2FYSIPL5Csqt4dVoAyGvjJMIPjAfbt4XtIXoWxImdQ0db5r+vZtq7iRTr8qKrR8
	kzJTUVdOHn9Cqi6Ei3reAlmNzYX+guuBTu3wwVS/TfG7DJG3FTpZN47YVtT3sIWMdvkIVAcbDJq
	4F1r+Hgw0kzHuFwKK2Ng0zxoiW6BV3fhCxpCuGqFDloKQ6nowKj+ltGENSIgK4nmOA==
X-Received: by 2002:a05:620a:2489:b0:7c3:c814:591d with SMTP id af79cd13be357-7c7af0f0403mr648276785a.1.1744624192551;
        Mon, 14 Apr 2025 02:49:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF00odbGqpr+NrwU6tII/IQJplxH+w+y1CYdgLC0L7P41kv1mE5rKymC9sH3HYVqso2Q/R8NQ==
X-Received: by 2002:a05:620a:2489:b0:7c3:c814:591d with SMTP id af79cd13be357-7c7af0f0403mr648275285a.1.1744624192033;
        Mon, 14 Apr 2025 02:49:52 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bea593sm892427066b.62.2025.04.14.02.49.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 02:49:51 -0700 (PDT)
Message-ID: <69fbfe29-f5ff-4a24-b270-289b2f160f38@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 11:49:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: msm8953: Add uart_5
To: Luca Weiss <luca@lucaweiss.eu>, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Felix Kaechele <felix@kaechele.ca>
References: <20250406-msm8953-uart_5-v1-1-7e4841674137@lucaweiss.eu>
 <e87220f1-bf8e-4014-834f-ae99c0b032ca@oss.qualcomm.com>
 <cc84ef26-6c33-42d0-a11f-4d6b31d8beee@lucaweiss.eu>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <cc84ef26-6c33-42d0-a11f-4d6b31d8beee@lucaweiss.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: GYOkWvB4GXm0K8MwL3gAPa4U--LrvCpL
X-Authority-Analysis: v=2.4 cv=C7DpyRP+ c=1 sm=1 tr=0 ts=67fcda41 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=TyM6OeZ_AAAA:8 a=dlmhaOwlAAAA:8 a=O41bOD_wkTG2M6k6xrUA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=RxdkCTCKa-xTImXFM8fo:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-GUID: GYOkWvB4GXm0K8MwL3gAPa4U--LrvCpL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxlogscore=999
 priorityscore=1501 suspectscore=0 clxscore=1015 spamscore=0 bulkscore=0
 impostorscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0 mlxscore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140070

On 4/12/25 10:34 AM, Luca Weiss wrote:
> On 4/10/25 6:45 PM, Konrad Dybcio wrote:
>> On 4/6/25 3:52 PM, Luca Weiss wrote:
>>> From: Felix Kaechele <felix@kaechele.ca>
>>>
>>> Add the node and pinctrl for uart_5 found on the MSM8953 SoC.
>>>
>>> Signed-off-by: Felix Kaechele <felix@kaechele.ca>
>>> [luca: Prepare patch for upstream submission]
>>> Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
>>> ---

[...]

>>
>> It's more usual to send these together with a user, but I don't mind
> 
> This seems to be used with the out-of-tree dts
> apq8053-lenovo-cd-18781y.dts
> 
> I'm just sometimes trying to reduce the out-of-tree diff of the
> msm8953-mailine tree on GitHub

Sure that's fine

Konrad

