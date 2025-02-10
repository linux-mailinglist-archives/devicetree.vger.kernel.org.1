Return-Path: <devicetree+bounces-144779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D0408A2F395
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 17:32:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 03CB418815E3
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 16:32:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D29752580D6;
	Mon, 10 Feb 2025 16:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gH+hBbsr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DED2580FE
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:32:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739205137; cv=none; b=H9IDzr3vjGmmjmlv48h4WIkU2qpCiGErbJYhiy7CYWj5YINuPlkiMfu1NVerV/swhFKYLFahmb2jnpSEiYtxT2P8ZxXz2T56PAVZY6QaSDzgBWnZI4+i7bljIpcNLacxu7+m/xxFyMBE4yq7JK9GmuxDj/OP+xZjF0rjx8jrsgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739205137; c=relaxed/simple;
	bh=yjvTFCvLxXIvRl5gg0DCngvMbkd22bwx/SjzjhNxGbo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LmUXnqLUOWNT2rPM1UQxDVO7vVfV/khBaBk5Bo/fuVQXxHRY/zzk3MDCnj/lB0bXCtIDfi2PilSDNsbS9e10eMe/GFxSNpkJZ/DAHKASFFcDHNkPQiZ2R8vYLbA+TBlVgQy7w8RHzlVCGkIEk3SW/RgLg4/SijrhHd5gJQh0tlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gH+hBbsr; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51A8h8pw015844
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:32:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jCHUXPT5Jmbjgw9rgNlW8gb3OHlH09svIQMyIII50QM=; b=gH+hBbsrMoJ0EZtr
	8i2tmGkDg5i78VFBr5c7s4xS0HArBGmQZ5On0j7eb55KczTFAI0rXFIu1h8jEy7D
	eu61Omh9hv+m2juT994GxYFqaNRblpSa1k1vbWFxm0cH2QbpkHbO19U0e5r67RCW
	a2vp8t1nr3uABuHc9TVwQszgo11vfz/9UcFND7sJAExK8Brv7Yq3dSvH9Fzn0j7N
	+Pe100+3an7fT3omg76JyVROf9UVs15e9vPfMySrF4PZmQDYh/u2qutk50Ylg4SD
	3optfukyB7cOoZKqGasLI5Qm2sy86HDFiigktd16ijFO1KOiS8/XWpJcu4HFlUCn
	wLzEKg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qe6ns8gf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 16:32:15 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e440e2ddfbso11172666d6.2
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 08:32:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739205134; x=1739809934;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jCHUXPT5Jmbjgw9rgNlW8gb3OHlH09svIQMyIII50QM=;
        b=UV0Z1ZvXHA4+bc3+mCl/GySnWJfpo+aYXdS4dB4X0B7asvf2wa9uZW1qpLugAiWm5z
         gVCCPfS1s0zN04ShysE6vuBWWos/a5+UwjUyOKpJwiaefcuvw7NwLVwK4naEs3gp4/P6
         j8TfFkuM+G7GpwGE7rmHWbwstL0erVhOr3hbInL02hBd7v6gfMDdyLNxwYyMQ8G0jid1
         DZv/qvxT4t0PA3wOeaSzNjwDRj1+5gM86M0PKL9bY/rgNe9FB/XFGBG3Bq1RRfcPSNCm
         /6wszS/vRMWYy5juKdd6vMwygLfaac+NQBQw4A7uTj92rYdISp2Doqfo6g/L/WFp1lbZ
         tFdg==
X-Forwarded-Encrypted: i=1; AJvYcCW+P13JthJjNnMl42G59acI8zMoOTOF7A7wltShZYCs5s1xs398uNQrL8UsRZx13r5sNWdqqjpWAzdc@vger.kernel.org
X-Gm-Message-State: AOJu0Yys/wKBcWJPVAaQ/cmswYQqQyeKyY8nlV2dW50Fvjuum+Gb7/x1
	YV7b2M/aHuxIVRn3/Az5AqKzi12L93MyHMALPDMAAAuiyldskt3Zz+jP52RIIw97uKTbbRKYc8N
	jnI6qOzQ7ASgjCDTT8V0bV/wl9wwKcD+nYuxJTiIpve0rfiLLBkoPIMYIrBLj
X-Gm-Gg: ASbGnct7IlulqxiVBf7FIYji+S/ZI9y9oOLkTEkYp877J51Wq6MH7lxV4ShUh0squZR
	sq2zY2dsqAzDYd7cPPyqyn6uynsxk9m48/8x5DnLzvBvV4ZGaCF761KSx6lb/ixfcn1JbmsinOq
	ORAE8N1OnxZOO4SEXtfwM9vfpxY/38D66bF9WP7li5RNFoO8o0hH7ZaMV3XnUhDoredUwjwO44v
	QeRSe3pZhCDqU099ZvTWJb0AcPaaRpOthkNr3VQ/VkxPKKr4qmUXi04Y55ROeN1fHN5QDB2m1LJ
	ZnAliyTUJhbHwFRUbXDEaZ7Hmh2NHIxzUIs1zMacqGPsACGWzU8BeSJ2he4=
X-Received: by 2002:ac8:5852:0:b0:471:9ad0:9cc2 with SMTP id d75a77b69052e-4719ad09d04mr9899411cf.10.1739205134098;
        Mon, 10 Feb 2025 08:32:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECQbeD0Elon8YIvNJ6FOZ4xgWrOhjbb6XFnJ6XLJ3Ft6s4VlucVZP20dQP1lS3ytB3OAZAtQ==
X-Received: by 2002:ac8:5852:0:b0:471:9ad0:9cc2 with SMTP id d75a77b69052e-4719ad09d04mr9899271cf.10.1739205133726;
        Mon, 10 Feb 2025 08:32:13 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7b5d8d4a0sm353484466b.159.2025.02.10.08.32.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Feb 2025 08:32:13 -0800 (PST)
Message-ID: <a3f7bef6-bfc8-4a2e-b979-4aac7908306f@oss.qualcomm.com>
Date: Mon, 10 Feb 2025 17:32:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sm8550: add missing cpu-cfg
 interconnect path in the mdss node
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-0-54c96a9d2b7f@linaro.org>
 <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-3-54c96a9d2b7f@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250210-topic-sm8x50-mdss-interconnect-bindings-fix-v3-3-54c96a9d2b7f@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 8t5D8my39rW7djUfBZGynK-TZMLRCRgG
X-Proofpoint-ORIG-GUID: 8t5D8my39rW7djUfBZGynK-TZMLRCRgG
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-10_09,2025-02-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.19.0-2501170000 definitions=main-2502100136

On 10.02.2025 10:32 AM, Neil Armstrong wrote:
> The bindings requires the mdp0-mem and the cpu-cfg interconnect path,
> add the missing cpu-cfg path to fix the dtbs check error.
> 
> Fixes: b8591df49cde ("arm64: dts: qcom: sm8550: correct MDSS interconnects")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8550.dtsi | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8550.dtsi b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> index eac8de4005d82f246bc50f64f09515631d895c99..702b55296b18ff2f8ea62a3391b7de2804aa9f65 100644
> --- a/arch/arm64/boot/dts/qcom/sm8550.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8550.dtsi
> @@ -3020,8 +3020,9 @@ mdss: display-subsystem@ae00000 {
>  
>  			power-domains = <&dispcc MDSS_GDSC>;
>  
> -			interconnects = <&mmss_noc MASTER_MDP 0 &mc_virt SLAVE_EBI1 0>;
> -			interconnect-names = "mdp0-mem";
> +			interconnects = <&mmss_noc MASTER_MDP 0 &mc_virt SLAVE_EBI1 0>,

QCOM_ICC_TAG_ALWAYS

> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_DISPLAY_CFG 0>;

QCOM_ICC_TAG_ACTIVE_ONLY

w that

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

