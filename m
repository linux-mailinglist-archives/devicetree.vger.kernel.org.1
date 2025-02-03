Return-Path: <devicetree+bounces-142549-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BE13A25B4E
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:50:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6BC0B188312F
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:50:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84263205ACF;
	Mon,  3 Feb 2025 13:50:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gzG7lLqO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B05205AAC
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:50:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738590617; cv=none; b=AXSdx8K9B532O+v9o/5fEdQZ70yEVst1LVgD7ME4o68BfQCLuVgM7Fp2WTR5bVJeBkLYDJs8NwxDa5sYGYrMHCHSuhY/WkciskkRdx+r0vqOlU+gghs/Xw/iYaGQgOxAto++sMX3XGQilvZj2PD/RkjwLjNPqB6OuC7850Ai2mE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738590617; c=relaxed/simple;
	bh=Tt9vBDTFmYZuSOqXACKt/0t7ZIw9rhZJNXLHRo6BQ0A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hST/qniEmoADzREqqBkvHmdnpvyvUcJeP7HJ+RZ9f+yuMxS/aWIJzOledd0tm6G2R5NRUzDMX9/cJu4RPSYVQNUL2JAiPvmPxazsSKP4WvIW7hkw0FASymJGMUwc6KiRKvJpU2zGbV4qXLXWnMpOgvcHpzwWHq1DXujgrX9lnBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gzG7lLqO; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5135LXOQ014248
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 13:50:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nqxiWCIT/Tin2k7dnyFvGCB27cd0ePrjkyaWPJDOOK8=; b=gzG7lLqOW/iDn/Tp
	LSm0/gU06ruPg3G1dOPopwi/0hClR66txX0RGSYlLYMe4Un4QTYLO49YUb0QDF5E
	qkNEIEEcIZnULW7QfJkLNwqB5yN1FFP4KCG8kmi6BUMGKnzv+2gH61AE1+fgNOfU
	7u8EAsMb9IlIhH6x04G7S2IiaG2H6LPH6SoGLgvi5IFJtsZv5lFe+xua+hkmPEX/
	DSdtwu7esh7g8v7xIRbrmnjRzUNahHzo0PEGW2K6WENujxEJKKtDARZlvmF89NG2
	MT/Y5+IRcWhrTlJQ36kdYee/5roEAQP2jn23Xja3HgB3PGFPRVZ9QUxAR2cW0onL
	cUzo4w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jqk4s9kx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 13:50:13 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6e132c31eso20907985a.3
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 05:50:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738590613; x=1739195413;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nqxiWCIT/Tin2k7dnyFvGCB27cd0ePrjkyaWPJDOOK8=;
        b=JdOvXQD7hSXk9GymPgfXCMoMuba+S7DTmk07iMbBWFAh58/S/E9qdUDlOmk/bJhBmZ
         SLfpmWC7u4XfmVCcoTv/vNzLiOuscjETbs9hkFIgepjMT1qjzrbgf2zA06VRkwVjnLVJ
         PZpLKMF4ZRToVKmOjyUemA4odOzZNaDIxAc8e6d7A9rwZgmvyxGZ8j5lUV5bmNR7B49J
         K7Ft/fkbyx/p0vcvO2Kuih+Li4F7/nW7P05p0NaWcEDLtzs2YvDQ0Ym6VVJ21Pk+G+F8
         XBXimRE0FsUuXLJH2SA0M0bSpRdcyB9l7kLOM1kXZA2/pk6U2v2avPcC4mNHFwJ96J6r
         AlNA==
X-Forwarded-Encrypted: i=1; AJvYcCUq5p6zI/IIM+OerwDx8XjKDULExzJFX+DWBQpk/ZvM7Sx8BOSok+rLzFT1jx5TTEgsCHPHwOQiwILu@vger.kernel.org
X-Gm-Message-State: AOJu0YyZlNRrjV8HRpPqsetfVWpRuafdGIpFcpHxJ8SBe2NjFHJ741eJ
	VrYk4AXE3h1+Kq1CCqmHYrZHiYq+OUVHd4xiLAbOz+BNbtBlBJhvVu18+eC3NvO7fRdezKPZbJH
	dBEODGToE1hmJnclx/PKCXG0xO/5x0yxxIyTE/48/97zi2UM/TEYi7uNhA3l+ZxFzi1tr
X-Gm-Gg: ASbGncspe+YIuCRGw9UDYBSXpWBk5E8e8PZwPiCggrSVVBLlizejWGp7XtrChcJedQc
	TKOBPCebgOJGqK4NQ2qy3vTA5xEBxjh0y4L+Q5yM4IlBtIrbWSY15y/Lp+ittWZXc88SVI/u72U
	y/iamUOzu36sRZu906ZLwyzWtD5yS41o4TR9ALWFLhvXDtf8uDyMf/z9wBG81UHdn1a+0+Dgja3
	fY3Xa8tCGeWQHS56Gha7ZDyMx5hfMEVpXlwiv8M//vWSI2ZvTG5Ici7WWA6L0RFEKctXaUCkKM8
	YD0cEmvjGhG/xBZGXHj7kXPhTY5UmMqs8HPsglBBMDejumbCI0Di0zR+bRE=
X-Received: by 2002:a05:620a:40ce:b0:7a9:a632:48ad with SMTP id af79cd13be357-7bffcd8f975mr937810785a.11.1738590612874;
        Mon, 03 Feb 2025 05:50:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFojunUVhTwHgzodyssJiBoApke2JKM/2E3BIMLMBQGie53Ao5Kal4SPfr3pBEYVHL6tCtiYA==
X-Received: by 2002:a05:620a:40ce:b0:7a9:a632:48ad with SMTP id af79cd13be357-7bffcd8f975mr937809085a.11.1738590612564;
        Mon, 03 Feb 2025 05:50:12 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e47a7ffasm755714966b.7.2025.02.03.05.50.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 05:50:12 -0800 (PST)
Message-ID: <d5e1e6ae-b773-4ec8-a66b-2e1830827164@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 14:50:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/6] arm64: dts: qcom: qcm2290: fix (some) of QUP
 interconnects
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250202-rb1-bt-v3-0-6797a4467ced@linaro.org>
 <20250202-rb1-bt-v3-4-6797a4467ced@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250202-rb1-bt-v3-4-6797a4467ced@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: LHQQu_6Qc-TVOu3JGzkdXFH7mU9pSwTx
X-Proofpoint-ORIG-GUID: LHQQu_6Qc-TVOu3JGzkdXFH7mU9pSwTx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 mlxlogscore=999 lowpriorityscore=0 adultscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502030102

On 2.02.2025 1:16 PM, Dmitry Baryshkov wrote:
> While adding interconnect support for the QCM2290 platform some of them
> got the c&p error, rogue MASTER_APPSS_PROC for the config_noc
> interconnect. Turn that into SLAVE_QUP_0 as expected.
> 
> Fixes: 5b970ff0193d ("arm64: dts: qcom: qcm2290: Hook up interconnects")
> Reported-by: Konrad Dybcio <konradybcio@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> index f0746123e594d5ce5cc314c956eaca11556a9211..6e3e57dd02612f3568f07f1e198028413f463c69 100644
> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> @@ -1073,7 +1073,7 @@ spi0: spi@4a80000 {
>  				interconnects = <&qup_virt MASTER_QUP_CORE_0 RPM_ALWAYS_TAG
>  						 &qup_virt SLAVE_QUP_CORE_0 RPM_ALWAYS_TAG>,
>  						<&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
> -						 &config_noc MASTER_APPSS_PROC RPM_ALWAYS_TAG>;
> +						 &config_noc SLAVE_QUP_0 RPM_ALWAYS_TAG>;

Still incorrect, this should be &qup_virt SLAVE_QUP_CORE_0

Konrad

