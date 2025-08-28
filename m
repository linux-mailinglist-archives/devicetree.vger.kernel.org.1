Return-Path: <devicetree+bounces-210131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 19214B3A616
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 18:22:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9125516738A
	for <lists+devicetree@lfdr.de>; Thu, 28 Aug 2025 16:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0447B322DAF;
	Thu, 28 Aug 2025 16:21:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n6/z6yMr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B12C3218BD
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 16:21:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756398072; cv=none; b=jJSttE8ZGJWSqf93Mx+UqehZPWCre1UT4AOw9Ucju7ej87MT2+FGmbYWif3jr0AHTzIvT11HH6oiRotoqlfXy2OqjJy1CfqQs2MxZ6KA8oJpCCXCNPWVL4jpfDHnRi1FiHF/nmAVuVZEHsKOfdMEFDxniJ3sdpyVwFzh8Y89GPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756398072; c=relaxed/simple;
	bh=vTIbUfp/TwWtKVCv1PBkdes53gCsIg9GIJLhd4qrAtI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DevfsZKmHgqBUS019lncK0FOYBURhDaP/JR9sF/4r2lZvHsm3PlhOaFTuoDZ30uwuZGChmNcTmbdlNHq+UwmgS3+gZgNUMebyjqfwwR4tY/wXiNaz/tqz8FbU5nhfKdRU0IElGJ5ROB7i00cuYijnmsUhjqJky8/VXJmcNU6G+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n6/z6yMr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57SEJsJW029346
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 16:21:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	znAsb+ZopRvgTds/k9cU0hyb9L+YL0iI3cUXpo7Sukg=; b=n6/z6yMr2x4wO8ff
	1MQHumuiEMAEzF/ryFPkmifwGexjDIkRYnJFNGv806Z2cuxP1QA9RYtNW0FU2ZwR
	TzYcI6ay0DA0VrHLnQgSwte5HAUkGXmQy+1GP9vdpi61yDPCfHUMXZ4018IFqUcp
	bgN6RYYcnaExMR9TUvZ5mu+lv9UK+Vp7FRGgugYXg/69qqSjyx8MPhkHjQobUIIZ
	DX6av4rlEZOaARaIVD7g24PYfxHjTlykgHY5QMsLeCIAZ14D49wQqjSJvEHsp5/k
	hDPzdRjguLR+5XawKvUIthuZJJENfQMSdsMeeY3mfSi7lagd4lfI4r1DOQIMuUA0
	HIAULg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5w3134k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 16:21:10 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-771b23c0a6bso1912960b3a.0
        for <devicetree@vger.kernel.org>; Thu, 28 Aug 2025 09:21:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756398069; x=1757002869;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=znAsb+ZopRvgTds/k9cU0hyb9L+YL0iI3cUXpo7Sukg=;
        b=HAr3ZdACnNXsjc2ITYwxhUwW6MLCSMkvYVMlUf3V0sxRBz4MCGvFqXSGjmNkox+TjZ
         5wRXIU4aGIeze4Gu02qptKjs35PLY1MM/RKQw/9kWsIW6X0dvZcYlljXnGmCvjY7KiJI
         e8Paqg63Kpt2v2SlNckFN7SrQr5QITcU0QdDtSJeKN/UUwvd2LwnWNXdX8JdCcxB2sXd
         grtFYpJObu3ulY1hSsppflWua5chSI23zAjv8XvhhyrDhtMYkNm84+Yr/g7DCHvbxQzL
         1lmG7xLB0s+eXL5AHqx2AUtRgB3mSoXfuWuHQsBtR+50UHUG1VBb5tH61D720oErFgEJ
         cmUw==
X-Forwarded-Encrypted: i=1; AJvYcCVa/Wwa+BcgqLU+DR62dWGSaT9QE9PUuUj8jzyzUytxehxMFmGG0rXD/WVllJp8+dFj0RHpx94hOhMS@vger.kernel.org
X-Gm-Message-State: AOJu0YzGyRB9J9HoFxmFjPvhbkFjDqU6w/8wF7Qf6MCjglwPuCNKXkYI
	Mf/HkldFyHawHdPiAJGyQFbBU53+Q7SRM8evtMib5jmIhxj65zn2snMKUgddvGiSVcPQ8Td+lvj
	9z6LdKlnNKdpkdYFyANyioMKWI5SJz9nqcSb5orxI3ZSGtNNKeO0JRtu2VoaW8Ad0
X-Gm-Gg: ASbGncsdo2+w1QYLO/7JDYHeOliAy/ypgrphGJzS+L09d2cwBCDPhAXjie3AE8lOG/F
	o3aLvIwZIm6/kY6V2FlQHNYYYKn4P5r139MXon8+lteDP95g+gy6Y6NaNm+BPQrOFL1unT9CuIU
	i+Q8oLeDITQW72NFUF6328FvhRqNcaoCn3s5u8iWQj99SVtiT+xaa6EyZPv++UMBsoYIBHSQroO
	h6wHm88AinJRcOJ/1YFTxcdifKD5W5T8isAeKT8IZDYmKxDqTdtnlirIRCjjvgbjw9oJW2s0KBL
	EyzV3lEARMh5e3I97/0sXuW5iEuD1Kikbo5by3AbF/vIw4tuYiyy3Cn2rPtHxBA70SyOcVGIVOW
	JvuL0u6w=
X-Received: by 2002:a05:6a20:12c1:b0:23f:f7ae:6e3e with SMTP id adf61e73a8af0-24340b5b1cdmr36905327637.24.1756398069290;
        Thu, 28 Aug 2025 09:21:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExqmXUxvYw5B6SH7k7jHDWdLt86kgIQlso126aaCZiyRaXqp/vbw3rwGx74MyI6sC7Kdf75w==
X-Received: by 2002:a05:6a20:12c1:b0:23f:f7ae:6e3e with SMTP id adf61e73a8af0-24340b5b1cdmr36905266637.24.1756398068796;
        Thu, 28 Aug 2025 09:21:08 -0700 (PDT)
Received: from [192.168.62.36] ([223.228.107.178])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b49cb8ca240sm14446086a12.25.2025.08.28.09.21.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Aug 2025 09:21:08 -0700 (PDT)
Message-ID: <4cc22d40-d071-45c2-8618-3d93ae4797e2@oss.qualcomm.com>
Date: Thu, 28 Aug 2025 21:51:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: lemans-evk: Add sound card
To: Bjorn Andersson <andersson@kernel.org>,
        Wasim Nazir <wasim.nazir@oss.qualcomm.com>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>, kernel@oss.qualcomm.com,
        linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        netdev@vger.kernel.org
References: <20250826-lemans-evk-bu-v1-0-08016e0d3ce5@oss.qualcomm.com>
 <20250826-lemans-evk-bu-v1-5-08016e0d3ce5@oss.qualcomm.com>
 <kckx3uwj2zdc4iagsxhb6osyv2ki7n4qubyldnvwokkkftda77@ixrgr7vapwxj>
Content-Language: en-US
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
In-Reply-To: <kckx3uwj2zdc4iagsxhb6osyv2ki7n4qubyldnvwokkkftda77@ixrgr7vapwxj>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Z/vsHGRA c=1 sm=1 tr=0 ts=68b081f6 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=Tcuekwa6JFTrCABMbcRULg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=wk-bp5ZmwQyaC1E5B0gA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX7EuMMtybPrF6
 BeD59zXpBfCxvxHfaRQxW3Ag5MlLyiCZgDrVB7BZvWpPwIf2+/fwEkIFRIxpwpt4hcm+hYXYqQs
 mzCqUqGsm6MHepzD3R0O4ZsZzCmcNHWLLfD9+VBChuasCgSq90KBC+XOlT583Tfp5HO8PldVRkH
 g/cb5H9tnKoamOBTl12t9DSGMPBowkvkdpIeZRVVHgTyNeatDFtgVoQMD3jLJGlmrItqVJQc76R
 8UIRW/7NssIJ2qpxRGyxxWdq4QJ+PDjsZzVlC1a4xakDBIWJentvukZTS909mGrr5i2M45jX7dh
 Oo1xYt/t/yH4BpHRBNLd/OBHxf54RacDujeIWXPjbGLWf6p8STRBpxt+0qkfs9efCUYPUJGr0Tb
 PZlrpQ0t
X-Proofpoint-GUID: FHr-070pLnICCto3MNPvw_9VQRPFw1jZ
X-Proofpoint-ORIG-GUID: FHr-070pLnICCto3MNPvw_9VQRPFw1jZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-28_04,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 malwarescore=0 phishscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230033



On 8/28/2025 4:37 AM, Bjorn Andersson wrote:
> On Tue, Aug 26, 2025 at 11:51:04PM +0530, Wasim Nazir wrote:
>> From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>>
>> Add the sound card node with tested playback over max98357a
>> I2S speakers amplifier and I2S mic.
>>
>> Introduce HS (High-Speed) MI2S pin control support.
>> The I2S max98357a speaker amplifier is connected via HS0 and I2S
>> microphones utilize the HS2 interface.
> 
> Please rewrite this as one fluent description of the hardware, not as 3
> separate things thrown into the same commit message.
> 
ACK,

Sure, will rewrite proper commit description in next version.

Thanks & Regards,
Rafi.

> Regards,
> Bjorn
> 
>>
>> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
>> Signed-off-by: Wasim Nazir <wasim.nazir@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/lemans-evk.dts | 52 +++++++++++++++++++++++++++++++++
>>   arch/arm64/boot/dts/qcom/lemans.dtsi    | 14 +++++++++
>>   2 files changed, 66 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
>> index 642b66c4ad1e..4adf0f956580 100644
>> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
>> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
>> @@ -7,6 +7,7 @@
>>   
>>   #include <dt-bindings/gpio/gpio.h>
>>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>> +#include <dt-bindings/sound/qcom,q6afe.h>
>>   
>>   #include "lemans.dtsi"
>>   #include "lemans-pmics.dtsi"
>> @@ -26,6 +27,17 @@ chosen {
>>   		stdout-path = "serial0:115200n8";
>>   	};
>>   
>> +	dmic: audio-codec-0 {
>> +		compatible = "dmic-codec";
>> +		#sound-dai-cells = <0>;
>> +		num-channels = <1>;
>> +	};
>> +
>> +	max98357a: audio-codec-1 {
>> +		compatible = "maxim,max98357a";
>> +		#sound-dai-cells = <0>;
>> +	};
>> +
>>   	edp0-connector {
>>   		compatible = "dp-connector";
>>   		label = "EDP0";
>> @@ -73,6 +85,46 @@ vreg_sdc: regulator-vreg-sdc {
>>   		states = <1800000 0x1
>>   			  2950000 0x0>;
>>   	};
>> +
>> +	sound {
>> +		compatible = "qcom,qcs9100-sndcard";
>> +		model = "LEMANS-EVK";
>> +
>> +		pinctrl-0 = <&hs0_mi2s_active>, <&hs2_mi2s_active>;
>> +		pinctrl-names = "default";
>> +
>> +		hs0-mi2s-playback-dai-link {
>> +			link-name = "HS0 MI2S Playback";
>> +
>> +			codec {
>> +				sound-dai = <&max98357a>;
>> +			};
>> +
>> +			cpu {
>> +				sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
>> +			};
>> +
>> +			platform {
>> +				sound-dai = <&q6apm>;
>> +			};
>> +		};
>> +
>> +		hs2-mi2s-capture-dai-link {
>> +			link-name = "HS2 MI2S Capture";
>> +
>> +			codec {
>> +				sound-dai = <&dmic>;
>> +			};
>> +
>> +			cpu {
>> +				sound-dai = <&q6apmbedai TERTIARY_MI2S_TX>;
>> +			};
>> +
>> +			platform {
>> +				sound-dai = <&q6apm>;
>> +			};
>> +		};
>> +	};
>>   };
>>   
>>   &apps_rsc {
>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> index 28f0976ab526..c8e6246b6062 100644
>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
>> @@ -5047,6 +5047,20 @@ dp1_hot_plug_det: dp1-hot-plug-det-state {
>>   				bias-disable;
>>   			};
>>   
>> +			hs0_mi2s_active: hs0-mi2s-active-state {
>> +				pins = "gpio114", "gpio115", "gpio116", "gpio117";
>> +				function = "hs0_mi2s";
>> +				drive-strength = <8>;
>> +				bias-disable;
>> +			};
>> +
>> +			hs2_mi2s_active: hs2-mi2s-active-state {
>> +				pins = "gpio122", "gpio123", "gpio124", "gpio125";
>> +				function = "hs2_mi2s";
>> +				drive-strength = <8>;
>> +				bias-disable;
>> +			};
>> +
>>   			qup_i2c0_default: qup-i2c0-state {
>>   				pins = "gpio20", "gpio21";
>>   				function = "qup0_se0";
>>
>> -- 
>> 2.51.0
>>


