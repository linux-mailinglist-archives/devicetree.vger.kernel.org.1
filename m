Return-Path: <devicetree+bounces-217118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA7EB56D76
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:38:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 52B3F176EA6
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:38:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3F41BD4F7;
	Mon, 15 Sep 2025 00:38:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PQ6UhnJi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BAF613BC0C
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:38:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757896712; cv=none; b=TyPTfeQEmN7T0msM/7+fmUQa7HA1PpknZ6ElIHTwDI1JGEEFCPMsV4ZDttHNaKcdrPvcuF7CEUhfyDY6z83JXzrIQwIbSFYi3VoxZH6ofqzgAZFxuguHbGqavBnl2FuO3woQSfKRbubrJltG8s83c/vaXq5YpzRCXpXJZBk8PIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757896712; c=relaxed/simple;
	bh=U/cNiTmHlLaMm2KtjrkNqdxZrSZOaMAPP2sa3K/q9DM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HdD2JhxPmLeX7/URsmfL+6rthcTqe+AgNvDct229qJSXaLhWPT9mE0V6tNHfxsW0Ktr4gdTW/wT3iu9EGPt4ghr+3of+H6EQ77ZRinagHazS+ny0pKQ0yfno4CrTSdA6yYi2Vr9/8Dpu/GZkoh9m6ZpViC45qQMkJndkgL1LggE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PQ6UhnJi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ENcNYM001428
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:38:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=k4LfGJHir9f3W96IA90YnXWX
	+lavGprpupIft02ZL/4=; b=PQ6UhnJiSzt0sh+EeJrrvlfFKq5yC2d2mV25lWCJ
	fp8QY3Gl9PUjY58ZkyY2m4CStAzz1KurOtmoHKkxM7LZ6Egq3xvnGWf/RPpgoA/p
	PEQfZRrqFrlTnVvrbt5OJ0YPZ+RA0wS0REOh/1CWUArmza6G93x8nSMIbDWPl2zI
	yGCVlHLemZ/ixmlU6DLnGU7FlR4uBCaATORCq88BUOa/KO5BA/NGxhsajx93K6/L
	hY+FntVvvd1hLSLyF67LwPUzv/X6d9flP/jTqcHCzLax8OqXYlO3PwFKTN0ZmP19
	nCeX5fGxB4IpyxebwoW+k/U58kmpQSK8OiZLGjVLNZx3fg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494wyr374v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:38:30 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5e5f80723so76824971cf.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:38:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757896709; x=1758501509;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k4LfGJHir9f3W96IA90YnXWX+lavGprpupIft02ZL/4=;
        b=Ii2KtrP/CAvBDimgEDS/TofVNY6QBK04E9QIKZHEjy34Q634Sw/EB8YzpHlP+Nfd8/
         zwxmp+dtrBurecYw/gOmf39lcSFt/fQ7HN1PunmwHDvFOVvefBFD5SOmOmZKW10QBpb6
         +sqIilyeMUlfadZOKqUVGYq94UlMcVJX890P6Gped2gaEnY2OGO9W6irrYAG9ktSrDpi
         hsrlbjISKkGXEeB7onT5FLdhkSq0Q7bzWo+m8EuccUq6xZEEFIUOTPjuesx+qGmeviBV
         ia+TURJjlziODauFDNlLQahlkqlFjsXggjdCFiwKtxaGMpKFwfnzH05vsXmCLilln3aG
         L+5w==
X-Forwarded-Encrypted: i=1; AJvYcCWg6T57wA3JZq1WawhsKeCxwPS1xdEeWcDJ7cgPYp5AVPUwI6acreYqcPaatjERcIjIRhOmbrvpHZBi@vger.kernel.org
X-Gm-Message-State: AOJu0Yyvma7ApqTx/zf/+ZHHBJAKUtH6xolA/jGb7IC75KsHYr4D+cJd
	RBGP/UQxjbGVDoXvqouYVU7aJKSc038lJoQ8o2DiFox1jVkJa0M7MhcrvUAXaXLAxYO9ERA4Tys
	Dp2+XuNyzwxuOE+cwZEJMvEwO2TevrAzxOUPNfrf7gb4FCr+aI0XlJrqgpZhB6usB
X-Gm-Gg: ASbGncsBHCJBQipN0qSDwiGctrsqNhq4pn1FR8SZCguuxaLPb6JZkU0YQN+CJD0VhO6
	Kg8T8RQp1sM2P93DqGWukBEGL9ipucrbpTXpxGxJ566/S1BkyFHLdeDw/Ll6OkIGbjYukLFAGS6
	OuiPLaTquiRsn2diXKiT7UVsFJhuRKY3tvsXPk5lswAfAhZ86p6x/Wp2oAsC5KY7xExtgBeqHH+
	IIDaP/yPCeA4EFMeuGRia/ham3cBFOwaZeBaYhdZJ3RYe6Q0DD1USACEZGZEeHLu4W5027aEJx+
	+YaMtZDy+23esjMQ8IGpHPUN/WnA6Qib/6rceAa6u1f+oNx8iDe0xZeqhj/PPLHAGBrRCzZIuGq
	ZzYt/Pf2PL9uAk5XyGj1an2mE2HhtOpzZ/f3lSBkB1cFvmCiO2FaT
X-Received: by 2002:a05:622a:1144:b0:4b5:e7d0:20e5 with SMTP id d75a77b69052e-4b77d17c2a7mr127043671cf.68.1757896709193;
        Sun, 14 Sep 2025 17:38:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdxBNz8ovRDoUDh3xlmrvLahFhSQC/BvdkuDLmxuIZWfTBrbIIzOdc39JrTCYrmSYib3fXqA==
X-Received: by 2002:a05:622a:1144:b0:4b5:e7d0:20e5 with SMTP id d75a77b69052e-4b77d17c2a7mr127043491cf.68.1757896708708;
        Sun, 14 Sep 2025 17:38:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c3b6188sm3270014e87.3.2025.09.14.17.38.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:38:26 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:38:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Alok Tiwari <alok.a.tiwari@oracle.com>
Cc: konrad.dybcio@oss.qualcomm.com, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8150: Fix frame@17c27000 unit address
Message-ID: <wrv2uy5pcgaprpiiiblrlthe3hliin44pew36cnrdzqgxwfv42@avg7aall2bpi>
References: <20250913183018.4017208-1-alok.a.tiwari@oracle.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913183018.4017208-1-alok.a.tiwari@oracle.com>
X-Proofpoint-ORIG-GUID: t_XegpKyxVqU15pQI4OGvlH99-xGmmzw
X-Authority-Analysis: v=2.4 cv=SouQ6OO0 c=1 sm=1 tr=0 ts=68c76006 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=yPCof4ZbAAAA:8 a=ItF4YrUkoz0luqwIuT8A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAwMCBTYWx0ZWRfXyEeoWJkutp+g
 FimicqaRyu425RNa5Z+5E0vLmV986g/GmNs8cWwu8Slq+yNUv2Ybf5pL+GF2ry5XGJaIKyokunV
 YoSbZz6K7ziUQmm+UDWVLuZP6yQ8oFFAWz2VXyETUM4pyQkuCgf3M/4KpIYZgfLngq6Zjo1DTOh
 LJn+/Y/+E1olTHaLs8EI0ElGA/JG8zVgZ2Or5xapevc4OCc+HBYjNgVI64RvDtnQEPZ/7TuwXRZ
 1mg1F6MHvFYHAcBKfuOYn6EqN3TcVS3wkPZ18c2drPj6eCeszxNc9PDdFQ0Sn/7ysjanwpxiJ4L
 uXB3444juqrKuX8V6wdja6s03ETEId1+swmFblTZq+n60r7dFCKgPTalxPN/nr1+hr6xFokBx+y
 +G0WmNv4
X-Proofpoint-GUID: t_XegpKyxVqU15pQI4OGvlH99-xGmmzw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130000

On Sat, Sep 13, 2025 at 11:30:11AM -0700, Alok Tiwari wrote:
> The frame@17c27000 node has a reg property of <0x17c26000 0x1000>.
> According to Devicetree binding rules, the unit address in the node
> name must match the base address in reg property.
> 
> Update the node name to frame@17c26000 to match the reg property and
> align with other frame nodes.
> 
> Signed-off-by: Alok Tiwari <alok.a.tiwari@oracle.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index abf12e10d33f..166326830cdb 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -4416,7 +4416,7 @@ frame@17c25000 {
>  				status = "disabled";
>  			};
>  
> -			frame@17c27000 {
> +			frame@17c26000 {
>  				frame-number = <3>;
>  				interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>;
>  				reg = <0x17c26000 0x1000>;

Thanks. However in this case the unit address looks correct, please fix
reg property instead.

> -- 
> 2.50.1
> 

-- 
With best wishes
Dmitry

