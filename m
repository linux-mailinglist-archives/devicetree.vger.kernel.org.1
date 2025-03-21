Return-Path: <devicetree+bounces-159695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 20AF0A6BCAD
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:14:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B25B1188FD18
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 14:14:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 371D71553AA;
	Fri, 21 Mar 2025 14:13:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FPVlj4zz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D230778F44
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:13:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742566423; cv=none; b=Jji7Z14lucIAO1yVvhNa4asTKAD44j46ezYC2Fyi1Gu46W9lDq9kCqSccaxC7qypa6/lEebQAW93lEpCr7MrDNv2FL/hHuG0Dr+PAbZdoYz7bguhivtpgE7ovNrwzYpztQjVOA4ii40j75g0nqcyAOrLv/P7tognNnCJ3FAUI1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742566423; c=relaxed/simple;
	bh=uBUiccQ0E1+lDOw4b+8JHHFhusVeUfHW2gI08CvcdIE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tmGciu6ErATC7zGgWTmQ/eKg1jXcgerokOMeq6qIBjsVGX5v4WnDpp4DUcdp7cw8PqYv7ep62UW/75o8gi+auwRbImr1UWCLP/yKW/XlNSaIRGO5g992ZCf2FWzeU3SBMpxNaiVvCwW95NYxU8eXMN0Q+Mkm44m7Q03IA0Yr2w8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FPVlj4zz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LAT9UF022053
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:13:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/OpsejO/nFX3sSiWvHtSM8e/
	VQXv7bXmKGj+8glzoBM=; b=FPVlj4zzrVAJVgRA0tFAUrVa2rWZvCfOke+pU7tr
	Hpu3XPD8rb8vPqIY3TTEBf50hszdjHgJDzd+tg8X/+H++klmbMvOY0ehw99aCSa7
	uq2dQ+4QA4QKRvUXCxsYOrv+eyLW6cigopp0orb8wcW7LxFYs7RjfMmfFxHMedhc
	4V7HSUn1rEfmnK9dz8P1aCLCRmbluP+r90Y3sb2Z3yjN1e0IsJk0z0D2l1iUI5n7
	rxDbBJERCAAltD+oclMWWZiR9XON8zcIPDBpn7VOjRwnEAJ4ivxEX+tVmhfQ439U
	YGgE87sWNhZuCBD00bqsTaO45IlZH4rzKMoBbEXlCmRSZQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45h4wpgx4u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:13:39 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4767bab171dso18366941cf.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 07:13:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742566418; x=1743171218;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/OpsejO/nFX3sSiWvHtSM8e/VQXv7bXmKGj+8glzoBM=;
        b=cTmPUXVN26tcu7EWRwqWA8WlqjgDopBu4mHmHETmkpAHItkcjNVVU6nKDak126Qvru
         aTLHA/OC7+kTCdy63Qo5cMhVBBgIzAPkv2haEZNgmsJ8zhVvPwWnH6Ua8ASJ68cFxUDV
         f1FFw90/Q26/6MlbLBSjMMEKwSJ8OU5Ok98IgD2/BDV6Op/lz3THxwym+M1jOS2ni3zT
         uqoYeoP4g8Z9uBIGp2baY/QHaAfPG24DS8V9yxuLkKQ4taDLEcAJMaMQ5rQ3wIBpB5qH
         hFTU32YXUxTbQRF3HxPnY0AytT6e4zipWhIJDvwPbf3YcyL8m6SuWfHGr9COCPOK8mqd
         RWDQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5ntmGej6Rbzq+7B0qk9IOMVX79Yh8I/0NeYFSnGg8NVNuGOUEbwebBMyqfMhjdE+4tVmhJcOoI3cP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9EM38tVEpV9ZcbxDKVZuh9vPrsbMNXrXhc4BZMeopdZr1x2fw
	sNXFgICEtB+WobkAzBBWOr/d95Be39ilnBNYH4YZbr17fu8jfNS3JgBTLZKvXg26J8CtEFJWcnW
	hzOJ8fmvep+E0sRDvw5XwFndC0HDf2npx7iLtApkBxTczpX/RG2jtYJxAi9ir
X-Gm-Gg: ASbGncusGzh08bnbdZNLqm05ykbuH32fh7sP6/OCZT9xfN7+jTtvYmmJb41ncS2rawB
	ZAi+4F+fKzaB3h770errkh5KZWxCk3ACAf8+TtuRD7lEVA2T2rQEYyej/gqFLrcD7EVN0xyhMfn
	7HubRaug+XThr9Z3FdlaOy1BYxZYvrwBjF/mz41ycux7SmzhtywUaHbYKkWN1QbgeT4PGZwhlye
	AVMIf/KwLMo0tqBS5z4qYBggwJiuI6DB4AWSqczL/Hg76F/zmLeGbHy82bOaTzNMXCdyndrVSmY
	uowI6oGIsQK7a3LwzCthMLIDtStumWcQ86hqy+Jw6+6ca/6qj/Y6kYimwqJSGIEeCwFisfLGfIi
	vD8w=
X-Received: by 2002:a05:622a:1896:b0:476:8225:dacc with SMTP id d75a77b69052e-4771de6129amr63272441cf.49.1742566418642;
        Fri, 21 Mar 2025 07:13:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcpv7lxv7hq3U7s9ctlOYQCQmLNU4dbw+zXD/Ekb+GQhj36pTR5y+EtUBwPhZ6EX2Ma2zidw==
X-Received: by 2002:a05:622a:1896:b0:476:8225:dacc with SMTP id d75a77b69052e-4771de6129amr63271671cf.49.1742566418102;
        Fri, 21 Mar 2025 07:13:38 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad64805c8sm194189e87.90.2025.03.21.07.13.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:13:37 -0700 (PDT)
Date: Fri, 21 Mar 2025 16:13:34 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: george.moussalem@outlook.com
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Nitheesh Sekar <quic_nsekar@quicinc.com>,
        Varadarajan Narayanan <quic_varada@quicinc.com>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
        20250317100029.881286-2-quic_varada@quicinc.com,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>
Subject: Re: [PATCH v6 6/6] arm64: dts: qcom: ipq5018: Enable PCIe
Message-ID: <5seajsw64e7mber5yga3ezcnvip3e4o2wylg3uhvaiu5pob47i@ea3rnxqrigcx>
References: <20250321-ipq5018-pcie-v6-0-b7d659a76205@outlook.com>
 <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250321-ipq5018-pcie-v6-6-b7d659a76205@outlook.com>
X-Proofpoint-ORIG-GUID: CVcafx3FJKiUiXxQJ_vBYEBu_WdemSy9
X-Proofpoint-GUID: CVcafx3FJKiUiXxQJ_vBYEBu_WdemSy9
X-Authority-Analysis: v=2.4 cv=ZN3XmW7b c=1 sm=1 tr=0 ts=67dd7413 cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=UqCG9HQmAAAA:8 a=EUspDBNiAAAA:8 a=zzgNwz6f6jWhJtTWXysA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=475 clxscore=1015 phishscore=0 adultscore=0 lowpriorityscore=0
 malwarescore=0 impostorscore=0 spamscore=0 mlxscore=0 priorityscore=1501
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210103

On Fri, Mar 21, 2025 at 04:14:44PM +0400, George Moussalem via B4 Relay wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Enable the PCIe controller and PHY nodes for RDP 432-c2.
> 
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq5018-rdp432-c2.dts | 40 ++++++++++++++++++++++++++
>  1 file changed, 40 insertions(+)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

Minor question below.

> +
> +&pcie0_phy {
> +	status = "okay";

If you have schematics, are you sure that there are no supplies for the
PCIe PHY / PCIe PLLs on this board?

> +};
> +
>  &sdhc_1 {
>  	pinctrl-0 = <&sdc_default_state>;
>  	pinctrl-names = "default";

-- 
With best wishes
Dmitry

