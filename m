Return-Path: <devicetree+bounces-130391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 264DD9EF6C2
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:29:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F72F17B0A4
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 17:22:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 129892210EA;
	Thu, 12 Dec 2024 17:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HjesebgB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85B1B21766D
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 17:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734024154; cv=none; b=COelVFYpwUJLDP8oaqzq5liy8HYqbC3AvGPneRntexaq/SmZzhPBvv7NYXKIFxUB6TupW1POnYeIDv5As5i/8svsYS6eFj1me4y9dE9Ydd0YaojCLsc14i+5N4do35FjypGi+A89oq7dM78wdsIq7eG/eSFhkKdz8lBVPx36ZMM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734024154; c=relaxed/simple;
	bh=RzhQRZVFYQhLnpEqkHEQLdhOVQLxSSPFxiLWiauqBoc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=m+twcVqI+9yRmJ4re6zkez+eEKBBiqco9iO8wf6GlfT5IyOkraF5b7uLatj584zCA3ZX4LQyrVJ64qDx5D5m5c9k8NZfN4zxDi6EiQaJl649gKOirpYTMsIA4iIZpsgB4/U/mPpOGjvu/lzMkRfBuHERxY0H04FpOZGhQXtzDPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HjesebgB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCGktIW032358
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 17:22:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kXI/rMwXSEtNCPJzmcPZTN62CU/qS5wBtOEw8hBRpg4=; b=HjesebgBHZtRhf3M
	VPqsjiVCwCD6w7SkCqMshw//P2dgEPvm/RdVYUt7SLj/m6tK+Y4Qg8opOCXPnRjY
	bjk0x3fR9G0y1a9nZGCvPIybQ1/ERSafIVxMbFtatoUOAuTPdqwgK5RDW87/tT0W
	+5Mx4D+2+SuI/6VJL/u46vAkuwL3IwzjA4sInrzSWdRxKQDKnEc3BHPT9iJkmxlE
	TLGGACVeFvaBoWvhP0XVDPcq7OZYKETts4u4xt4/hFs4rPd2Z7KhBH5PcM64dbhF
	jTsarWDgleoepFHWYN4bOdk2pAJnMQIrOBejRFWIJR1ZoDMzIPZbMwBYe6vCbSR2
	A9ErWw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f6tfcyd4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 17:22:31 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467a39f07f8so12051cf.3
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 09:22:31 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734024150; x=1734628950;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kXI/rMwXSEtNCPJzmcPZTN62CU/qS5wBtOEw8hBRpg4=;
        b=GAXLovq1elqKiFkEyawkYsIlwOJiataMlWfVHPJx6qEb3zZS6GmiY0ssZuqM2ypYh+
         Vf1RKkeTCmBm/vMPHjkB0puIhKWGIH4MM0ccD+II2F3bOtFvvLuV5mGknWQh2Ns+1Bna
         Qx2ezl+8W693fgobDwrODMP8/Hilj+fBEwL3lRzgc0sbqU4yo72u6uF9ya+dVpCkXC6Z
         Vry1Vz4owfnb2QC/CcIYrLbFAVTU5DmbCVEYtR+56UD+5AfwxPKqd4ncwgqjuPw8JDI/
         AX2aSninTQdGkH2Lf9GkczUY73S34RiWwqCai/lHwmzKjqy0jrWJX5L3l50JqsxMyIAc
         paDg==
X-Forwarded-Encrypted: i=1; AJvYcCVeUgdyXP455FO97KLPBaznkNBibFTSyLcZLnfUlbrWt130a7eBhAiQ3K40j/fib6gPqHnXf44rerGw@vger.kernel.org
X-Gm-Message-State: AOJu0YwZKw3XRNrDV44vVSJEIwCEORow3odYX/UeGtTgL2miDhCgH5sp
	9CPUD33ho/DV+WpVnywBlEPSI785uj81fCYEX+66QOxR4EMd5zGL3XR+IM3iT+bich0YKI8mdwu
	y0ft90bNqG80RrO72hvVSVB/oYNJP8/j76YvvkHb32K3CJlOTyQjofCLTY8u/
X-Gm-Gg: ASbGnctBJS+IhqtlHi60cKBZbF8FCgt0Zg7ykkV+gqhQ7cT6ophVH8zUX/LefDiAKfP
	sVAG6MPueZrFS/YNDnObdEtHG4KvdEXdp01v9eVIDS2M4i2xzQt5iT/pYe1JYLEuDUqTq8xPA4o
	3UImE6sVKDO9gjyq1bDgknVRL7RP/g+voiQ3xuJX9OGhDsYuuUTi1q40ZmTuoF6Pk8wSw5MkmuG
	tzOgESBMoGNS3/c1+QdyKQaaOqmy9xUx9+28Z/3JSp7ciUCzoZu7vWdnripWdRdib/tVBYNjCwU
	ir3ZI+gQM8Uv9fxxl2N0cDfQsZoqy00pc3UicQ==
X-Received: by 2002:a05:622a:14cd:b0:467:5931:f6a8 with SMTP id d75a77b69052e-467a169b447mr6579951cf.16.1734024150506;
        Thu, 12 Dec 2024 09:22:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHudtOde+f8IPYAkK5rDmanvroRSGDkZDifNKDKSR1bTTXjCRopc+9Li9B48WzjRmEYTZPfGA==
X-Received: by 2002:a05:622a:14cd:b0:467:5931:f6a8 with SMTP id d75a77b69052e-467a169b447mr6579811cf.16.1734024150105;
        Thu, 12 Dec 2024 09:22:30 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d3df2fc65bsm7743885a12.54.2024.12.12.09.22.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 09:22:29 -0800 (PST)
Message-ID: <ae57068c-5d73-459d-b319-46a582ed7f3e@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 18:22:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 14/14] ASoC: qcom: sm8250: force single channel via
 RX_1 output for qrb4210
To: Alexey Klimov <alexey.klimov@linaro.org>, broonie@kernel.org,
        konradybcio@kernel.org, konrad.dybcio@oss.qualcomm.com,
        andersson@kernel.org, srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com, lgirdwood@gmail.com, perex@perex.cz, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
 <20241212004727.2903846-15-alexey.klimov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241212004727.2903846-15-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: CZLVTrKrYX_oZlCQa6fJiWhBS8NgkRvx
X-Proofpoint-ORIG-GUID: CZLVTrKrYX_oZlCQa6fJiWhBS8NgkRvx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 mlxlogscore=747 malwarescore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120124

On 12.12.2024 1:47 AM, Alexey Klimov wrote:
> In case of mono configurations we need to enforce single channel
> output. This is required for audio playback on QRB4210 RB2 board
> since it has only one WSA8815 amplifier.
> Implement data variant for qrb4210-rb2-sndcard with
> sm8250_qrb4210_fixup_params() that does that.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

Would it not be enough to set channels->min = 1?

Konrad

