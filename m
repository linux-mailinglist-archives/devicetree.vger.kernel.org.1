Return-Path: <devicetree+bounces-251713-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D52DCF5CEE
	for <lists+devicetree@lfdr.de>; Mon, 05 Jan 2026 23:21:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F38573007673
	for <lists+devicetree@lfdr.de>; Mon,  5 Jan 2026 22:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76C28311C39;
	Mon,  5 Jan 2026 22:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bl1LYd21";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZeIKck/2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E468B2F3618
	for <devicetree@vger.kernel.org>; Mon,  5 Jan 2026 22:21:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767651663; cv=none; b=mfkn2z9YkJS9iu/4k5eMYcrTNU16TCHi57/c6ssoTT4Wd7OMK2ELthY5lBzOBj3ovhsMKNEcxSwEDBhez1XpQ6yYW5lnrVmILveJkK244QZNl03PYpPWmIKXnO4biKg2lju+S14V8rt798jHjQRvuRrdWjrmx7rts/pjxsIDua0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767651663; c=relaxed/simple;
	bh=d6UznWfdHxv0MpKmBa9LwN1mmIS4ZJCNUSS8+kvdMtE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HhbPAj7RdHI0qLaLO1OgY/jW1uMlq/xyBDe3PQam51COT/PEt/YmYpBJuM0atsCATyOV160QfiVBzvmK547Wmxpl5y4whei4W0Jt9jX+w+BnSqo7txZQ5YjC2PIK7aSh1xRfeA8cwiGHfYlfV1G69uYh5svORikx/UaijWA4fHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bl1LYd21; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZeIKck/2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 605GOK9J1918660
	for <devicetree@vger.kernel.org>; Mon, 5 Jan 2026 22:21:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=g0fZliYctjACt0ZsbM6HzuSn
	8uaiOqLFgLIVUIMdSuM=; b=bl1LYd21jSHcYiDKmzUk1K9ARbEXaGn2SggweCUi
	CKeXRXpxiQqHZqAcurclOA99hYskco6CmMlUozL2bKGgZUXYm2f4yTXyeoZtbH1L
	DY2CUQZibvJQunq7fHtP5pcMlXM6BtZC4ZSzfkkKPRGFnMuaqvQZEtqPMmCVFtPE
	qeNqX7Ys8JNlYcZoDBDkj5Hy6jXDN5vDMlzW7POPpn5VCcyI/c7bWKGDamXL9cnO
	sJtDEXfZBHwdJamF+1Z7c7fi5Z3yaMt3KYWTZkhXnI1sbsrQFszewjvZ2FgVHxa8
	1yyEgHd1vMvKYmgHWIFzr2mWij7NiMTq/yrmo69jkBpY3g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bggsvrx5a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 22:21:00 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-888825e6423so7047756d6.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 14:21:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767651660; x=1768256460; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=g0fZliYctjACt0ZsbM6HzuSn8uaiOqLFgLIVUIMdSuM=;
        b=ZeIKck/2MmsHdjeEfjN5IBUzecmCCazmgil2npzYlz/VsTNN0NKs+D1zcTR8nvWKcy
         T8EKypxk2FPeiTlVm9Um50xR6m6xx4zlzL8BcKOUL07tDG1LN8qOz4ulsf0ylFQKOKVH
         ULcVgW1BYNIm55kSIKOiwcSvqMLaF5Ihz/xzxNBXUuYUj1QNvNUSGpUKE5NGd8YUp8b2
         XrMjJuv4xJOP1wqD2Raa5zWbX9XhxATQxbvWsrD4cPO1KLeLAeznjwXuDhspfeZ4Ifrq
         eFbH1u7rPDNCRPvXdOSWVve4WPiAb9/N9vtYcro/QxHs7P8MJyRhS1kaagp4ZPoWLUEH
         zgdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767651660; x=1768256460;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g0fZliYctjACt0ZsbM6HzuSn8uaiOqLFgLIVUIMdSuM=;
        b=hE04q4U4fkinZiDeofIYC8lJ6Q4TwHogCTi1bB41d0xmJOsyqJ4Vs7gbiPOxhmf8wx
         N/xqUO5N/orKsmm/MF8Xza6GvLaYnOea2Oye59Bz4lxZC96aM5xmekREuYajvaoIVF2g
         YMt4ks4UFwdQzNtW3Tr1mzLQkHeZ5VyLKOoCZ2+hhwKf74CesWoe4bNMwvmBhRMA/RIA
         lyb5Xtj1mhFEpc3R+vePhXcRR3i9m8olZh+HCGaRvd0lpJXf/QHWRewtEtyzZidpWjNX
         OlzRNG6Tp4LXDD8Y8wu8lCsMUFWvMQXmCH88ZBtFf5V4zv42vXuBQ5G5h9gM4eri6JTt
         8zhw==
X-Forwarded-Encrypted: i=1; AJvYcCUeoQc4T++nbRXRqfVs+eH6lVILtExx3tQMdWlf/s/1T3V+FiCLEBMxFQ9cV0SqVJdFmtzLOR4i673u@vger.kernel.org
X-Gm-Message-State: AOJu0YzVZ2X/qSBcnwbjWLimioSdhFqc8lF6Yc+vL01s5Upfk6tOIguH
	Q9Qm9IE8ak/tw5ZfTfHfa2p1NqwfRM+d08zWlCt6XVNSVBczKQUV4j4m1lTRK2kzSG65LURwAmi
	1BwYRJ3SK6g5bX9e96MhcxjzW4XSFIM8Eie1O420Cu320IPhuCDvXAXfN4JTKUiFz
X-Gm-Gg: AY/fxX5vExmHjAy7OpDVdpH3ocxpKVRHY41b22lpZwSsQjdE/A7OImWg3Uy4Kq5/XuS
	5HvnH7q+oIoY12CN5q1WrTIPltJxQJ7zl4LsIK6mduxuquvLPanrS2mUvkuykwfMRNUdq4kVrcX
	coQ0hZsm/5JDAbvR1dJnODkB8kMPTW72yTsfMAtaClVNIpRYEK8CrPhzg4brr95otridXHBODCu
	4VcCZMYo+3r3t85HimXlg1DM9B1Dznxb9TlEDqhCLltaxQEMfwlasV/NVkJGjEbBbvkya2K5TAc
	gyODF7tISX0flWVA6O/i84ZXrgeBjiziaFO3xpUj3KSyRkJhxEeN93JwyLRbxc0fzZjfuicWGG8
	kOW2IcJq39sc0OSXPjDQh/WHNDa5UI1CjGmMAwFYw4D3Ts+kCJ46sk2yfYC02VhsCwf5I7eSLdv
	dXXEGAc+Mt54omQgkVrWtp2vM=
X-Received: by 2002:ac8:57cd:0:b0:4f1:83e3:bbc7 with SMTP id d75a77b69052e-4ffa76db6eamr15736521cf.27.1767651659753;
        Mon, 05 Jan 2026 14:20:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH/lIX3t8X6gbr2QumiMF2IqSfaMQq2ruiQpqdZbynXdzRKgvS3PXF3MUXERhoJkc0UOLV0xQ==
X-Received: by 2002:ac8:57cd:0:b0:4f1:83e3:bbc7 with SMTP id d75a77b69052e-4ffa76db6eamr15736131cf.27.1767651659208;
        Mon, 05 Jan 2026 14:20:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d5dd06sm105969e87.52.2026.01.05.14.20.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 14:20:58 -0800 (PST)
Date: Tue, 6 Jan 2026 00:20:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
Cc: vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, manivannan.sadhasivam@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
Subject: Re: [PATCH V3 0/4] Add UFS support for x1e80100 SoC
Message-ID: <y7lm6zqgbhk4243diyotvox75tcmzhgbkypbkaskrtjcjbruwm@ar7kjmiyv2wr>
References: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260105144643.669344-1-pradeep.pragallapati@oss.qualcomm.com>
X-Proofpoint-GUID: 6aCvENSxsUcnO6F8ta419XYdbL3-wdcF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA1MDE5NSBTYWx0ZWRfX9EGCW8WFs/a4
 eA7eaFAF8PD6TGPIlUm7hQ6HlHU1rUM08rvLant9pbzeqvS13gthO2R4gjiWMVFf40lUrBAcjOB
 w/GKZ1jArzh4xz4BhDbLzksJikK85SX+NoRUEzs9tuuS6y3/zi9o6XIqCROb+VszKQ2H076ljyR
 SFclBYi4jjjG6kpQNJ+6RtJYrjWPp7H7Z8plukPWOyYADVBS1uyQ66gBPTGazBl7cqEuH2wjV+L
 WS5KZn01lIajCrIuAHDQfFBc8uAa0q9J83J0jtCkgf6voblsf5UbOB8Re99TV5Qou2oKBe87R9L
 Xdb9+Bc2xpd6t7dWkcAAmipRlhlBZa6+LBNB0hNS5Zzg/A++EKYpAnyD7T6H8l2G/jxoZ4dSJXZ
 1HxllJRVhApjmZK79/0St5M9v+I1W2F09/BWY5ksgsTJLEN2FA4DvFMgQ9QkH6fhow+aVRVFjix
 nSMnVSuIlSt2sTAuFKA==
X-Proofpoint-ORIG-GUID: 6aCvENSxsUcnO6F8ta419XYdbL3-wdcF
X-Authority-Analysis: v=2.4 cv=Yv4ChoYX c=1 sm=1 tr=0 ts=695c394c cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=atQpAzJIPGnAHsar4hIA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 impostorscore=0 bulkscore=0 clxscore=1015
 lowpriorityscore=0 priorityscore=1501 spamscore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601050195

On Mon, Jan 05, 2026 at 08:16:39PM +0530, Pradeep P V K wrote:
> Add UFSPHY, UFSHC compatible binding names and UFS devicetree
> enablement changes for Qualcomm x1e80100 SoC.
> 
> Changes in V3:
> - Update all dt-bindings commit messages with concise and informative
>   statements [Krzysztof]
> - keep the QMP UFS PHY order by last compatible in numerical ascending
>   order [Krzysztof]
> - Remove qcom,x1e80100-ufshc from select: enum: list of
>   qcom,sc7180-ufshc.yaml file [Krzysztof]
> - Update subject prefix for all dt-bindings [Krzysztof]
> - Add RB-by for SoC dtsi [Konrad, Abel, Taniya]
> - Add RB-by for board dts [Konrad]
> - Link to V2:
>   https://lore.kernel.org/all/20251231101951.1026163-1-pradeep.pragallapati@oss.qualcomm.com

Where did the previous changelog go?

> 
> ---
> Pradeep P V K (4):
>   dt-bindings: phy: qcom,sc8280xp-qmp-ufs-phy: Add QMP UFS PHY
>     compatible
>   dt-bindings: ufs: qcom,sc7180-ufshc: Add UFSHC compatible for x1e80100
>   arm64: dts: qcom: hamoa: Add UFS nodes for x1e80100 SoC
>   arm64: dts: qcom: hamoa-iot-evk: Enable UFS
> 
>  .../phy/qcom,sc8280xp-qmp-ufs-phy.yaml        |   4 +
>  .../bindings/ufs/qcom,sc7180-ufshc.yaml       |  37 +++---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts    |  18 +++
>  arch/arm64/boot/dts/qcom/hamoa.dtsi           | 123 +++++++++++++++++-
>  4 files changed, 164 insertions(+), 18 deletions(-)
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

