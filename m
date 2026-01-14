Return-Path: <devicetree+bounces-254786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4EDD1C215
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 03:27:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9D979302DB3F
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 02:27:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 044192FF172;
	Wed, 14 Jan 2026 02:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RFnrYt0C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="YkymwJdx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 679F52F6920
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:27:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768357645; cv=none; b=t98rxxIZ1JwZ1+v4KJt4movntFHiHgUzXsJ2EW8OHmwq9TiK3D3RTCxgvdqZnY7zoRTgkPTrbuHnpHyo/XuPsEq8/SB+nEDpB/tVDzSY9/lMskArNoCjfWuySdm4eSnJ6/UN1agqaqMzIncScUQNyMtjeBSLyJFSqo88MZwuSCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768357645; c=relaxed/simple;
	bh=IqlI6OS/lcK0dRsPQa5RrUkPWstqb3VM96Oa5URN0Cw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OaROaA3z89bWSXtGaMTtm5W79AlwqHONV9/cjzb9dGBp1LmXfUdm+Phy5QN9hg2Tr3yidiarhGv5XH6V+gdxeG03YYhS2Amkr3pWQ8PdoUAJlsi34/TLbTL04Xtx9bDQcFHY1PK3GYC7HrodLdxAiNnmEsRRAh7u7iiTFB8h0rU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RFnrYt0C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=YkymwJdx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DNHeKF1898058
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:27:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	o4ZVfVEYSEr+JHs+UR1ckv011KTtyQOrx1adpUvgxQc=; b=RFnrYt0CKYCGcIoj
	A9UkmWdYm3Oq9U2hDg6guTFP2w9MKiFvSTG+7zBoKOtv995oUwxb3JT/Ug2fTA9y
	vnBJ9Vq5Xr4Qxyv6B0khJEQ/ZJQvN27d2/1gK7jsHSnCF7ZCQ5KjnPoiFXV2SqP8
	qjT1vID6v/Svh+0GV0QHZiNAaXvRFgglfatHwhWlNUWVkJhC/8bKnDaxecO6febd
	7YwZtRAf3ZnVqgQwZPNIsQPCIXV0mKv44Jh93zOII72tATiCPBipeYTE3psRwZPM
	/clLarNH5FqysPYY77hhhxYGQU1N6eB/jq2gc/r4F9IYFFmP2PphSynrmePdsDtz
	mureYA==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnt63sjcd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:27:23 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-c54e81eeab9so3490525a12.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 18:27:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768357642; x=1768962442; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=o4ZVfVEYSEr+JHs+UR1ckv011KTtyQOrx1adpUvgxQc=;
        b=YkymwJdxyRuFYiOrWMV+lrJ2MJ8Abn7N9aGCOqrhKRkfztnwMlwKbBR9/pidaymXDd
         JGFH1Tn8eTNuOdEBUlf7nCMc0RoKlFBZaIZYDOZs5Tb9pX3/vdkHSHrk9hcc0Au0l6bi
         laHWYOpbvFOh0Z7p0yfCC8dAK61F0gFDIalm7ietQ5uCQ8tzXvvCnQM24lrvyb3WWMPz
         gwM5T8+pZlct9WxP50103ytegyeZl21vktSAEVOJjzXnwNNOjq0TTH0qaAfJG7rza2OZ
         IetIeJZ/Ww20x5/U41YeDdWt6w1ZFtEdlzELJlDcTHC52RUerVj4S/hbKG+hk1yfmv+a
         nQOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768357642; x=1768962442;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o4ZVfVEYSEr+JHs+UR1ckv011KTtyQOrx1adpUvgxQc=;
        b=nGDDoziQ2zvAn3Bje6mA9/soYUC3+/t8b4qvrXsjzr9tB+sBO2fGIlJLUYSPs79LhG
         fuHCgyNnLRHOJyJ7utAH85bsZXsIKC6YZJ0CJZN28B/8IyjZrZyYZJqtDpcTVGsjA4zZ
         Jf2wjN5VEJcHRILn7egHKUw/0MDkmdrpek57QMdoyHWDUxLP71/Nok/Usbd39V2znAdu
         csP7EGPMDO2/AUnKgDy0hWzWLJR+ErPK0sGrsPt2hJln+4KKWQCwEZ/yt63IuzuY3W8c
         LpyCRi8Z3QinZbAKbb2vLosq2p0xQiZ2sQ+zEWqH4IqpDdJtw3ax1xLYKEdD0+1LUd26
         LKiw==
X-Forwarded-Encrypted: i=1; AJvYcCUlwvYYrVf0qCHI5Dwvd0tnWHjxDwKYdHrnk//3wnvQJg77guMM68iKX2jMlJxyKAIqx+IUpq9zcM+1@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7h0XxzypuxSlu98RUP5pPwbxcTYEIKsvJZbxQYFgvGWbEIbop
	EQZg3Fakb06nmFXexOiTXguIDiD0+HqAnL6pbO2qdpq0GQ/mS6/HrDEMkxIl/ZIwsBPoroO/FMf
	ebPFbc69dCxzEP58vjmBTZnTz2TpaS0nO04Oef0DMD+D/K4Jhkc7YuU4WAyj13s1X
X-Gm-Gg: AY/fxX5KQKHHpOqF4JKyWAiJb62iTzJABMNX+FXHlAh4vdQEYuwgk+BEs+03vo4JE7e
	Zy4fM+TyZU9MLOHBQnSDjJx9txJXSy4GmU5y06dnZjbPUQp3JrFtaozYg6EBDdwTUf4Cql7edVS
	gUW7IcXjI8e8ErUN5NoVBBK//bogPWxLzFM1DuIMuwCtDz4ZxBtSFhRR+xXpDVn+4yiztDRQOZt
	txDpQ5KKgg48BdA6GK1E1iS5CAcJitaE/TZUWNGI41fZFCMaDhre5rcSXOeiD8z9PfMrSk1E/XT
	Pcbi/0ydM+4uuwHZPX+TbsX8W9KweG3veIiDUKloSw+N7lobs+RKae8X2OMGn+6QV/Ec2NTqc6v
	U508ni3D3HzxKeX2kNB7o7jxjssDZN7fvost+y1yWGETXLeLOHyRcQ26RKapWC22im8QGcEEb2u
	BfFg==
X-Received: by 2002:a05:6a20:3ca8:b0:366:14ac:e210 with SMTP id adf61e73a8af0-38bed23cfefmr1147662637.78.1768357642267;
        Tue, 13 Jan 2026 18:27:22 -0800 (PST)
X-Received: by 2002:a05:6a20:3ca8:b0:366:14ac:e210 with SMTP id adf61e73a8af0-38bed23cfefmr1147628637.78.1768357641728;
        Tue, 13 Jan 2026 18:27:21 -0800 (PST)
Received: from [10.133.33.65] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c4cbf28faf8sm21942789a12.7.2026.01.13.18.27.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 18:27:21 -0800 (PST)
Message-ID: <3906614d-d9df-485c-963b-603e2311bc2c@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 10:27:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
 <20260113102822.590677-4-yijie.yang@oss.qualcomm.com>
 <2qa3kn6gw4f5qlncq6iwgxattfbbztu42gpcbekqfghcrdg3l5@z7zsx44xch7a>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <2qa3kn6gw4f5qlncq6iwgxattfbbztu42gpcbekqfghcrdg3l5@z7zsx44xch7a>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDAxNiBTYWx0ZWRfXwK4BFHhoSEos
 MAnEZ7BGukY9nmF0n6qi9LPIaGYEiqJ9KXAqif9ibW6w84F2QyeLWY+kwXkaWatSJ5iJglRzOcV
 vIIrAfIj2ekVbgF8T5MDnB9Fq9SSAAOfaPGi0eQzwzRXKYJDBT8bzGg1rI4z4QoJUVyp2Tpmou1
 0D4unxe9ki317Y2wf9dGpP5MiBXIFTdmvhG18yWH+vKl2UdaISnqWEDjvR9qU04W5ipiUzm3+eE
 6xAum4IhlRiolEENtqipJIW++R1ODZLgWF968W8E4BL3XsdbB4kI9/dzgYiGHXLSAVXdeXnD8qQ
 oE92gkhTORea0OsUWBiQkqZptJ2nchYvtemRHja4jsbr8qQXiwZQQCe3+ZGWhv71EJ5ySL9BP58
 OdF1EBFTH+EXCtWkYCyinQoNs4x+XPeDSnQZDfykgV4Cine1iCctyiuu7aX2oqHd/KHc5p9LJIY
 io5P2Khz9onXKqD8qSg==
X-Proofpoint-ORIG-GUID: e3kyFPbxd4yQA-4ZWKIwJAiu4T5d9EUi
X-Proofpoint-GUID: e3kyFPbxd4yQA-4ZWKIwJAiu4T5d9EUi
X-Authority-Analysis: v=2.4 cv=EujfbCcA c=1 sm=1 tr=0 ts=6966ff0b cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=XouMtsvGk61V0B9W5bUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 bulkscore=0 impostorscore=0 phishscore=0
 spamscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601140016



On 1/13/2026 6:52 PM, Dmitry Baryshkov wrote:
> On Tue, Jan 13, 2026 at 06:28:16PM +0800, YijieYang wrote:
>> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
>>
>> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
>> the Purwa IoT SoM and a carrier board. Together, they form a complete
>> embedded system capable of booting to UART.
>>
>> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
>> Meanwhile, USB0 bypasses the SBU selector FSUSB42. As a result, the glink
>> topology differs from that of HAMOA-IOT-EVK.
> 
> What is "glink topology"?

What I’m referring to here is that the graph composed of glink nodes and 
their peers.

> 
>>
>> Make the following peripherals on the carrier board enabled:
>> - UART
>> - On-board regulators
>> - USB Type-C mux
>> - Pinctrl
>> - Embedded USB (EUSB) repeaters
>> - NVMe
>> - pmic-glink
>> - USB DisplayPorts
>> - Bluetooth
>> - WLAN
>> - Audio
>> - PCIe ports for PCIe3 through PCIe6a
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile             |   1 +
>>   .../{hamoa-iot-evk.dts => purwa-iot-evk.dts}  | 102 +++++++++++-------
>>   2 files changed, 65 insertions(+), 38 deletions(-)
>>   copy arch/arm64/boot/dts/qcom/{hamoa-iot-evk.dts => purwa-iot-evk.dts} (95%)
>>
>> @@ -1102,9 +1140,7 @@ edp_bl_reg_en: edp-bl-reg-en-state {
>>   		pins = "gpio10";
>>   		function = "normal";
>>   	};
>> -};
>>   
>> -&pmc8380_3_gpios {
> 
> This needs to be fixed in hamoa-iot-evk.dtsi.

Will do.

> 
>>   	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
>>   		pins = "gpio8";
>>   		function = "normal";
>> @@ -1171,16 +1207,6 @@ &smb2360_2_eusb2_repeater {
>>   	vdd3-supply = <&vreg_l8b_3p0>;
>>   };
>>   
>> -&spi11 {
>> -	status = "okay";
>> -
>> -	tpm@0 {
>> -		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
> 
> No TPM on the board?

It has not been verified yet since this patch set was sent out; I will 
add it.

> 
>> -		reg = <0>;
>> -		spi-max-frequency = <20000000>;
>> -	};
>> -};
>> -
>>   &swr0 {
>>   	status = "okay";
>>   
>> @@ -1470,7 +1496,7 @@ &usb_1_ss0_hsphy {
>>   };
>>   
>>   &usb_1_ss0_qmpphy_out {
>> -	remote-endpoint = <&pmic_glink_ss0_ss_in>;
>> +	remote-endpoint = <&retimer_ss0_ss_in>;
>>   };
>>   
>>   &usb_1_ss1_dwc3_hs {
>> -- 
>> 2.34.1
>>
> 

-- 
Best Regards,
Yijie


