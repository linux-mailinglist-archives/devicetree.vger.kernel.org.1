Return-Path: <devicetree+bounces-231346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D7EC0C8C3
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:08:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 176474058DB
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:01:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E90462F6923;
	Mon, 27 Oct 2025 08:54:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ngt45IGh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611C42F691F
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:54:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761555290; cv=none; b=VIrtroccSUtkHVzH9zvDGFghbdINUyPF4kcJAf6m5yGsdqGgq29iIMmGrSHumrIqiawTCW0elzTxo4sTwDR7FC/HppK/oadx/iyHhPEAi0GOdICEVqkL6uBL+/abtN7nb97KPjAxtSBdJh6zpTcDQgYXz2ZezoqJ24RGPhGxNJk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761555290; c=relaxed/simple;
	bh=d0gHDNANklrUbVkVHIAruKx6owCCpxs01cR7OqXcJ4M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pAH07x1dtLenAMqrJuD++XEy+WMl6Uzn43eL1R1iJNsNkQDLaBmlYSGbJU8jthjXCssxzFCjrB7dvsyNC5VTl6x6CGw02NnDzleiwKY7DnYTWC7eOk5PBoYTe2U09Mf9Z8zV6RXQ3xscBLCH1ohXBEGgaro37fp67b07+CVGz/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ngt45IGh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R3GlgC1502831
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:54:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LUrLsKs2d/s0PaieRlYVP53UUARWHT+wI36bM1TCnRw=; b=ngt45IGhK2sGcNJ/
	BGbb5/udj8f3VbPDEViLsDO915jqzlVWOUT39iQGGnQl9YTDmRHN7Gk+xgRmmVFK
	ICkBNWuWdFCpnzrMgP+xfeLBlivYTriuZBRqGURA+rgo6xiZ4HpeNFuOvfla0cjT
	MA0F+pjhVOJuE5tgktNNHm9Jk+Jx9uiLPLZ6xSO5WY4VBOGcZcIdrsJYJS5f/gwo
	GG4kJjLedhWF/wMS1Z8z9O77nX9DTP5NQ1CxbutvVPGTVRzScOl3AwEHMdWeo8os
	JDujRAkpehaviE+21PW60LPDvb9Z1mEzci57RJrcq19qbXxN8gxW9DsqBeOrHbkQ
	laUlnA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a20pnrv0q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 08:54:48 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-87c0e043c87so13139076d6.2
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:54:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761555288; x=1762160088;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LUrLsKs2d/s0PaieRlYVP53UUARWHT+wI36bM1TCnRw=;
        b=NN1Eh8CsM3VeJuIZtfLO6zpOw64bYG32zdGlDC9XTO90/mFJ0D6bzRMCXaLAD3E+/Y
         CqyVGZt5++hmEvBTaCbP4g+F8e4mqmJ+yZ+WuFeYoLOnP140/dwa5vM02w0tKsLBEvhE
         mxb8iqZ2O8jCZfsZUwZ0MnvfQJpqkZOPWeGlwJqtgTRL8TmJe7LTRH2APDS8RI/3Vavq
         p1R8iE4Vjzwnc/dGGODPMM1XLO5FB0XywGNgk40+9FB3ztE/8zT7vvG1ni5episaeKOf
         KLd+ahxvN0yG43PTcra3jjMoVJ8j/koopG5DzLf/owcbY+ca1SPy8ya6p6tOHKu5xPGc
         IULw==
X-Forwarded-Encrypted: i=1; AJvYcCWKBwlIaIJ/Wld8jxPBPBm1B1M7UgUqngcxQqXBYuDQzKikMEp+K+pDXwi/Ca799NFfJry64VMDKfEs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+1NyzC35DjmgU0lwtMvCnytvBnbVzzuE8CLcKLiOBWyP3dZl0
	fo5SErw8s7+bX9ZXCuGSjCERXpiT2w2ZFhUa782pJP3Q9DRrVo5T1FuQ3q2PgqeyQBVnS24/FXQ
	aSyjSUHLVYJtouN25z13WpAKa4ETsoHybDWJAXAcnmpxy1NlrqKFOxeljciEkxBfU
X-Gm-Gg: ASbGncsI8SgWmCg//rDuYucZ/XYzPlsbjfrsEy0g/xML9GkCchmPfK7+bJ8R5ShUHvM
	0etEM2bqRO/k0yoTbuSYSroobKSGLdoJu3EMgq6kitd/1naLcjvmzlH+uUN0hlCWy1IFY2AisNn
	ySrFS7gNGwgNEGSEcRPHabWzLcehPmIX6ygsxuhgtW9hjoVtutyzWQYeX1eErXBtrsORohwmJxF
	lnD2j/9GWsslXqsw1U49Xp47b8cx5YNDEaaVGzCpkpDLQn/yz7eiJk2UWN1FkmQXtb8TCs+tZqA
	cE34kQRLvaRK6tPuonmu1UZF+aREG3utnR6Iq32iEadTw4WlOB1uI0KyvOvfy6xtyU0KpfQjitS
	5VFsgT9oCQVxzQj4437HMP9M4MjAgVSvx5O2caEeLdmwEQH28AuZYSbTS
X-Received: by 2002:a05:6214:240b:b0:87d:c7eb:2743 with SMTP id 6a1803df08f44-87dc7eb308fmr272761226d6.5.1761555287779;
        Mon, 27 Oct 2025 01:54:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFQLwxIWQVmNEtHsQAWHxLLfHwABji01MEWnNC0Z9vg2T+gCI0aBxHit5UrPn0B8GJHlm8a/w==
X-Received: by 2002:a05:6214:240b:b0:87d:c7eb:2743 with SMTP id 6a1803df08f44-87dc7eb308fmr272761056d6.5.1761555287269;
        Mon, 27 Oct 2025 01:54:47 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853077c7sm703606866b.7.2025.10.27.01.54.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 01:54:46 -0700 (PDT)
Message-ID: <507b99a8-b8ef-4bf0-88a6-1a82e6b794e1@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 09:54:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: x1e80100: Add missing quirk for HS
 only USB controller
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Shazad Hussain <quic_shazhuss@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251024105019.2220832-1-krishna.kurapati@oss.qualcomm.com>
 <20251024105019.2220832-2-krishna.kurapati@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251024105019.2220832-2-krishna.kurapati@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: txfttgHG3xL9cjzdJ3HvMy3EycTwli6W
X-Proofpoint-ORIG-GUID: txfttgHG3xL9cjzdJ3HvMy3EycTwli6W
X-Authority-Analysis: v=2.4 cv=A+xh/qWG c=1 sm=1 tr=0 ts=68ff3358 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=XwfBWbWjICH4QB9PVrQA:9 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDA4MiBTYWx0ZWRfX/L/usk8XBFNL
 4AIcX6LRboMz8OZRW+RxjNgK+03+owO78qrahFUHiXl3NCGvBeEFDxQM7mhL7/JaIWI6iRHRAMX
 OKgdOCB7t9lZx22quLLyCn1hHd79EidxHZkRzBv19d18G/tX6AsoSd9p0GuaBUACv3MX4kNNkYK
 e8aYMp8W8A11tyWpj6VUTRnLZFfdiBQnOJLIHaPewIJBahQa20HLFooYspdfeVOqxwU+FMjcDW3
 f430Ba1KqGA+KVYQcfkkXMsQRh3BeART7itddkQH6L0sBugyPBC0cE8gLuB7wthIMCjmXAZfhAW
 RuovLcuy7Tfp7iDid2xl+YILSLaCVuygx9BUdlEs68NOCc3qbbYwl+VIzizZc/L5kVNHzNULMCt
 Hzcc6zgaEu9+4ER4NgoMlc2ORX//tA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 suspectscore=0
 spamscore=0 bulkscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510020000
 definitions=main-2510270082

On 10/24/25 12:50 PM, Krishna Kurapati wrote:
> The PIPE clock is provided by the USB3 PHY, which is predictably not
> connected to the HS-only controller. Add "qcom,select-utmi-as-pipe-clk"
> quirk to  HS only USB controller to disable pipe clock requirement.
> 
> Fixes: 4af46b7bd66f ("arm64: dts: qcom: x1e80100: Add USB nodes")
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

