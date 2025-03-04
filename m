Return-Path: <devicetree+bounces-154026-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C921EA4E889
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 18:25:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0B6E317A758
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 17:19:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A522927E1D3;
	Tue,  4 Mar 2025 16:56:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EWOkJjNt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C743209F3B
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 16:56:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741107409; cv=none; b=ekZtSGpanvSVdXx5Na8+uM4GYHwq+NlJNrOhnzzvMKrEoBtU90/8Z32G2bZ2VMk5cyYBstuoU2T4iwX3ruCmjnBGpq6zvk23WI0uEp8ABjqAhSrn5DslwpIMaXm1ivIgN9Oo5BMB2PaW/XLSRTk6ny+OCXPieCFrffW0KQOqBvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741107409; c=relaxed/simple;
	bh=faMsthIU2rKzizBdyenPntp3DnH3cLvnQOLcOERjhWM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m8lKXU35Plxccijo7rLgHGA1Zkf0mzb8ZfVi2wjJd/7MabwZiEb8Ejbw4s7m+vtJ6L9ruA7mk9iOOA3/nc+B9xgeo/hP/U7O6dMhAtIoXW7Og+9U85a1tFEKpMbrJKOpwtDR07h3xVa+wxw91zuH6UeEc6uW4FLy28ABnIwlvLc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EWOkJjNt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 524AVi8T016469
	for <devicetree@vger.kernel.org>; Tue, 4 Mar 2025 16:56:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jeCtW4lbMa2wB+pGkNjK1YgYQBzXYFl+3yQ06H7E5zI=; b=EWOkJjNtxIFjQ2eg
	2r+6rmRZk9ersAfadkfjYaLhNPKslDpcv+l0wAkSriCyflsNJUbq3UlYnzINh9wA
	E6l2EDcNgAolWD9fohEzRFfSMo8ow17+x3Lz2T73zrs26kezraiGmdNImQlMowom
	v250Tj4ijwBdMfGcyOo60Pb5vbi6v3DdgQkBUIsF5PvjuAS1HLqh+1AVo3/bBRnj
	CnRe88k1bMaUtzJ70xRyDZvwh8cMIt3PjcGc3GHH/5WG3i+lYb2rvE21Z3DjQoM8
	SWGaLL4d21YqKFkyNglRNjhODj6H6s12LyO+gf3XcGXFeuo/EKRvoEdpCRcw9mfu
	w1HYkw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 455p6v2guk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 16:56:45 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e89b5746d0so11080306d6.1
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 08:56:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741107405; x=1741712205;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jeCtW4lbMa2wB+pGkNjK1YgYQBzXYFl+3yQ06H7E5zI=;
        b=wqBcZRwJwWr7584IQh6J98EuacCFC8CKZbrMj9k2894+BBOEhYE6cOSW8vE6QyPHtG
         +vIbMvrFz6asqsFc0/UkDWL+KF3L4FsDO/qud14GCtg2YETmsPeotz6wgDOqlLqimurU
         SGVORjT4leyHrxXhuq2cKkaBNH8Y8bIWLFUzA4wn2TlZnp8TgmnB7R/JskXPuXYK6QeP
         Kl61eDRCtKUO+it+PIGx12F3LMSzNJ1erP8TreK1Y+F5p9J6Q/Fhco/mwdiq3ZZXGRL/
         Zp93cCZHqxNVXkeSnmPj2KHO+aLNShQD74pX5yXBttuTq6f9447eqN6i+eB10PBjuhtN
         tuHg==
X-Forwarded-Encrypted: i=1; AJvYcCWV2/pzTQ9CqtRqkPUefrQaefIYFoYKGKr4FnPAmStL+7mDxrKOKWem+PcB2ZrIUhRisoTBsOJPvAaE@vger.kernel.org
X-Gm-Message-State: AOJu0YwlWofybY9vKCoEgbzrExWxtb22CO8GuxQUDr8IRJm3aIhn/nh3
	R9QVtMLuB9jzLyZmSei18C+hq6pXZVHfvjngMQQTVtCtYeLs1YM23qLDzrHc6Hc6kudyeNZBJXs
	K5DL7ajtvCyUhHtJIInDVJpjvjO9MegHIOBiVvg81gJZBf71tSoLBtZHjPiS2
X-Gm-Gg: ASbGnct/wKeItDAEoH+LpX0qd68yE4KqE+h86zerWd2XAI4h86327XBvfBFI/3ZloqD
	W6WiEW8upzS3Lvk2fkQL60k26P8sVIeb67aCzfMXad59bgO6+ylC7ePybUAAuIuVCxaWUDSnz8N
	EFhn8atCoq/1j/VzTHJSdSVOxAFs7s9KHcezTp9e9/rGeYVf4Wf0/fmEot6vCmpo7yvW//PnCQQ
	2Etriz3JmCYRNeBHnAEUhCe/8W6AZ7IC6yetm9fgXALDL7S3RzUg2+4qd4Z5NJi49sal5U28yOi
	mmOkqHCxDX1adpfjRUGZl3sTdAoD9GKXek7KkaHyZaGZI83/I2IGIvZ6dcjYU0b+6mqfrA==
X-Received: by 2002:a05:6214:518c:b0:6d8:f750:b2f1 with SMTP id 6a1803df08f44-6e8dc2904ffmr15699306d6.11.1741107405190;
        Tue, 04 Mar 2025 08:56:45 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGDvPwCooBjtFZFTrypVsEc1Pzi5aDYHsuSLfjAg+hqO1PNWsuhlUJTPfRjPAcb4z7sb1bj8A==
X-Received: by 2002:a05:6214:518c:b0:6d8:f750:b2f1 with SMTP id 6a1803df08f44-6e8dc2904ffmr15699166d6.11.1741107404824;
        Tue, 04 Mar 2025 08:56:44 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e4c3fb6067sm8319687a12.50.2025.03.04.08.56.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Mar 2025 08:56:44 -0800 (PST)
Message-ID: <58d32bd4-d854-4233-89c9-22c37bddfaa1@oss.qualcomm.com>
Date: Tue, 4 Mar 2025 17:56:41 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: qrb2210-rb1: add HDMI/I2S audio
 playback support
To: Alexey Klimov <alexey.klimov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20250302-rb1_hdmi_sound_first-v1-0-81a87ae1503c@linaro.org>
 <20250302-rb1_hdmi_sound_first-v1-5-81a87ae1503c@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250302-rb1_hdmi_sound_first-v1-5-81a87ae1503c@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 75R8AzVsCCZ5pgJzn6yWIBwEaQjWvRgT
X-Proofpoint-ORIG-GUID: 75R8AzVsCCZ5pgJzn6yWIBwEaQjWvRgT
X-Authority-Analysis: v=2.4 cv=fatXy1QF c=1 sm=1 tr=0 ts=67c730cd cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=1NR_YFCaA4PxXnam7p8A:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-04_07,2025-03-03_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 bulkscore=0
 spamscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 adultscore=0 suspectscore=0
 phishscore=0 classifier=spam authscore=0 adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503040135

On 2.03.2025 3:49 AM, Alexey Klimov wrote:
> Add sound node and dsp-related pieces to enable HDMI+I2S audio playback
> support on Qualcomm QR2210 RB1 board. That is the only sound output
> supported for now.
> 
> The audio playback is verified using the following commands:
> amixer -c0 cset iface=MIXER,name='SEC_MI2S_RX Audio Mixer MultiMedia1' 1
> aplay -D hw:0,0 /usr/share/sounds/alsa/Front_Center.wav
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qrb2210-rb1.dts | 49 ++++++++++++++++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> index 7a789b41c2f1887f0c41ae24da2e2fe8915ab13c..e547537cffdbc13cfd21b8b8b7210b62996ff431 100644
> --- a/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> +++ b/arch/arm64/boot/dts/qcom/qrb2210-rb1.dts
> @@ -186,6 +186,47 @@ vph_pwr: regulator-vph-pwr {
>  		regulator-always-on;
>  		regulator-boot-on;
>  	};
> +
> +	sound {
> +		compatible = "qcom,qrb2210-rb1-sndcard", "qcom,qrb4210-rb2-sndcard";
> +		pinctrl-0 = <&lpi_i2s2_active>;
> +		pinctrl-names = "default";
> +		model = "Qualcomm-RB1-WSA8815-Speakers-DMIC0";
> +		audio-routing = "MM_DL1", "MultiMedia1 Playback",
> +				"MM_DL2", "MultiMedia2 Playback";
> +
> +		mm1-dai-link {
> +			link-name = "MultiMedia1";
> +
> +			cpu {
> +				sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA1>;
> +			};
> +		};
> +
> +		mm2-dai-link {
> +			link-name = "MultiMedia2";
> +
> +			cpu {
> +				sound-dai = <&q6asmdai MSM_FRONTEND_DAI_MULTIMEDIA2>;
> +			};
> +		};
> +
> +		hdmi-i2s-dai-link {
> +			link-name = "HDMI/I2S Playback";
> +
> +			cpu {
> +				sound-dai = <&q6afedai SECONDARY_MI2S_RX>;
> +			};
> +
> +			platform {
> +				sound-dai = <&q6routing>;
> +			};
> +
> +			codec {
> +				sound-dai = <&lt9611_codec 0>;
> +			};

"codec" < "cpu" < "platform"

with that:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

