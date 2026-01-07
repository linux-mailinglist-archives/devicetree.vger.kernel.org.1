Return-Path: <devicetree+bounces-252380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F028CFE2D7
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 15:09:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DFDC33042FFE
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 14:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3C2832AACA;
	Wed,  7 Jan 2026 14:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ldoPIHBj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Ym8co7kx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E2132573C
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 14:05:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767794746; cv=none; b=gT+ei9T3Pu6e39sT7wN9Ufa+bsyE2xr4pH1LIUywUrchPJDkm0xHYV5WbGdh9B28F7bgXnwvtWd9sgX4xLKWMnA/N9pvyh+xfZ6Cyv+l7eb0Ivsxs8YuWm7W1aaum1V+W/jFrgnX0XaTNOlkT+BeUpdToUz/LiTEwQQwpEv0Tcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767794746; c=relaxed/simple;
	bh=kHO1GfgESNMw3/GQ6yHWd3+WOk49vjbI2/ozirdvW5E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=q5dLjusudcQQkM4cxCjZNyyQXOxtawFUBduoacT3vqduTPdQe+GiRA5WqsOtDwPK5qheblwOwcrfYIcZpMoH2dI/w2vaoeGC7jtIDgDAH8cdU6uSdoz7lFBDAq+SxukY3FIG3Jjvd/8l9s0CkQln+JDkNidbMrSnLv/QpCl/ibg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ldoPIHBj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Ym8co7kx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079cMsJ2877823
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 14:05:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/dYPUxZoqHhXGVsRsNUTNCnu3BPPm6di+RgA5mKj+Cc=; b=ldoPIHBjr0J4Kklj
	EQjEnUa8ADWp9M7lYVVQn39SuIKTOBnYVM+rnhq0BcizUeNc5pmtXvvvucdhRNAL
	eLxUu+pIDjBKo1JXCE8V/3aLZyN0sLl1eo3vDPGBP0ZXoNHe4C8wWTKIRBmUPYiz
	vtWqBRa4AGMmBRui9uWMmpfJRTq4sCzHEdUOXDKybVXNwysnyfblEcjA8X5P88Fr
	MQoS57S+Yp4tigvLlL7s9r+aw6edTjYIRzjjypt8NOpCHMCL8EzS5dHw2wvyhAhT
	O/KByy83gabv1tWoPgonqHidobYG5nOyzvr51B/ABKtXH6cbaenHnlrpKUFunK30
	gc0uaw==
Received: from mail-yx1-f72.google.com (mail-yx1-f72.google.com [74.125.224.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn1crrm3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 14:05:43 +0000 (GMT)
Received: by mail-yx1-f72.google.com with SMTP id 956f58d0204a3-640e5edbce4so561953d50.1
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 06:05:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767794743; x=1768399543; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/dYPUxZoqHhXGVsRsNUTNCnu3BPPm6di+RgA5mKj+Cc=;
        b=Ym8co7kxu4kHRYS1ppowsVLsEFkm6iB6xG57yhL/abqECM1+9Tmvx8+B0aEsFGrlJ/
         jipKipB/3NBJvFPXkfpo49MaPvnYzcB1iHGUHYw/iiwDDYGwpPFJxSDWAu4x1Vy/HTxb
         uft6HX9C24NVoRLJ9fcnMMwDr9pzBsQI36nmbsigyemlECdFX2CVlg8AwUYW453lMoLk
         WmmlXzhrT4YABbNQDeN/A+5sDUqT+05jAMcvbLYrqx7wbcWswq5nwIAlqr2LuAfdELkx
         9iET5PGiPrmVA4zSvA9Dgs7EGMxPGzv22U5eg2K0rlubF1w+cMiZRFItOagyU6zPB2S1
         5Dgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767794743; x=1768399543;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=/dYPUxZoqHhXGVsRsNUTNCnu3BPPm6di+RgA5mKj+Cc=;
        b=WDDtDVuasrm+mBcFxFXfKRUoz54ZaCdmt+xwguHzZUvrm2CfiHpubPxEYy6pQGK2SV
         lw111VCfm6bxqpkn9n13pUkNWjk2y7ZlNUft2JaXpWRAPLBs4eet/85465HaDFDYaDex
         M8EgRzoVAgBVwM0S0WFGkSSFuwP3lYfNd3vvgce2G8lJLiUJaOf6kGdr6CO00Wyg8c7y
         Kkse34Zbmz3OIeygDEx26BykVlYLsQ8zt5mWwHw4+lk1+hU345Qj4QqXqsQy2cgT6pQc
         F55kWHpblLPGenqIRaRi00Rbk4atiCf/1vKnUheoIhwed+tv3aBU4wq/xEe7ojwqdQkt
         4nNg==
X-Forwarded-Encrypted: i=1; AJvYcCXU9RIxU52S3xj6bBBtNpwske/uUil8qmsLW4B6Bd7D8VIl/Cf7On2i9e0Vr8tKNMVAO1po01uGk2s2@vger.kernel.org
X-Gm-Message-State: AOJu0YyxKhwef3f6xkmPfRejsCGsTlm+ogW2K1nyyR0V0xpQ0FTlIN7k
	wQnBKM02pP4WUmxVFsK7090Mm8x8VT9j1YoXUKJXJWOeYM2UtTtJr8BOrZx8w0qPpDhJ9tDoTaD
	0J+H3QnZcKOV9dXPp3X91LWv89t9RAbknjAXIAT4RddRG/iN6fPSmmzrIXRmynLJe
X-Gm-Gg: AY/fxX61+q2svJNkcnbPcIn0vPKPzcip0v8ZwLLkd1eNjogK2yqdKKmSOV2vuj4t0b+
	Kfw4cSctyfOsD7V3vlDpkE2hD8+wMLw9/OdIUZs1BsYao+rMdKPx5ZJtVrbVx91deoXmhSB/1N8
	ObVjesVWQThum/BElmnDXcMm6yRDhBg63KPgJf24Wcy0qtIHJ/Fr5IkI5vLTqAAU/muNpnJ3BAR
	94hoVKuHUjchhN7d/zeV8k+s8AOu8/AkW0SVGQ8s/Vny2A3+H+BbGY4PsctXt5whfZwbxSgrrQ1
	/GIhBmuPNoSusWK8tufQpIaQDb7IWUF8Yf4eX/VEui2rP2ZL3BXL70STAXqKNW1aRfeFKm6liqF
	UTXQd4ElvKEVcuolfNgT5G76r9B0CCR3+RAi5R9Pr4cFY4VU8GBcNo9wF/0Euqp/56C0=
X-Received: by 2002:a05:690e:161c:b0:63f:b410:e8d with SMTP id 956f58d0204a3-64716c7da8cmr1450656d50.6.1767794740178;
        Wed, 07 Jan 2026 06:05:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFuk8dtNnNc7djajDkI2qFNJzxGYcVWgt4Hwy4aMZohg0n1wAnt/4mZtVfjRdh0tsRspfFjoQ==
X-Received: by 2002:a05:690e:161c:b0:63f:b410:e8d with SMTP id 956f58d0204a3-64716c7da8cmr1450573d50.6.1767794737711;
        Wed, 07 Jan 2026 06:05:37 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b842a27c755sm527241966b.18.2026.01.07.06.05.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 06:05:36 -0800 (PST)
Message-ID: <990bc3d5-40d7-46c8-9e14-192aac7fd2cc@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 15:05:33 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] backlight: qcom-wled: Support ovp values for PMI8950
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Lee Jones <lee@kernel.org>, Daniel Thompson <danielt@kernel.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Kiran Gunda <quic_kgunda@quicinc.com>, Helge Deller <deller@gmx.de>,
        Luca Weiss <luca@lucaweiss.eu>, Konrad Dybcio <konradybcio@kernel.org>,
        Eugene Lepshy <fekz115@gmail.com>,
        Gianluca Boiano <morf3089@gmail.com>,
        Alejandro Tafalla <atafalla@dnyon.com>
Cc: dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Daniel Thompson <daniel.thompson@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-fbdev@vger.kernel.org
References: <20260107-pmi8950-wled-v1-0-5e52f5caa39c@mainlining.org>
 <20260107-pmi8950-wled-v1-2-5e52f5caa39c@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260107-pmi8950-wled-v1-2-5e52f5caa39c@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDEwOSBTYWx0ZWRfX8Zl2U09lVLLI
 9JHfEYzTMpE3QlPP8evZ9msNijkYtQ/IbOHt/89BVEYkek6g3S0BppdYzSntsm6TKuOMXCMjaYy
 Oy46sFh/sT1OuDZEnXCDKDSl9VBwjEMy5wlVWUybEcNHsiNt3kxgbUuzZbi9+E7ZSuyjIDBniT+
 REYtPg79aJUCbtyre2cWLiEs3TDZETmO4vkIZne0LBWK88XqGunxm9/SihVPu/V5fzPpVlO82wr
 H0jjLLZcRe4syc0TvfdMgSmbh98g4yYEVADciVGBJi9+S5awG17GyrI/9WN76oS1qYskmDGbDaL
 dGmZi9anDDy+mZSuKS3W+97lKH5UmaEux27uBdlJETwe4+hXZLPVpBDZhQsx2ghIPcvNXMJ8Oys
 3hJwfpuTkf0lJok+DiE1C8pJ34JmD4+YlLAhfv1wIQFAJ7VhNwforr5FS1snYwMzkIgrZ1czOFW
 ZqTdmpomNmUBf9XnbSQ==
X-Authority-Analysis: v=2.4 cv=INwPywvG c=1 sm=1 tr=0 ts=695e6837 cx=c_pps
 a=VEzVgl358Dq0xwHDEbsOzA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8
 a=M3M7KMW9Y1EPzfeyKr8A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uujmmnXaIg8lM0-o0HFK:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: AVFGAmslT5LbisaTEPRbu7elgIKi-x-e
X-Proofpoint-GUID: AVFGAmslT5LbisaTEPRbu7elgIKi-x-e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_02,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 clxscore=1015 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070109

On 1/7/26 2:31 PM, Barnabás Czémán wrote:
> WLED4 found in PMI8950 supports different ovp values.
> 
> Fixes: 10258bf4534bf ("backlight: qcom-wled: Add PMI8950 compatible")
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

[...]

>  	case 4:
> -		u32_opts = wled4_opts;
> -		size = ARRAY_SIZE(wled4_opts);
> +		if (of_device_is_compatible(dev->of_node, "qcom,pmi8950-wled")) {
> +			u32_opts = pmi8950_wled4_opts;
> +			size = ARRAY_SIZE(pmi8950_wled4_opts);
> +		} else {
> +			u32_opts = wled4_opts;
> +			size = ARRAY_SIZE(wled4_opts);
> +		}

I really don't like how this driver went about abstracting parsing
all of that, but that's not your fault

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

