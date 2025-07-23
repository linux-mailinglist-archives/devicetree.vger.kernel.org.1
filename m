Return-Path: <devicetree+bounces-198901-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAC1BB0EB36
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 09:03:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEC1C4E4F4C
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 07:02:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3225926CE37;
	Wed, 23 Jul 2025 07:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UiipYy67"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89D8B1F0991
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:03:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753254202; cv=none; b=e9ndnUudc4VX52xgKbYJOkiDSkzba4cL9ITx5psFzN+h19LbgwB40lIQeYr4u1IpavL3X3Tzv6DwKOt0UVIf5BkuOZ3T2tEWeUj5F4XpmB4W4F6pFNFwqcVROqL2IKKn7+YeTUeiPeFYxzRznKEiCBFaWtoNqCykwe85bvXa9Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753254202; c=relaxed/simple;
	bh=HQ/VzO55hzw8ZKGaXble4MZ5AW+QZvBkOBgx65ykmDs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CTuxg6y22PkZeqDCqPa5R6ALrteAAnxt4HI8kL0zqO32bdJSA4QJmRgLMWHmdEZtzrU4tn/yA4+Pg/vvl/lE3bvpdHWDvxtBNy18+JVc6OFYYqXBzgNw1H1uocikoFvRJOOruZVnFAyRwNcgJhGS4AWtlG2WDh5Hnl9QC8ONGIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UiipYy67; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MMP30h031357
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:03:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tgHrH8DxZbmAx2+kVkpI2EajPPpLEzEmxq3USz/0Qyo=; b=UiipYy67x6eYlWKy
	b+osKG5CE9EnGL/uFkn9n6zZiPLGsAA+JZpI2iv2KKA1OTDUVg+0AFYgt+ouo53z
	het1o+oOnfn9Fb13xnRUbkMcPvC6X01YEtMXkdClZCoanXoAqFnmeiAvtjmUNVgr
	HVA5KPy0c3XiXLmDEgXE3+rQFCSTfM8UY9pvTsy0Yj70zVFbZwZSwMGZtUD++/Ak
	n+ufoI9ixoxtroWDp9+6HF9n+bEpikG/LzO69Tq+dF2RJ/+DFqWx5xCD8cfiPUB5
	wMODRuCPPSWrYYMY+gXlwk9DlgF5IzhudB99BRCUdOSRm/Q/m6lTKG8oKCEcFjIu
	tYMlsA==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048s46n6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 07:03:19 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-75e28bcec3bso3567493b3a.1
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 00:03:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753254198; x=1753858998;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tgHrH8DxZbmAx2+kVkpI2EajPPpLEzEmxq3USz/0Qyo=;
        b=jUlDlYM2dLNQbJ7h+6NnNB6W4l/bfVmz4SYTMn8YBFVRJmzRPlcIrq/fqwJMKwtjso
         pNgNQBsBkt2bOYh6hwuHsAneUkk/cpMhuTL1rMDdOtqWZDjVqC8DR6otdO16Eplk8dZN
         h7LMB43UpaQsmJp5n/j0Kk+jvKu5+s8m7j3rXeZGLjAvrjRLCJKGiSTU0bNImq+rSNDa
         Gkx1AMgKPQSibqU+pz8gzfVWMkACwRoWAKkGew8u5xQoCmF/brlDlnxkHjacPhiqEXR4
         WYsrvV/9MdIqEtg7OKLjciBJ7ppTYcDNg+O4GLgfWG5ARFd9crZyQDmPpHJWXVj18Ieo
         ug8A==
X-Forwarded-Encrypted: i=1; AJvYcCWHWJPJoan3DAU/Hr6slBlewo6tM8oar+R7hLVFaijUkh5qhT9R3P1djgbR/GNUdg6AvAXA7ouYp1SD@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4DiaoO7INiBcTj5Hl/vV/e/M5Gy+vAQ4r+VzIJtbwq/KpxG5Q
	nu6SXeUdM5kZPokhu8ZGf3K45VuJ+eYKi2fEBzmS4spsQ+KkWZ2wiK+5V9vQYBAKz9XUznv6d1C
	fETknLYMiEmlZsqx97G71cdScPDYPYG6PE+GFgKMhBq8ugscbs3iqQTMA2cXOKLUn
X-Gm-Gg: ASbGncviuTNlQNHfA+pLR0+S82odVx0HkjwWa1UfGA104aX7WqEJvmk6JYFpOx8c6ht
	ZezkVnVZJ+jPZ+i367jseYuLV+IyRl7T6IdkuQ4oq8xb/C0PTmwl6iMIHhUHBbZ84jd4xugldJV
	hsfz1AHTVcg1U//MJEf7wCICkpZLw65wsG4RjadFW7FjdHxHgjRCXDZPLk7o8wcJ+BoUAJnkVIJ
	6A5QBMaqUq+N3gnJJ5mL97oa3ZZqfT/bEpF0NNrP/+61lIE6qRa+Cf17bB3ukVmkwi3Fw4y/AeI
	go9KRy00B0Ro+TYwN89ym2ktvU/KbLF+QPriTvQgZPanY4jQsCP5zvmjOBp97IOlZxG0vIn9XeD
	VOz8Bi8nZ
X-Received: by 2002:a05:6a20:72a1:b0:220:7e77:f4f7 with SMTP id adf61e73a8af0-23d4911f9e1mr2982067637.25.1753254197886;
        Wed, 23 Jul 2025 00:03:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHOdoj/Z0jEqXcV2S8L/uQoTbevs9LrXwjf85fcxGIO0OJDtv0iwbEYch0xtIVtUG3ntXRiWw==
X-Received: by 2002:a05:6a20:72a1:b0:220:7e77:f4f7 with SMTP id adf61e73a8af0-23d4911f9e1mr2982034637.25.1753254197437;
        Wed, 23 Jul 2025 00:03:17 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b3f2fe69c80sm8194616a12.12.2025.07.23.00.03.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Jul 2025 00:03:16 -0700 (PDT)
Message-ID: <8bea2f87-35fa-4411-acb3-951889b92713@oss.qualcomm.com>
Date: Wed, 23 Jul 2025 12:33:12 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: ipq5424: Describe the 4-wire UART SE
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250630-ipq5424_hsuart-v3-1-fa0866b12cbc@oss.qualcomm.com>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <20250630-ipq5424_hsuart-v3-1-fa0866b12cbc@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA1OCBTYWx0ZWRfX0SVb625W/Fg+
 NiCtJsmWhE3QW9a7oO96/ShjRtEs0ILv+nu6oxpY6GYSV+1yVketQVzMnuxR+POZXTIDAg9exSN
 nfXaJT6366cfeBQ8GWq4AXRm+SuuMc1CibEg8v3l3mIV3NhbLaRpTJjbo5lckozX9oO+p4y5ABa
 oC++pQiKKKQajUQ+TSPlVQo4hYaWp1qr/C6XEXKKfH7l572MYldttUGiATsA+nL+tr5QtQrRe4F
 nkMqXbRPyR6KHMR/G1zM53PWsrTmNncv7RgRyH0Y8aIpNfPO6c/D3vxUpAOCDxOlxfWajLvZ6Uz
 GwtphOiw9OOu2AdUHfIoa7zPC4m5X1joiAFwi2U3FHUxggCzRmtmiPHy6bUIoPvsd3WBH3BAbdQ
 QgzeH/afFj/E8mWD1xWZfruPxhp22grs+XNHS0H40MsjMnybPX5GZvP+w4p0+038b7m3Odk+
X-Proofpoint-ORIG-GUID: GBm2b-wXw9AnPsuqtiA9HozvSiMef-I-
X-Proofpoint-GUID: GBm2b-wXw9AnPsuqtiA9HozvSiMef-I-
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=68808937 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=LH_GineItQtitB-Bug8A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_01,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=991 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230058


On 6/30/2025 2:20 PM, Kathiravan Thirumoorthy wrote:
> QUPv3 in IPQ5424 consists of six Serial Engines (SEs). Describe the
> first SE, which supports a 4-wire UART configuration suitable for
> applications such as HS-UART.
>
> Note that the required initialization for this SE is not handled by the
> bootloader. Therefore, add the SE node in the device tree but keep it
> disabled. Enable it once Linux gains support for configuring the SE,
> allowing to use in relevant RDPs.
>
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>


Gentle Reminder...


> ---
> Changes in v3:
> - Add the pinctrl configuration for the SE (Konrad)
> - Link to v2:
>    https://lore.kernel.org/linux-arm-msm/20250624-ipq5424_hsuart-v2-1-6566dabfe4a6@oss.qualcomm.com/
> Changes in v2:
> - Correct the interrupt number
> - Link to v1:
>    https://lore.kernel.org/r/20250624-ipq5424_hsuart-v1-1-a4e71d00fc05@oss.qualcomm.com
> ---
>   arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts | 12 ++++++++++++
>   arch/arm64/boot/dts/qcom/ipq5424.dtsi       |  9 +++++++++
>   2 files changed, 21 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> index 1f89530cb0353898e0ac83e67dfd32721ede88f8..8dee436464cb588fdde707b06bd93302b2499454 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq5424-rdp466.dts
> @@ -224,6 +224,13 @@ data-pins {
>   		};
>   	};
>   
> +	uart0_pins: uart0-default-state {
> +		pins = "gpio10", "gpio11", "gpio12", "gpio13";
> +		function = "uart0";
> +		drive-strength = <8>;
> +		bias-pull-down;
> +	};
> +
>   	pcie2_default_state: pcie2-default-state {
>   		pins = "gpio31";
>   		function = "gpio";
> @@ -239,6 +246,11 @@ pcie3_default_state: pcie3-default-state {
>   	};
>   };
>   
> +&uart0 {
> +	pinctrl-0 = <&uart0_pins>;
> +	pinctrl-names = "default";
> +};
> +
>   &uart1 {
>   	pinctrl-0 = <&uart1_pins>;
>   	pinctrl-names = "default";
> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> index 66bd2261eb25d79051adddef604c55f5b01e6e8b..2b8499422a8a9a2f63e1af9ae8c189bafe690514 100644
> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
> @@ -417,6 +417,15 @@ qupv3: geniqup@1ac0000 {
>   			#address-cells = <2>;
>   			#size-cells = <2>;
>   
> +			uart0: serial@1a80000 {
> +				compatible = "qcom,geni-uart";
> +				reg = <0 0x01a80000 0 0x4000>;
> +				clocks = <&gcc GCC_QUPV3_UART0_CLK>;
> +				clock-names = "se";
> +				interrupts = <GIC_SPI 339 IRQ_TYPE_LEVEL_HIGH>;
> +				status = "disabled";
> +			};
> +
>   			uart1: serial@1a84000 {
>   				compatible = "qcom,geni-debug-uart";
>   				reg = <0 0x01a84000 0 0x4000>;
>
> ---
> base-commit: 1343433ed38923a21425c602e92120a1f1db5f7a
> change-id: 20250630-ipq5424_hsuart-0cf24b443abb
>
> Best regards,

