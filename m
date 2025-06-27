Return-Path: <devicetree+bounces-190406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E53CAEBA62
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 16:51:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 956C7188BD74
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:51:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24F252E7F22;
	Fri, 27 Jun 2025 14:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="epyDyZSz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80A0C2E7625
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:51:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751035869; cv=none; b=ecGasyGF9otBZBeBeGQjt1fjDYTDllHtEUAdbvOV/YHvv21tPIFFVuNuF2u34eFnhKpQncflN4YkN6wnGVfjWLSQHTn+58t6sMz58tp/J0Q4ZVoYHSWSyknTqMFZIRuZ5QamG433vOTrML9e7qVqPLp/LqSiOiplSzXEULRCvGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751035869; c=relaxed/simple;
	bh=7rtraUnuZEglIw9bM3jvt7JTU0MMScfXHqqtKcchIKk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iqKY1y5pbKWNOkdzVS5M3hR3BXW73qcPdpMYTax1fZm6C16qGH7htKyM0c8qKySsCFgW5c7lvZEPq7m7jIfBS7N9PUL1LC4p5sZFk8biJKbLRbHpE51FTCu0110aqWBQe38SdAwoZdhC3Yu1tBCXI0Wqti2ombR6/ej3CuNSUH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=epyDyZSz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RC5Ylo027658
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:51:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7rtraUnuZEglIw9bM3jvt7JTU0MMScfXHqqtKcchIKk=; b=epyDyZSzyFl+MJZf
	VvTrWRZwWi+CJrg4dBLVr8AGET00Udrlwr5ChES4CENzsHTPyZdBKPD4JsXXglmR
	/AfeHOHbg3nAmIBV60ucOmyWysINbAAXOUgbzaqM6duhGmOnqvL+wdCyG4Y2Q8ca
	pSHmEJk8SB6igGgoCBHNAx/E2cUHluoxLCpq3i+XjGSdhv6AkpLSmFfkl/cV4zwz
	eA7jJgsde/V/c0JrgcIqqtXogfhc4gmStUQl0mIxDgeGYa1S4OtPIvuMkmneYunO
	GnIDkBuG3WaVPtHMK/oYmOGt17T5FQRzBeTK34DC5nIvdiC4L9W2y+bfMWDgXFTx
	Eu7mQA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ec26hkmg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 14:51:06 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d21080c26fso34329685a.1
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 07:51:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751035865; x=1751640665;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7rtraUnuZEglIw9bM3jvt7JTU0MMScfXHqqtKcchIKk=;
        b=sM3s7CeU+J9g9MU3tzb1QGzArbTlyp2yckX8t+HVtxynoouAinvgr+mV3Ws5xKCuNG
         Wcbqr3J0/dc3DAlRJPFSDvqpkjuw5QM8JyxJRCTDJmZuDJiAbNppDXiyTWyyEZeJcnwB
         9IO6hBS0karNYl59wwh7D0Y18CV4Qjmr18frivlwZwFtZH3a1TR563EGhi1+Q5WeFC7+
         XeOwf2j0+tnOnJJ+JPi/yg1iaD6/4CHOlxnz4slKtjD1FoHB2Xleq3GlhDAzvjrEeMmt
         IVfqxJz5WqXx7BtSjv3FgtOeWZ8RhX4mMhHc0ua2EYAN/oQ3y/bxzkY1smI+0AsU+HGa
         x5UA==
X-Forwarded-Encrypted: i=1; AJvYcCVk52M7qvgKv2iwh+pGaa9SvccnHKsreiI7ldXNLtsTZLswA7bI5gTHYdW2bSlIO7OuNOkcOVv7SfOK@vger.kernel.org
X-Gm-Message-State: AOJu0YyA7OfqJSX/SjfXjnauU+5GdQtt7uob9GCQIyGb5OE83KVUhqLi
	GqoIyDBL5CsWrLCBS0kVIhvaB5txCMjeowZdk4NtoACPIC3lWB0mb1YRKP0liX2jjyCkZTZRLiI
	G5o7K8lawF1WpY0uh40mrmlO1+gu+/KSzK0lSODqGxEcpZvNrVjMCoRhfyqTqfNp/
X-Gm-Gg: ASbGncvsNfPn/Sf5gybrkMpz+11T7+h24vZfITaL7iaDNQ/6iUh5r9sG7mpuzz89iMo
	62Fl+VcnZ6Fz23XjXYJy6TMxGRHusfU4+M8xUTy2fzyBrPGrSkgQ6Xg/qrBe3qtlH5R5k2XgEWt
	yxfoTY63jw/B0NHfHD+CgwxJPU0kiKg1/qGGYSIM+VB5PFVAA61vaHdZX9jR4uI48tmaubp8BPw
	UN6fhWHxeQ6MjkqthRyK3rCSwey/sU4nI8oqB/s4UcBiFwo+88B5mdG60yxb39Lw0z/SVnwqD7W
	nimvKUIkuvNIxpKu/x6zgP2AWBe2v1O6BE97MC0RipXhiCyHQLmS9rE8vZ72q/MP+XGBfX38Oho
	DcKI=
X-Received: by 2002:a05:620a:4390:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7d4438a5772mr187164485a.0.1751035865354;
        Fri, 27 Jun 2025 07:51:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHNBrqmMSfnZF56yQ8HHV8zsPd591TqWYeI7+RBqNhUzZBbf8gF6QKBgxQqjSPo5Eech9fVsg==
X-Received: by 2002:a05:620a:4390:b0:7cd:4a08:ea12 with SMTP id af79cd13be357-7d4438a5772mr187150585a.0.1751035861886;
        Fri, 27 Jun 2025 07:51:01 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae353c011desm137341766b.101.2025.06.27.07.50.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 07:51:01 -0700 (PDT)
Message-ID: <25ddb70a-7442-4d63-9eff-d4c3ac509bbb@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 16:50:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: sa8775p: remove aux clock from
 pcie phy
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, jingoohan1@gmail.com, mani@kernel.org,
        lpieralisi@kernel.org, kwilczynski@kernel.org, bhelgaas@google.com,
        johan+linaro@kernel.org, vkoul@kernel.org, kishon@kernel.org,
        neil.armstrong@linaro.org, abel.vesa@linaro.org, kw@linux.com
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        linux-phy@lists.infradead.org, qiang.yu@oss.qualcomm.com,
        quic_krichai@quicinc.com, quic_vbadigan@quicinc.com
References: <20250625090048.624399-1-quic_ziyuzhan@quicinc.com>
 <20250625090048.624399-4-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250625090048.624399-4-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEyMSBTYWx0ZWRfX4PunE1OMnt3R
 aOfXTR/zx9rOkLalye6oX2IS7xl+OzZAvatnRFADFGsbnu4JWAvKRdsXDkSd+LBy7As78fp3nNa
 XFEBw1C5KrQKlJBVCepVNxg4U44HTOBR1mxxKmnlIOXX+rkjoiv0zXntytcDZ5MUa7gxvwExtRt
 kQahW8mk8zU/Bk2Pj2sBduvldCVRMTRKTdO7mtkv9bKH4KF8f831FprXAncagaZGtcVEL22WlTx
 NLL9BV84G9O1DzdmGAkkKDxwAi9RWSgWDn2zJOAQx3qUDhia923ulCtt4JC2Z1RQp4NJW5ctVch
 aiGRng/eV44KinxRKhxzzBDPhmK/kBlpR3JebCntDvmszw7dcLhj7sVAER5IM/tPga1WqSZj5TT
 BTmF3YAYq2Xd8acsEd51TauplDwb7Y9cidfMFwTxgiICRDWiNLuUddkgDbah3BB+2y0iUE+H
X-Authority-Analysis: v=2.4 cv=XPQwSRhE c=1 sm=1 tr=0 ts=685eafda cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=flLoF9dUt9D-64fZ2z0A:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: aNkbtc842gdu0ky-TIkRU3Hx5YH8qz2l
X-Proofpoint-ORIG-GUID: aNkbtc842gdu0ky-TIkRU3Hx5YH8qz2l
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0 mlxscore=0
 spamscore=0 phishscore=0 malwarescore=0 mlxlogscore=984 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270121

On 6/25/25 11:00 AM, Ziyue Zhang wrote:
> gcc_aux_clk is used in PCIe RC and it is not required in pcie phy, in
> pcie phy it should be gcc_phy_aux_clk, so remove gcc_aux_clk and
> replace it with gcc_phy_aux_clk.

GCC_PCIE_n_PHY_AUX_CLK is a downstream of the PHY's output..
are you sure the PHY should be **consuming** it too?

Konrad

