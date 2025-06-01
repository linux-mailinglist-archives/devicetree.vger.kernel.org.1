Return-Path: <devicetree+bounces-182035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E478AC9E0A
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 09:43:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A5D461764C7
	for <lists+devicetree@lfdr.de>; Sun,  1 Jun 2025 07:43:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D213519F48D;
	Sun,  1 Jun 2025 07:43:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ojywdJFd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B1AC19DF66
	for <devicetree@vger.kernel.org>; Sun,  1 Jun 2025 07:43:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748763791; cv=none; b=scjSPKSKYMusSeuFMMPQburdiJeRkwd3GeVYxgBsG43ZayIfjsl9xiNfzYTdn2+6u/3/JOuuIRnRb+PsX0tAwq7whE+acOEnV9LC4VUl4G9EiHVk79Dfx8IQXvBgHdSWEVM1mGg8Nu6WQc7kKmqB+IFpIG93V+NiTIksQ8PDND4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748763791; c=relaxed/simple;
	bh=J1aNWmKuavb0kwWBmJp5bJMNxf1U8ThBEg6w/MJfTOg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZUkDRg5RLWYqcAwjWm8FoGx1ChJYWlgzwxHfDjQeDpQdvYVcnNhKDPb+ZvDHJsMO6lTUxmjC/od34r4eydkmDo/EHrZn9/cjevKOM1wSDvH9u/FGprIo2RMO1iSUhtY26aVQwJ8tEBC1+NJHXvQFJY3RMz6vDRGTXmzHpgBCFMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ojywdJFd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5515tgpW030712
	for <devicetree@vger.kernel.org>; Sun, 1 Jun 2025 07:43:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qcZlYbP18rNVn9xrHBhrX597
	iuAFcM787JfJF7Y3HqY=; b=ojywdJFdqUrwe9IqRREaDaEtCgPvj5wGXqEEK066
	VSphZLbLQzUaI8jegxmVEWdpXQLdauo8tbXfdW+BWFjYBEBXD8DF8cKs1+/k1JF3
	MIpyr8DiHnYVH6ooQY6ChooygN57QNAbVreQqfSLzW3XdOkb7JviiEDvpQS6EHDF
	xATWZvhhPCgLIh7mHAm88PknryTGArfPy455GblXXCDXBKSUuhA6/GYDly8JsDPZ
	Zc+HakEdj761vI7rCSXRc4MKdDH3CJV7F/6LmruSp4ezkFrJw8kjVeH9Shb4OWLE
	0XrnJGCfWFkvRP68r/oOu6TWdb6bUWv9kvpMl6TYnZ++4A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46yu2a20ye-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 07:43:08 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c92425a8b1so379281385a.1
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 00:43:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748763787; x=1749368587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qcZlYbP18rNVn9xrHBhrX597iuAFcM787JfJF7Y3HqY=;
        b=JMDURg2ynrJswY7Kb7nI5DqzkTWPz38l7cB0lw32ck9hG6SdEug/1+OnvQGI+DkwGZ
         jID3AUlAWfV3Id8aZKoX3vcGYP23suFe5xiV0SJvBjS72V8zgfeg8KeCI5/Nrp3pPAKS
         QDnyvsbImHAxCo5GBhBzDWHJIhKUPUB8qDpNxHNhn01z1eO7kkEZkr798iy98l1eCkGO
         l8TieeGhkSWlqmlj8ZpuKR9dDiWqRRJvizysIprHjG9dFryvIG1Jv/MJXslI2IayiZTf
         FMbCaPTAtI1E1t7J72NMh94gou+QNGGQGHYIVqNCYC1Bsk5C1qpwJT1Mso44acygnaBs
         Q7dQ==
X-Forwarded-Encrypted: i=1; AJvYcCWbrkqH94ea4EJIy2tVcEK4VU66bdg++HENngTI8fNSR3KUi8gTnowx9e56sN/JtpuJOS5pepH4P48u@vger.kernel.org
X-Gm-Message-State: AOJu0Yxq1FSx+flFrqkaF4k9veT7G1AeQFCJfYDiknrjEzpayzfVuAU9
	ahIBWbazAg49XUO+72wF2oKkvz2r0aHEMtOFFocabEBpXP9AUvYEWzMGfJNa73mQi1mSdEaLluO
	g2U8OFWB/mi954gylRYcxMfhZeBGCKbucOP/ZtNBcqVN/HwyD3DV9iO0g/LU9rkz5
X-Gm-Gg: ASbGncvsFN1+GGnP5qfJj5+1n6Wu+aFWCOCYnfnj9uHQu62+jGHd+RHj13BPcCXGqP9
	qF9XJpCDv1+a0kTPtZp7lPWQDLQ/Z0BpovCP7owvzkyQqUvo7zQsDVTAIrFPtSJqF0ewqIgFdac
	/Q+1aZduowa1p0ODDoPZnZVJZs9bhJXVMNO5ReBOQDKW4VZjnslPGTJfTCAdh6MXGKCfIuiQEfG
	UQ9RuGqP30vlayuFtv6gX7Yjn2QrGKcVrbHEIWnUu4YNqo+HfmGuUXit1X5P8NUZmzB0iXS0ANM
	PvCF54KrpRcnj9ZG8wP5oQrA5pDVU6nQxbZg9uJwsU2haQML2FwkYb4/46RFUqDAG9h2R2z0MnA
	4+BmrGd4Asg==
X-Received: by 2002:a05:620a:2905:b0:7ce:e9ac:1b2b with SMTP id af79cd13be357-7d098777088mr2062373285a.7.1748763787265;
        Sun, 01 Jun 2025 00:43:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOBY5Oe/tfwV1oH1tsHLG6oXP5/nNOmMdkZvm/PaZNrN2uU9iYKQ6QZLPk3o21mpRhqXxz8A==
X-Received: by 2002:a05:620a:2905:b0:7ce:e9ac:1b2b with SMTP id af79cd13be357-7d098777088mr2062371585a.7.1748763786921;
        Sun, 01 Jun 2025 00:43:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85b558e0sm10870331fa.63.2025.06.01.00.43.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Jun 2025 00:43:04 -0700 (PDT)
Date: Sun, 1 Jun 2025 10:43:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 2/5] arm64: dts: qcom: msm8996: Add Venus OPP table
Message-ID: <4g3y6no7yjufye7vnwfp4ylhvxghaqop76xuaubslerhu543ci@czy2tjq4rcfu>
References: <20250531-topic-venus_opp_arm64-v1-0-54c6c417839f@oss.qualcomm.com>
 <20250531-topic-venus_opp_arm64-v1-2-54c6c417839f@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250531-topic-venus_opp_arm64-v1-2-54c6c417839f@oss.qualcomm.com>
X-Proofpoint-GUID: ZdqzHt_ArNcTnfgQ-6LwELTRkjDQytzB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAxMDA2MSBTYWx0ZWRfX2G8wPjIxN48M
 A64OM0iLpejokaBLVKtOiLQYNfnMeuNUWzbzB/bEppknhZQozm0K5urea+tMbT16VjLcaDH6sHZ
 pAk0yS0yESBYNbdgvHXRCWdoMpILVc+ocSCl1YSa1XdMBuCZS+LBH86d3abdGhKv3GU1TfhyCf3
 yx3mc6Aw42jLd4s4P6HIs9mk9euBebBExmh+dKZkgjl+4ePX7g1wcl3PzTyhaON+estooY3Mmjn
 R+2g9S1nQD3j8q9MXde0oW/4EApiowldIacue8qzUrhws5KBpV+UFWSVcHVCXN6AE1+hBTfDa0i
 pxWw0b+qeZ9OhE7q4HAKh7jYjHWbZtnQCLv34g6Ys3S+GBDSj5hLElFY9Vbqfp7IhzquHmCDKp0
 BEWEFZCkzqshJl9B45hVpqlPSyzGmIRPRlXbfpriCvEWzxO+KbpyqD2x+e35dDMP8JcGS49r
X-Proofpoint-ORIG-GUID: ZdqzHt_ArNcTnfgQ-6LwELTRkjDQytzB
X-Authority-Analysis: v=2.4 cv=WYIMa1hX c=1 sm=1 tr=0 ts=683c048c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=-uWcgiNW1zdX3ju4chUA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-01_03,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 spamscore=0 mlxscore=0 priorityscore=1501 mlxlogscore=837 bulkscore=0
 lowpriorityscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2506010061

On Sat, May 31, 2025 at 02:27:20PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Describe the DVFS levels explicitly.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8996.dtsi | 39 ++++++++++++++++++++++++++++-------
>  1 file changed, 31 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996.dtsi b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> index ede851fbf628428f5740ca8add65ffc05360cc62..7bb34e60739b2e561ff5fd9e19a6e617fb601a60 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996.dtsi
> @@ -491,27 +491,25 @@ rpmpd: power-controller {
>  					rpmpd_opp_table: opp-table {
>  						compatible = "operating-points-v2";
>  
> -						rpmpd_opp1: opp1 {
> +						rpmpd_opp_ret: opp1 {
>  							opp-level = <1>;
>  						};
>  
> -						rpmpd_opp2: opp2 {
> -							opp-level = <2>;
> -						};
> +						/* No SVS_KRAIT/SVS_LOW */
>  
> -						rpmpd_opp3: opp3 {
> +						rpmpd_opp_svs_soc: opp3 {
>  							opp-level = <3>;
>  						};
>  
> -						rpmpd_opp4: opp4 {
> +						rpmpd_opp_nom: opp4 {
>  							opp-level = <4>;
>  						};
>  
> -						rpmpd_opp5: opp5 {
> +						rpmpd_opp_turbo: opp5 {
>  							opp-level = <5>;
>  						};
>  
> -						rpmpd_opp6: opp6 {
> +						rpmpd_opp_super_turbo: opp6 {

These renames deserve a phrase in the commit message. With that fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


>  							opp-level = <6>;
>  						};
>  					};
> @@ -2333,6 +2331,7 @@ venus: video-codec@c00000 {
>  			reg = <0x00c00000 0xff000>;
>  			interrupts = <GIC_SPI 287 IRQ_TYPE_LEVEL_HIGH>;
>  			power-domains = <&mmcc VENUS_GDSC>;
> +			operating-points-v2 = <&venus_opp_table>;
>  			clocks = <&mmcc VIDEO_CORE_CLK>,
>  				 <&mmcc VIDEO_AHB_CLK>,
>  				 <&mmcc VIDEO_AXI_CLK>,
> @@ -2364,6 +2363,30 @@ venus: video-codec@c00000 {
>  			memory-region = <&venus_mem>;
>  			status = "disabled";
>  
> +			venus_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-75000000 {
> +					opp-hz = /bits/ 64 <75000000>;
> +					required-opps = <&rpmpd_opp_svs_soc>;
> +				};
> +
> +				opp-150000000 {
> +					opp-hz = /bits/ 64 <150000000>;
> +					required-opps = <&rpmpd_opp_svs_soc>;
> +				};
> +
> +				opp-346666667 {
> +					opp-hz = /bits/ 64 <346666667>;
> +					required-opps = <&rpmpd_opp_nom>;
> +				};
> +
> +				opp-520000000 {
> +					opp-hz = /bits/ 64 <520000000>;
> +					required-opps = <&rpmpd_opp_turbo>;
> +				};
> +			};
> +
>  			video-decoder {
>  				compatible = "venus-decoder";
>  				clocks = <&mmcc VIDEO_SUBCORE0_CLK>;
> 
> -- 
> 2.49.0
> 

-- 
With best wishes
Dmitry

