Return-Path: <devicetree+bounces-180366-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CF409AC35D3
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 19:13:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2E513AF9E0
	for <lists+devicetree@lfdr.de>; Sun, 25 May 2025 17:13:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 81C4C1FBCBE;
	Sun, 25 May 2025 17:13:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LkLbjRu+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A5ED14B086
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 17:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748193196; cv=none; b=nf10YuCcjY98Z6GSRhgLAoPMl6TOQRh/BUacJ7V8osno6/jrolAGZrZqC2xap8u3rPkfd+kknUGcM+tN/gkgi7zoamfWa7jBCZmqW/MVgUnYRy40YLghPQX4FdxSFoUTi2f0MtKGT9qNBVEJ5Q0lU+NDAZZX6pq7vd9iTZb6cw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748193196; c=relaxed/simple;
	bh=I5ZR3FF82SsvspTEqF2Ta82jGt3jr3/1NWy23/LVojM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bhL41nGxto2k4RGsQ3WVZW7Uu79rKGcLsjGBhjMPz5uZRCVRig8/AexnmpvVBWYttrwoikDsXdMndJbrKLlGzs85DbEVxxCMkah1Pq/QgtfUGXSGzdSBHvUJQeUYICS7R7zpOK6Mg4RDpo1UZgz5wQcRdqcDThfi2Sa+70hEeEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LkLbjRu+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54PEh0sW013957
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 17:13:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8GfQcrit3isg1rD3lf7/k9AB6FJ0WubhCzrMkEn3mXI=; b=LkLbjRu+7uyDduYT
	1aTdldON6OIg8yuZ4p4HjgcGiomd48EnBwE7vJqoda7oSBUNWXFkJ6veEyQXvJac
	7cOKQGI00HiGThk9uvRJAhTm03RYDdRlpehmTreLyQFJfPX8949w9Rut84pZdOD6
	0uqSsouoovvxZX6dZdC9fT67o0cziPBbzWZ5igMAgGp2/alDTmU0dKdkVDWk95kh
	5hQ55JmLa4RZkI9GhCLt49nIS0MRx1eH8BRgeGDfsI6tAqEZGYSiwbqX6Em7PvLj
	sjMTHlHg3F+lW+8PGm5WoDRsVi1OiTkju2WlTZIYZb7N7Hc9tvy0lbDJs28Km0H4
	CBPrZQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u3thtdjd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 25 May 2025 17:13:12 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8e23d6657so26238606d6.2
        for <devicetree@vger.kernel.org>; Sun, 25 May 2025 10:13:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748193191; x=1748797991;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8GfQcrit3isg1rD3lf7/k9AB6FJ0WubhCzrMkEn3mXI=;
        b=T8XIk2YJTiBG04MnOUv0EsU2tlgxNhycoiOaKAvaKakBL0T175kBQpL1TqtUSyZGKS
         JslOGGyw012Cb7f+o5149HlTRw9qe4PopwbvEeBDnjwyUxnMlXHo1tdkt+9BkZCSnfP2
         7AeNKje87sUG1vfCuALSV6gKXIzTD5/1wAvbjNJN0TYTdhwylvi2cNzbOgcJCnVMDGK5
         eY7YCHl4ydVxML+qm1YJ9g6V+fPrFDaCgrlhfvHBeLeQC/eeyZRgZEUHmnf1F1T76y8C
         sT1dJu87HdTluMi3y0mQQmeQAeXo5wshZvXTCY8ye+JMbkE6TrmPP0Ki2O3QOeRvQEex
         v87A==
X-Forwarded-Encrypted: i=1; AJvYcCXR7Lh2bQTBV1SDpB7w0fzGXuyAHEra0SjTQBAs70SJqbAcEqVI5xE3EuSlJ13KrbKT9F5PmABB0lKP@vger.kernel.org
X-Gm-Message-State: AOJu0YyO9GfuNPQNLNgc50krSIENcShMBoAIBx1jKjKdL1ttOgGoJ84B
	ysXv+RYMEh7wxV378rKmGUj+4k3xdOfMeRFgWo2qK2A0D9vml2BcImdMGYSncFNMkLEX7cFsnlM
	jhKSPkRpmj1NOf7HPW7wFgpWmAZ9QYod/7/g0fLM4gvq19JvR7qcm0QDICupI3Qr9
X-Gm-Gg: ASbGncux6aqNeVcrudGO+53rx+A2f/SGTtoIgd1+r39fRZXcA0i+kO2hO50KL+i2RRu
	dESRbtLsHgPiA+XGXrYM7yWbbfnkzu8F0XOENVMHsERg/0l2e3wh4k1ts8hMP15L3PjwMP1j4+0
	Lsv+O4CUwyzZs3aLdDS7U26RLWPdKEoVQV9yI0/exk+5CaEsMh67ZjkXUPOUI2/TJ+ApZri2yzt
	eKo3RBG6BTJhq9p7+BCVtMQtsSRfeY2fFMupW5fe1MaWCapDgxBPQYMKCL/2xkUB4kp28wf/svp
	n1YEL7YxF59pku+wpd0TxOb+4IPwJmPmZcWBJVStDsytiyWltv4m4eoWJ+sxSg==
X-Received: by 2002:a05:6214:f2c:b0:6e6:5f28:9874 with SMTP id 6a1803df08f44-6fa9cfd2912mr112515326d6.2.1748193191165;
        Sun, 25 May 2025 10:13:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLy0QUxrOeWfkESnbDjqayvG3igEvUkE6sR/3TpigvF16g5Xho+6TvOHh9oCRLT8RtmZm88w==
X-Received: by 2002:a05:6214:f2c:b0:6e6:5f28:9874 with SMTP id 6a1803df08f44-6fa9cfd2912mr112514936d6.2.1748193190710;
        Sun, 25 May 2025 10:13:10 -0700 (PDT)
Received: from [10.117.217.18] (194-204-13-220.ip.elisa.ee. [194.204.13.220])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-551fc7d8a77sm2795716e87.186.2025.05.25.10.13.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 25 May 2025 10:13:09 -0700 (PDT)
Message-ID: <cfd4f557-7f97-4da9-8eff-fe3749e336db@oss.qualcomm.com>
Date: Sun, 25 May 2025 20:13:06 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: qcs9075-evk: Add sound card
To: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_pkumpatl@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250525155356.2081362-1-mohammad.rafi.shaik@oss.qualcomm.com>
 <20250525155356.2081362-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <20250525155356.2081362-3-mohammad.rafi.shaik@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: I-fB_cQh-Pnua8CDzVBvgo-LOmGKEHQ5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI1MDE1OSBTYWx0ZWRfX6LzrHRWynNtY
 IPtkSFgBAbQ4o/YmWrVIzF3618CJcA2sI8MPLTaesGIkCHp7HkJ61boTghAq15M7G4PiT3DiyTT
 6yrG17hJq55XX0Q5zd/6b/Jkld1vcHIMTE3TW/Y7utxhIzo/+LOFrZ9aml8j6izAobc2LB+qWxs
 zGY0YkceioykeYoWDzkBmj+ameDPpGWFIDODk2xlfuSI1FWmXgN2eQGFoKa7uezpzdnyP0iy+AU
 gvv4hoCNK3xECRfORLeJylo4CYYVaUcBtyHLvQPTH6dhKo3s64tPjMFZCivB/Up9ECxA4s2naXF
 k0MFyxQ92lFC+LNdeKQobR+RNYxsinTja69KwLw5NhHtDiVFi6SeR3jPsjalW5DHr4FRDzzgJ/D
 knfpd241FSMEo9MqvrcZCIXDi5/Eb67mA1MEwW4ocarx8G63PzQtYfEXclgSQRncMuWlPwqU
X-Authority-Analysis: v=2.4 cv=e94GSbp/ c=1 sm=1 tr=0 ts=68334fa8 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=zsrLd+foqYdeTGXumyX8oA==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=J2ExMKW3eQPLhXUHgQwA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: I-fB_cQh-Pnua8CDzVBvgo-LOmGKEHQ5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-25_07,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 adultscore=0 mlxlogscore=999 malwarescore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 mlxscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2505250159

On 25/05/2025 18:53, Mohammad Rafi Shaik wrote:
> Add the sound card node with tested playback over max98357a
> i2s speakers and i2s mic.

I2S

speaker amplifier

> 
> Introduce HS (High-Speed) MI2S pin control support.
> The I2S max98357a speaker is connected via HS0 and I2S

speaker amplifier

> microphones utilize the HS2 interface.
> 
> Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
> ---
>   .../boot/dts/qcom/qcs9075-iq-9075-evk.dts     | 52 +++++++++++++++++++
>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 14 +++++
>   2 files changed, 66 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> index 0e44e0e6dbd4..1ebf42b0b10e 100644
> --- a/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs9075-iq-9075-evk.dts
> @@ -6,6 +6,7 @@
>   
>   #include <dt-bindings/gpio/gpio.h>
>   #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include <dt-bindings/sound/qcom,q6afe.h>
>   
>   #include "qcs9075-som.dtsi"
>   
> @@ -20,6 +21,57 @@ aliases {
>   	chosen {
>   		stdout-path = "serial0:115200n8";
>   	};
> +
> +	max98357a: audio-codec-0 {
> +		compatible = "maxim,max98357a";
> +		#sound-dai-cells = <0>;
> +	};
> +
> +	dmic_codec: dmic-codec {

Just dmic or audio-codec-1

> +		compatible = "dmic-codec";
> +		#sound-dai-cells = <0>;
> +		num-channels = <1>;
> +	};
> +
> +	sound {
> +		compatible = "qcom,qcs9075-sndcard";
> +		model = "qcs9075-rb8-snd-card";

Were the bindings and the driver sent? Cover letter doesn't mention 
them. It is better to send them as a single patch series (this is the 
case for all subsys except net-next and trees maintained by Greg, e.g. USB).

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
> +				sound-dai = <&dmic_codec>;
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

-- 
With best wishes
Dmitry

