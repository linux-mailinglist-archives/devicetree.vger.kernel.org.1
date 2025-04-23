Return-Path: <devicetree+bounces-169943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEB9A98C44
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 16:04:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B09D33A7241
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 14:04:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D6E62797B5;
	Wed, 23 Apr 2025 14:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gqLJFhRC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C58B527979E
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 14:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745417048; cv=none; b=aM2cTqC/JLwBLij6p3RKK5Pl/3azEgtCmtpOEujte7lTwhPVpZqjym9xCQFlLqiIJk53pCfVGTHYWnt48TWuEr/GuVuBQX6rw6fot+M4qj+tgQBXvKf/lpmmco2S+ywzw6RKTPOH9xmo/Cb8WnK7sSmCQ9GWLKRclMgHFUSQ3to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745417048; c=relaxed/simple;
	bh=Kpbhj1qhSKEadaVbA0z6YY9AlvNfJBM7kna2rhKpIUE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UFHHH2t5/wNCA/NTXlqxeNcjHonCbMd5LsvDpFA4Oa+uujGm+gppYIG/6LwL9680UZ2ZB71VQ7na8JfE8qJ25/imypqzH+RYdhyO6Gi5EXmrCjunlkBkPaMRwS1QyDHWNaRnX/RTP6JI/WX9whNw7g3wM7UMVDdwlkgtuc1aiT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gqLJFhRC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NB6SXN023892
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 14:04:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HK4v2UxJbR5fXrAk1G29VWPj/UWIHaIHZOcZYqRxF9s=; b=gqLJFhRCUndtiYt7
	7nVFud9l/0MH6QpvE/kIW4J63tMdeelEMdTC1IAEuFA5K8jVzh0/d2qRdrDKK0pn
	GZ33/RXPMfhZ4ODI8LwwhwIjrHfe0CCVJ9oGBukOxpkpnVOdAvlmpDk6pQ9Yr6Sd
	sGmrczDi829QgGOBpgyZcaaTXhafCwhyZ5ukT4NVV2sYiNrr/zgOGkk/+us2b4qe
	PQ0B8HH0A/1PTId4jL0cQbCi2yPTJVav6wv3gPj9Mryc4kD+5qj9DW91th1v8CHe
	sqcBZzwfinKADXufKObWXY4eajJl+7rEEMVrYwYjd4EyLomAZtuIXhSz+/e8iXwP
	1ecJ8g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh3ab74-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 14:04:04 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5841ae28eso122371185a.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 07:04:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745417043; x=1746021843;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HK4v2UxJbR5fXrAk1G29VWPj/UWIHaIHZOcZYqRxF9s=;
        b=At6mWLhvaA/v6qsUZ++/Xv0gLf2gpohEdqpWzUl0V48EoQ15Y21FN8yob6QT0zauMz
         ZEzEsVAjGM1iiCHfnL3N48Hg1ue0NuSgQijfX+7ZpidzqOAWWRkR+OALbVeXqDb+jCri
         ZfTDEawFXkrHhSCCiw5eOPqe/vM2Z9aTdYuu743jXjstR488+3gNlc4T/xDZxGZduCrD
         wSLdkDefULGDAVIF1qbEb7bOfF5yIjIzP7F/Droei87zaFXLdOeFn2F9EviodtY1TDEM
         6t2EXtgHWTa6277J0MF8vpxdqWGzkCuhwC2lfELfB1r4xrbrdKrVpR/Dmp9Nhll6y9yp
         cbcA==
X-Forwarded-Encrypted: i=1; AJvYcCVzEztBp/Xl04sKw7ZNzM5an5yPQgDtdHs0ThoUmmYXehbFd+uQqBbHXCAv76Xr9Yuf6R/Pr6MoMDcF@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5EPkZsWuLwVqM6VTKPsTo+EgwNlso6Df75E5DMKntWg4x8XXm
	98xoz6J5l3TDpj9PFpBvNE9PtK1jx0EOoq9tjkXofQAJQ7Uj5jEXu7JFp4nlnrGH5u1klVnnyk9
	BulDbpCtm040PBQ/ymsiMxTq3pp030fLQxTijfd8Y7lqrJglPClleknT2eoOS
X-Gm-Gg: ASbGncuuGWoQssKywa4aT9Z3mMjKTZtyUQA5bSmYK5HXuFlkyOmuXu8Y4nYTVDIwrfy
	xVMZ0TEfokOD6JzTB918Wygf64V5JSRW9/wwRItXYQA6SBYYulTZl+xMcTlLQinBuy8ekRAnuHN
	KOXpeybytrjhq51QkuSipI48yfvHRND1hqUYfHXqqTfJ/Up8ewc00qATQJv9X7CcHBSAnJLRmke
	xZtj0hWH8rSIOusy6awt07VSYr/KaqoAEKx9x5tJRbE+0Hwqa4VzfVSJZ+/CgrC+72ic4c8KpXg
	Tc4bKX3c/ebyBpz5ltqrSYZCwJmd7LPgloqyN+Z+W5B3xdZicpShmYaG/QS429Q1dyk=
X-Received: by 2002:a05:620a:40c4:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7c928038e5emr1063389285a.11.1745417043368;
        Wed, 23 Apr 2025 07:04:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5Nmp61dxe3+g8XquReGtc6SZo2EBLqOi9MgrQLq0RCvHH8eZt76lUCj3q3b5DnYlZ2FEF3g==
X-Received: by 2002:a05:620a:40c4:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7c928038e5emr1063386885a.11.1745417042771;
        Wed, 23 Apr 2025 07:04:02 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec4d397sm808450266b.59.2025.04.23.07.03.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 07:04:02 -0700 (PDT)
Message-ID: <2e3d94a4-d9e1-429e-9f65-d004c80180e5@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 16:03:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] arm64: dts: qcom: Add initial support for MSM8937
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
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Adam Skladowski
 <a_skl39@protonmail.com>,
        Sireesh Kodali <sireeshkodali@protonmail.com>,
        Srinivas Kandagatla <srini@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, iommu@lists.linux.dev,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org, Dang Huynh <danct12@riseup.net>
References: <20250421-msm8937-v5-0-bf9879ef14d9@mainlining.org>
 <20250421-msm8937-v5-3-bf9879ef14d9@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250421-msm8937-v5-3-bf9879ef14d9@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: IYN-2L_RqNQbE1Tc1OZPL_wSV2F772XV
X-Proofpoint-GUID: IYN-2L_RqNQbE1Tc1OZPL_wSV2F772XV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA5OCBTYWx0ZWRfX76PH1Q+IKymZ OZ6fOJG4GTK8UyKJoGSmEnXmOSoDmYantr6nSKYc8BNZXN/rXweko8Hrb2l8Rp6HHq3uTACXJjg B1zMtLRk7irFNw/53nHSgkB03jQGAuFpccLtFUdbGvg2eBPXnfgyVFDVSgZ/2r/K4itv6FKzv8F
 atl/Q/1z1hvM30VsZuk4MFYeggc5Hv13Ge/5KQ1PVDzhQZHqpVrhZCyDLe+EVTdwqHogdz7x3+h EoZyionRLS0ggAKPe4pWNcSl0seiUVQkS4zsyi8jDAg8mjXYjccVs6zvKytitAb0hpu6Zs6R0AX zusUcaN3k2qc0oc9QeiC9lA3b3LKz0sQbL/Qz9BvRdms6+4Vaxb6fkIuvJpf4L2rm9P9EiQP1SP
 IZIoXk8ay/n0Z+NSzCIHZub+HxhQmR1ywokvbtd5Oq4swhXrD/32VaxvOhBdP0uDW77LUFnn
X-Authority-Analysis: v=2.4 cv=Mepsu4/f c=1 sm=1 tr=0 ts=6808f354 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=bBqXziUQAAAA:8 a=OuZLqq7tAAAA:8 a=GsLbDo3STCR25-WXoqoA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=BjKv_IHbNJvPKzgot4uq:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_08,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 malwarescore=0
 priorityscore=1501 mlxscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230098

On 4/21/25 10:18 PM, Barnabás Czémán wrote:
> From: Dang Huynh <danct12@riseup.net>
> 
> Add initial support for MSM8937 SoC.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> Co-developed-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

[...]

> +			tsens_base1: base1@1d8 {
> +				reg = <0x1d8 1>;

The size part should be hex too

[...]

> +				wcss-wlan2-pins {
> +					pins = "gpio76";
> +					function = "wcss_wlan2";
> +					drive-strength = <6>;
> +					bias-pull-up;
> +
> +				};
> +
> +			};

random newline /\

[...]

> +		mdss: display-subsystem@1a00000 {
> +			compatible = "qcom,mdss";
> +			reg = <0x01a00000 0x1000>,
> +			      <0x01ab0000 0x1040>;

The latter region is 0x3000-long

> +			reg-names = "mdss_phys", "vbif_phys";

Please make reg-names a vertical list too

[...]


> +		gpu: gpu@1c00000 {
> +			compatible = "qcom,adreno-505.0", "qcom,adreno";
> +			reg = <0x1c00000 0x40000>;

Please pad the address part to 8 hex digits

[...]

> +			gpu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-19200000 {
> +					opp-hz = /bits/ 64 <19200000>;
> +					opp-supported-hw = <0xff>;

The comment from the previous revision still stands

Konrad

