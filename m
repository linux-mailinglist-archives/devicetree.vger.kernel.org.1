Return-Path: <devicetree+bounces-169882-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B04A9887C
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 13:25:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B79361B6370D
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 11:26:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EAC2726FA4C;
	Wed, 23 Apr 2025 11:25:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LIqiqGsF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 733AC26FA46
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:25:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745407542; cv=none; b=RtEq90jjPxd6+JGINnEw74rmRVTuAfLXzQdgk4X4fDZoRkB0y9H5ISDOsQsEY/Gbgs/X7GoHdqrI2k5ld8ru/C/OtCDgbTqxom16xgGX4bwDyK4sjfYscwIQvhwuL30OZcD9W6xUIUd1k4kGwv+SjWPV7B1/D9Jze43vKRNVz08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745407542; c=relaxed/simple;
	bh=wKXWbzh2ht/X2vUMhpUIeXx1GFXHSCn0jvg1bKsrJvc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UVPIy0bSwYytwD1Ep02znEoMEMmTWGF1ELUxmPujqoM+zBFpQ7yO1Ysj6myMO/GuWAaW0buk5zudwCxBsSom+8iI/TT/jNYKHI0Kpz/DyzUqITdICBCB+mkCU88wROiefpUjujXWlE84rxxZR3OUzZKW5zlfLM1a1qEGEZUQESY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LIqiqGsF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAcYjY022428
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:25:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+SJfWTk5aO0uHSIAPpOEUP1TaRsZh3xbLp7te7De5FI=; b=LIqiqGsFYbXbWF+X
	ZWDgw+eB8a3gdcqzTD0qr2Qtf2nRxBuKzDi+/SUTMaxy8q0TZQXLWOhsrUySx+fF
	3hc+qpuJys66S3Yv3wlo9lAKd4Mu4RfyIHYQHdcTNdGw03fP/ICzoLtkfJDtA9DQ
	aPQkEAeIfXbPuxHkyZbql9Ya0ByPh303SFsjlaDBB7vi51qpKPKMglA053f2/Aq0
	TDL3wUTs2P//7aRaR9gOsyPZ997GPPx+mEhZR5qRNt1RawovzsiYBihkaPSlYxMm
	kWgtWsRjqI/Q/3C7Y7QcTwX4R/+nOivD5sQ7oG5FfiahI+d+wYKQc/xqWr52QYQb
	9v/aKQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh29xrt-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:25:40 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c76062c513so121236785a.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 04:25:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745407539; x=1746012339;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+SJfWTk5aO0uHSIAPpOEUP1TaRsZh3xbLp7te7De5FI=;
        b=lJsuRn3q43xOf8Ju52rG9TJ1TREUwcEylab2WIKI/Nn5Uvuz1kEJwpuu8q8v1kBbBn
         WE9STWksUoUigvrKkOxVQTTTJo+eOQP4cEDFY94fOZwo0EfscQEexwNMdQTS2EwQFCdX
         3uh2EfXt0u2QKdi+GLtrAAzjLgnDiiUX8bSifwRIp7kvPhYJpbl6gBDrY9h0FvXQqY2M
         VmsrVxUc9QObFwVyzJSwxRqJm8Dq4bP3q06KAAn/Cc5C9rw1VbWcxpwWub1XPFoQxMVd
         Lmvl8GKgRfQh2bIBp85qRSQ6wg+heewsPOJA2gg6uVwl+YA2QkOaqiWXEEpXMmSMtjK4
         2TxQ==
X-Forwarded-Encrypted: i=1; AJvYcCX9mMrtZz0SUfGC8IW2iiJ3lbtQhJxcIjpjxljsGLaI+y/ULTn+vvh0bCjdxNDLGQdJGAMA+RsRdHQ/@vger.kernel.org
X-Gm-Message-State: AOJu0YzOslXpJiQSO/27pKYUq9odzy0Tg2VHJcOUnx26mzGcyVrWBiVO
	buNfgYS/W8bKMFvuZ1spEsVKPRb965isX1jJ1g4obV/RvJJui2zzK5gtcOQ3LmEtnB7LMPBDCQs
	aQ0J3/0p0qJWuYhPMlYvLrMeEoBaXqXc+MFsmowEgRiREf5tbpNai1cf09vIm
X-Gm-Gg: ASbGnctYtjG4NcRolg4220HNH1dNE44IsXW/1Bp/oTryk+GcBtOBWbcl7MmDZHC7zpV
	xIWAc1CBbAopnoKMNcF7LyGTSEAVs/KN4fY1yvv9a7xIsM85ezMOoSb0z1nDmgds6T9oj4zdjzY
	WZCJBBC5IEsyc0xVE2mvJkvXyYNRE/oCs/fapPVQall3LA93zWz57K1WHOKm60/AcYNYlNBZh4m
	gQZzAY9/PFuFaot782DFn0p3AOBPZsqgByyyHNLh6w11bboEnroGcU2k9KIAvB36rSyqQ8gDoxK
	lnTjKI4J0VGUxAmaLFBdJxIevXWEa7DJCCuaPlw9XajqLX4EOjL8vOw3GO5TmAtz0OA=
X-Received: by 2002:a05:620a:19a7:b0:7c7:ae26:9bb3 with SMTP id af79cd13be357-7c94d25a6b0mr185332685a.5.1745407539441;
        Wed, 23 Apr 2025 04:25:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFAKueAMYdW8vImOAi5a60M+gwJ663bWKU2mlGWA17qqnLufSL3bclAp8Ot3R4t4SQ07ODnkw==
X-Received: by 2002:a05:620a:19a7:b0:7c7:ae26:9bb3 with SMTP id af79cd13be357-7c94d25a6b0mr185330285a.5.1745407538941;
        Wed, 23 Apr 2025 04:25:38 -0700 (PDT)
Received: from [192.168.65.183] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb6ec0b6fbsm806483166b.19.2025.04.23.04.25.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Apr 2025 04:25:38 -0700 (PDT)
Message-ID: <a9a5680f-de4c-49ac-8ae6-d2e0452d8258@oss.qualcomm.com>
Date: Wed, 23 Apr 2025 13:25:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] phy: qcom: qmp-pcie: Update PHY settings for SA8775P
To: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        krishna.chundru@oss.qualcomm.com, quic_vbadigan@quicinc.com,
        quic_nayiluri@quicinc.com, quic_ramkri@quicinc.com,
        quic_nitegupt@quicinc.com
References: <20250423-update_phy-v1-0-30eb51703bb8@oss.qualcomm.com>
 <20250423-update_phy-v1-1-30eb51703bb8@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250423-update_phy-v1-1-30eb51703bb8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: s2s9nQWkM_NoXWNXVYnskrZChIRA637r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDA3OSBTYWx0ZWRfXwDSOvfsYP2qt /CR1GOrA90GvDIHxKeeVtWmtvdAyKz0QT33lf6I90gleeD8amDnOUqq+bhwz1c3QVXnQ+MdUAh0 Gn/pK/Fd+F1INgA3StbAYOUEEDYrDil4R7yFsQQ3+S2I8ub0ttsMZqPrEpSPIOvNfeWodO/qnkG
 qFxgqAUpeU/PXoDOnMHqrQx+QR/gNfc0WrEjh2eRZ0vFNJ58zEUoejYaJjNSxoaTnrjvy8eDQeD jj6c7JDcoFYiPjme4mwysBuTrXqaQv7v8wvwrM+iYa5S4cuMdJa7m4M9dC/CpraI+z/D6Cu6GIn aZuS2q1XoUc9xaNvenHGe7ocO5tBKxEzsFtltJISweV4HU0w5LUg7IFSnhCkXFn2lJ79M4sOJTS
 kF1Ym6uQcVtIcxCOxrzHdW/1mYPuBaZUUgsKAMM1JYwdlTTPjR51UFHM+P2nSvFnlOpKPIPT
X-Authority-Analysis: v=2.4 cv=Tu/mhCXh c=1 sm=1 tr=0 ts=6808ce34 cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=4ZBdfkmogR933_44ZQYA:9 a=QEXdDO2ut3YA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: s2s9nQWkM_NoXWNXVYnskrZChIRA637r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_07,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 malwarescore=0 suspectscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0
 impostorscore=0 adultscore=0 phishscore=0 mlxlogscore=999 bulkscore=0
 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230079

On 4/23/25 1:15 PM, Mrinmay Sarkar wrote:
> This change updates the PHY settings to align with the latest
> PCIe PHY Hardware Programming Guide for both PCIe controllers
> on the SA8775P platform.
> 
> Signed-off-by: Mrinmay Sarkar <mrinmay.sarkar@oss.qualcomm.com>
> ---

Please also mention that these updates happen to solve the stability
issues seen with Gen4 speeds

[...]

>  static const struct qmp_pcie_offsets qmp_pcie_offsets_v5_30 = {
> @@ -3398,8 +3402,8 @@ static const struct qmp_phy_cfg qcs8300_qmp_gen4x2_pciephy_cfg = {
>  		.tx_num		= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_tx_tbl),
>  		.rx		= qcs8300_qmp_gen4x2_pcie_rx_alt_tbl,
>  		.rx_num		= ARRAY_SIZE(qcs8300_qmp_gen4x2_pcie_rx_alt_tbl),
> -		.pcs		= sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl,
> -		.pcs_num		= ARRAY_SIZE(sa8775p_qmp_gen4x2_pcie_pcs_alt_tbl),
> +		.pcs		= sa8775p_qmp_gen4_pcie_pcs_alt_tbl,
> +		.pcs_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_alt_tbl),
>  		.pcs_misc		= sa8775p_qmp_gen4_pcie_pcs_misc_tbl,
>  		.pcs_misc_num	= ARRAY_SIZE(sa8775p_qmp_gen4_pcie_pcs_misc_tbl),
>  	},

So QCS8300 and SA8775 are closely related - since you're making updates
for both, please also mention this in the commit message and describe
the impact it has (e.g. that it fixes electrical settings for both platforms
that largely re-use an IP block)

Konrad

