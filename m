Return-Path: <devicetree+bounces-186266-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2C3ADAE4A
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 13:24:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B48BD3B2A18
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 11:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C49182E6110;
	Mon, 16 Jun 2025 11:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pQX4w2Tj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E313C2D12F6
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:24:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750073064; cv=none; b=ppKD/ZRqABc9kOJGDL9viuMA9adS3uDEN03D6G6mW53+FBpJuWTSgv9ErB5ttAoMWjGdFMwSpLZRUafOWz56foBCODeF0v9pZnRga0quX5f2+JpWXF+Y1srjZ4Y0W7yKuLb7IYKzvNdsZy3IaycRPkAQIhJBZC1erMNC9TeHj4E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750073064; c=relaxed/simple;
	bh=7Y91ERdcVYXY+q+iTdAR87r2brMmDkMx7kZ5H1FMop4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SGrtbEdOHOh6/z7Cyennn+spzZWA9u8BtE914cb085jzs00PNGuuXo6Wufd4CylPA0HbxhDCbqgDXt7AUsRcAeXH4a+EmDpXPWXbGbfyVCa6xIfkfPcKcSswAews/C5VTrklzHvMu/TJsO0c2LmeYs5AqRQrZ37H9M+L3LZRLNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pQX4w2Tj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G8m63V028052
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:24:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	k7f5B0gAHOa6XpZ/ifKYUiHiV0r4VkXHs7gOP8WPIMI=; b=pQX4w2TjQfxTY0FB
	j4fuu21HXbdwU2oh6KriUAgAcGFu1e4Zku7y6cuZ+JlyO61A6aHawEG0UkIUwRzU
	8moiNV1Gqin3w7gPnDRvuqln8SjVaK5mqNjP5juOwns9OTRNXRjCIM89C4hUyN0x
	bs9+xA/M+wsfIEhwzaOdnDv2GIPOULoKtZAsUYPjRLbxRJVdqPMOXUaei2kTcDK5
	5VuqAQEC4itBZfoeUanCTSile6o8kWG9yuiqXXUhnbXn68k3hJxBug8exP3cc9/X
	uJU33b/1eJ6ZCXr1ti9BM27WaPv+62Jd/y8peOjWuZtzanxewv+ZI08UCDx69q9i
	vUhNwQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4791fsv8mu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 11:24:20 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6fb1be925fbso76468296d6.1
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 04:24:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750073060; x=1750677860;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k7f5B0gAHOa6XpZ/ifKYUiHiV0r4VkXHs7gOP8WPIMI=;
        b=rHv0FYLtPZbwYY05j7rKDk19QXLEE0iEBcPjAHh9UPPOw2HR/4P0jKkqEob7w+yfG/
         kQZMmxlxl/zn/cDZKZWDUSG+LwQQfQlo9obOC5jMRxsreeTuPAH6YzKVqZ3ggKMVGfZs
         rClQb9TLgbY3DysfP5K/DCF4EBCzH0n+HAQQLPFs3HTn//hg+X5CBTulzkVZh+Mbonk8
         MqBWa/lNt8r25BXPSaoNh/1UMisAAmDaimUeh4tgXt7Ro1DHswLUBayKqYwt0mi69zWl
         5A+EJudqOr1RIZvNnNkGkZeKUkcuKWLd1ZYHLGVBqAZse5RfnX50+Fo3HFp2bJEUmcsi
         M3zA==
X-Forwarded-Encrypted: i=1; AJvYcCXrs8H+26gtAegLdz6TkidseLI2Isyi93sMiXzO4aIbX1dvf4nPNwq3KNfq27sdX9SwVglN/Kd2SXB5@vger.kernel.org
X-Gm-Message-State: AOJu0YyGn8vjiTDR37/TR4jIpOt3tSguYSDt9OlQLAU+A91YnqlUjURq
	V976y/l7PA3/OtAvoos+4x58QvA45P40Gku6krhfHcXJCBdyKuku1HS2C7nWXCTDv540aIgUTNJ
	Hm0ED1owA0iuLKQ0N5+g0yOy+YoJQLwXHFODD9/l891s/6FAPyCTDgvZwTISwZ/Yt
X-Gm-Gg: ASbGnctqWtoRAb5NfQ5u15LjP6F2he89z5GL7zXJDWlTcH4dAE12jWR+uSMNcI/XdkQ
	FAnMLMkpNxXKCZthypIUnMDv/SaLHL0GS0Cav5/MH/43oqtpscfh2pYa3Vuz+GbZc93YNGSDxAJ
	qCkVONaIK6fL9kSRwRYThT5/7UhjfKNKHAb3AWz6nmBQ/I2sU2YfZKThjNrExhQVRCsXGLeGGOw
	NNkn8oojfZfkh7T68n5w4khRN6Upmrr7kFUfsZPcB2H5sE890tw4ZiXkIu4n5V5IerhH8folcgN
	wESs6KCLF05J0+h0NKlxo718ygOTDlXISrRQEHYvyxk0N+n8CmrGL1SRBrQY0LaAMTofRTcuJXT
	6tBuBKyEP2uQdslLsrzavmzQRqMAAep2/oiPxvagm7UJvtxF21Ee7jrAbclaCp1W/m6JL7cW6BP
	g=
X-Received: by 2002:a05:6214:f0e:b0:6fa:cdc9:8afa with SMTP id 6a1803df08f44-6fb47742e14mr134573176d6.17.1750073059749;
        Mon, 16 Jun 2025 04:24:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtJiyfX3QkCFTp7F0FQi93DKQasR0p5XngLtnM0qsj5HwT8bo/bstISR/2JTMNMtQS8XeUQg==
X-Received: by 2002:a05:6214:f0e:b0:6fa:cdc9:8afa with SMTP id 6a1803df08f44-6fb47742e14mr134572686d6.17.1750073059250;
        Mon, 16 Jun 2025 04:24:19 -0700 (PDT)
Received: from ?IPV6:2001:14bb:a4:c3fb:c59f:e024:c669:a69b? (2001-14bb-a4-c3fb-c59f-e024-c669-a69b.rev.dnainternet.fi. [2001:14bb:a4:c3fb:c59f:e024:c669:a69b])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553ac1f7db1sm1506770e87.235.2025.06.16.04.24.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Jun 2025 04:24:18 -0700 (PDT)
Message-ID: <6463f18d-b258-4773-aa12-d3ae3af60715@oss.qualcomm.com>
Date: Mon, 16 Jun 2025 14:24:16 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs9075-evk: Add sound card
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250616070405.4113564-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250616070405.4113564-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250616070405.4113564-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA3MCBTYWx0ZWRfXzyDR4bnBoctK
 /CFuhcdTthe3m4Dhu1WCwji/VDiK+OC0/40sxbN0Hbugixajo72/vQ6ZQbX/ZrTdSWbgWAcX2jE
 FDB8EKLXvCR2nxeDcnIafYnV/0GwG3Yg8DIEyTiZBoLC4UJENnmSUKsKYf54nlU07JYE/g1ngd+
 ORFmEMr/Eb+W8E8HkEcDF0p6US1m8XQXAkjVsfPleb5gri0WzqiHacpZHeFY3/k/xOOUaGYz01U
 5HS4Vd3a5qHWCwRmuHaDwTcGCz9aoi+NMBehVGdHk64kwzexW5Lj4gID60LbchUQEgsPIS0uYQA
 VE0rbojmPHKlqXaECf7u/aumXKHw3xh+u1UbgX+JuCujWKZJNQ/IJdVLT9GDc9F4pK5DM8hf8j9
 2AZrECNKKJuIkJz9wj4pfamsWYlW25a3czeGM2+CFwximM30x/u1uhfmQC7YIk2BKklU1l6l
X-Proofpoint-ORIG-GUID: wG-EKW-IrbmAEF8kxpGm73ClwF0jEOdG
X-Authority-Analysis: v=2.4 cv=OLIn3TaB c=1 sm=1 tr=0 ts=684ffee4 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=5ARAolRv94kXMxSVR3wA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: wG-EKW-IrbmAEF8kxpGm73ClwF0jEOdG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=999 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 impostorscore=0 mlxscore=0 bulkscore=0 adultscore=0
 suspectscore=0 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506160070

On 16/06/2025 10:04, Mohammad Rafi Shaik wrote:
> Add the sound card node with tested playback over max98357a
> I2S speakers amplifier and I2S mic.
> 
> Introduce HS (High-Speed) MI2S pin control support.
> The I2S max98357a speaker amplifier is connected via HS0 and I2S
> microphones utilize the HS2 interface.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---
>   .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 +++++++++++++++++++
>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 14 +++++
>   2 files changed, 66 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> index ab161180d1d5..d073c6f95d4c 100644
> --- a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> @@ -5,6 +5,7 @@
>   /dts-v1/;
>   
>   #include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/sound/qcom,q6afe.h>
>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>   
>   #include "qcs9075.dtsi"
> @@ -21,6 +22,57 @@ aliases {
>   	chosen {
>   		stdout-path = "serial0:115200n8";
>   	};
> +
> +	max98357a: audio-codec-0 {

This wasn't sorted out properly.

> +		compatible = "maxim,max98357a";

No SD_MODE pin?

> +		#sound-dai-cells = <0>;
> +	};
> +
> +	dmic: audio-codec-1 {
> +		compatible = "dmic-codec";
> +		#sound-dai-cells = <0>;
> +		num-channels = <1>;

no enable GPIO, no vref-supply?

> +	};
> +
> +	sound {
> +		compatible = "qcom,qcs9075-sndcard";
> +		model = "qcs9075-iq-evk-snd-card";
> +
> +		pinctrl-0 = <&hs0_mi2s_active>, <&hs2_mi2s_active>;
> +		pinctrl-names = "default";
> +
> +		hs0-mi2s-playback-dai-link {
> +			link-name = "HS0 mi2s playback";
> +
> +			codec {
> +				sound-dai = <&max98357a>;
> +			};
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai PRIMARY_MI2S_RX>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6apm>;
> +			};
> +		};
> +
> +		hs2-mi2s-capture-dai-link {
> +			link-name = "HS2 mi2s capture";
> +
> +			codec {
> +				sound-dai = <&dmic>;
> +			};
> +
> +			cpu {
> +				sound-dai = <&q6apmbedai TERTIARY_MI2S_TX>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6apm>;
> +			};
> +		};
> +	};
>   };
>   
>   &apps_rsc {
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> index 07ca6dd4f759..968730da180d 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
> @@ -4711,6 +4711,20 @@ tlmm: pinctrl@f000000 {
>   			gpio-ranges = <&tlmm 0 0 149>;
>   			wakeup-parent = <&pdc>;
>   
> +			hs0_mi2s_active: hs0-mi2s-active-state {
> +				pins = "gpio114", "gpio115", "gpio116", "gpio117";
> +				function = "hs0_mi2s";
> +				drive-strength = <8>;
> +				bias-disable;
> +			};
> +
> +			hs2_mi2s_active: hs2-mi2s-active-state {
> +				pins = "gpio122", "gpio123", "gpio124", "gpio125";
> +				function = "hs2_mi2s";
> +				drive-strength = <8>;
> +				bias-disable;
> +			};
> +
>   			qup_i2c0_default: qup-i2c0-state {
>   				pins = "gpio20", "gpio21";
>   				function = "qup0_se0";


-- 
With best wishes
Dmitry

