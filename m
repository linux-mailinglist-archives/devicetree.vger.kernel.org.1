Return-Path: <devicetree+bounces-197571-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 18A72B09DB3
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 10:19:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0A56D3AD6E5
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 08:19:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A1EAD21D3E2;
	Fri, 18 Jul 2025 08:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HMJ8Kg0B"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BB42192F5
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:19:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752826763; cv=none; b=RchNfOcB/fXvBim2apo7ElsiTfgSo1+TZC9X+ilrVFst8dY48FJBv/QB8C0l5PMbrPiVhF+RJfL6UpgLFdjkq7C8QWstKqaOvPE0X3P/o2UzsR7czKsr+q1IWT3NaAbHhG1yTNyQNzXmzoYXhR/MTt0dTV3nKGPjpWs/afRslVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752826763; c=relaxed/simple;
	bh=XWvY52CVwf1xQnIwZCHBnCJOrwWQH/s3xvPNq+F5WG0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sOWWGmuUq7/5JM5L0UQYKDLHDmJErZxyEimhW32EkwXMGTXW68rZCcHAJE3iknPk7rG4NoiENtJEWHAcK4OoS3lGZ9zV1vfAOeLBmghV3/lrfPMcDDQqZ4q8iPR54k47fnOphf651AXMPiQBkTk1JhSdDwLetQ9vb8PEEn/zUBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HMJ8Kg0B; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I7Zmpr022222
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:19:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	07T0KmjW1ma5az0RrByHzd3wpVHJTSp1Xnwq7/Vgc8U=; b=HMJ8Kg0BV0P18qXw
	ZXrjRQBn9IKbMFAHbEeM23wQK9xv4qxO2P+s3HJWfNOmqOcu02bOc2kjuXOtWHhX
	k23dsbfB8qnP73x8Tauf9nyQ8kFbJruscnEPCWyFCt2Y/Rv2A6yiT0urJAOKMoUU
	5KoFgHB+B9Gwj/ezrL1InUDUVBUHB7cS1iOcNFsqTlb1CqEmpHGJPfqB0zMY2lbh
	wMRefHxk2io6Fm7MhHOGu1CuXDRaE63cfIWKL1rJKsnK0Kk7LehHaT3TyV0WbfBe
	4JxqXrGhEJaANGlduDAvY9UL9OH/3zKUkUrLUWBAdyPCuJNiDFMK8blkmGKSr6Hy
	WNI1/Q==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wqsyaq1m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 08:19:21 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b2c36d3f884so1197919a12.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 01:19:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752826760; x=1753431560;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=07T0KmjW1ma5az0RrByHzd3wpVHJTSp1Xnwq7/Vgc8U=;
        b=pQNnnXtwU1xy/bZ7XwCKNmYbm048hJ6azoULnvrS737Z0WImv2cJvMDjuvFwXky7iL
         1ExDGphvNPtHIX/NO+XspCW7+gR26N/tk+OoJWoeg4mrB2maxikTn6IbqujK1Iz26FH1
         I81THUAk0LfonP7iQfuMgF7IOXF3QALvpA79Y+doe5Hvwzm39d+mJWyyL2PUHbNn4mN0
         TpI+KRHqanc6Lu5pBBA0UslIoFbAnfab6/b5o9yKZDgx0WCaGkSrzkF73JqAZ5sX+iA9
         8lDHOiTNjxieqou6CaKt9FRz93BqZihnpFoTJZxXFwqL7VX4hiIZMJ2fGGvCe9CgxHQo
         I69w==
X-Forwarded-Encrypted: i=1; AJvYcCUPx5rfTg7Ls3IkrJq/hO4UMxiHiI75OSZA/nM2z4dRRdpoMqAR8VS2dNLAdCHykhWi8vpFkReC4AiM@vger.kernel.org
X-Gm-Message-State: AOJu0YwIPutfW4vlmfwWxTqPJ8+68J3Y7ppgkYZSPSKDOd4LIvQq7eSo
	ZFprniTX60O4MeiSc3vzEuFYilLoCdVIrMNPcO1WqG2sKK8RVg3oXXbkAvuw8rEFeGW3o02ke4a
	1YxR4Mm/hltUVgi3Mg1kdIlkcroksYwrRa5D+vtV5IhoAdNbQa6gIZtkR34QYHpGN
X-Gm-Gg: ASbGnctjN1ZN1Jz8PA7XBANISI6D1i7vmC6hNPJJ1It/Jc7/PsfyZ4nvMavwm5Wwn2U
	Wnvi1UMVd/CoE0K7KM2t1B2Xi/mI0cWZmdiGPv30+N4K+7hgNQTtQqZszh0XvUhyiBqnwZB58fd
	UxRMhHLFSbJfq1DMnqBY8Cb04tREkGXWM9TFLLQnoaxzmL+jeXbzk0y3ThnB5cCgAypjvCQJ0PB
	5XHQpYt6tmccwuCZlpGmspfyG3AsBBrsp3xj6NRu/pawAFG5C90gO2eUDl7KlwLnGbIBiH49yAE
	tGt6Osw9sXYkZHaFQcdY/AM1YD3kcvmGNDEfsVyQVQw9MhPuERzBOWiYdTAE1xe/OhJc2+pSPNF
	3aTQC+aw/MJbclbOci5dNMJaqgO4=
X-Received: by 2002:a17:902:da8b:b0:238:2990:6382 with SMTP id d9443c01a7336-23e25522cd7mr157638925ad.0.1752826760182;
        Fri, 18 Jul 2025 01:19:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFZQCexBLGFLAqxaA0VFA7cuUVspf4kCkrT1kVFuR2ya3XjqZ8hVZ8VVU9src318OO+G8WEIQ==
X-Received: by 2002:a17:902:da8b:b0:238:2990:6382 with SMTP id d9443c01a7336-23e25522cd7mr157638525ad.0.1752826759763;
        Fri, 18 Jul 2025 01:19:19 -0700 (PDT)
Received: from [10.133.33.15] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3f2dbd9sm787397a91.32.2025.07.18.01.19.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 01:19:19 -0700 (PDT)
Message-ID: <4363f117-cc25-4904-84cf-4b3779797223@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 16:19:13 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-4-f6f5d0f9a163@oss.qualcomm.com>
 <aHkm4qjgSaklHGp0@linaro.org>
Content-Language: en-US
From: Yijie Yang <yijie.yang@oss.qualcomm.com>
In-Reply-To: <aHkm4qjgSaklHGp0@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA2NCBTYWx0ZWRfX2i9mqoJtXONO
 7J7mSvp0h5bH5njA5wamvdhgmb/ALzk8KDNZa2hbdkxRFBP2JGHpJDvEHCAkeSCvIe18abUs8A4
 6g7nmKBzAIQ2tUWPaNjCjhQZIUQJfIyFuwSZ003/IkVGSqwsAMn31a23nxTrQN+ai6/wa66OANU
 rzSoAxWGxuCye/qVkdeXYH3GDmmNX4XNxMAsst+CezhFlxNoxJvrgKLiWKYoggbArXD9iQkb6zI
 oyS3krXpKLK4KrPa62T/6Z9BqtrX0UDuTCBCCGWnyCY+eVTVvSgJdd9OJ3mJrc4q+ZXH2rfInBM
 qmYK9y1wlKuXeavvzG924PZLjaz/t951Q/U+khGNMkBtLB3QC0EAIw32cbq7ZI84kxxk0ZBoZq+
 SiHIbSaxLXoz80+KBrBTl5mVz9Ew8VS2ZAimA17lfrLb55nLjgfALo09BH7tYD8CXiu7twwj
X-Proofpoint-GUID: -kr44QJZBgfY0kYe71hboUc00Ss-zyXq
X-Proofpoint-ORIG-GUID: -kr44QJZBgfY0kYe71hboUc00Ss-zyXq
X-Authority-Analysis: v=2.4 cv=McZsu4/f c=1 sm=1 tr=0 ts=687a0389 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=cEA0-WaZvo1qFZeNYSsA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxlogscore=999 impostorscore=0 mlxscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 bulkscore=0 clxscore=1015 suspectscore=0
 spamscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507180064



On 2025-07-18 00:37, Stephan Gerhold wrote:
> On Wed, Jul 16, 2025 at 05:08:42PM +0800, Yijie Yang wrote:
>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
>> embedded system capable of booting to UART.
>>
>> This change enables and overlays the following peripherals on the carrier
>> board:
>> - UART
>> - On-board regulators
>> - USB Type-C mux
>> - Pinctrl
>> - Embedded USB (EUSB) repeaters
>> - NVMe
>> - pmic-glink
>>
>> Written with contributions from Shuai Zhang (added Bluetooth).
>>
>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile          |   1 +
>>   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 835 +++++++++++++++++++++++++++++
>>   2 files changed, 836 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
>> index 4bfa926b6a0850c3c459bcba28129c559d50a7cf..c5994b75d3e56e74ffb64b2389ee1bcc086f3065 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -13,6 +13,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= apq8039-t2.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= apq8094-sony-xperia-kitakami-karin_windy.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-db820c.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-ifc6640.dtb
>> +dtb-$(CONFIG_ARCH_QCOM)	+= hamoa-iot-evk.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-rdp432-c2.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-tplink-archer-ax55-v1.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5332-rdp441.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..843f39c9d59286a9303a545411b2518d7649a059
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
>> [...]
>> +	vreg_wcn_3p3: regulator-wcn-3p3 {
>> +		compatible = "regulator-fixed";
>> +
>> +		regulator-name = "VREG_WCN_3P3";
>> +		regulator-min-microvolt = <3300000>;
>> +		regulator-max-microvolt = <3300000>;
>> +
>> +		gpio = <&tlmm 214 GPIO_ACTIVE_HIGH>;
>> +		enable-active-high;
>> +
>> +		pinctrl-0 = <&wcn_sw_en>;
>> +		pinctrl-names = "default";
>> +
>> +		regulator-boot-on;
>> +	};
>> +
>> +	/*
>> +	 * TODO: These two regulators are actually part of the removable M.2
>> +	 * card and not the CRD mainboard. Need to describe this differently.
>> +	 * Functionally it works correctly, because all we need to do is to
>> +	 * turn on the actual 3.3V supply above.
>> +	 */
>> +	vreg_wcn_0p95: regulator-wcn-0p95 {
>> +		compatible = "regulator-fixed";
>> +
>> +		regulator-name = "VREG_WCN_0P95";
>> +		regulator-min-microvolt = <950000>;
>> +		regulator-max-microvolt = <950000>;
>> +
>> +		vin-supply = <&vreg_wcn_3p3>;
>> +	};
>> +
>> +	vreg_wcn_1p9: regulator-wcn-1p9 {
>> +		compatible = "regulator-fixed";
>> +
>> +		regulator-name = "VREG_WCN_1P9";
>> +		regulator-min-microvolt = <1900000>;
>> +		regulator-max-microvolt = <1900000>;
>> +
>> +		vin-supply = <&vreg_wcn_3p3>;
>> +	};
> 
> Like the TODO comment already says, regulators located on a M.2 card
> shouldn't be described as part of the device DT. We need a proper
> solution for modelling the M.2 slots together with the standard power
> supplies (3.3V and 1.8V) and hook this up to the pwrseq subsystem. This
> is also the reason why the CRD does not have Bluetooth enabled upstream
> yet, this needs to be solved first.
> 
> As far as I know, there is no one actively working on addressing this at
> the moment. Perhaps you can assign someone at QC to work on solving this
> upstream.

This power section is now managed by UEFI, rendering these regulator 
nodes unnecessary. Therefore, I will remove them in the next version.

> 
> Thanks,
> Stephan

-- 
Best Regards,
Yijie


