Return-Path: <devicetree+bounces-212086-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C4566B41C1D
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:42:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 834BB560F3D
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 10:42:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3064E2F3619;
	Wed,  3 Sep 2025 10:42:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cJW8bpRz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 959EB2F2906
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 10:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756896169; cv=none; b=ZJj5HyqawlbD3mXLfmcIj514xvzo2FPF60JFv4qkb25xHMCcJd4mK2hDLD6LwJ060XH3RMCP8cSDoQS+fysQe8tRB5VeTY2ESQrz9XLUAHevpupf5lQPwXClhnnkMoEmwMvZli5ahavdWqxs/KRKFuoQ5ip3fQwhtpxnIT4v5vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756896169; c=relaxed/simple;
	bh=6iAiHuDb4uJBKU0Hn1aR76kePafhf0bAF3FlgAjugEQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=skGKOVmyyRjz58mNAyB8I/FoGDGFc3Efcrnn1b6F5+cCaZCHugA2tm80cdk5stonFSqdWC5WADgqDxcwvRRwshtYk+pPHJbC4GDPVtaK8aEPYm0buiQfEXVizoYan0Fd+e/WTocpx6XfBoOY+OH/qnYxp5czk4OS72dkEofw4VA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cJW8bpRz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583AWb7Z032759
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 10:42:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AGfr4+Tq+pRH0dbxPVgty5UEqTX1thn/IcBnYM4r6iU=; b=cJW8bpRzr2Y7+x01
	iNMS27+r+sqcTDXL+XrKxJT3cQXqjvJMKjKzKxU+fBiOdnfs9fWUIf8ldx/1Kr4b
	y+LYgraHG7K320Iz8zsbrd7cyvQtUJPThi7U+sl8opq0KnGdH6NMCunDXifjHEdR
	6Dneq6ckqntEsWEnbmRsKz9w7ZZjugn2uZXipDArTh9qlNlmZfNhAhOEGpZXNgrm
	tr9/1jvcF9dDpl69xhqnx0r71dmFsA0DJaOSY09AaIY4V/xBAt0TucHfVgh5ci7C
	Bo5wc9B/G6qdPXgHPo0e4bBwp72j18xXWzPMnm+T2WFrquZhQ3B5Q16Gu/qjApDC
	Fqo2hg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8u98g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 10:42:45 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b331150323so9567711cf.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 03:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756896165; x=1757500965;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AGfr4+Tq+pRH0dbxPVgty5UEqTX1thn/IcBnYM4r6iU=;
        b=SY615HeC/7Z9iniiZK9kdfZU3MH+Sj1m22LWo3BWOPXguyU+Z/19uPyQis0lL8Kqje
         9O2ENVUDhKj7+J6ESCOEMgEFadOaq/bfTsjPfYX5ixtKgWhs6c3HjCNiP3scjss2QPgL
         FNUG3m9DtMJyEX6mOk6NhXfp4Q1dcoh8yXq7kvmZeZdDN/deLFj7XNYoaRXLvKSAsHbF
         wxQMXEGh3vOt+6GfqC0Mol/WqCtQ9rV4NB7wa/A9/BqRTLpHJ34isPOUBTL4qKIDQOzp
         QpCZ+yRYqd+jsW46PzwPhqUgTLXGcMeWQWSO4Sn9NI4iyuN8t3oIDRNbAR9gmo+RzzZb
         tnNQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOB8Iy1G8+268la7gaTa85MqYjeSGlrZIdRYu4lCc5prGljJ96ILoTfLYWHMtQIj9LH7rM1y9GoBGd@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5zkEUT8x22ldyncEzY6hBnEvzKT9Cnm8VJVoXa20ostxTCbrm
	wllbkGxGxpB/45DzcqtwgaIn+ZFPzQtO0Km+O0/Cd1PS+sqy97XBm366Lhk3qXHUES+YtneVOHX
	wZ0M91rrjrwySsQJ4Lf8Qzv2UFN6D2CC4KwxygLDHSxuJp7WJGbpiF1hi1wktEXRJ
X-Gm-Gg: ASbGncsPq8WZs78o1g5tEW1ps26R+Uf+dSHeFSac1e7wtq7s/TfTJfVl5ZXboQr2wr9
	BKHlHFhpJN3AoEq2M0tkqkYPYfbRKUyBBq1P643JfH99hBQooHtT5iRJYVceGBlwOd5CgHpbFUs
	ZDaCOfUkh5vnd4tLUD4CYVaO+05I12g7uuL+sWSnatrR3sQT8dkI32Npjo127QFbSSSPgMTuBbL
	9K/JVbuBv92ISDLpYd28EOukZ7fycwzki+bnczIQmt0RsKNgi8XeLZf340tm0SPOLLeP2ti+RWf
	12g7XYMbgMJT4KchPjnxYWFZKbBWJ1/G54BG6GewA2pOTpa5b+tdwP4+nTyToWJmih6DTKkDqBI
	Hv8/ks7ZUw9y9JN3SMGoqcg==
X-Received: by 2002:a05:622a:1895:b0:4ae:b029:cd7a with SMTP id d75a77b69052e-4b30e98a602mr156109381cf.9.1756896164624;
        Wed, 03 Sep 2025 03:42:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVffWGT/P4HQ1hOU4OQt/ExG64VXiLoPZAGAGCtyi6SsM4nP3uvC3ksMYhqBwvHlyRLWq2nA==
X-Received: by 2002:a05:622a:1895:b0:4ae:b029:cd7a with SMTP id d75a77b69052e-4b30e98a602mr156108941cf.9.1756896164049;
        Wed, 03 Sep 2025 03:42:44 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046e6c630fsm78582266b.55.2025.09.03.03.42.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 03:42:43 -0700 (PDT)
Message-ID: <67aa2a1a-3adf-4c97-a7b8-865b5ca3b17e@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 12:42:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 5/7] arm64: dts: qcom: Add initial support for MSM8937
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
        Das Srinagesh <quic_gurus@quicinc.com>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, iommu@lists.linux.dev,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org, Dang Huynh <danct12@riseup.net>
References: <20250831-msm8937-v8-0-b7dcd63caaac@mainlining.org>
 <20250831-msm8937-v8-5-b7dcd63caaac@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250831-msm8937-v8-5-b7dcd63caaac@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: K4wU1LhphesPD_rUvKFnT2oe4XEOu2CU
X-Proofpoint-GUID: K4wU1LhphesPD_rUvKFnT2oe4XEOu2CU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX4LHMvUsCX0OZ
 5r/uuppu/qj1UWEnYoaT+iPhhJw0EEliCDGg65knu5IE8YxRGTo+208q9vJQ8PdlRyVMavvZnT9
 7dpTwZyF/RuvCjI2BGwe+mEPbKlMgjXLIwirC+aj+sG8h0aSWZFAl7lhE2eizCEJMBB0DEYy/Px
 286m4OZRqIm4APoZ1a1d8MjQLC+R30qHv0Ms1V1NuFbT68hXocIkhO06BlYSJjdezCt3zm+S9GA
 qZAKDllmpufVTSttCZEi+CDWbVuqb5E0RZB3VtsxopPyjMG4hzaw20IHqHn2HO3yIllTbOcRzI2
 TCnZapsEWUE2T9/J7NcdlijHtGGmW5SLaUfBF1F88ofluC7WVra4nBmYhpB7GR7cQvpHcSF8Ngo
 +WFpoF+d
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b81ba5 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=bBqXziUQAAAA:8 a=OuZLqq7tAAAA:8
 a=sAN_IsTCchqKF9ABz68A:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=BjKv_IHbNJvPKzgot4uq:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On 8/31/25 2:29 PM, Barnabás Czémán wrote:
> From: Dang Huynh <danct12@riseup.net>
> 
> Add initial support for MSM8937 SoC.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> Co-developed-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

[...]

> +		qfprom: qfprom@a4000 {
> +			compatible = "qcom,msm8937-qfprom", "qcom,qfprom";
> +			reg = <0x000a4000 0x1000>;

here you reserve 0x1000 for the qfprom

[...]

> +			gpu_speed_bin: gpu-speed-bin@601b {
> +				reg = <0x601b 0x1>;

and here you make way for OOB accesses

Make qfprom length 0x3000 with the current base and the gpu
speed bin should be at base+0x201b, I *think* (the docs aren't
super clear on that)

[...]

> +		mdss: display-subsystem@1a00000 {
> +			compatible = "qcom,mdss";
> +			reg = <0x01a00000 0x1000>,
> +			      <0x01ab0000 0x1040>;

In v5, I pointed out the size of vbif should be 0x3000.. and the random
newline below wcss-wlan2-pins {} is still there too

Konrad

