Return-Path: <devicetree+bounces-171939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D78A7AA0902
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 12:58:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E478467EB4
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 10:58:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5D142C10A7;
	Tue, 29 Apr 2025 10:58:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lsnynrfk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACC542C1085
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:58:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745924291; cv=none; b=fTD+ykyPohzVRSK+3jll44ZFJIqEMeIrMVgoNNNwgcaUN//XEPACZlM+26d9dU4/SnxSwdDngBXewlmEpHWPGZFS+WuvBz6TyU/wNQybXNG2NeQj/5c/5RsxpQrEoMStVFqMRWfocgJTowolvewvau4j8Y5lCCyRG8wfX3iarZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745924291; c=relaxed/simple;
	bh=fphufsS75GYBBcFBWnCVeA34fEKRwNsxRNgx6yLY/T0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jfFOlS+kNms0Z00k6n3E42Viu0PPW19BZd7FdWwypF45tR8CUrHODBqoLCH/Ya/3LrTeg9J1Y7y8CVgzxO6srhTqxCSUfEhdA5+Zx5jJOF3AbfRn4wrSR9MLtD67evvZ5v3kI6RZksZs8F8jI2SzzEibrUn8FLqUw2O6QvzUA3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lsnynrfk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53TAE4YA014348
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:58:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HT3dXf2eHLieMKHvIETGpanBPjJB3EafGATYzblRr4Y=; b=lsnynrfkYSExDHk0
	qC6TmENVBTmHEkJX7poM3MPvbsAWEnQksNZTLS2LL7TwWlEjXn/96eaRxZcVtiKj
	Jjw8GfLKRn3uvDjPiwq5rr+Qafc2L690S9J7FJTzQjBUVQ67GPo4tKLGoNqXGQYK
	7Bv4aN4YsTrx4rXN3wq41a5xJIhOSMz6Hzym2btIy8/+lKjAfztbyf4MD/H/4fPx
	6jdmjf/k2gwKsCCoRJccdN3Ds81eV01D8521cxvnVuSgmSQx/2Xa5QUDuNUEZ05m
	rG8se3gaswcHVWMAwmwoFN1uKwPEq9mYh3DZcf0X7kooYeO1/60Ixfvawop6ZLTO
	AIoZ4A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 468rnn35an-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 10:58:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c76062c513so101491985a.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 03:58:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745924287; x=1746529087;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HT3dXf2eHLieMKHvIETGpanBPjJB3EafGATYzblRr4Y=;
        b=WucZ0hR8Hm88d/uuNh5smwMo0wkl3lZJeIPrScRlz1u9mO9THQVUW/SUCS+M08iBFT
         CeptZsFv0auqai7BrdQFPN8r/AP7kTQAiN/u4Y+eLb9oDzBBywqBNL4+/Zy07mHBHjrd
         UpdJfjlY/LUBmlyxIpf+rHFlA0t5/Jshi4TPkl/Lph59XdtDbcldoSr28dYU9oiYWP97
         6olDiCHjcReSGzFT9WSpc6W3qzHhZWMFHRxNVzoVuHH972IuuodbozFDGYfe3kuVRi84
         wpXKlSx+hSAQbSTJcsLTFA9K+eN2CqW/BQ177gLWgjLJYpXpscM/k2A9KYkXJ7+1iEHw
         wiEQ==
X-Forwarded-Encrypted: i=1; AJvYcCVrflRC0fztxtavXYN10WNQ2l0f8ukHNFJS2fPupiWrWITK1hIa15n+MK8b8bgCgfT619bn1daMEEOm@vger.kernel.org
X-Gm-Message-State: AOJu0YzNtIpjBmtts17KjyABbnte+kQ/NCbNAFfHDIhAFmXmfQ5qNYcn
	rvEn9KlgAPtmDThkrJKQacjp09mwKOabL/rmCcozvkPYLKfKuTKwjEf/GHro2ZmrK3sfw2f0gj6
	5/OSnVl9RaC/xMsjRR7KWkuvtZn5Nx8ddw9yssDXgmo87veYd1yQ9VQNj4JPY
X-Gm-Gg: ASbGncuDUaOjmam5we2RYsDAdrpIqgTxGSkfwR80kdt7smW9BciWgz8hFZcnQEz0ec3
	ylzTgpiNSHH6Y0QLNb1oe95Exrnp9svWnHL++hM1El+AMxI/CIfH9JoAU3Ze7cHCCNqqizWD6eS
	fFZ+FEMejuVsP8rLNFrgKNSgEHq825Jh7SYcO6E2cMYu5O1rAuhDHNJBeWmWQH1badqanHG5P4I
	rxXIWm9MdD+XeVtSB3Yu6/zc3P0rJYzCAxG8jKzaNl/ErJlpsEzbay5z4kPvjyfecdWZPGFBqsP
	F2NSNe0aoHAJQdy/7IZy39B9PSVxIbILjbzKGIky+bSu5kwMP/7ylwKmLjJWOaCsVQ==
X-Received: by 2002:a05:6214:c42:b0:6e4:4034:5ae8 with SMTP id 6a1803df08f44-6f4f1bbe3cfmr14938396d6.5.1745924286815;
        Tue, 29 Apr 2025 03:58:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHFvT9qdeZKM8ZtWBzJM4XZYLNdlPQWbzdfnDzWOcBFG6syPrx7jRpwCUdNaPIAqcCLrSuRGg==
X-Received: by 2002:a05:6214:c42:b0:6e4:4034:5ae8 with SMTP id 6a1803df08f44-6f4f1bbe3cfmr14938216d6.5.1745924286435;
        Tue, 29 Apr 2025 03:58:06 -0700 (PDT)
Received: from [192.168.65.43] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f701400565sm7365680a12.26.2025.04.29.03.58.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Apr 2025 03:58:05 -0700 (PDT)
Message-ID: <cffa3374-c88f-4390-af7e-d6309a870b63@oss.qualcomm.com>
Date: Tue, 29 Apr 2025 12:58:03 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] arm64: dts: qcom: qcs6490-rb3gen2: Add sound card
To: Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@oss.qualcomm.com, Mohammad Rafi Shaik <quic_mohs@quicinc.com>
References: <20250429092430.21477-1-quic_pkumpatl@quicinc.com>
 <20250429092430.21477-6-quic_pkumpatl@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250429092430.21477-6-quic_pkumpatl@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: KhPRs4F-k1P52lt4OeI75uxztv0_CwmY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI5MDA4MSBTYWx0ZWRfX6GVqcjTaZ23v /y8b/iHYUfQyhA3rM1N14G4l2cIyUlL45I9ozETqvUbCuc4/KK3tp0NSsRi+csV+Y7JLtyqlwqM GT1j2iN1sPgKaK/ATWFmhCkF5zfvvmUKmy9Yix6rFyGcGE9fqiNg4vHGucrcW5Vc6/FBfVkvwEC
 MFZyUZ7o6G0Rb8jNSvJs+UoE2natZ2Xs9kUWOl7vqM/cDE38yL/nHgHzd4Ls7+XgBGNtVKaSTRq zFYZV4NAL//KfId4no8YvcrC+6gioLN5TB2//MYBnxPUzeu1epIgFB7xOOFCk2Hb/UxB9TBPeWB 2ZjIUJWgxPJ8c0FSFBdqOoyEuSVXrH1Ydp4diekxzV26vVLimZMF2wLlOA4KUqubsPRGiIIiHEA
 mqD0zgVr4iydPCb4I7lGpxpNISv/TBDPy1zudMgTaAEb9kFs6SdZdW8e8yTTujYb7V0yCIqg
X-Proofpoint-GUID: KhPRs4F-k1P52lt4OeI75uxztv0_CwmY
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=6810b0c0 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=LhcYZv6hF2g8wJCaxG8A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-29_04,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 impostorscore=0 lowpriorityscore=0
 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0 mlxscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504290081

On 4/29/25 11:24 AM, Prasad Kumpatla wrote:
> From: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> 
> Add the sound card node with tested playback over WSA8835 speakers
> and digital on-board mics.
> 
> Signed-off-by: Mohammad Rafi Shaik <quic_mohs@quicinc.com>
> Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 49 ++++++++++++++++++++
>  1 file changed, 49 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index 43cbdbe43afd..9cfe648e29bb 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -1078,6 +1078,55 @@
>  	status = "okay";
>  };
>  
> +&sound {
> +	compatible = "qcom,qcs6490-rb3gen2-sndcard";
> +	model = "qcs6490-rb3gen2-snd-card";
> +
> +	audio-routing =
> +		"SpkrLeft IN", "WSA_SPK1 OUT",

Please unbreak the line and align the entries

[...]

> +		"SpkrRight IN", "WSA_SPK2 OUT",
> +		"VA DMIC0", "vdd-micb",
> +		"VA DMIC1", "vdd-micb",
> +		"VA DMIC2", "vdd-micb",
> +		"VA DMIC3", "vdd-micb";
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +	wsa-dai-link {
> +		link-name = "WSA Playback";
> +
> +		codec {
> +			sound-dai = <&left_spkr>, <&right_spkr>, <&swr2 0>,
> +					<&lpass_wsa_macro 0>;

Please align the <s

Konrad

