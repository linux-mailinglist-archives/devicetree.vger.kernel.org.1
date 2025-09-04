Return-Path: <devicetree+bounces-212774-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 690CAB43B63
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:20:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68EB71BC737D
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 12:20:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25F1D2EC56B;
	Thu,  4 Sep 2025 12:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lF7F4rPW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969142E1C6F
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 12:20:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756988427; cv=none; b=Nu/qOGAiff2HfH5w1uPtp9ezR80Fpufeaej+Bd9cr4T4t9KURoAKmfguZfbuTe4Yemro+4fimLy8qUlhg2CfQqzBTJ2zNVKEI6RZEmm+aINE77gGwrld2cQx/PidfBSrH46+ohobDyNhH3Ol1BaveJDX55TjDm9T3PxixSvjoy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756988427; c=relaxed/simple;
	bh=WSevKUXT8Sd3MNuHsHxr6/qElbPatDgVFUDgAsLQo28=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZsB/vQEGQSB3K7w831ZtQ1gWcgj2Z4u6wyxKngrPFAsBDPgaaMMkW6VbE97xj+hFAyPgxHsuKoLdfW3gieKlyQe6Mx/pwE388gUGBsDoeQkPlh95AtIvmto2gDSQUJtfYCebHnayI3L2NMqU25nesBN1BWhrVsRLfJRFI+80Z/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lF7F4rPW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X9CY008136
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 12:20:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5K9lLVQuDJ+jtHy71mkQmBdSNzf+tzhKMiiJck53fBU=; b=lF7F4rPWrOffjepL
	rsGbLMBcrr/o0u1vA79M2CB/+mfH5wIj83TWwnJh+F+QRnx3WlwOJGXmt9JB1Zkd
	2P0xkeVRT2bFXFmBFSZKTH/UYUJUyn4x+bOy/okVY6d17h5B0U06b2zJC8zA37uA
	UBNmqU84QUn7dS6Bxqo0Gf8grPibg8Qt6jBVhF+gx7y1LLByeFw6AMM2BECys6zA
	TeJAqx3wbGlenM4lv4pmV8mWVWjT0CArCYPUy73HXYM1jiM9QjdbLWZnQW2bccaT
	bOFOk/lOnxPTxp6ipcWk1m3AWB10fildxvoYY14Q+N2zlJbD8v4AoACNSLqIR64Y
	EPePRA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjqcgb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 12:20:24 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b3037bd983so4337841cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 05:20:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756988423; x=1757593223;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5K9lLVQuDJ+jtHy71mkQmBdSNzf+tzhKMiiJck53fBU=;
        b=XuRi6FzNeCjegTQg37frL/5zAogWJa8EPILc4EQ86UiqsmU9E9y9difz6CIVDiH07w
         8O4eNk2YM0EJcfpSZiKnQak9zWZlO2t0wMPrDaZwHIpvfOE6lyNIaOdRCsvuiBfpcwdE
         zXnLexAKiyB9yMP5ZmOjM+fTd01rYVYx+ICL+qz9Dz5HwUKfNb+Xl6h/LBLtfbZkcfW6
         7Btd7vcX41gCdoAIS6fCLEuox83YPJ4YGyjW3i63r17aDUGTzrPBmizfcrflr+1vINEx
         MnrC9URuZJCw6y+jm/8F7NYqhvAPT3Os52/hNfVkUGMNNdAJ4Gh6AemaqYqXzxUuJOB8
         a0mQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6i1nKLFn2sHAfLdzBevGWyoIrZq8snzyODx58Pyfa6H7hpwy6iKdeG663z17GyKzWkSJfYpGdKxGE@vger.kernel.org
X-Gm-Message-State: AOJu0YwaJi1V6E+vqHzd9g8IwrELESNOiIdsN26TjyqcDR/Gx8MvLLRU
	bWa2tYRc2JehR3WZRPLF4P9UciiRtrWHG2RuDtEE/SlM4eDWxisHsEKILGGlrT32gLqo6AtwAkw
	uLE50YQtLG190wBjqiVpn49M8NyFyeTmc3c7KllyQGX4FwiY0ipxCw67hkscnMqQi
X-Gm-Gg: ASbGncsYmB7RjQkgloseh4/FBwNuySStQ6WzNhX7h1VHTipIhltjmW8mA8bnCyJ/ZB8
	5tw9AK1hs8BW8/yqpJRr0gzLsYHGrTeEtKVqtJITBfrBpIDeEKxt1CnVMU1aksQd+rPZOr58Wea
	t5EPg7PrpwatdSvdNNTgKs9ciDGsGjdbuE9eo245j9Sa58660NTv7YLsJvBx40pFCrGqSz4T74v
	ncnCKgn6uCzLGhLdFIQp8tfDfoF+SkKAGGlzbjijxw93VsnEQT9YErRVP0j/OfpIY1/lvsi/Kpb
	XegH6c3rvCiM5bJuZVg3vZ+EZkOMvRHBy69LrMinbSF+CptRRz/cUNmcGOz4JYzhy3JWaOEpT4i
	Xl2MPufdwZXi59Ubxzm+1UQ==
X-Received: by 2002:a05:622a:148:b0:4b5:dfdc:1f0c with SMTP id d75a77b69052e-4b5dfdc2c5amr6767121cf.12.1756988423035;
        Thu, 04 Sep 2025 05:20:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEq92zIM2PJ5tnKQijo/OGWPykJlP80988PfhS9zLD8jSYpTvRaC1PomVJTiMQsaS8+adW20A==
X-Received: by 2002:a05:622a:148:b0:4b5:dfdc:1f0c with SMTP id d75a77b69052e-4b5dfdc2c5amr6766811cf.12.1756988422416;
        Thu, 04 Sep 2025 05:20:22 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b0413ee67a3sm1164960266b.24.2025.09.04.05.20.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 05:20:21 -0700 (PDT)
Message-ID: <95b40735-367d-4702-b2e6-01c9c5604e5e@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 14:20:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 5/7] arm64: dts: qcom: Add initial support for MSM8937
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>,
        Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee@kernel.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Rob Clark
 <robin.clark@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Robert Marko <robimarko@gmail.com>,
        Adam Skladowski
 <a_skl39@protonmail.com>,
        Sireesh Kodali <sireeshkodali@protonmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, iommu@lists.linux.dev,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org, Dang Huynh <danct12@riseup.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250903-msm8937-v9-0-a097c91c5801@mainlining.org>
 <20250903-msm8937-v9-5-a097c91c5801@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250903-msm8937-v9-5-a097c91c5801@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b98408 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=bBqXziUQAAAA:8 a=EUspDBNiAAAA:8
 a=OuZLqq7tAAAA:8 a=9HHfay7fNgEZ8udxRwkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=BjKv_IHbNJvPKzgot4uq:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: 1R4nhnF3GMiUTHJobGIEacDhVnU2T2In
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfXwxRxLtyRpFsb
 Y0eecxrJXBgVPLbBIs1cFL/M3Z10fYfOyy6x6kw7SmGhuONdOUwOpUEgjLgyzNdmSEWd7/Almr+
 eJdXPywfqV5cOEI3+dxNsvr1Sy6KAkE07Bz6ja47ZboR6ZVsJ2Tt9ZtIoQmsK7MCuqKJ+/3gNNx
 nnVLPey/wfCe1wrQiItr9Pi58SMykbpI0SHJjSSPidBJAtul4/MSQ81s3JmzQMztWMrd2QT2fag
 +K4IL8rTr/HcV6piXQO/cmODbBTetULJ0+4AZMjS+BQ+0KYnxA4pBguKWsUjgdkgUjU/0YxvU9q
 lz43R0LBRxajLXi+Xiw5IsTFs1qfG3WOat+hXG6md1PYVBY6zBypleXaAwviJUENl5W6g23h0mD
 Es8TuT1X
X-Proofpoint-ORIG-GUID: 1R4nhnF3GMiUTHJobGIEacDhVnU2T2In
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On 9/3/25 11:08 PM, Barnabás Czémán wrote:
> From: Dang Huynh <danct12@riseup.net>
> 
> Add initial support for MSM8937 SoC.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Co-developed-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

If the bindings checker is happy, I'm generally happy as well

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

