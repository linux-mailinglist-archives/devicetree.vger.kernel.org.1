Return-Path: <devicetree+bounces-134779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B80539FE8F2
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 17:11:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A17DA1882E42
	for <lists+devicetree@lfdr.de>; Mon, 30 Dec 2024 16:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6F6F1ACEA8;
	Mon, 30 Dec 2024 16:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UCJiqH/9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCF121AAA05
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 16:11:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735575086; cv=none; b=h1uQronnTZtMdT1yOhfrZhv1ez4bDYy7I/xzjYg7QMiwqECEaAY9TpzAANSownNfdOSXYcr/gHmTvlAU4cWP11+yqcxkz9Gxe+JlDq31w4cEUas/SxeZlkDe4NzHB5IMG+2Z71nXK3o+7P0fOAkeU+HQnafLIPMBP6zDHN0sEaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735575086; c=relaxed/simple;
	bh=JtCmiPvBP5gUbpCS4zWrWQBq6FGEw68MNkxNFmHNPGw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cbQN1JTbwA744HqIxsHlHI9XKG2KRobxR1tEmxx+iFg25/VgdUyUQMlV9i5S4nngRCxboeV8QogRX2Or0ORt2Kyemn9O1d+IrvoUEg/wG+Rshm8NB16t0sJ+pSYV4gOXIoJah9YsOff3eqMnMBJ4W5MCrK900Hk1smDXSGOVovI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UCJiqH/9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BU9KvOW024520
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 16:11:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ks3jFbBC7Vdbuo+s8/8nsb/ifjGqQncIJ1kwzj1u4z8=; b=UCJiqH/9DrhIv49T
	mUmjoEaeFrthywiCjP+inXx2NwwzMzhrvwS+q+qh+X5hr4w8wmyJzr+rC5QiAQfY
	v5whfMJGnMK56YcAQkdXfNOtw2V0Ka20YYHHc6wtkpP/kz/1clxkoF6fb0n5b0lX
	v8eOykQQNz1FqmCU+O0Jg21peImB6rXiKTtipgp8O+hFWdin+dIp6OVZXD5KAivu
	vLcypNTLfy400a+2O09jkSY2ejfY57NjNbmvny5HChIya/D4MkNkxELHEHh0Z13v
	ZpoovTj+2Cc1FAHL7Uhmwpx419N3eZVw75uGYzYHPFfRlXX/1vnE0Qw11nkbK9KE
	2II0dg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43urt88v0w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 16:11:23 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d88fe63f21so21834776d6.3
        for <devicetree@vger.kernel.org>; Mon, 30 Dec 2024 08:11:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735575082; x=1736179882;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ks3jFbBC7Vdbuo+s8/8nsb/ifjGqQncIJ1kwzj1u4z8=;
        b=Lwr3Twv8f4feLo3l2RxeniYDnS3qrjrN93iULxvDFGq7/1c/E/gcWXsdNi7jUH+hXp
         BozomFVD+xmePyclza1C085vZJVkR+mLNonrpQbfT1EhSyya2QW8eXL1MIJwgNCV1dab
         2htzIP7EuVVrVoisbYccxHJVzX51Uxs6UVicEczL9Jn9pnGaUhDVm4aEEoNP45ZFbCIg
         kVI3VuPlX0jPEuFRiB5+VbgIkbuI4a1TBPM8w8s22e6uFsLJ/QRx5qFIzFKcm1elDaY/
         nwZ9PkJyHVYgB1HmYXJrH3Q8/CadiWMiCfkgr/G0smes+7xE9NU+f2DjhrFSD4HLKTmh
         hvBA==
X-Forwarded-Encrypted: i=1; AJvYcCUbkUAPFhRkfIAwFYGfBqwi7YAa35jeAAygV6Fi3HM61Wgu5LLr+7phbBmmaRjVXHOw34bvTuxnk7YF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1dCBxe3TpaRrbFKarVazPGhIhJBDanyklh5hsvTBTJqLprzEO
	2VcyvAjgkqQMqx24weK1xmFXKQFWxOO+NyNy28nVlvCVW284ga0uJabbqNoR5/lCAMIhf7jyVtS
	WvzkPmzbUy6cObvRWyW1UFuZMkC0HeQINkF7zdugD3t4C50lj76TPJxKq+2LX
X-Gm-Gg: ASbGncuPAlhNLBiEQvE+W7QCFNNhLbyER+gdphWfuTjiy78BY92Phjm1VNyUldGH9Mj
	24yyRJmJ2DxUEnJYWuhub8hh2e9IJxZOVIWFEpacBetCDtkK4+5Zn6tOMNhEkSfSzlqzzLpU2RY
	XEea5xCgWjwMTySCMEXGoRLzGxaYYRVziDRfuFeWU6fm+2ZZQuGpRcBPwfNtogqsuFKMidn7OMG
	Nvnly+sBTZKfznyg3fAqSxeah2l1BO4Vq10RTZJNH+2shi5MQwPMZlGW6e/i/zcP0Oue1iDSgH4
	7n+/QeXYqi3eyfoEx2yoFNSgVI+GuBrDwNA=
X-Received: by 2002:a05:620a:2a09:b0:7a9:a632:48ad with SMTP id af79cd13be357-7b9ba7d3bc9mr1976755385a.11.1735575081775;
        Mon, 30 Dec 2024 08:11:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE2BVxJ+jl0wNFz54SkuMhcOIsWCBO+gH+vcL/CRqGxPgW44umlm1mhoWx6DWa8/uF2ZB/AfQ==
X-Received: by 2002:a05:620a:2a09:b0:7a9:a632:48ad with SMTP id af79cd13be357-7b9ba7d3bc9mr1976753585a.11.1735575081432;
        Mon, 30 Dec 2024 08:11:21 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0efe4b6bsm1493145766b.93.2024.12.30.08.11.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Dec 2024 08:11:21 -0800 (PST)
Message-ID: <8bea9d64-66f0-4923-8961-dbf06cae377e@oss.qualcomm.com>
Date: Mon, 30 Dec 2024 17:11:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/6] arm64: dts: qcom: x1e80100: Add CAMSS block
 definition
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>,
        Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-clk@vger.kernel.org
References: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-0-06fdd5a7d5bb@linaro.org>
 <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-6-06fdd5a7d5bb@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241227-b4-linux-next-24-11-18-dtsi-x1e80100-camss-v2-6-06fdd5a7d5bb@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: qXZLUE4bEnvLudt8SirnxePFJvP-ijE0
X-Proofpoint-ORIG-GUID: qXZLUE4bEnvLudt8SirnxePFJvP-ijE0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 spamscore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 bulkscore=0 mlxlogscore=961
 phishscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 malwarescore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.19.0-2411120000
 definitions=main-2412300139

On 27.12.2024 2:11 PM, Bryan O'Donoghue wrote:
> Add dtsi to describe the xe180100 CAMSS block
> 
> 4 x CSIPHY
> 2 x CSID
> 2 x CSID Lite
> 2 x IFE
> 2 x IFE Lite
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

