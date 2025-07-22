Return-Path: <devicetree+bounces-198733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E65EB0E117
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 17:59:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D49E580F8E
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 15:59:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A2C3424DCE1;
	Tue, 22 Jul 2025 15:59:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KOdJ17GG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BE8279DC3
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 15:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753199961; cv=none; b=GkGAX2Idj6217Ip9s5gbthkuCyEiPnfU81LRgRVI0cyR7aj0e+qPr86oYO1wjBaU3J4x7y/vl/MuN+h4l+ULk5lNNmE26+SSnj7Ha6D1vUicQdFbVd19+MeKgq3zgZq9En6w5TAmdVaYhgsDCit7T9EUZBZWKa+ajlmSgin9VSo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753199961; c=relaxed/simple;
	bh=etXG2QjYXt4ypIwgXdsA2+f49B2ACiCfy0PAh35eVr8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Kvo+gxWXrkrp5Ym23GQNQnKncpOwQNdUIMl04e6GE1imMXAptvsg7JTNg8jkbPAfxZTBQluKXYaaPo2yZFX9sStb51G7vSqHQPOlXzi3m24S5OwwMCKnDKMV2rDrlHuzuN2Ig1lNiMOXhVMBLAMbdBu0hFUb2Tcuq/+6uTkqyqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KOdJ17GG; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MFJaxC008178
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 15:59:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mTyy1CipuhbQRfNCBRSyXjJv1hgdiRR7+tJ5iNmsnAU=; b=KOdJ17GGDbo9lpqH
	H6ardiip86tP/UMdKxoaolWWtAtJOm+e0mt05Ds+Q08liBic8Oxm+i18NtFQg09v
	BOu4X3+70GhjLgJ4mNzodJH9HlG93wYqSxOa9GGsEDt49d/6FLkmtMb9ZrlIXUSb
	aISEYpAAebpL0ufdLcZOWCC1W1aJhpFIALVp9FqdeYJU5/QAY6wFaJHI7nFKbsjG
	CZF3LIR/OfT4xoF4uiTm6NG1QwMs9y1ZTyAelEUNRuMZSOAqNbdTpSCz8yM7Nyn/
	ASkaQRiuNIfjNBz9OfWpeO7MvhbAC3gjMC1867heZb5CFw3k+MPaZLUjp0/l5zB0
	mYIh/Q==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48045w0edw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 15:59:19 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b31cc625817so19572a12.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 08:59:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753199958; x=1753804758;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mTyy1CipuhbQRfNCBRSyXjJv1hgdiRR7+tJ5iNmsnAU=;
        b=nMtYyFPSct3cucrlJSHoNqGAtv4UIZjtykiNjBkXOX8XlzNCHLDejUS7T7ljC2NW32
         f7k/2yl2di5zkkYSprZrzMACFszLTFVlM2outkQSpveqOjUHXv/fFSU3JVZdSKEl0CM9
         gNlZqpgie4YNjEr0S6Lw7bapQFACN7/iqzyiHP51b0Kl0BJ1D62fJ+4g/c8fQpKAOkYX
         1K2Oh8IWwFfvgL1+jJcN+CiSnw6IRo5x/CzCzeSvHrm6J9/uCPEwEnY/Kw5wBkutREdc
         3YumKO3qWDrgLAdINzDZeVTjTA76Lcch0WDpAcSrCeaIhu+NcJ4hQHFmAQtwxCT148dd
         esAg==
X-Forwarded-Encrypted: i=1; AJvYcCWiBhZc9GqbkUpZoigOhXOBsz3cXtbpVu/B+HjrM4syLgif2UovTRS6zXhbmZfdw+yUrV3LSObQ8uhA@vger.kernel.org
X-Gm-Message-State: AOJu0YwM75qKa8QRxjVk0b1ZDw2XRc5Ly7LzIlW2m10n27hpaxF8bZVr
	UMci84v0jnCdNnHnDRi2Hn592LJsXtunVUKetvNm5BNqvrlRvIzTJLFKp9/ViodtZpThTD/tUsy
	jBquW6Yaw6YfNK7uzBSTWXbYLymnNUzXjN07TAPIGyJJ9OOoiSPdnFBCyirjZv+gc
X-Gm-Gg: ASbGncvGXBvLt1BD8JJopz/lET3UgjSiQ9GpXuH/cV+GRSQQyBckZq07T440A0ga92q
	/Mys18P5bNkyIXbKqcV5lKGS/LwHUXTNbeSH6X5NAVCoaPMIxvfzfRUYlfTDTgSUYbUhUOOsYBl
	leBX9OLUnDLHTi1yB7qCvZqGRx29yep6Mr9aFb0OX32e92rY3ULdH8wesSZWjS1kI/xI5U6Vceb
	cpU2Ar1jN1BfulTeFNj63Xx/VKJoyV2C9Yz6Vsd95MNz+6JG2Iu34eOWcKgAWJQ+M6EBh3Rj5sN
	J0wNi7iAx/q6S24WbYTLJYT78gQRIQWnRE1kdWb/uc8XCyfoafbg2b7zuSMz3zdQgF2mXqx3bWr
	lU48ID1ZtUTIzgRO1
X-Received: by 2002:a17:90b:3e8c:b0:310:c8ec:4192 with SMTP id 98e67ed59e1d1-31e3e1cf38fmr5373549a91.10.1753199958376;
        Tue, 22 Jul 2025 08:59:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWKoL6qC1AwoV9Qr0uAwS3sJQ0/j8VqGu6gL6rJOQZI8dGchC2xPfMsL5859SptMBKiJYuUQ==
X-Received: by 2002:a17:90b:3e8c:b0:310:c8ec:4192 with SMTP id 98e67ed59e1d1-31e3e1cf38fmr5373514a91.10.1753199957812;
        Tue, 22 Jul 2025 08:59:17 -0700 (PDT)
Received: from [10.110.89.141] (i-global254.qualcomm.com. [199.106.103.254])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cb7742596sm9835265a91.27.2025.07.22.08.59.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 22 Jul 2025 08:59:17 -0700 (PDT)
Message-ID: <a63cab56-2d32-4d38-83f9-911561807e9d@oss.qualcomm.com>
Date: Tue, 22 Jul 2025 23:58:54 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250707-615-v4-0-1a2f74d167d7@oss.qualcomm.com>
 <20250707-615-v4-2-1a2f74d167d7@oss.qualcomm.com>
 <smnw6whsw5todddsoveeanohcaesfip27udzkbw5wk5dwlztzz@ic3xemwrbjwg>
Content-Language: en-US
From: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
In-Reply-To: <smnw6whsw5todddsoveeanohcaesfip27udzkbw5wk5dwlztzz@ic3xemwrbjwg>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=LL1mQIW9 c=1 sm=1 tr=0 ts=687fb557 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=JYp8KDb2vCoCEuGobkYCKw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=63fHwRzrVC1gocosa9EA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: atGA-XiHSI0XZT2XvLvOgO4dKSkHahRT
X-Proofpoint-ORIG-GUID: atGA-XiHSI0XZT2XvLvOgO4dKSkHahRT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDEzNCBTYWx0ZWRfX/LpQgEYdSHNB
 YYSVDfuneNCuLikDXK8MfsGfOX+lVT+ErP1jLUEtTmT6bSfN6FAfglxevgez5NWFor3iGDeDkFt
 Si5ptkYMhrZh83nWu2ySucXeW1kCWsuvuQZU65iTABGXpVH/SJXLvdLIq69Q4uQkbmu5x6N6iiK
 5zdyNJfeURr1pnQX2RIe8pQte0bUT2c7UTl01WLx1eaLZhWMwns7KcqxZyg47ctozgp6aE5mD8L
 QYxnRPV3w5xg1h/qn0Sr66IXxhzmgMaJjWvk1cFiv9SNXlFqlKwwpOjK7or/MAuN8CpCcTq5B1W
 LL2pyC+xC08DQqhQhhQh152S+S4ju39uTz3rBezrbyMmcHlFJCkCOJS19Of1yAsQjH1GwQZAMur
 0XDJ+OzLbDWs2NZMB4ZSZOlEGSkToBrqjR4XU9D7W/e7yIN0M5SawtulkWxMAngT9nZqGPSI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 clxscore=1015 mlxscore=0 adultscore=0
 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 lowpriorityscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507220134



On 7/19/2025 6:13 PM, Dmitry Baryshkov wrote:
> On Mon, Jul 07, 2025 at 10:51:06AM +0800, Yu Zhang(Yuriy) wrote:
>> Add a node for the PMU module of the WCN6855 present on the qcs615 ride
>> board. Assign its LDO power outputs to the existing WiFi/BT module.
> 
> 
> What is "existing WiFI/BT module"? There is no module in the DT. Not to
> mention that PMU is a part of the WCN6855.
> 
>>
>> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
>>   1 file changed, 135 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
>> index 011f8ae077c256f079ce1b07720374a9bf721488..2df8e7e3c1d3b6d6353a6753b8387c7411edd927 100644
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
>> @@ -47,6 +48,85 @@ regulator-usb2-vbus {
>>   		enable-active-high;
>>   		regulator-always-on;
>>   	};
>> +
>> +	vreg_conn_1p8: vreg_conn_1p8 {
> 
> No improvement. Please try again.
> 
you mean should be "vreg_conn_1p8: vreg-conn-1p8",right? I'll update it, 
thanks.>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vreg_conn_1p8";
>> +		startup-delay-us = <4000>;
>> +		enable-active-high;
>> +		gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
>> +	};
>> +
>> +	vreg_conn_pa: vreg_conn_pa {
>> +		compatible = "regulator-fixed";
>> +		regulator-name = "vreg_conn_pa";
>> +		startup-delay-us = <4000>;
>> +		enable-active-high;
>> +		gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
>> +	};
>> +
> 


