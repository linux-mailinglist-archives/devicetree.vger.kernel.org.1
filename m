Return-Path: <devicetree+bounces-158928-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 414B6A6892C
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 11:13:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 983F1167A28
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 10:13:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DD3B2517B3;
	Wed, 19 Mar 2025 10:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TC05RK93"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8FFE6250C02
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742379195; cv=none; b=X9l/c/iIi4Qsv0UQbMTMEZuiB4f600wjUy9XJhMv9UpfQF0TX9a95BwhKzFi1GjLxEsIVptkq8L0aHSaSY2f1bBPtnZ+m0I6G4UKMD+47x+MV7UFutP587guFedKTJ3KRqY+2LDdxDg9yMxvRm0QcftbJIgmCqnXDjFgQWl/w1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742379195; c=relaxed/simple;
	bh=FQqkd3UD5cFKUZMWDXjjIYnJpbI4T4OLsCT8E5377IY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qSZGQ97lcDywjCvFcIB/WAkAZx+qfTFImhacdP+4jU6Qe7Z6DdMvRqrS+vB9yIDyqt+3zMpPJ7RCk29H32UT0yvNUiHetRlx84Gx7gg9GJdWkdGR+fcGdyWMYtYniapYcp92sMbBOFmoZAL/3JhK6xjBVfXNM+rbSduyPxj5ahw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TC05RK93; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52J4ln8D009917
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:13:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BzOgaUP4YY0eDws0aWKAsEU7
	oVttDPeZjX9XK/23ugQ=; b=TC05RK93YiF1GqByldB/gf6L7axjIPdv7ShEZmly
	j8CrpntMRdDRMXze0IYnFLcMyQvieB4ui/ZgP1Xx9rN5eSGWaGwPF+N7Cte9anQL
	2b5j6MChhm4KDi68S9L2rPgafRwo+zWSYUCOonpyOSM9Co0p6EedXSA3VNREJvs+
	NESxMXXvbspJZ83jKdTkRAvPe3hbI3invE+TI9HOgmW0X1g2+7oLletGcQoQgJEW
	AiwtUWRMDN35aLS/pAYkcKnG1mGIEQtosHgGJdwZFL6w7cOFvlW6ZI9Eccg0VBaB
	30ivw/7XvzVLdQZ9WAWGWk3u/ACOXVp3qF9bb9F/EiH2OQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fdvxj27t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 10:13:12 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8caff3bacso61991656d6.1
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 03:13:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742379191; x=1742983991;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BzOgaUP4YY0eDws0aWKAsEU7oVttDPeZjX9XK/23ugQ=;
        b=SyopH1oRuUJRPmKTrgf7/floRXQBH7ZDSBuojelBCqWdiGqcCwYl4EBOVPrzMCheL8
         VhqAfN+0Z21epdjB3N8L3iqAD1u+pK9zrx9Pu+bhytMlO9KtGYWey/ei6XbiFKGlZYBU
         ic1VqtM+9Ta2Oxt2w8oFJuZAsJ1/xVnZyLXQW/tLIxQehsVTDwf4fVJUhyPwHzpo3kzz
         ZxjHMl7BqlPYgumYG5kzxYNIRzYl4AFEzc4Kvr4GDz4CiOhDxKlFnMgG+GosNksB9IO3
         FZX0vG8PsV1GcGnE6QnqHHx6+iVmOOGm6Ia6WBrXXh16x+NWkvo3M6XUpdoaNjabjlbv
         1/Kw==
X-Forwarded-Encrypted: i=1; AJvYcCUy+FRr0e9JYAjLs6hqirRtLRvU18ONSEu/0i7tBX3zWH2zB6JOKm02XLxPiGXocld9erhehv/lvZ+q@vger.kernel.org
X-Gm-Message-State: AOJu0YymDrB4kmQcJY3ljA2nRDACThzG5LTY4f0LFrQ2iQh7LcG9UrPy
	T7fsRq2gUoJ4299N+Kxh3NbLDDpbn0Olf0eQl2+wfE0ZHHsz3H7hhyEkX0/TjfV4xasa0EAjeTa
	YGpsgPYEwca/0ZI2eUEs22CPoxSYyY+rWFPUnxrk8XV96eU3HxCGdDK96TFj1
X-Gm-Gg: ASbGnctZsjJqp5sfdOMMsrzulWgSg3p9Wdq0ZlOdj4XngH4DZwL22f2Me8csewGpUY5
	EFzbutGGBrO4AW3ICiU2I2atpu7ht0gorKXEp9kIrslvE4stft6OQJ5tA5ZXAfq9IZ9cnhVYYlX
	84eXoorfO6JJicSSMjC5HMgBVGs5F0GZaffmIH+HmSnW7NmY5MN2kt8fFDnIP72Wumf+zD6MmR7
	NSmv4zsrrxHbL/wGr5dIL1sflZGpY97uof60yW19cFhgds7jIxcr2yy04pgf6TFyO/gITgTMGJ+
	KR/sdx2weY9lzNz1dt9yTLLtrkU+DrDDKQoj4STau6G4pexedmeKaegmbzhk91imcTdf0sdZPRe
	/sT4=
X-Received: by 2002:a05:6214:5007:b0:6e8:fcc6:35b6 with SMTP id 6a1803df08f44-6eb292722bbmr30110616d6.2.1742379191498;
        Wed, 19 Mar 2025 03:13:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFomP09Kr2DMPM29iyMwok3J9WTa1tGY/JQNAW2xLViUvtmFK3w/vJU3gEEPzA2eYZ77jwNBw==
X-Received: by 2002:a05:6214:5007:b0:6e8:fcc6:35b6 with SMTP id 6a1803df08f44-6eb292722bbmr30110206d6.2.1742379191179;
        Wed, 19 Mar 2025 03:13:11 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30c3f1da3d2sm23062521fa.92.2025.03.19.03.13.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 03:13:10 -0700 (PDT)
Date: Wed, 19 Mar 2025 12:13:08 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stone Zhang <quic_stonez@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        quic_miaoqing@quicinc.com, quic_zhichen@quicinc.com,
        quic_yuzha@quicinc.com
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
Message-ID: <fhpsphwz65dlsqhyycwabofamacynshz5e5ez4gafkmdain5dp@32dpgc5mrhdr>
References: <20250318093350.2682132-1-quic_stonez@quicinc.com>
 <20250318093350.2682132-3-quic_stonez@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318093350.2682132-3-quic_stonez@quicinc.com>
X-Authority-Analysis: v=2.4 cv=SKhCVPvH c=1 sm=1 tr=0 ts=67da98b8 cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=COk6AnOGAAAA:8 a=rwSZFTdBrp3Ud2uedjEA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: qy7f_Hzw-wR4AvJ13C2WHOZ5_5n0HcW_
X-Proofpoint-GUID: qy7f_Hzw-wR4AvJ13C2WHOZ5_5n0HcW_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_03,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 bulkscore=0 mlxscore=0 suspectscore=0 phishscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503190070

On Tue, Mar 18, 2025 at 05:33:50PM +0800, Stone Zhang wrote:
> Enable WLAN on qcs8300-ride by adding a node for the PMU module
> of the WCN6855 and assigning its LDO power outputs to the existing
> WiFi module.
> 
> Signed-off-by: Stone Zhang <quic_stonez@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 108 ++++++++++++++++++++++
>  1 file changed, 108 insertions(+)
> 
> @@ -320,6 +402,25 @@ &pcie1_phy {
>  	status = "okay";
>  };
>  
> +&pcieport0 {
> +	wifi@0 {
> +		compatible = "pci17cb,1103";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +
> +		qcom,ath11k-calibration-variant = "QC_QCS8300_Ride";

Almost missed it. What is your baseline? Krzysztof has sent his
qcom,calibration-variant patches [1] in February. Bjorn has picked them
up on March 4th.

This needs to be rebased on top of [1].

[1] https://lore.kernel.org/linux-arm-msm/20250225-dts-qcom-wifi-calibration-v1-0-347e9c72dcfc@linaro.org/

> +
> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> +		vddaon-supply = <&vreg_pmu_aon_0p59>;
> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> +		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
> +		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
> +		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
> +	};
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
-- 
With best wishes
Dmitry

