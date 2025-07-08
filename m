Return-Path: <devicetree+bounces-194028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D336FAFC822
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 12:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id EE94A3A7064
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 10:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5FCA26981C;
	Tue,  8 Jul 2025 10:19:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="M9bFl1od"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FC5021FF51
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 10:19:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751969964; cv=none; b=gPjwmdrEf06Ts5UsL3UAxnbksXKGdo2ZxQj0dfWPuDjdyL0W3slQauTplI4ET2+mcWrCpkOirjMqYgsK6+q6kExn0Cd0XjNoZMIeN5Qzo3E0jliJqGY1QlDd/imBiky+xFPtNMkGQkIvBa5pmD/MG0QbZlBJgPa8YbYRCH5t4Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751969964; c=relaxed/simple;
	bh=4qyGCqoOctCX+ogPWnWHpeEY30lAlTFutKfubN8uP0c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y0RAc5SDzkCfQy8soKIgsMqxDOVg0llvxGBJLZIx4fLx5v7k2iGu/uOaE02ud+HjOgMRXTmEIzm89j686ZfTrXaZhRy7KypZqdlP9e03pt9lxcuXS1nT4zsoJEPYebMqGntsS0es2vXsGM9LuqWCoesRSY8MOl3LXtvs0wHtFYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=M9bFl1od; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 568AAZwq029312
	for <devicetree@vger.kernel.org>; Tue, 8 Jul 2025 10:19:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X8J5lvtE8rEXlZWpUd+/01lG085Osm/mImlq/Wf/j3c=; b=M9bFl1od0O73Mvar
	CVi1LSPqm3OaCNwM3NxMXQ8FA/pk9mpc9iMo1NZD7UUseSXR7pVyYyckfDVxbogE
	M3AWS5sujse7GEGQi8jH2ljNs1vQGlVx9Vfgmx+s9A4e+P4ffJ4n872473Bsj6zR
	M2NrH/lfRA/LjuG7+FWHlZbc/xP1rwjC8sVFbPIlMbtbaRhb9TcndSfgJybSt8da
	hEsLI66J6NWKjfitnGj29IkfhZ6x2Xc8a4gchC1pD+lSY8mt377wXFWSO9JuJrxO
	UslajnYy/6QG6s91dLJKMBv7MBwjph1yTmwl/8WEazYY1tgBmUkajpihdv/LUu0P
	IgBZ0w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pu2b4ghb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 10:19:21 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-235089528a0so41487165ad.1
        for <devicetree@vger.kernel.org>; Tue, 08 Jul 2025 03:19:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751969960; x=1752574760;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X8J5lvtE8rEXlZWpUd+/01lG085Osm/mImlq/Wf/j3c=;
        b=PSSpAIttQulz2bhA9Cvkpaz0xlUYo2Luri5HnORyek6mxxp5J2rtHgPTKKBYHybws2
         oxOwclNvGNZ2+Nkismhp36twamMSgW3NXwX4vKo1/DqpV8OrBCfu5fNPbMbnWKCwfofk
         o0sy+quTmwktXXlUrHHIDBcTGQ+MAg91EYzKffcyOwjs1W9Qs1QYiU8c8YhlPs0r40xM
         B9CTl9iwWL5ZCECddZPD7hoawhxl8663Y8dsj9QxX0XXYwks2cYCZjbPKeYRc5AVmN8K
         F4PXxwhkZ2lTWvQzWMIzwmm/FpUO6LNi0SzMjpDO1zZ/HogML1pDbNnSfmrG9GtCnJWQ
         FAOw==
X-Forwarded-Encrypted: i=1; AJvYcCUo/6nbNKKuWcH54RjNF+Fejroa14tBXhHOI7LqtoZRceWvkS9lchwB4hdMQNK+OXpuLkGTS0Hcm8cK@vger.kernel.org
X-Gm-Message-State: AOJu0YxDuWPzOhKgBnmTUElCaPobAZ8v22mX07A4x025UCwWzZy7mBQq
	kNVypYMsVl7aZPM1ZUS181ljNNVtn0+pErkSb/34BjCDIPAgQt71SpaA8QHPKrPAGmeV9x1ZnVm
	lVEA8mRPsS+T1TMJv611YqNjxWA4HiwMDjrGaxklw13epo6X27+Nv5+STe4qSw3If
X-Gm-Gg: ASbGnctv0+Lif+2i7YIsO11CDPDQkgtPDIW3xMEMcwS1++NDqdQ2cmArlbKyYnuB8zI
	jwkIyvS7L40oZTokl76OrCg/pl+gD2G2M6q2wgJAHnp3hArYDuW+ZFnnfY0RQs4qtOKJNxGCIqP
	C24yp8MuMCdXu0cCVLs4BsZ9w/lYf9/wYNs9Fk+6nNrLT5EX8peDw5cs9YBsQaBEculv79wAQcl
	/EcjRvHbnzwytt3Jwk6ICcNauMpWCJiab3r6og8hZ1oqGxyMyqCugBfiAtq6pRPJwHcbMnLOMRh
	NJnaFw8WiLIiw8WZHvhCK9HsAEYc6ULrpmy7nhU3C95t2/6iNWqml6IEZesQJ9E=
X-Received: by 2002:a17:903:1210:b0:234:595d:a58e with SMTP id d9443c01a7336-23dd1b589a1mr35282145ad.25.1751969960547;
        Tue, 08 Jul 2025 03:19:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2oy1IXFK4dnroISXWo5wvI3d7wBIDcdWSD2jINsA5MIuiH/xfR8VKPwrv2hUqbyGnVX8j/A==
X-Received: by 2002:a17:903:1210:b0:234:595d:a58e with SMTP id d9443c01a7336-23dd1b589a1mr35281825ad.25.1751969960142;
        Tue, 08 Jul 2025 03:19:20 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23c8455d259sm115856215ad.116.2025.07.08.03.19.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Jul 2025 03:19:19 -0700 (PDT)
Message-ID: <c22172c5-7794-4f88-931a-c578c906d91c@oss.qualcomm.com>
Date: Tue, 8 Jul 2025 15:49:15 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/6] arm64: dts: qcom: ipq8074: Add the IMEM node
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250708-imem-v2-0-692eb92b228e@oss.qualcomm.com>
 <20250708-imem-v2-2-692eb92b228e@oss.qualcomm.com>
 <e7ad63b7-523d-4193-97b8-d33601de78f6@kernel.org>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <e7ad63b7-523d-4193-97b8-d33601de78f6@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA4MDA4NCBTYWx0ZWRfX/LnEgvg5uQBD
 pog69QkoYo/hUVesC1k3V9LMW0cHGvsgV15DPZykDdIJUkbIowh5IYr2aCi/RzA2pLbatiZ8Jcb
 DS1VC8cM03NxJLDuxalfYtMGit2bAg1fporms/hU4Fb74KLsLsWGG4qMPygoy3hnrIz7fi+0l6W
 jhzbpxWaywETQop4ba3yvQ8Hoe9HLXYT+4m9g3/Pxi2UxKUQBQs0XfNc/vISBsmZiSLln0aOe0B
 b/W9BhrndY6Fx+8J4LwXXOsvhr7y9/DOfpefEkjplh4Uvk34QZLQI0a2MB7IQRe3kGggCJ2k2Dt
 6AHm0KhmuwETtoNhKk/K8hsAVzZ5gzy7PsZuR+TA53eM7t3GIkkRpnI5fQdmDxPsG6XOi0YIF8R
 v7u/WXrBVpGfeRT0wF393ayopYjn84J9YeuP5AGpCtl4gWHBHJgzEzAezHzgHwhaUThrynPJ
X-Proofpoint-ORIG-GUID: Iz-seDc_wzOEceEhN8vhdpljHaybxXzX
X-Proofpoint-GUID: Iz-seDc_wzOEceEhN8vhdpljHaybxXzX
X-Authority-Analysis: v=2.4 cv=erTfzppX c=1 sm=1 tr=0 ts=686cf0a9 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=6ADn6bbprC_h0No-RiwA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-08_03,2025-07-07_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 mlxlogscore=701 bulkscore=0 adultscore=0 malwarescore=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507080084


On 7/8/2025 12:17 PM, Krzysztof Kozlowski wrote:
> On 08/07/2025 07:39, Kathiravan Thirumoorthy wrote:
>> Add the IMEM node to the device tree to extract debugging information
>> like system restart reason, which is populated via IMEM. Define the
>> IMEM region to enable this functionality.
>>
>> As described, overall IMEM region is 24KB but only initial 4KB is
>> accessible by all masters in the SoC.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>> Changes in v2:
>> - Rounded off the size to 0x6000 (Konrad)
>> ---
>>   arch/arm64/boot/dts/qcom/ipq8074.dtsi | 9 +++++++++
>>   1 file changed, 9 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
>> index fffb47ec244899cf45984adbe8c4f9820bef5c5f..2ba07a02c222958b924c5bc178ac67f955088f7a 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
>> @@ -625,6 +625,15 @@ qpic_nand: nand-controller@79b0000 {
>>   			status = "disabled";
>>   		};
>>   
>> +		sram@8600000 {
>> +			compatible = "qcom,ipq8074-imem", "syscon", "simple-mfd";
>
> It is still not simple-mfd. You should post complete node with children
> or do not make it a simple-mfd.


Sure. Based on the outcome of the series[1], will update it.

[1] 
https://lore.kernel.org/linux-arm-msm/073480a2-0b6f-4dc0-b7eb-eec500b3106e@oss.qualcomm.com/


>
> Best regards,
> Krzysztof

