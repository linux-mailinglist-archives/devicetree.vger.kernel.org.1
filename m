Return-Path: <devicetree+bounces-221074-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A71AB9D19B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:10:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9F0761BC4F33
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:10:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D31B2E1C57;
	Thu, 25 Sep 2025 02:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gfUnTKVx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD13C2E11C3
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758766223; cv=none; b=mf9VMezcoQs3A6ujGN3G9EcMbuK/4MzSfBVWBLSd/9z2efMEm9h1FqFlV5MH/h/3kzJpD6bVbmvrQ29m/C17jfdNZV/SJfWeuRM7kkQ1hbr7VYto6lnab8fgZ/XEzvWGA1oqUhqJ50xJCUD6Y0UmKIMSWWoiTL7mILek/ovSr+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758766223; c=relaxed/simple;
	bh=bjee08JRPy0I62XUoi+pR4Sr5AISrB+/yfRGenhZsNg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=frRGszX8351epNaUn7Jv2ThcYjHS1XdHeE3QbkN5Un0rVRLKGHq4i2TBOgg3tmvi3SGIyyXIzqoeyyifGOs3axvL/L4QC3atTwGmbriydKBzLUjS5vEHWGoia/exCuod7ddC4QYDNhqFjq/3IWBQr3JyMr4hyMk+WhgP5nt9nsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gfUnTKVx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P0A38w016438
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:10:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=C/7uHCKAmdWyZHNd0/dLgQZx
	NGpO7Z+I9wSgi4aQWpw=; b=gfUnTKVxKRrXAnjEvnmU379FIOSq0pBrvmZrUcpr
	i2ca7c6etOZPd92L7yYWVfmZb//GRUIONVaEeH4/kC+q3KbTI1Sal/hx2niUO7VR
	Okf3/wm3C0AD/RBZIg7zh4B/V3BTGYAwNu6Df7mv0b6ryFB/tdUPwGJzYWvuRjHV
	qyiiwqEiQ9xs84pobZjXX8ncipxxmxlNoXHV7B7bsX+BtK5IV/jFH+VE60uOzq/M
	WwO4PmPu7sXXTem20yz31z8Le07FlzGLVHy3ttdPJqQv60hW1lDR26WVSzVcHGsC
	y11+WmSP/ZZHd5QVCQZfMjlmAyR2U1Mwi4mazGxWEdwoYQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nyj7cu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:10:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b31bea5896so4381921cf.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:10:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758766219; x=1759371019;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C/7uHCKAmdWyZHNd0/dLgQZxNGpO7Z+I9wSgi4aQWpw=;
        b=RCLOtOeDwKppKnOkIKRSbCS4n2FVloynP0Gh1tLKPXrD5sxdG/548HjREhd/ANenjG
         R1mtji87c7og6Zky3REXqsm+m6cE9q00vBLGdxFq3dwftK9gAEg/uJgGxmn0tiWMqqM1
         4iRCYclWfWIm+JlfdlqYzsk5LkCykidtvq54ZHVemYnjkBmIPn++qa+bLdiT7gh5cm9V
         twrXRgaEvhURa6OaZNSi2tRWC2cNlhV2iOSwS69GnpkJ/3kaKkKleNGTI/UimPRepYfO
         8G3DPjxWjxzwPPoepd9TNuHFn2KPAc6lElgIE1a0CZMnXloAgHJw6qHBlVsb4DKzbYs0
         1jMw==
X-Forwarded-Encrypted: i=1; AJvYcCWoz7RjMOgeWjZyNAsFrLm+cikrLH4ie+jMpLnMK8/vF4syNeeYgHWW25ex3+H2m4sEtZahbH+xHUNN@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1VqUCB8vUbkDQy6TJ0C3egPob8//OOXt0jxr0AMQdRoYQgetG
	PE4PfbYJLs3K9jtbfflHvXHWA3DYG36MxaKW8+7H1zAQVv2IkU6DGDbinaoaIARGijX4txR4Wyb
	UTuMrIEdb1hoAhFgasjTXpxTqBs5QMQrzf4jIwf8VYbfDOxTKDdKSlx9cMZuERe0a
X-Gm-Gg: ASbGncsqd8zc62ko+sgNTsMKv0yPEOfJOM5xVC1t8Iq2BHApa8Jbq/+1trijlj21ryi
	9pltmUUkmU3Iscq5NqmtYFmYq9dNLHosgSm7oVSwa+bDMRBI2+gmjCXXWJKaSytKzXCfGaSgZMl
	N4iJOgspFapYwOIQBBffbupt0MbAY08zYMXFavQfG04AQhH5mMJumck8F88Q9feK/DtO9QRxs4j
	MHpAne6gUeOE0H2uwHq9702vDjf3VsUlDv0KyKYVLHMT14hANNnJU7H41WBNIo7vvcTzDkAJxXU
	mLWRDP3/xbGx1Haa2ISlkVle/6dxdrdiHwW0fb5S3XOxj0nR+Q1x+jack8e3gQe01FhJ8V+PWgh
	ccQchbbC1B1NcknC5Ylr7DAc3GX0K0vOOB/bFArDblgKYyDw4ULnl
X-Received: by 2002:a05:622a:8cf:b0:4d6:173a:8729 with SMTP id d75a77b69052e-4da47354eb9mr29433951cf.10.1758766219509;
        Wed, 24 Sep 2025 19:10:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvUUmMZkLOjmwfUxC0iVnkbYdMU7OcIFMO4AR+CisgKDy2LIfUOS6Qp9qM3Rb+mOQMi+xa4g==
X-Received: by 2002:a05:622a:8cf:b0:4d6:173a:8729 with SMTP id d75a77b69052e-4da47354eb9mr29433481cf.10.1758766218832;
        Wed, 24 Sep 2025 19:10:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313dd67c4sm239442e87.55.2025.09.24.19.10.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:10:16 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:10:13 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 15/20] arm64: dts: qcom: kaanapali-mtp: Enable modem
Message-ID: <iexa64nrdqmwitvunl3inmgtmhufphl3p4p2kbvhgcsb2y6l7j@5tpt23yd6jzh>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-15-3fdbc4b9e1b1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-dts-v1-15-3fdbc4b9e1b1@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d4a48d cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=noE4yVIB50t1Y-xfs_8A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: gXIZ28NxAO6MyfkytVwGhMAlb-vv3sRz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX6YmSDcBHROzk
 RPIGg/Spo8WPuZU//mNTEmSPAYcma6M0G4g3yTlWIOvlJhkBHT6/WYM3KTyUVGlMEqDIw9mx3nK
 R8oUYH/31E6iO5KVdx3edfZiVBPArOYh38hrSyaBSfCJbZFcTinM6WLLcz3gEykkonjMBmDzSrD
 XCUgR37PsdCs0n0nHiV6j07VI/fSllIog+Uf21PUEF5MG1+4nBzL/KTQucWTHC+tKLG2CN90UyG
 +smt9+v+gebumTSZB9khZAXrX3IqUP6dnUYw7zndBAK2Y0c/17Z/7eB8G2h3PS03vF/rSFj/Lv4
 wxyRY20UX1qc0KZROPjKKmpiHbcVkc9ffnu+sO8ty5n/xrItgs1ndkv3pCvy9zFOXFwYjApTaoe
 OVTOWuLD
X-Proofpoint-ORIG-GUID: gXIZ28NxAO6MyfkytVwGhMAlb-vv3sRz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

On Wed, Sep 24, 2025 at 05:17:32PM -0700, Jingyi Wang wrote:
> Enable the MODEM on Kaanapali MTP board.
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/kaanapali-mtp.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> index 2949579481a9..8d1b3278389e 100644
> --- a/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/kaanapali-mtp.dts
> @@ -1263,6 +1263,14 @@ &remoteproc_cdsp {
>  	status = "okay";
>  };
>  
> +&remoteproc_mpss {
> +	firmware-name = "qcom/kaanapali/modem.mbn",
> +			"qcom/kaanapali/modem_dtb.mbn";
> +
> +	/* Modem crashes after some time for OEMPD load failure */
> +	status = "fail";

I can't call this 'enable'. Why is it crashing?

> +};
> +
>  &remoteproc_soccp {
>  	firmware-name = "qcom/kaanapali/soccp.mbn",
>  			"qcom/kaanapali/soccp_dtb.mbn";
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

