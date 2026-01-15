Return-Path: <devicetree+bounces-255796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 74136D29330
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 00:12:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E9DD43007C0D
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 23:12:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBBC632FA20;
	Thu, 15 Jan 2026 23:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TbrH8Ljd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HPOsb2ep"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9583329B8E6
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768518744; cv=none; b=js5+7ENWhegaDdexLCpzOB5WCg2BjLNvfNThzSnWmmodVN87OifV4dFQx+h7mXyWZSvo9wn4ZI/A8/Oy12cRm/4toBF5LwvXr4kY4mczhAjSrtz8K+aCZFQTBrIMuyszXprjmQdtpQvkgfB/UHEixyBXsz0OSuHPW4Z3MX6Ufdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768518744; c=relaxed/simple;
	bh=+vYCoxBlHCmIb9+N8+clsz4ZqJCKn++evp7F1k1dWwk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N4ZvndFBF54FmqeASfDtw30Cwd3xjJLAE1eLPAiLoUjAjcxPV8yOfX/wEapwyBogedAqeDVWadRbwMY+LDdHEzJQnGavq8pXVzHd1c74tj2l8c3YV8WEaqEflIA9glZdcSF3G40PNiKAPIeteD9weOEh5eya6aFk8by+2qfv+CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TbrH8Ljd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HPOsb2ep; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FMbaw23596349
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:12:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cvaa1/tuwQc8fuxNHVmVUCj7wH35/l4L0WpGJwMFaIs=; b=TbrH8LjdaYzw0BDP
	zBbrhF2vk9OHDMhRmgjMH97zr937MTa1+gKzwgIdPHILykOje2irunIABizwcvtp
	5kZiV4+YfjaUrewFjX5y/SVy6IyiTIKzmZaa09i1LKptaQLVTO15Rk1K2vTP3Cd+
	YzCwAdXM6rW1gwSKEmch7TmfiA6Q3pGY4enuAJlm3gj58Y0qjSdy2OIl2x6XCnmY
	SkGSTi+72sVkBW5fvWbRVjAlWijccbPjq21BMPx5EQyvYJj7JnMW0DYdjVuzDur3
	/Em8/WEmwDq9Lj2x/GdIUOZ4PB2tZugDAdxRpaGZQhCvKzN7RPYsktkjyXul4gzs
	TFx9EQ==
Received: from mail-dl1-f70.google.com (mail-dl1-f70.google.com [74.125.82.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96rr2hw-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 23:12:22 +0000 (GMT)
Received: by mail-dl1-f70.google.com with SMTP id a92af1059eb24-1232dd9a256so2255005c88.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 15:12:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768518742; x=1769123542; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cvaa1/tuwQc8fuxNHVmVUCj7wH35/l4L0WpGJwMFaIs=;
        b=HPOsb2epS1NzQWw/DQym7HtHS+OY2bFR6SZZYp8/uXNFObtM4kiIqwWQG5UFyikJ+U
         x/h3x+GpUf+fUtEaZm8s34B1IK4Y3t2zglTkkl4KqFRqkWPBf8/dY9U61BWR2t5AlCET
         V1MM4SbtknVfFAt0J8j8xLzn8FcSqfkmryO4MkdLiKIQhuVL6yOoT950sK/3ujLOcJ7J
         th1epjyrAK67cXzeA3xoyqxv/HuxgiZzu1kTsmeV0dAO9l8pxdBYv5FzDUdgu7fzUBNj
         VxsqqIefu1LIEEicv3V0Zv3eJMs+LoAJrMZSppYmicW54ov7l77jEHtxkWTJ5sAlYbkh
         fWJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768518742; x=1769123542;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cvaa1/tuwQc8fuxNHVmVUCj7wH35/l4L0WpGJwMFaIs=;
        b=ly6eVYePrT2CpdyM8nRm9Ic6rJ95J5FwukS9bIvNZ5Vj3kvnZkhi5aTwvBNeRHCajB
         4Tsxc+QdW5Igy20rCXn5ymFOomMZxwqeRSDb/EMp+evvEafg25rkMJ/lwsL1flkuXrTv
         oy7BWOF5EAywjHiMqONjFgtNTRYylDKmncrh4rbrzFsNTd46H0ZcVpUeW9stCqKQ+b/K
         9zpy1dzHMEyDUv7fkSjvtmtwQNgPM4qe+x+eRG84GKfBMRHFmxHPba8IYRaud6m6Ghgv
         lstr65/09dSHp2VHWmwpSnGVd6QxcIt0n+ZOU8/LkXTqEYsg9yVYYWRkKFQoMcs0bdee
         Mslw==
X-Forwarded-Encrypted: i=1; AJvYcCW14nDGklV62835Wh/nb6yjdVBQBQspw4SmgLrLXR/5gUKEhSzvfX4bRlYD9XmlPCRv8r95jdV2W/wG@vger.kernel.org
X-Gm-Message-State: AOJu0YxDOUKO8Syf7eNzMjLgrGzqkYQDZ/cowEUxCf4tfZ+Fxu16XqLB
	vqtzMdKiZAoNWf22hEe/U5ZjAR/qTye7/hfbrxrAHCo5FfbfhV2qeKAM8aX+xxUYEioF5jhktxM
	SCuIk4sqExsohFG7tnd5EBPOpy1EExKku5+Ystv59vEhGwdPTY9iO/rJaqTsh6ac7
X-Gm-Gg: AY/fxX7aMHv4K4QMKNiXLbspPMVf95RUL+096mLN5fPhw+4JG7LOlgZoAUb4n4fJvCs
	CXp1E0Xbt6FLTSzza0XW+tqOdq29oG+c9gBcJR0Qsl4qoN5gELkaXGLZ7ilPC/zjGGpeF9Ki6lf
	X6TRPQjmS1GnnCDfEfZ7pzwfBRqp69jb+C2LHqkNXG8uvShvZKFTmGSxGIw6/VcZnpi4UCe7soT
	dYsmvbjTXm7N2ybTdbicvXW31DrgQnI/3Tewfu0KERsDGxgwY0cbLHf2vBY0+p0wf56TjnRPrWO
	4fvYWXxZf68fC3MlEXB14rB7qmekS0FL3k6Ty51ungrOGKdku3wrsv5N+WE2ZetXOffze68UEoP
	dJXEwqG0nwYdtbhgNrT/S2bF+ILPmDdKLHmvEqVhMKRwfPnqXMc0RxLlwHUFxVh/8deU12GKiUx
	9g
X-Received: by 2002:a05:7022:6708:b0:11b:9386:a38f with SMTP id a92af1059eb24-1233d10f432mr4751903c88.22.1768518742041;
        Thu, 15 Jan 2026 15:12:22 -0800 (PST)
X-Received: by 2002:a05:7022:6708:b0:11b:9386:a38f with SMTP id a92af1059eb24-1233d10f432mr4751870c88.22.1768518741492;
        Thu, 15 Jan 2026 15:12:21 -0800 (PST)
Received: from [192.168.1.3] (c-24-130-122-79.hsd1.ca.comcast.net. [24.130.122.79])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b6b351e38bsm691860eec.14.2026.01.15.15.12.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 15:12:21 -0800 (PST)
Message-ID: <6db7a42e-7f12-499b-b36e-687ec93b2e62@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 15:12:19 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 04/14] wifi: ath10k: snoc: support powering on the
 device via pwrseq
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
        Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
References: <20260106-wcn3990-pwrctl-v2-0-0386204328be@oss.qualcomm.com>
 <20260106-wcn3990-pwrctl-v2-4-0386204328be@oss.qualcomm.com>
From: Jeff Johnson <jeff.johnson@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <20260106-wcn3990-pwrctl-v2-4-0386204328be@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE4MyBTYWx0ZWRfX1lR57ZULhlGC
 F54mpFGaJMCOQrH7MnpXQqbuun65UWmvOanMim64PD7+iO/ZElk/iAX9dbjFYaFaIlUSIUWyIHa
 I70DOmxjywNOBybRGxiAMYmFmXLSCwqoCfxmX1QTMkxAYszmCEcRs6KR+GHctTTMKoY9Z4bhzra
 2rxajvqKefeisfLU7uvtBSidx0/Oha1priWM1CXjAFFxbA8lPIQ1lTQidYG5y+IoRZj1mHm+RkS
 sOXQ3VH8c1i9ornZVDtCLaJ428X2O8HO1VWTWtgquSxKLvNrP1GpjsZHts+krDm0+xh0arEVYfJ
 xkHb2vbpl5VhqA4oi8oMDrhZULBzPvX99rgXkBsKiXjLhC+O/dv3DIOu1mrNOVeuqIjfOSsLBTa
 S8qthBgIzleBzgIDFWWrHF5NkePnK0tdAFJdJUrhUUxEQjBRNtTeZGQhsEqKiGr4c6zSXgYttQD
 AEV40xJvIDuqe70YqMg==
X-Proofpoint-ORIG-GUID: v8oZLAZ2YQxgPPptEdHHweJ8G_USn9Ax
X-Proofpoint-GUID: v8oZLAZ2YQxgPPptEdHHweJ8G_USn9Ax
X-Authority-Analysis: v=2.4 cv=TsTrRTXh c=1 sm=1 tr=0 ts=69697456 cx=c_pps
 a=SvEPeNj+VMjHSW//kvnxuw==:117 a=Tg7Z00WN3eLgNEO9NLUKUQ==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=eymIdBAbIQs2YkQ4F90A:9 a=QEXdDO2ut3YA:10
 a=Kq8ClHjjuc5pcCNDwlU0:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_07,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 malwarescore=0 phishscore=0
 priorityscore=1501 bulkscore=0 suspectscore=0 adultscore=0 spamscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601150183

On 1/5/2026 5:01 PM, Dmitry Baryshkov wrote:
> @@ -1023,9 +1024,15 @@ static int ath10k_hw_power_on(struct ath10k *ar)
>  
>  	ath10k_dbg(ar, ATH10K_DBG_SNOC, "soc power on\n");
>  
> +	if (ar_snoc->pwrseq) {
> +		ret = pwrseq_power_on(ar_snoc->pwrseq);
> +		if (ret)
> +			return ret;
> +	}
> +
>  	ret = regulator_bulk_enable(ar_snoc->num_vregs, ar_snoc->vregs);
>  	if (ret)
> -		return ret;
> +		goto pwrseq_off;
>  
>  	ret = clk_bulk_prepare_enable(ar_snoc->num_clks, ar_snoc->clks);
>  	if (ret)
> @@ -1035,18 +1042,28 @@ static int ath10k_hw_power_on(struct ath10k *ar)
>  
>  vreg_off:
>  	regulator_bulk_disable(ar_snoc->num_vregs, ar_snoc->vregs);
> +pwrseq_off:
> +	pwrseq_power_off(ar_snoc->pwrseq);

in this function you conditionally call pwrseq_power_on()
but on error you unconditionally call pwrseq_power_off()

in the below function you conditionally call pwrseq_power_off()

so there is inconsistency.

note that both pwrseq_power_on() and pwrseq_power_off() handle a NULL
pwrseq_desc so is there any reason to not just call both both functions
unconditionally everywhere?

> +
>  	return ret;
>  }
>  
>  static int ath10k_hw_power_off(struct ath10k *ar)
>  {
>  	struct ath10k_snoc *ar_snoc = ath10k_snoc_priv(ar);
> +	int ret_seq = 0;
> +	int ret_vreg;
>  
>  	ath10k_dbg(ar, ATH10K_DBG_SNOC, "soc power off\n");
>  
>  	clk_bulk_disable_unprepare(ar_snoc->num_clks, ar_snoc->clks);
>  
> -	return regulator_bulk_disable(ar_snoc->num_vregs, ar_snoc->vregs);
> +	ret_vreg = regulator_bulk_disable(ar_snoc->num_vregs, ar_snoc->vregs);
> +
> +	if (ar_snoc->pwrseq)
> +		ret_seq = pwrseq_power_off(ar_snoc->pwrseq);
> +
> +	return ret_vreg ? : ret_seq;
>  }
>  
>  static void ath10k_snoc_wlan_disable(struct ath10k *ar)

