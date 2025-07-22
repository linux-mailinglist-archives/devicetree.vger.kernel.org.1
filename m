Return-Path: <devicetree+bounces-198772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DC717B0E2A9
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 19:37:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1797C563F52
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 17:37:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3669E27FB25;
	Tue, 22 Jul 2025 17:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L6Vct6Px"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9062C27F756
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 17:37:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753205823; cv=none; b=lJkR7Ow9YU++WD77rHdHrtFQ/jdSF0wHCHl3KlYQoVesObSpbEUC2xWImqM6RzVsdhBdqhuzhKsgUINenhYMKMdVEv6g+6spJysq5ucgeF5ghL6ZG5MBR9wHO8cXb9gIXnaF2YoZdMdEcp/jW/GnXB+eBaKo2sb2QjQFD11EgpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753205823; c=relaxed/simple;
	bh=JjE0VAUs/J0+dJNz1qos9yiUiv2iZz0R8XhEsFlljuM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ALD4aDPsJ7F85+ubHvF1GY6xBza4jr0h+W50+Unm+YWbUSUVV02Uabu2LGmipEHe5mxt3/lvkUwgmcal7RKaz+YroMX517PWxRMfrwGdvzFrZkqxQl9rjkXv4Rzr3jTDrmpYcOjO5aU4gUhS8POsSW3LtIKfg8Qvc4DlcoFPJ7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L6Vct6Px; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MCriEX018099
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 17:37:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bU7DW70Vq3fqTu0IqRRaBc2dO6wODFlMeXGfXQWsOEs=; b=L6Vct6Pxe+j+SCds
	VltgIQhYP3L0YIik4WhdDiqM/EfJio6JtRfTKJI8KZNpYnxVROyBPt0OdtGg1aXI
	rvTB3ZJ3fDiA3U7JkzDtUJvdt/DLZDtEqmM5qp5bd9QDUjcpdawlmFaQYdoyFLaF
	h5XyS4up7nMObmESBNhFKW58lQQm49Qk5qU1lu/vtmLeAE3kHdox81PE5p7TF0zU
	pb2m1wdi3Ah5J5N5NAD5umZou14kF4Ay7yoFN8XN1KnPDRywd/6wmJJRpqf6+dR/
	i2m8SpStxoWhcd5PDY870tj6Na2CUUFUA9ELA7oqrvICjAM3nkfDDy+y+apYPWZh
	jgwFbQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482b1u8wuj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 17:37:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e207330a45so810998185a.3
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 10:37:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753205819; x=1753810619;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bU7DW70Vq3fqTu0IqRRaBc2dO6wODFlMeXGfXQWsOEs=;
        b=gTnu3A65vt9jX5tcewLjWUnOvPO6pA8B8VqYIp24DmCUIfFH6OEd/rpluwU8d9F1Ks
         gO9H4fryfLo25M2kl7RvC4pAkE0DiA/sEDFNAMHceX/ewO36FYjB7HQPum29c035byDO
         NeMRfeQEGJNCjrM3/fG6jkd73iGfaHIPxLYxDXePkxwHop1KT9M1pXBYN6nLRNh1vc85
         p2PPJn4ibvvr3Ot6k1cIRSjJO0S9ZgBlfIYIkMiqdTXEjkVsrGKtyPtZK/E+BME2T+FP
         IA5u3eokvbCb/hXpMGsfWEI6C6XAmjf3qLvEnVLE7cw/i3tV3NTebqjIVPIIv/Wz5uly
         TIAQ==
X-Forwarded-Encrypted: i=1; AJvYcCVML43rrf4LWn8TbzGcuGSrG1ZgYoTKqGsrk0EKb6ErlH5P3E2XGedLvmw19Bt/YmBpRAwe2chJl4z/@vger.kernel.org
X-Gm-Message-State: AOJu0YzcqBX4AGDhSZHb1a9E0iGYJQggfRXxHyjJtOKVs/NLhhrcBybh
	d/0TLdUea6bKiwDKD0/HrQt8ipXVtH9xGrepUbKaju81Y/8fHqQyhQ1vah6gshXDEfYyLrXs5Xy
	65olipMW7eK9m5bmDoBmVpVjY/JUauYcxyzzJblMxarGBd+7NLFxwJFzSBH1az/o97QcWl1dV
X-Gm-Gg: ASbGncvD6FuausazAkVQn4faP6q6ooiU3TOdPFwVWReSHYBDMhM3B1NaFWpGlssXPQc
	Uwb0orXcIxXj5yJDItnTUqqmfWCN8UbMuZ9VSh00S2Mq431VFj/QGTGnE4g83oJiAFJ23AaERro
	7M4XbmLnGWzUNShO6nv3qLjEffMhiLddhXFQODx27thg0f9b+b9zIy+/8MyyhGEbwMOFYU0lBoo
	PqlUKmf4Kmf3cGvbdQdjUiHccaVW+gIc5dMK66ZMrlTws1HjCzapcvmrxk1z+LIrcoNj3qfuE+J
	798ggmFa8B99/jV6GFAFKp9KGQ12Ki3zCHWD0gzZIEwnyn3uHfLNomj7zO+HGWOPGo9OQ0CHS6h
	KsTdqgTvu3d+90Qy09kvOBp6LKwkldG+LC9q4pZNpsj71soZEX1toDTlkgckWhiVoO1/7dvVYr1
	/7gvs8JYur9xm9W4lSbw==
X-Received: by 2002:a05:620a:6ccc:b0:7e1:872a:50fc with SMTP id af79cd13be357-7e62a0e0882mr28110985a.15.1753205819213;
        Tue, 22 Jul 2025 10:36:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHAhb4mNssqROGibAAgQdqvjUpNDDUd7RpqBoP1UdVvRdfzRy3DFb+cKvDrEktkeTKmlmkPew==
X-Received: by 2002:a05:620a:6ccc:b0:7e1:872a:50fc with SMTP id af79cd13be357-7e62a0e0882mr28105185a.15.1753205818594;
        Tue, 22 Jul 2025 10:36:58 -0700 (PDT)
Received: from ?IPV6:2001:14bb:119:87b1:24ce:1d7c:ed1:f2d3? (2001-14bb-119-87b1-24ce-1d7c-ed1-f2d3.rev.dnainternet.fi. [2001:14bb:119:87b1:24ce:1d7c:ed1:f2d3])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31dafffcsm2000022e87.224.2025.07.22.10.36.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 10:36:57 -0700 (PDT)
Message-ID: <7117b159-6743-4db3-9ae5-1cf4ae051601@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 20:36:55 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes
To: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250707-615-v4-0-1a2f74d167d7@oss.qualcomm.com>
 <20250707-615-v4-2-1a2f74d167d7@oss.qualcomm.com>
 <smnw6whsw5todddsoveeanohcaesfip27udzkbw5wk5dwlztzz@ic3xemwrbjwg>
 <a63cab56-2d32-4d38-83f9-911561807e9d@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <a63cab56-2d32-4d38-83f9-911561807e9d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=LdY86ifi c=1 sm=1 tr=0 ts=687fcc3c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=yfEDxQUIism5sP7DLRQA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDE0OCBTYWx0ZWRfX7poDLTS3apW9
 rge/5puS3IpRoZOxW05cWe483N0Xpn/TeE8nHE+ujxDv2o6gTVfxT5ipj6qksb3P4DZWbp++0hj
 VAF3SiOk18KQSsaJ/ZxoxxP3T7CunQ0tmBJOYNq9a3xDZ0EwTZNH2LzEFOztQgiOCm9Suc6coIE
 07D/MV2ngu3uLsPN05pdqOKHyaE4dyhoUVFivmEyOEH06Otd5OL+3Dt7t/95hkDgUkAsMxXq5i+
 Oh1xjCImcnG8J/nHiN9Su4T3OhynRhZciyYrBjk++TrQDMdYuH/EB2XolhqvlqboC4PGQBth4Fq
 Et14rZ3fk/wPu44F8n6rccYZGvcrfqCcrd2w5pbv6R1pyVAOPnZcUIxcK+Z5VQszsGCqT4VGOC4
 EeVk9dBpVWd2f64AIJ9V+p6AbEm9SN/8+dwd7yHQepE6Q93zQZ5vrj93EUQD1LSb9q8ynRzn
X-Proofpoint-ORIG-GUID: 7O203qwn76N2dpv1ly8MNpEHLg-jqw1c
X-Proofpoint-GUID: 7O203qwn76N2dpv1ly8MNpEHLg-jqw1c
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxscore=0 priorityscore=1501 adultscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 mlxlogscore=999 bulkscore=0 spamscore=0
 suspectscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220148

On 22/07/2025 18:58, Yu Zhang(Yuriy) wrote:
> 
> 
> On 7/19/2025 6:13 PM, Dmitry Baryshkov wrote:
>> On Mon, Jul 07, 2025 at 10:51:06AM +0800, Yu Zhang(Yuriy) wrote:
>>> Add a node for the PMU module of the WCN6855 present on the qcs615 ride
>>> board. Assign its LDO power outputs to the existing WiFi/BT module.
>>
>>
>> What is "existing WiFI/BT module"? There is no module in the DT. Not to
>> mention that PMU is a part of the WCN6855.
>>
>>>
>>> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 ++++++++++++++++++++ 
>>> +++++++++++
>>>   1 file changed, 135 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/ 
>>> boot/dts/qcom/qcs615-ride.dts
>>> index 
>>> 011f8ae077c256f079ce1b07720374a9bf721488..2df8e7e3c1d3b6d6353a6753b8387c7411edd927 100644
>>> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>>> @@ -18,6 +18,7 @@ aliases {
>>>           mmc0 = &sdhc_1;
>>>           mmc1 = &sdhc_2;
>>>           serial0 = &uart0;
>>> +        serial1 = &uart7;
>>>       };
>>>       chosen {
>>> @@ -47,6 +48,85 @@ regulator-usb2-vbus {
>>>           enable-active-high;
>>>           regulator-always-on;
>>>       };
>>> +
>>> +    vreg_conn_1p8: vreg_conn_1p8 {
>>
>> No improvement. Please try again.
>>
> you mean should be "vreg_conn_1p8: vreg-conn-1p8",right? I'll update it, 

What is the node name for the previous regulator device? Anything 
preventing you from following the pattern?

> thanks.>> +        compatible = "regulator-fixed";
>>> +        regulator-name = "vreg_conn_1p8";
>>> +        startup-delay-us = <4000>;
>>> +        enable-active-high;
>>> +        gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
>>> +    };
>>> +
>>> +    vreg_conn_pa: vreg_conn_pa {
>>> +        compatible = "regulator-fixed";
>>> +        regulator-name = "vreg_conn_pa";
>>> +        startup-delay-us = <4000>;
>>> +        enable-active-high;
>>> +        gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
>>> +    };
>>> +
>>
> 


-- 
With best wishes
Dmitry

