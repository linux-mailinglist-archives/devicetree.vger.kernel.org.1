Return-Path: <devicetree+bounces-199663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 645C2B1197B
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:03:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 53E2C1CC5E7E
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 08:03:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76B8621B192;
	Fri, 25 Jul 2025 08:03:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kVkarbgo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAEAA13BC0C
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 08:03:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753430598; cv=none; b=ZYSASOF7EcMdw0Gf4KMvbAvPBQ87s7H6YnVrMsHbBGKilhMw4CtW1xT4xkMSZH4/tDDSNPfdsv6dCkxh7lYbZ84NmyU4tQzujIZOUeSRik4/9ZW5TZLdAal7u4M2IJIV6qPbze2LQXqrIfwm54EppxGgaH0BzWsUl2th01kirBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753430598; c=relaxed/simple;
	bh=RiEMJlr5Ad7E7QBTCbokE2mQrnmCQiB4o1Vq9dQ045U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fkUJov/6S6C5hb2DSHR8WSkcCBnxZOMi+f8qvap10BWpvyEblJnetquaVVAYNH8Z5CMjB+FycO+RJupTBHNx2GyIPM1YyL8jv+oJXDps/SjKHXoLJfeRFVNHpPtJDE2EZYMmTTJ0meXgDiZM42xrNUI+CM/RZiu333w6o28+7gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kVkarbgo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56OLrchM004877
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 08:03:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gbtfcu6uHop71TvodFK0hd1UxxiGo/jNtdYvZ92lnfM=; b=kVkarbgoKnPa38Ma
	FauZy9kThbDeL5qmC1NhiM8xZAihknJAwv1jQ88mHvVqbqSOtNdAsDMUh2K5go+P
	53b+33CMaDhhjTIk0JmiYbq5N8DXLotff7IABZUm5IkHjrMw9/INKd0mL6atzhhj
	MqQvrwuTbO1+lmNxFR0+uF3sjreooe6CxUz1jEEN8V6ftB31WAApRkCynP7Rh9iB
	jj2gJCdNX+hv+jZNwjG5sGIJ6v6U+k4EUEAwW/WOnZ9FRyaZ6ed6aDGLY/6hdKOZ
	2txXEJPW3WhUinuBSG2UBuFZp7geuMP1TkILZQlyv3h7FAgq0bKqdBWcIuMSn9c0
	8wo4lQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w539a8j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 08:03:14 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-74b29ee4f8bso1791861b3a.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 01:03:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753430593; x=1754035393;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Gbtfcu6uHop71TvodFK0hd1UxxiGo/jNtdYvZ92lnfM=;
        b=tLAgAv6PIAFWuyLK97/ljojsCnsTNy+77m+dg68QKyJbWPxE6JruD2DLXz1LfL3Qqm
         GbhYc699e163xlTpcloue/2acpV64SISIc3wZX3FhHXaiAqW+jBEEp7fAitzVu0FSTJA
         YJYoI18peIoq1ngtYvGtewjQJ9Cw9epxVy7Ekz18bGvvnsqUZW9vJalp3vCI/4wBusLZ
         jbGRPH2CEhc4oG2Ut/TZ7C7L4F9CK+vym6okq3do20Jwkssf/MrumyBWjfv6LuPCTJlr
         oIAEer+Qm5SGV0Oa0QudxqVXr+Kf3dBT0EX/WnfgEJgG+uTtGYfPWCF/0JXcJo0zxMtQ
         pvwA==
X-Forwarded-Encrypted: i=1; AJvYcCXy+Za6mqWD34jWcKf7/WsGYUYGCeZMBBEy/v/D5Ev6aqe62JXofKJ1NvEa8ZyXjw/8fFl1g5GaPGDh@vger.kernel.org
X-Gm-Message-State: AOJu0YxHN2CipoGODaLGJU9UuT96hXt/dheMprF2uF/moiDLn+lT5N0C
	Jo7gZLWh0dOaLihjmuQyOkWKy8+lJhv9y9YFVUz03fDY765f+UJLslbxAozkDKmpLHbyQfHDO2z
	/JZRBqxrg3nZH2j4VG1iONC5i5tYMv0wIuGfKFANtj2flakho9cBHOGLeOO7DF3G7qdSieUbyRN
	1ACw==
X-Gm-Gg: ASbGncvgmebh/DnflOFVxBtRR95NomBEncCipNUwuzpJyAaIsvtQQ9E9UIhcRxi0c9p
	/6RS5eMlke830z2Yh82o8v7SwhFOnIu6yIw1drFYCqj4zLLNJI2QouxlKHaCb+FF5bTolOCA+Jc
	t92QuCytwVsQJurAP3FD0w/vPpj3shEZrrvaBOtk/hH2KUVqaqtJZTxOhrE24JdsvGcb52/3su+
	zGdSCNfJ1E/gEeUQodmsy120rz5SkwpeD6uuf9JT/f5nPGi4IJaN2tWRlYyS/1kN9NYgUDvFYke
	JdOzZrdpl3TQtgluqyb2I22GxnP0FT6KgAQO5HV9Ss81uvf0n1683fRh6qV2OBC/zDH0VpwBgz5
	a5c0HRnoldsEzu2EEXNSIOABBdzI=
X-Received: by 2002:a05:6a20:3d88:b0:232:813b:8331 with SMTP id adf61e73a8af0-23d6ffe8cdemr1470149637.2.1753430592953;
        Fri, 25 Jul 2025 01:03:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwDBAwcAVmAqN/bBqzL1eUtNkX43ZuhXthRUE59WSNoYyMYG02D7jEEthZPJAa75pLPXHtZA==
X-Received: by 2002:a05:6a20:3d88:b0:232:813b:8331 with SMTP id adf61e73a8af0-23d6ffe8cdemr1470089637.2.1753430592477;
        Fri, 25 Jul 2025 01:03:12 -0700 (PDT)
Received: from [10.133.33.89] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f6c09a1absm2857148a12.23.2025.07.25.01.03.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Jul 2025 01:03:12 -0700 (PDT)
Message-ID: <3803aed8-3b32-4a7b-860f-8fe049f5ddee@oss.qualcomm.com>
Date: Fri, 25 Jul 2025 16:03:06 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] dt-bindings: arm: qcom: Document HAMOA-IOT-EVK
 board
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250724-hamoa_initial-v2-0-91b00c882d11@oss.qualcomm.com>
 <20250724-hamoa_initial-v2-1-91b00c882d11@oss.qualcomm.com>
 <d49d2755-2967-4bb9-b789-8be5f138d4cd@kernel.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <d49d2755-2967-4bb9-b789-8be5f138d4cd@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=AfKxH2XG c=1 sm=1 tr=0 ts=68833a42 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=slic9b_SWHWCqRcW-tMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA2NyBTYWx0ZWRfX5RbP/Y0S/29q
 lVRVlomwhUeGd9dVGuPUVHIMEj4R7Bkkutk6VBUu2FUkvMgZcrwsbw4yLZCTx1LQys4kc9NG4eZ
 UrT29W80cQr1z2AQNK9USJs6EnvyaNIIsNcLcR1C7YNY2CS9hY37nbBvdcnFaU/2Hx5YHQ5WipU
 n38PuX6ZxLHYLdhHzeg3CTtdL3Gq+f/MTs3vJ9W5pWTzlOW4upUu6JOaOK6Ik8RzCrTEVrWh+kW
 uMrgFy5lFNI31WY7K4lgfN9oxJc9iZrCil5vYuzuD8gBi8RTPivmk8M1DX1CmXWVGxuhMi0O00p
 OxTPN1PlF5efaqwnrFYClAfpP3A+BL+zeJj8ji/5618fAabOXJz/DIIVJfnJHsdwsy7Zl5GFEPR
 RvlB0ICe7Xma0xobWKwOH5W3Rd5ossJwjQl0WXgjSeLZRvA5mi3LOQVnG0vozgnpX5+naLTv
X-Proofpoint-GUID: N9xAnZbjWWqYMhShoseWAx4Qo7iQoWid
X-Proofpoint-ORIG-GUID: N9xAnZbjWWqYMhShoseWAx4Qo7iQoWid
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_02,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 mlxlogscore=999 suspectscore=0 spamscore=0
 impostorscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507250067



On 2025-07-25 14:55, Krzysztof Kozlowski wrote:
> On 24/07/2025 10:15, Yijie Yang wrote:
>> Document the device tree binding for a new board named "EVK" based on
>> the Qualcomm Hamoa-IoT platform.
> 
> What is hamoa-iot?
> 
> Later patches claim this is a SoM, so explain here why you are not
> expecting it to be used outside of EVK (not following standard SoM rules
> like every other vendor)?

The SoM can be used outside of the EVK. Regarding the standard SoM rules 
you mentioned—are you referring to the expectation that a SoM should 
have its own compatible string, such as 'qcom,hamoa-iot-som'?

> 
>>
>> The "hamoa" name refers to a family of SoCs that share the same silicon
>> die but are offered in multiple speed bins. The specific SoC used in
>> this board is the x1e80100, which represents one such bin within the
>> Hamoa family.
> 
> Isn't this obvious from the schema?

This is the first patch set where the Hamoa code name is introduced, so 
I’d like to clarify the relationship between the Hamoa family and the 
SoC ID. Additionally, I want to explain why the compatible string 
includes both the board’s code name and the SoC name.

> 
>>
>> Although "qcom,hamoa-iot-evk" is introduced as the board-specific
>> compatible, the fallback compatible remains "qcom,x1e80100" to preserve
>> compatibility with existing in-kernel drivers and software that already
>> depend on this identifier.
> 
> Not relevant. This is x1e80100 SoC. We do not explain that
> microsoft,romulus15 is using fallback x1e80100, do we?

Same as above.

> 
> You explain less relevant topics but you do not explain the main
> concerns here. It does not matter how you name your board. Can be hamoa,
> can be lemans - we don't care about board names.
> 

I will add more details to describe the relationship between the board 
and the SoM. This is what people are most concerned about, right?

>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
>> index 47a7b1cb3cac1150bcde8c2e2e23f2db256ab082..f004019c5691e0a9a3d56a0e3af395314ceb3745 100644
>> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
>> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
>> @@ -1161,6 +1161,7 @@ properties:
>>                 - lenovo,yoga-slim7x
>>                 - microsoft,romulus13
>>                 - microsoft,romulus15
>> +              - qcom,hamoa-iot-evk
>>                 - qcom,x1e80100-crd
>>                 - qcom,x1e80100-qcp
>>             - const: qcom,x1e80100
>>
> 
> 
> Best regards,
> Krzysztof

-- 
Best Regards,
Yijie


