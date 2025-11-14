Return-Path: <devicetree+bounces-238908-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id BC009C5F813
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 23:20:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 25B5435DCEF
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 22:19:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA6B930B529;
	Fri, 14 Nov 2025 22:19:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IwhIA2Cb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AvWM+nmI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24FB530277F
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763158782; cv=none; b=dGqrd8fzzp7m3ZTVeMO71PXrBBf61bG4G4p7SNyDz8LtG204oT6zE2BRQzJE5YfDrLKjzxRDLQT7y4SD7tESwjMp5s+tWLPIk98DeLpIutuZEjcwlVQEMjCpmEdFyGbINc3WQN4tmDBTOWFJFnyyNL42p1jIZ0gS+y2iKIH49qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763158782; c=relaxed/simple;
	bh=2tVmh/m4Oh5kSRKpTxbSZMwljl4RjgLGV4CD3IiSlms=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jbJfZpfAo4pz5yuCntMVS1lnLpWldJjzLxm3ylYTcHLpP572K99kLcju6P8buMCJuo8auHkBPBUfGrS3CKfEjmP5BWfzwdYA++luxfwX79CIMIwzf2NEmDjylHycj2ghAShWhA0OWoepFRPP2JdKXDptQDC7tuyLU3jKKFTTM0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IwhIA2Cb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AvWM+nmI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEIQfa0044328
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:19:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6rtaMl2P4Y3ggAEQ1PRkpIjaXxhkUvSE2Zjlj8Gi40I=; b=IwhIA2CbmGxDzYND
	Gu462zOvplCcRiD5OK5QyYSXpzBON4wjWozEORmY5Yv3WpwDPmTzm6RWSob9b5Dp
	s3lusEoIAy65bY6jNWvgsKP490hvOpgPba2Hf1j+kIbX8dFX9GGlxXv87pa+LnpF
	+Uxh33KXuI057UF3pi2odbRKRUzgelROvNzMLMDx1/3Q5fVdM+khidhtN/bx0p6G
	54plcKsCKBX+XDU1K4JbH2YWdamAdl5JozIk7aJFxIEE1h+FEapaWrPF7qkSVrNN
	oRTgfb4w69f8yzQO8+4MZcak1+gZa83jZWcwEK0Hf6BycLREv1TgACwqu6ZZoz32
	olCGgQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ae3t9srt0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 22:19:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee00f2b7d7so1014211cf.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 14:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763158779; x=1763763579; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6rtaMl2P4Y3ggAEQ1PRkpIjaXxhkUvSE2Zjlj8Gi40I=;
        b=AvWM+nmITBy0f7SKOFesBQvhotN/+/4TsChs6XpVkU4s2DFnD3o9goBcXEF9OpLCPz
         F5zFGkFHPe+YXznzHsRwlLL93VF10nSB2Cak9DTfTo2NvB1TJlLh6uodJ/YY9DX7LBBT
         ++SnAruhx5utL6X61vHTfkGvuKPbuYH1M2t35CTYZhq8DX7vsEUKoZL/p2o2GAWtOkbQ
         sKaH+UqxsnMn+uQRuDOrKecHs80fni5b6MSP8WX5ETQQbgSfU1lStsFQ2ZOf5WbUGqZe
         4S1rm28YLcl/JCmeerrUM9kkx7W0CWFmGo8Afc23YVlu7VzMMmNIAZBEGizDQemjX72F
         susA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763158779; x=1763763579;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6rtaMl2P4Y3ggAEQ1PRkpIjaXxhkUvSE2Zjlj8Gi40I=;
        b=Jvm2P95/9Wdupijw9VEbeNAardlG+Um0kVTNziK9NUe8Vrny5rMX8TTFUkwFcvUgah
         Y4CDDttBaNkk7+i/iGyag+egx2JghkDoPiCk+iEUrYZ+YikYurEhHzNjeEzPmlIcO0Py
         dVqvVGXFseK+Ag1jQ0Li1Qf7GygqdpMQlIj5baTtg2jllZa47gU0ydqLKJ551kBJRBbn
         7rkg0deLLSAzxc0L+eW8P93QdOB86nmKyZ/QyzH76y+uHC9+ktXu3bkipsvyoqBEK/Ev
         b1+sSO0H4aVgZXmwwmnLaCumvFSM2yjuUSK8VGx2boT0Wo099NxCGoyMe1zfxe9jBXTa
         uIZQ==
X-Forwarded-Encrypted: i=1; AJvYcCUW3yT0Mfw12A5YHXud+xch3j31RpTlZXpMRgMnv3v/kCfntj960sgrI+SNRGgKcgXnqTr7DD5FSTsc@vger.kernel.org
X-Gm-Message-State: AOJu0Yyxr0hq+fU0jXjtUkLo1cDTVwMNnhf5GCBIiJI9S4k+bx2XY8iC
	Hi0aN5RjIQiFO4q3YWwHsAQyJRO00bHBdV3WcKRMXGHJtUNxialbc9KVb0VaGGzJMJL3jZC1tpO
	yrqkKrFrAhD3i3kq73EhoKJadBHySTxCYAozXLmwW2DA9+5gJsX/1q/cCrse6/wTl
X-Gm-Gg: ASbGncskhztIJ0qqYuVtYZYc6KkIQVhHGZbPO45rE0OHMYnimSCZAYXJdbQ6Wm7kmba
	f1gHknOJlMHbpdGQz9DllgoBFan2w+PkWP/5IBeP2dlvrlWMkFCSkue3J8Xh0PeqqZk/jqEgSxh
	kzCGK21KwsS6bQr6Q2h8IjSbgL+dpdJui3Gsfgnmd9t6c5TyS20siqYs7qd2fogoJTjgudOetNn
	ggC1UdqFGDV/JCBgIUA02JS/flhZyoWIhlyUV/8cvFPymHYCisNAffY4W8l7/iyxgeMrZ5V9hKq
	vSNVJgAfmlpKzLV2WK1zpiJoGm8IZMofLUmvezv5XXasqmzTA6JKcAX737D9QBGornysAnZQ2vB
	ItZNTXj8KtpYx1fcoX8c/vpw3JZybmerN9iCW5dLg3MJkE6xe0/O6zGYU
X-Received: by 2002:ac8:7f87:0:b0:4ed:e2dc:dae4 with SMTP id d75a77b69052e-4edf3441d01mr39997351cf.0.1763158779388;
        Fri, 14 Nov 2025 14:19:39 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHjbG+BUiaIkkQZyS73j/X+Rt+OSfewkVEELl3ZfmiAtanj7Nkpm9CmHByNJrV/E1aDIWckHg==
X-Received: by 2002:ac8:7f87:0:b0:4ed:e2dc:dae4 with SMTP id d75a77b69052e-4edf3441d01mr39997011cf.0.1763158778906;
        Fri, 14 Nov 2025 14:19:38 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fdac68dsm470137366b.62.2025.11.14.14.19.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 14:19:38 -0800 (PST)
Message-ID: <a5ae933d-c5d1-4094-b4a1-de52060e0786@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 23:19:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/3] arm64: dts: qcom: monaco-evk-camera: Add DT
 overlay
To: Vikram Sharma <quic_vikramsa@quicinc.com>, bryan.odonoghue@linaro.org,
        mchehab@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        hverkuil-cisco@xs4all.nl, cros-qcom-dts-watchers@chromium.org,
        catalin.marinas@arm.com, will@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, quic_svankada@quicinc.com,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_nihalkum@quicinc.com, Ravi Shankar <quic_rshankar@quicinc.com>,
        Vishal Verma <quic_vishverm@quicinc.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
References: <20251114064541.446276-1-quic_vikramsa@quicinc.com>
 <20251114064541.446276-4-quic_vikramsa@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251114064541.446276-4-quic_vikramsa@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=IOAPywvG c=1 sm=1 tr=0 ts=6917aafc cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=xh7zYxaUke6ZEiU0VLUA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDE4MiBTYWx0ZWRfX0yr+8gAEQOyl
 scEfaiaWEz96ILCtaINCXqvq2rato+PzxG1GwF1J4ShG2t0QtZLAC26yPeEs/yKWK6LFnCGXzxj
 /w6mbj3OpUiWGwIctJ4N4sXNBuUHS1uU74McOg36iTSz2DFd5W5GuU1araW0M7Y1ocDRlNZjwwK
 4KgXI8ojLmTQUeL2+z0c84sg8yZQsKajRE+KZNPNR2+myPTXUk0nbjEDieC7bBeWIPBHrAXYdNr
 wTCQezjK/njDq2G4b34ldDI+Fppsv9+6tyakZJ5nvENImdCfGCAMqkURyCTzLra6D8DrKpo6QWO
 Ysck7ZlrkwJUHmnglARQrijqBBgJTts9PZq78RIKxurI5Q/+Bp6pC1ak1k7uGTfMX72wN77aV6l
 oIJCv1Ywq/KTCD9+cCwgbtQP94EEuQ==
X-Proofpoint-GUID: 1wFh3Kc-dz7lpyuDcUrwEmgESz8Jd8aH
X-Proofpoint-ORIG-GUID: 1wFh3Kc-dz7lpyuDcUrwEmgESz8Jd8aH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 spamscore=0 adultscore=0 impostorscore=0
 bulkscore=0 malwarescore=0 suspectscore=0 priorityscore=1501
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511140182

On 11/14/25 7:45 AM, Vikram Sharma wrote:
> From: Nihal Kumar Gupta <quic_nihalkum@quicinc.com>
> 
> Monaco EVK board does not include a camera sensor in its default hardware
> configuration. Introducing a device tree overlay to support optional
> integration of the IMX577 sensor via CSIPHY1.
> 
> Camera reset is handled through an I2C expander, and power is enabled
> via TLMM GPIO74.

[...]

> +&{/} {
> +	vreg_cam1_2p8: vreg-cam1-2p8 {

Where does this regulator lie physically? Is its presence dependent
on the connection of the sensor, is it part of the EVK carrier board,
or perhaps something else?

> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_cam1_2p8";
> +		startup-delay-us = <10000>;
> +		enable-active-high;
> +		gpio = <&tlmm 74 GPIO_ACTIVE_HIGH>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam1_avdd_2v8_en_default>;

property-n
property-names

please

[...]

> +&tlmm {
> +	/*
> +	 * gpio67, gpio68, gpio69 provide MCLK0, MCLK1, MCLK2 for
> +	 * CAM0, CAM1 and CAM2 respectively via the "cam_mclk" function.
> +	 * So, here it's MCLK1 pin for instance.
> +	 */

I don't really see the value in these comments..

Vladimir requested you to move the 'description' (meaning the node
describing the hardware, not a comment explaining the function of the
DT hunk in natural language) to monaco.dtsi too

Konrad

