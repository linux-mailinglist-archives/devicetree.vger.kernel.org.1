Return-Path: <devicetree+bounces-140905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C197A1C354
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 13:51:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E96291889ACB
	for <lists+devicetree@lfdr.de>; Sat, 25 Jan 2025 12:51:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD6232080F4;
	Sat, 25 Jan 2025 12:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mJBWShpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA6320765E
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 12:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737809492; cv=none; b=RMz9d/mPiRfa6zKUEsXjgrEye08AiYCvQuD5kzv/n7lTLFtnByOHLoYFsk+cdLd4HuCqHvoHu3vOq3ITypXBl48yqFo2a6+42Y3Ddb9cRpg6BtcEv06Mj19jTX9QBJTbcqHf4vl0Vr5Fo0sGBPNHuYN7y+gy3DOydRCV9BUOHBU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737809492; c=relaxed/simple;
	bh=DvC3ZsZKD8s8MYU2D06RJKlpiiCYOPaQY9VKmRavDAA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KchZaGccuZjSBGCGdNV+cJ7yuxTqNWbbw84KWds15cHE2prNJgQG46IAY6QcMExB646PUInmYyprN1gQJ4+lvpq3DvpTMbzVuaTsWFqZf57/cqa1Cb3dLK42hxGY8GeDjztvUD4nWcW1ylNk07jTYCt4e2zlcZmFPIRXc0oRu1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mJBWShpZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50PBuZxp010882
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 12:51:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1yF/7hzEFsKgdhsPfOBA8MYtg0WYE1GN3OTGNZ94fVc=; b=mJBWShpZvWJDYHkT
	+A8SBwfjX8MeP1G6m61zMxmeQusViGaUrAVUmJesBZhUY44rj4men+jAfA+h21Wc
	vT8azV58qy3XwEPOERF6c0zrOPw0kcUi46D66gqR/BeVMyJ0n5w4fuf6We1bDSTn
	no9Jjl8MjJKOwIixrTI4b8BzzsYn78MXR47n7YnvS8KfZM2qpVIuvyUlVeZdq0Vd
	w0BZW0RyiVUg89Gk0iCBJrMXQvpsozohOfxm6AgOLBg85TsM1f8NZ7OtLpl2B/t5
	SPa2eYKXYoECgxEL+QpWoxhQ2FyOVWL3+JxzVzamhMAG8xffHgdMhazU9u18GX3j
	NDu8Bg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44crykrgwu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 12:51:29 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7b6faf8b78aso42806885a.0
        for <devicetree@vger.kernel.org>; Sat, 25 Jan 2025 04:51:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737809488; x=1738414288;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1yF/7hzEFsKgdhsPfOBA8MYtg0WYE1GN3OTGNZ94fVc=;
        b=P8WAKnfbrSV0d1yzNJsv9YpeIhZxJOl0rgPLmj2gHjCQ9jAI4vXQkLoDmgIxzBSxtD
         Ue2yV/E9ItcQUzDV7HosX/Yw9aaMxY1Pb3+5kumnjBljXIzKClxyhvYJl6rtXHpYlMTL
         z5Iuyfe1AIhWzN7a+R1shf1UJx4XIo826c2P1+i/+Bzxy8dsAp5ufZ4cDiEZYNtNjqrO
         tBhy3GrdXoXkQTugH7kLHVINf+VjcZN68fKqBOG50OunNcw13h0+R2mtuJa5yfIaM6PE
         426ijl1zDiSKmmfsOkW2pxtPPJserIsF9v25nO1+C6HsZnnCSOuudtnA6CFwhTrzSdBG
         chCw==
X-Forwarded-Encrypted: i=1; AJvYcCXTrupaOX9aa1w1FVVSQg9/O6AOuhax9g0VRbgwX3AWv5QGR3wbOdp7KOCH669qE2QEpirf0U3XiCk6@vger.kernel.org
X-Gm-Message-State: AOJu0YzUC9f61ATGxq5Sg7I/CKyr29FYfU/wQy2QVWJ4v/4VKLfzkezQ
	GTgIaZMaCeUPoWbw7LxLEKg/7VuGHpN5+C1pq1rnYexNGz1/jIFSvqKKbwr5Iqx8Jk+JgUiOvmG
	6V2wFEKz1q4BIw60vs+OPrwp9ZbSqAbldi09s0BN4L3m2AMUhVwhXZ+vtXv/S
X-Gm-Gg: ASbGncsE4W/kPouAtBrYzvtmiu/P/T6Fjve0nXZkfMxFqJ0GJ/S0WdEUFLIpgotQbzI
	PjV9Zxow0waxQfmV0a9RT1BIdomTwTvKEmcjtB0N+vwlDWbRi6t9tMb4zpcQ1qNyiDXpIkA4kEM
	M+brWoZhVRHiN/8ehDYphR0R3C+fPIC+wSzXmJ1ZsOAWxjeqliqno9wXdTdiUABfa2Fr1rZIHGT
	6ZFOTyC4HGAaQh/mv1deybrpnFh/m5xG+tBbtbkZmHYFnD1/IlDzouXCTYNGmhQKL63moFGARjI
	a95q2pnppdWekouq0sikitqxYIoHPgNyxWmfka0x8fvrsCWoX9652pE2X14=
X-Received: by 2002:a05:620a:25d1:b0:7b6:d870:ca43 with SMTP id af79cd13be357-7be631581dfmr1995825085a.0.1737809488569;
        Sat, 25 Jan 2025 04:51:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGxXQD+0qiqslDtzNoGBqCDgh0VtMyMNU8rg1ExlhF/64DGkugLQUDoP02CUU0RwtRTpxLshA==
X-Received: by 2002:a05:620a:25d1:b0:7b6:d870:ca43 with SMTP id af79cd13be357-7be631581dfmr1995822985a.0.1737809488123;
        Sat, 25 Jan 2025 04:51:28 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab675e124fasm280744366b.22.2025.01.25.04.51.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 25 Jan 2025 04:51:27 -0800 (PST)
Message-ID: <1bc91311-4573-4e6d-a5c7-4f84027d9014@oss.qualcomm.com>
Date: Sat, 25 Jan 2025 13:51:24 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] PCI: dwc: Improve handling of PCIe lane
 configuration
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com,
        quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250124-preset_v2-v4-0-0b512cad08e1@oss.qualcomm.com>
 <20250124-preset_v2-v4-3-0b512cad08e1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250124-preset_v2-v4-3-0b512cad08e1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: L_WzlVgyAz6eI5iN27ash7MGCoM76S9E
X-Proofpoint-ORIG-GUID: L_WzlVgyAz6eI5iN27ash7MGCoM76S9E
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-25_05,2025-01-23_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 impostorscore=0
 suspectscore=0 lowpriorityscore=0 clxscore=1015 priorityscore=1501
 spamscore=0 bulkscore=0 mlxscore=0 malwarescore=0 adultscore=0
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501250093

On 24.01.2025 12:22 PM, Krishna Chaitanya Chundru wrote:
> Currently even if the number of lanes hardware supports is equal to
> the number lanes provided in the devicetree, the driver is trying to
> configure again the maximum number of lanes which is not needed.
> 
> Update number of lanes only when it is not equal to hardware capability.
> 
> And also if the num-lanes property is not present in the devicetree
> update the num_lanes with the maximum hardware supports.
> 
> Introduce dw_pcie_link_get_max_link_width() to get the maximum lane
> width the hardware supports.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c |  3 +++
>  drivers/pci/controller/dwc/pcie-designware.c      | 14 +++++++++++++-
>  drivers/pci/controller/dwc/pcie-designware.h      |  1 +
>  3 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 3e41865c7290..2cd0acbf9e18 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -504,6 +504,9 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  
>  	dw_pcie_iatu_detect(pci);
>  
> +	if (pci->num_lanes < 1)
> +		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
> +
>  	/*
>  	 * Allocate the resource for MSG TLP before programming the iATU
>  	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
> index 6d6cbc8b5b2c..acb2a963ae1a 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.c
> +++ b/drivers/pci/controller/dwc/pcie-designware.c
> @@ -736,6 +736,16 @@ static void dw_pcie_link_set_max_speed(struct dw_pcie *pci)
>  
>  }
>  
> +int dw_pcie_link_get_max_link_width(struct dw_pcie *pci)
> +{
> +	u32 lnkcap;
> +	u8 cap;
> +
> +	cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
> +	lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
> +	return FIELD_GET(PCI_EXP_LNKCAP_MLW, lnkcap);
> +}

Please add a newline before return, or initialize the variables (I
don't mind either, maybe BjornH or others have some preferences)

Konrad

