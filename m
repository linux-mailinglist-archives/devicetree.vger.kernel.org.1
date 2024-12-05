Return-Path: <devicetree+bounces-127576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id F38979E5C08
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:49:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A8CB028F34F
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 16:49:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BDC8C226EE1;
	Thu,  5 Dec 2024 16:45:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j0M1OxOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 367F721D5BE
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 16:45:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733417120; cv=none; b=EHjcuBwTdayZDrqy7yrVklQNowuw33qsnMgc3y8f+OcoJRPwuHi6893wfKfAMH8s2J8D6EXzzswJBSExZ3TNmfTeqa3K7ZQGl06jAiPoiAW8ZUHPx0wqzU27ndGYA3bopqKB9uX6vSiUEgxVMRQZa7s4ndyvtinF+hPSuiZLDQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733417120; c=relaxed/simple;
	bh=pZ172ATfsfJ2BQ37XPU3FqEzURxmxw/78IvOUTlorVQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=taETAMGdIXyFBhucax5qgILAyuOL5gdPEXohp9rlzxZKZDmQsFbLpm5BphD1iu7HXLj0T08SI0IF8iBUwoQFzj98VQ0XqpT/ntIADS5ElSx/+XY2xgusal8gefwgyrlsP+AngF1MkztyB2rI5Tn1uhVbGhljMlTGdOLLuHKFn+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j0M1OxOo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5GSF9Q030963
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 16:45:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/C/FWedH2R8A8Hc+9FjqXWKobRD7gLjrdaMMk5hTAQg=; b=j0M1OxOonQqe955M
	gmabG0U73860SAAdv3XU7eEwgSgPhIwHGS7HQZTA5SQw6TQT5/rTFvgUZpV7j9tK
	nVZN60vdwWL8iwTp9oVKdI0drxX+j7IcuoszPJrlaapQ+kWvnVPD2v885HpgwrnJ
	78zKYuOAg/2GUDnAnJC7KW1FCPJucqYM5EemYAWNRDdlUkS5m/y6uXBp5H6aE0fT
	JI3xI0weJ6RtFpI7UQi9I4fa1OwcQQGQ3MaeKaO71qPGpkc0nbh13aOI/suwIniv
	jR6ZULQweDZdh5uaoRdeerVwvwysnZ1x0nazzLHN8oq41CYP6dU5/7CG69jZH2jV
	N7Us1Q==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439w91095f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 16:45:12 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d883e95efcso3225396d6.3
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 08:45:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733417112; x=1734021912;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/C/FWedH2R8A8Hc+9FjqXWKobRD7gLjrdaMMk5hTAQg=;
        b=H4K9fNApiJdFu+wRePHW9Lk2nPMa59N/kSn5rJ+Lg5qSnjlAopI5WxHZa2rrzC7wYv
         BjnlpX8qP/7d7lWZ6Iyvf++l6esBDrtneBoaCfluQiouQmjK7LpsclAMXK1ZhmwqUv4c
         PB+nE+EktWA9WwCULPCVgVFpjA8f/nN9447HxnBp0zrBZaHOTdUTiaTelHLFm5Cqe5f2
         KjxNkkbDMKlEw9FN1/zT5leuS3yk9+8ivnGQZKztYGeDZH4pz4x8zbgvEp1lVUB6YD1X
         6B7J8LzFX9+EnTKpHaC7WQKJUO8hkCTOQlGIiErWBnnIqEYLIMYRgda+d0SdOTBcz+FO
         37Jw==
X-Forwarded-Encrypted: i=1; AJvYcCUm0KmuNOesYuPwcmLoNAu2mGaD8oR5d5oyQcv/lKzpbNzl0cGhXwHElc6W20ZC0a8kMgQ9ZhbFmvf0@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo4QAIewiVKF55V3Yku1hK2CO4s+b6Q7P3X/jqDuG7DojueW2a
	+7ppi4zf4ub2Km6mLaGgu1Eev4kxrUW14/E6irQi3DD8h1fp8lxa5/01t/8YFc5HYQA7+qP2pde
	O4aAFJ3wfXcaDE1gA2vH61zp+vbTJlpupnKzOs4mWLgUZO/7YHYAIFKpgK+5U
X-Gm-Gg: ASbGncvCdBBl4DE08+W60Xln5j8lrvOhmo7XdB3ywuQRX2L79MIDuNH3OQwSbOqCoQ9
	Wdh3+i4mSRrGuVz3aVd7C4X1mc2dy6eowx42rqOCLr9nH3sWJXzlBuv9Z94VCoJXhrHox8eLMKP
	pMNVcOD1bPqfLK0KJQcF1M/40HEvswj2051pjOAAM9wdIeJIyLii6ytcWRraWl7iOFkkLbgdj+G
	bAOzmdnEubX1THEKIl2wk19VBEgo3eKvwHb/NEQ5m3MohS2ArI4jRI+OB1TKP7j19oZrghopyCe
	bUJYQrcoUcd1RpOZO2tSqMWg6tACWdE=
X-Received: by 2002:ad4:5fca:0:b0:6d8:a5a1:b14b with SMTP id 6a1803df08f44-6d8b72eec6bmr65772276d6.3.1733417111864;
        Thu, 05 Dec 2024 08:45:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHm0uGog8HsgJ3rIQBC9bvmmITCftd+KZF3JVpTwKemdKnbxp9/YQCrIOez+txCW3LKU/3shA==
X-Received: by 2002:ad4:5fca:0:b0:6d8:a5a1:b14b with SMTP id 6a1803df08f44-6d8b72eec6bmr65771926d6.3.1733417111373;
        Thu, 05 Dec 2024 08:45:11 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa62601b5d2sm115958266b.93.2024.12.05.08.45.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 08:45:10 -0800 (PST)
Message-ID: <c703e70a-c705-4010-8f12-bb55d67f2255@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 17:45:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 12/14] arm64: dts: qcom: sdm845-starqltechn: add
 initial sound support
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sound@vger.kernel.org
References: <20241205-starqltechn_integration_upstream-v7-0-84f9a3547803@gmail.com>
 <20241205-starqltechn_integration_upstream-v7-12-84f9a3547803@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241205-starqltechn_integration_upstream-v7-12-84f9a3547803@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: EgYMUw4HE8ywrB5g9uJh9kS0Hhm2FrWM
X-Proofpoint-GUID: EgYMUw4HE8ywrB5g9uJh9kS0Hhm2FrWM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=937 bulkscore=0
 impostorscore=0 phishscore=0 suspectscore=0 adultscore=0 mlxscore=0
 spamscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 lowpriorityscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050121

On 4.12.2024 10:34 PM, Dzmitry Sankouski wrote:
> Add support for sound (headphones and mics only)
> Also redefine slpi reserved memory, because adsp_mem overlaps with
> slpi_mem inherited from sdm845.dtsi.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> 
> ---

[...]


> +	audio-routing =	"RX_BIAS", "MCLK",
> +			"AMIC2", "MIC BIAS2",	/* Headset Mic */
> +			"AMIC3", "MIC BIAS2",	/* FMLeft Tx */
> +			"AMIC4", "MIC BIAS2",	/* FMRight Tx */

FM - FM radio, or "Front Mic" / earpiece?

> +			"DMIC0", "MCLK",	/* Bottom Mic */
> +			"DMIC0", "MIC BIAS1",
> +			"DMIC2", "MCLK",	/* Top Mic */

Looking at some pictures, I'm guessing these two are the little holes
in the top/bottom edges of the device?

Konrad

