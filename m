Return-Path: <devicetree+bounces-193470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E12AFA9BD
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 04:41:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E60F3AD71A
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 02:41:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AE451AA782;
	Mon,  7 Jul 2025 02:41:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BqzR57hI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4FB01487D1
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 02:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751856109; cv=none; b=JP21PJW2FkbSjiEC2LEIR8nO7TIhk8nVlB++cUSiHP9KOxilnyybhrYpLt3Lw+0/ljHA9yOiyXzJ6LhjT0Hh3bGXZi4EpoO3VYAfLVMiqoAjotLYHl7XtG2XfR10eU9JOgR8W4NwFo77xsQ3hTic3oomtbvcyq26SyKQOsjQkSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751856109; c=relaxed/simple;
	bh=Bd7rI7VqdxM7c2dQxdHppqIbfL9os4fnQzmeRFd+rM4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VtExrvyCK+9PVZ1KHjcGAEzhvwh58HzO7JMFa5CcVPw9iVN18Xy6oiNaBazSLh9dNK6SKvbTYI5RC/9hZtXGUscrilqwlPEaL7VoJZMcsaqiFw/aHKv3ptFCdviXv8AxdmCCGvEDecFDQKLQ9wqSrclfhkJ3+ficGFR7PFEfIuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BqzR57hI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 566NRBJJ020483
	for <devicetree@vger.kernel.org>; Mon, 7 Jul 2025 02:41:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uMeglI13Y5o/t9jXpo6MASFHOtBoo7o4JxuRVGPiJe0=; b=BqzR57hIPh5UN8KK
	tb4AxnyLWWwO4PBbELcYyy+h77/4BvhAC6tIHLVPIX5oG5LqeYzqm8tqXJBDpxF0
	msmGmWncJHRTPdenIyBAQpgScB2zMPPAYMW8bZWdnRXaUVx6UX1ewjgqPAHNyV95
	ZLiyTmTM6vab4E+sgEGgSmDD7HrDVYqLc95/2LwRkUSFG0yrLXbiyL0Hs9ZCAy5D
	1LtcKGMsO4IQRxRr4A3pQjHULP+907l6kI83qvEfqvxVsOrJrQoFXqRya6Vt3V6E
	wGEax8JnECRjUbMRyf9DBFrA3cfLK2SuGGqDBN+3n5iaJ1mb7jhQebX21BclzqHj
	6vKowQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pv97806w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:41:46 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-748e1e474f8so4233829b3a.2
        for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 19:41:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751856106; x=1752460906;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uMeglI13Y5o/t9jXpo6MASFHOtBoo7o4JxuRVGPiJe0=;
        b=Id1ky9xXM8B//JB6VEyRSqhAY38RnkUxUWiAfQsR2O8C1rdUGlmQnLKbuEd7zPChB0
         326t9aRqakobQTRSTCVsnCzVFJpDTC8yaBg/E2LrKR15Q7ZRg+ad7QhbK8GYi2RfM4mt
         kkvtaCqoJHQn6x17UTUayhUmHibGl4M9ZlQp/mZvj2XdxT96PXcrWfKOHraTzNvB+t7s
         NBz5z0KKM12Rt6H+JKM/rF5KdjqrB6/HHE+hZHQQv+Xv21Dz+hpsjLwM1FFAyWwgd6OC
         b4C46deIgNw9k4U3i1ZlSTJC61wRduaBEfoRjziHe+q3pshWjyqpPc9WHzTi9A/o/G/7
         k5Zw==
X-Forwarded-Encrypted: i=1; AJvYcCVkmuOzwAVyltbHBULuIzC+o0JymGyGP1mxJ6jUop9WB8fNkPBPO666a5QK0DyQhV22RVyF6cKgxVZY@vger.kernel.org
X-Gm-Message-State: AOJu0YwyWsVB2ePHvfSs+YZcb5EEvPig6tTTNYAs50aPC8/t0GiDm8Km
	w5U7/Gvv89NKjnCpZjIf8r6bA1tbUbVxGU7aq1Lq4rVjsd3q0xePbqgFqdTgNHBWVCvBEY6OAY8
	i7jbcgq7SLOWZ9ttiVEJOlhMhIpBu0ob85BVFFtVAHr3d2cdWKKaBjvTZjyQvbRBQ
X-Gm-Gg: ASbGncspSuQ/g+m+c5w/8mX29mwknUcy/yG0ld2r9arip1+5atkM0XQs67BjYbfOr+9
	w2lg6L2h1ZqTFfKKa7Wf7Th7fObaJkSVx1jtm9R+hDjNSWk28KQdcJfQhk+nNX1c28fAdPJEsAo
	9MzYDz2RwGiclR38wZq4aMaTOORXdTvzbluRIF09YXgB79kNTLAR24V95gMlFsmGQwuy02yEkFw
	GW8TcxJzbViEplEBAmzoTGh2dJZCHtqE2np/8zHHwa0c3pDrfDg6T+kGeVhW3NGepPnnt1w0Z/X
	kvb6NvjDMztj5s2NCNH5W7gpAoZB9F+Up/Dj7ze1Vw5h1ahS/dV6GGWPsLS5PRTVDGPbRGA=
X-Received: by 2002:a05:6a00:4649:b0:748:e1e4:71d9 with SMTP id d2e1a72fcca58-74ce66d595dmr14009550b3a.22.1751856105829;
        Sun, 06 Jul 2025 19:41:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGytTbiSMyewHgOSmCijjeGIwYcZKCqhu9mNO/04g6dtCqLUFDHD90v53IS+qCvT6lBFoNArA==
X-Received: by 2002:a05:6a00:4649:b0:748:e1e4:71d9 with SMTP id d2e1a72fcca58-74ce66d595dmr14009513b3a.22.1751856105242;
        Sun, 06 Jul 2025 19:41:45 -0700 (PDT)
Received: from [10.110.98.120] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-74ce43d69d7sm8102644b3a.177.2025.07.06.19.41.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Jul 2025 19:41:44 -0700 (PDT)
Message-ID: <a6cb75e3-1cfb-429d-9584-85a576439852@oss.qualcomm.com>
Date: Mon, 7 Jul 2025 10:41:40 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250704-615-v3-0-6c384e0470f2@oss.qualcomm.com>
 <20250704-615-v3-2-6c384e0470f2@oss.qualcomm.com>
 <e32f074e-72ac-452c-9b1a-623750548cf0@kernel.org>
Content-Language: en-US
From: "Yu Zhang (Yuriy)" <yu.zhang@oss.qualcomm.com>
In-Reply-To: <e32f074e-72ac-452c-9b1a-623750548cf0@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=FrUF/3rq c=1 sm=1 tr=0 ts=686b33ea cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=PaKHilmXYQLPPyyA4iMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA3MDAxNSBTYWx0ZWRfXxwugbfq9nBXy
 Z6cY3MlGOW2OJPdKtulYf6fBzZ7K/nx5uW26exmSKnfX+dq0B8pegt9kgSjuT9mjZsnFLMYGYBP
 RpuUU3eqPKf5vSupUUUg3ZkCQZbXFyE7sq9ZsgtgcUVP/5aCjqMch8dhrbKEC/arhIRUS3jwFln
 yJexvZidmc2JbWwdl94mVqNHGRggBIPXmNAXdtcB3cLWFqT8QSO5xhEYprhDh59FoUjcrPZyLFo
 7aXdtrEiO3l2/2Ja0NqBHKinVKEGqrSPBKoeuLRAsM4axjZqOmlquEu/mk11nIcUfNczyen1aJE
 yuUBr0r5bTJhJmecAIcF95Obh3rtpQw7L3Tm6S7M9XIptT4FcYGPkGQgHaqwM16YIC7OxV9nOxA
 rYdnbOQDVEOMQQ+LYTIyFw/mrnvV7lK/jkXRmnyU8UeL/K2JR6Jb8toLO/yQ4hEUCKIgfbn/
X-Proofpoint-GUID: v6UKvGHwLA_jIvjqkhneSvjoHFH9P4ym
X-Proofpoint-ORIG-GUID: v6UKvGHwLA_jIvjqkhneSvjoHFH9P4ym
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 clxscore=1015 mlxscore=0 spamscore=0
 priorityscore=1501 bulkscore=0 lowpriorityscore=0 phishscore=0 malwarescore=0
 adultscore=0 mlxlogscore=927 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507070015



On 7/4/2025 4:05 PM, Krzysztof Kozlowski wrote:
> On 04/07/2025 08:43, Yu Zhang(Yuriy) wrote:
>> Add a node for the PMU module of the WCN6855 present on the qcs615 ride
>> board. Assign its LDO power outputs to the existing WiFi/BT module.
>>
>> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
>>   1 file changed, 135 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> index 011f8ae077c256f079ce1b07720374a9bf721488..e21524a8ceffca0c68951d04fa6895cac5bb3d0e 100644
>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> @@ -18,6 +18,7 @@ aliases {
>>   		mmc0 = &sdhc_1;
>>   		mmc1 = &sdhc_2;
>>   		serial0 = &uart0;
>> +		serial1 = &uart7;
>>   	};
>>   
>>   	chosen {
>> @@ -209,6 +210,85 @@ vreg_l17a: ldo17 {
>>   			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>>   		};
>>   	};
>> +
>> +	vreg_conn_1p8: vreg_conn_1p8 {
> 
> 
> I don't see any improvements here. Please read DTS coding style again.
> 
Thank you for the reminder, I made a mistake during the rebase. I’ll 
update it.
> 
> Best regards,
> Krzysztof


