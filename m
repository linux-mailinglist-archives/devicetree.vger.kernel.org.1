Return-Path: <devicetree+bounces-143585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CBD5A2A7C8
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 12:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FAE31887BFB
	for <lists+devicetree@lfdr.de>; Thu,  6 Feb 2025 11:43:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65BAF22ACEE;
	Thu,  6 Feb 2025 11:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PP1x1jAh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE5C822AE75
	for <devicetree@vger.kernel.org>; Thu,  6 Feb 2025 11:43:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738842183; cv=none; b=CEsabNR7Vr9Ok8kPJYmCXkWqsqde53NABBimzoaV2QjWoKbeWhYaG7XEEWjNUUjdEl3ktEb6UaknNR0j+oGiZo1+lvazraJ6j3yoRRh1ozdr3s8Ng3rRUhSuh7XR2tO7R+WVrfoDwb0XnJxfUQRfuK/pJwFyvnNaKqWZPs8nN7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738842183; c=relaxed/simple;
	bh=IwaoInNcCkxg6/wBAtRUA/RpZGtkbwebs+NS57oZcfc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qMzXO6XyQqTDSAITVu8wdshVgB6aSXAXfzXJ6pzTH+Zifmwt4MnlQYQZtSKcaJcFO96RyAmVaKfYlpeMMaUgPzaFzh9c0unJoVA89+pmz42j9KmaUu2oPOKU/OJAb3ytLA2wNwBV5FYWdCYVDZ9aj3RHzjJH/vzZNlckjMgWHeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PP1x1jAh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5169CR4L014668
	for <devicetree@vger.kernel.org>; Thu, 6 Feb 2025 11:43:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GgDXbvInhlAhGwSeq8KXKEuEDVn2eZuEs+oZJFMqka8=; b=PP1x1jAh6tqyOms+
	cLKFBlMXOPCCQgN7xbtq81Lcx3i9LqAwcVricq3xtWlCsdvt/XmBdyLboEuTnb4a
	pIwWXk50WzNozb6mLNpO4Dc7/Ezdj+FkRKpbKkbuAm6DSoXveeA4zBpwuRflClfX
	CuHGbRQwWH8XevU1l3LQvZxWW/+Fae55ngqe1NYXpY4NahS2HBT+LRz6NHcAZL8B
	KsGMM/kiwlwt0XhvabPQfZLlyDXT4Y3SOobg62I1vFsl94WHLQ20OjWK+KOZamg1
	+33LYeYQvO5kXKq7SEdTLvrECzxIBERQ/lJyxFH5B5ljWDNd283Iq4jEMa6wIwZO
	3waelg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44mt8e0cqc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 11:43:00 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-46e4842dbd0so2428301cf.1
        for <devicetree@vger.kernel.org>; Thu, 06 Feb 2025 03:43:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738842179; x=1739446979;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GgDXbvInhlAhGwSeq8KXKEuEDVn2eZuEs+oZJFMqka8=;
        b=dQ7m1/9NcXAlBip/1FToFtQhY35xTaTdK+Tad7sTpY1IwaQfKq38qoZJSZmG10maOB
         pIq8Y+mT/oSrDd8YZjZP93S1vP/3x7lErB61Ic5OZ0cwGRWoB0YXitsVHPYFhcVyqm5T
         IqCHTKOJMIiZR4QSUT3WdBLB1AEo5ki/fe39wpWlwK8oKWIRSi5myHtJYn0/rmxmwya4
         XfQwYIPZgwhW+Uny+avSZFzLwQ/vkmynHT226fxdlhMAZPY8MKbeZtqd7ZVq7Gq+s6pa
         sIz7FalmEDIUzfUFZw5kOZTKbQ6Re0FUqnU1+wyBV6HGEMRpkzL729/Lwt4Efgz7Ao4y
         xGWQ==
X-Forwarded-Encrypted: i=1; AJvYcCXxt88BnxUIIjN1lSD0cMpN6Hg35c9a7A53kkTpmxL90+ZJ0tPHyX6Fod7CHPBgleFMPNPjyU0L1+d2@vger.kernel.org
X-Gm-Message-State: AOJu0YxVhaFVwydB7U8zBcermarHZlSzrq+PkwyrNstweR0vBl8QSf0b
	ZFTdFUkzetRSuDdIyFCmc59zNuXblAD3ZQH/TCY5s7wNIAJFEzNRCjbJBcxz3vPxspWWwOXJPgJ
	WjWtuTJqPtPNlHU76ofwJV3Ge0P+y9lKzjMtd+arDG2ObznBol9kdD6bkjT+z
X-Gm-Gg: ASbGncv1CbpfL78ZIYjCPT4GAhGardQdKiQYhoAYcrXlbI/Sh3f0hNG17OUBwh6Ob1H
	R4r3cZJLJZtZczehJ94dVa/qQrjLsZalcls8BjetKKYyMvF2VlCFBk23PLr8r87xNcj4F/5E0g9
	pdA9/SdPa1W0P75OmBwkebC/xTZOICPg9IiBWeyJsyemFNnkA9nr8lvvkFUXjJjFGUOmB+ZoeTb
	djZYOpXry7J+D8c+7F24AQXCxNAZL73J9p7aJ8URyiDUxGSxcm4ZELDWUenKTwSVkGCwdLVaSl/
	cwMasaPyN0eDpI8KVaeTmc7fjjUfoRCwirKDeOpn8e79YeuRoDJcCYI3nEQ=
X-Received: by 2002:a05:620a:bcb:b0:7b6:c597:fb51 with SMTP id af79cd13be357-7c039fa585bmr340531385a.3.1738842179445;
        Thu, 06 Feb 2025 03:42:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE/D2i3WqJeQYDpNAy99elwHmlBbBk2BvmkS3Gbcrju8wFWJZzEf61R8s/GdQTqioJJvUkJHQ==
X-Received: by 2002:a05:620a:bcb:b0:7b6:c597:fb51 with SMTP id af79cd13be357-7c039fa585bmr340530485a.3.1738842179041;
        Thu, 06 Feb 2025 03:42:59 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab772f84400sm87987366b.57.2025.02.06.03.42.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Feb 2025 03:42:58 -0800 (PST)
Message-ID: <ff574ebe-041b-44f0-8335-6bfa332d8077@oss.qualcomm.com>
Date: Thu, 6 Feb 2025 12:42:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: qcs615: Add clock nodes for
 multimedia clock
To: Taniya Das <quic_tdas@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250119-qcs615-mm-v2-dt-nodes-v2-0-c46ab4080989@quicinc.com>
 <20250119-qcs615-mm-v2-dt-nodes-v2-1-c46ab4080989@quicinc.com>
 <19a83d67-7e1a-495b-8dff-e1d2ba05b878@oss.qualcomm.com>
 <da980161-087b-4fd7-a1a9-56576b6dfff9@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <da980161-087b-4fd7-a1a9-56576b6dfff9@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: eC5aD3LR2NTa82cq6AcHSOjGj39zJNXN
X-Proofpoint-GUID: eC5aD3LR2NTa82cq6AcHSOjGj39zJNXN
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-06_03,2025-02-05_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 phishscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 mlxscore=0 spamscore=0
 lowpriorityscore=0 suspectscore=0 mlxlogscore=999 malwarescore=0
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502060097

On 4.02.2025 6:33 PM, Taniya Das wrote:
> 
> 
> On 2/3/2025 7:44 PM, Konrad Dybcio wrote:
>> On 19.01.2025 1:00 PM, Taniya Das wrote:
>>> Add support for video, camera, display and gpu clock controller nodes
>>> for QCS615 platform.
>>>
>>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/qcs615.dtsi | 51 ++++++++++++++++++++++++++++++++++++
>>>   1 file changed, 51 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
>>> index f4abfad474ea62dea13d05eb874530947e1e8d3e..9d537019437c5202c4d398eecd0ce2a991083175 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
>>> @@ -3,7 +3,11 @@
>>>    * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
>>>    */
>>>   +#include <dt-bindings/clock/qcom,qcs615-camcc.h>
>>> +#include <dt-bindings/clock/qcom,qcs615-dispcc.h>
>>>   #include <dt-bindings/clock/qcom,qcs615-gcc.h>
>>> +#include <dt-bindings/clock/qcom,qcs615-gpucc.h>
>>> +#include <dt-bindings/clock/qcom,qcs615-videocc.h>
>>>   #include <dt-bindings/clock/qcom,rpmh.h>
>>>   #include <dt-bindings/dma/qcom-gpi.h>
>>>   #include <dt-bindings/interconnect/qcom,icc.h>
>>> @@ -1418,6 +1422,18 @@ data-pins {
>>>               };
>>>           };
>>>   +        gpucc: clock-controller@5090000 {
>>> +            compatible = "qcom,qcs615-gpucc";
>>> +            reg = <0 0x05090000 0 0x9000>;
>>> +
>>> +            clocks = <&rpmhcc RPMH_CXO_CLK>,
>>> +                 <&gcc GPLL0>;
>>
>> This would normally be GCC_GPU_GPLL0_(DIV_)CLK_SRC, is this intentional?
>>
> 
> Yes, Konard, but on QCS615 GPLL0 is connected and not the GCC_GPU_GPLL0 sources.

It looks like you're right.. if I'm looking in the right place, the _GPU_ ones
are not connected anywhere..

It also seems like the reset state of the _GPU_ ones is OFF (as expected),
should we remove them from the GCC driver to reduce confusion?

Konrad

