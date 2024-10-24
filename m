Return-Path: <devicetree+bounces-115300-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5270B9AED09
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 19:03:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11739284663
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 17:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FD151F941A;
	Thu, 24 Oct 2024 17:03:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fKESlf/c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7DD33EA
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 17:03:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729789385; cv=none; b=MHr+t2flJiGEicP+886ue3BrlaKjS/ViSJkj8nrEvX1CIogjI7BhUSgupFqVEMuro8+5+OhW3PGMoNjG+Oxe65fm3xnbBBVicZjUVN3NBJUD8cKYJBeu3VXFHPR+6A2qRe95X0uivF7751HFJ5Dz6q2zDMSZAJPsYlXO/Hv9Be4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729789385; c=relaxed/simple;
	bh=PQ4zZ+vpUUBZz98OPfmQ/f9IgAytod+hx01dezT1/kg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GMVL+n9nR3el8pF3b5UDjQ67sGCURXzN96hGOa4CZdp2hjdexLOi7obFUPcxPOrGnNZfMG0KQ8OsRofaadeR93cOMHfkgvRctfRFs+UY3lz12dmz97re19fA7oTHPJM71CHsKERk83B5WfZlvavQkHl6PrpI890nwVuCOwSpwDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fKESlf/c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49OAEbQh026096
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 17:03:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DUlMzHI7+1FWYVHdeE+crFlz144uqgJoZlthEYfdU7U=; b=fKESlf/cCsBm2Ppp
	RQIteynzNNWaFkaLO1FXpFcChrBOoPX5Vh/s9z7X17kGsuPU/czEpSpU8JfWWZJ5
	Nu726f8E02rucu4KWubtnuuhkvbIZUhh2fnloFBOc2mf1i9vECZ83fP371gRewIo
	accEVEYI2bCxapJkvRopZ1ohiVRF8j45LU5woXjWO5aUJBLY5NIpOVcugoVMLWpL
	XGBaXKbtDvO7FDLExy56wdhPFeYhQXA4+GezctdGht4mYCT0WclulzmudByipIjo
	5xno0bXZM68hnn8PHS+NPXscqTiTD/TY+PW54s+i1Ajs2KvskDMTObPnvfUPe8mP
	wyLy3Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42em3wpcfk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 17:03:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cbf5a3192aso2656316d6.1
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 10:03:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729789380; x=1730394180;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DUlMzHI7+1FWYVHdeE+crFlz144uqgJoZlthEYfdU7U=;
        b=VpT7B3DdBQwInl2UFYIViZ9Ojf6180+jZxgdafOM9fC1kNgbDnUp2PyQjnCvI+7knA
         DebdE2CRMCrwiDYAYgDOLc8/vvnAnAZSYg/S7KkhMh2NRVk++pNZTP0Bp3ejr3WRy85c
         JzZMk5BDO6p/rR5Ut+zkgql7kAqLUbH21G8m9Vzgb3NA0NAW0+qAxC/DnD2oKK6JQLpY
         iGvC7T3Ds3YDf7yqlObpJkTJfu2cIk2OHntfLR+tUzpCfOYP+Tt6+5ydibdtQVyaZea8
         Meia9tp5337b+slVD/avBRo7G1peenicoYe0rLaA54UgBvg1JisRP0YZerohqrCMCiFH
         RXPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVikt/vNPy/GUeATpapN8vwBlWL31zuKg6Eabbw7qIJVo30BeRSs9o+7bT4W52DrLhIxBksjmMw2uyw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy90t5j+yn6oCIgyPsI+tsiwbHEGewf+62NMNBERT9pk5myGFvv
	VBad0k/AgvgmEF/TLdU++ArB/YvmSp9laiFk/sv4gjeJ2TvLzmApgNH5vYzPM+rxsC/vI828gwG
	bH7tOE8k3oHCXef3uMwStjaieSp0KaeBPSeUqy/QA0h4Z2jvszqPFRAR7/k1n
X-Received: by 2002:ad4:5e8e:0:b0:6cb:4e9f:7370 with SMTP id 6a1803df08f44-6ce3429efe7mr40119696d6.12.1729789380290;
        Thu, 24 Oct 2024 10:03:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IErivPc6fmXIZH89b8InKtojO/piGnSylk4Q1RcUf5kCpJfBLE2UQ3WYyeNfa4RF6q6QGeTdg==
X-Received: by 2002:ad4:5e8e:0:b0:6cb:4e9f:7370 with SMTP id 6a1803df08f44-6ce3429efe7mr40119036d6.12.1729789378414;
        Thu, 24 Oct 2024 10:02:58 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a91571ef4sm639419366b.153.2024.10.24.10.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2024 10:02:58 -0700 (PDT)
Message-ID: <adee8553-a531-4789-af19-1bbbe2adb59a@oss.qualcomm.com>
Date: Thu, 24 Oct 2024 19:02:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] interconnect: qcom: Add interconnect provider driver
 for SM8750
To: Melody Olvera <quic_molvera@quicinc.com>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Adam Skladowski <a39.skl@gmail.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sibi Sankar
 <quic_sibis@quicinc.com>,
        =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?=
 <barnabas.czeman@mainlining.org>,
        Vladimir Lypak <vladimir.lypak@gmail.com>,
        Danila Tikhonov <danila@jiaxyga.com>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Mike Tipton <quic_mdtipton@quicinc.com>,
        Abel Vesa <abel.vesa@linaro.org>, Trilok Soni <quic_tsoni@quicinc.com>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241021231823.2635534-1-quic_molvera@quicinc.com>
 <20241021231823.2635534-3-quic_molvera@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241021231823.2635534-3-quic_molvera@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: SoS8teUxE69DhP20EUngRWqWn-tDk4dH
X-Proofpoint-ORIG-GUID: SoS8teUxE69DhP20EUngRWqWn-tDk4dH
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxlogscore=861 lowpriorityscore=0 malwarescore=0 suspectscore=0
 spamscore=0 mlxscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410240140

On 22.10.2024 1:18 AM, Melody Olvera wrote:
> From: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> 
> Introduce SM8750 interconnect provider driver using the interconnect
> framework.
> 
> Signed-off-by: Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]

> +static struct qcom_icc_bcm *lpass_ag_noc_bcms[] = {
> +};

Drop empty BCM lists, the code handles nulls fine

Konrad

