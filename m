Return-Path: <devicetree+bounces-190347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CE2AEB7CB
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:34:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CFA6E7ACFE2
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 061F52D3EF8;
	Fri, 27 Jun 2025 12:33:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FhKdUWbQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30AB6298241
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:33:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751027635; cv=none; b=K6Yci8784Rul+I5P6yz+691mWHAEMrfh4aHbjOfusYaCfBNK56GHKd2Z9ch83txpIBWXERyPRSKFihdAQh7vqj33BZxzbnkL6rXLyv/uIT7wJ1s6GJsmNXo73btTHmeyIGmKHCu0ci4U5VE2yZmnshK/62srFjcDZjhJRL3PBDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751027635; c=relaxed/simple;
	bh=7+B0fupMsVNOVu8V8tGzBY7GBfas+EnrrN008V14AM8=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K9zC/8wrv7XScksFVIz01hmH7ZLI2hTep+g4EhadAT3dfMcGQZuqA6DbArSWAvrBawSczVnePSuzgYkoOWwNSaRyyTGzLhHy7wcTsKuEgi+MYNbW8kLpmd1daXZGQD6qXHu8O7ox3aLpgfjASRXDmzbtGEmGGNiLWmWbQR0QuFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FhKdUWbQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RBtbLI028699
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:33:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eTEkigVB7s/c3lzv/enIwb+8
	61vMMZEHP1ib8VKxubY=; b=FhKdUWbQs0wDrTxBmzOXj6S6VP0KvFZMwrhHfpPF
	Dpj7mDpdrU2upICSoe0D//KYXr9adTPEwMsqVXZeVlyMrYlz2QUlu0yptXMo0F2k
	jnYwYKuOlVbnoxnMq4AIX4O+YqejlbBS/7MrhJWNQBg9SXnNv8zhP+Zsrp58bHUw
	H4xTIdZL6p/3QhS+M87CECCOe7ILf0jaZCph7RYTz3lMNEVWvqfi3ytdFCWyAhhs
	iiomT7YFMPvCDhX9gcgLfHasF9s3iuGN+Dzv2BxBVpU4OcQ0OuN14YtGfRVC+be+
	wSMANiWjYSOW1DLLUQ8VP05FOh1okYUnCjjNCC1FCpwpnA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa504ct-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:33:49 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d3d3f6471cso287835285a.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:33:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751027628; x=1751632428;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eTEkigVB7s/c3lzv/enIwb+861vMMZEHP1ib8VKxubY=;
        b=fEogkwSmA+jURhJP/C2wq9y34yT1tYAs1hBWuayH739pfs1uQX1EIybszYxeBxO7wD
         wyAQqO1T0oqRm4g12U8ba2oOAN+FCDNr8RxCuTWlEvNyiirGzdSJbELP0OIPR76NmaSO
         pmGLRg3dwpRlrcy4LV0Utfq6EKUF6eyG/IuNSGbvuRE0l8/NuQvkEmsyMRtBRSshj1CV
         C6VVuwsbOOOpJju+d9s0NcILx4uG30v+vm5V8ACA2lOnf+po5nek0dvG7zLbLpvrAwSu
         ienYnM9MQqiTvT62GC0oQj/4yLYMNFg4G50v9sUfj+Sm4pKPAU8OXAWqDHaJ42Z16xQv
         zAnw==
X-Forwarded-Encrypted: i=1; AJvYcCUFJijgOlyR+yOL4qyZKRkgjbjyTzlAxPED41k/nmvtY/n/lLtfkwj2QGi4F2iQ3lEYmpN16zCrs+PN@vger.kernel.org
X-Gm-Message-State: AOJu0Yzic0dRmJ319UP4hcOFOAFnF1bOeVQlVK0oX59WO5qERa9AiKsS
	ZwYSNVnbcltzgIw0KtVUKW+R1pT6gaLD6eY/ZBLJKs/6hrL9hbg7Zyes1D2bIUPaXgAzdhl0pU9
	Tq/ukG3CMtyur7rptZenQsZ3rcJvnPUcvVCv9DocRugBUFLjHikK5GPvE0LFk+BLS
X-Gm-Gg: ASbGnctoJOBLzcUY3T+Hf9EOurUr9iH70XjTLXEEBmcCfiNqdhpAcdyvQWBR08MORpq
	S4vmMnbiH6epHmRKZ2K+1+C/7pfgAkoieDtSSWBpB5IeucdMVB4Rwrg/l69kxP1mYKYw1hk3l0u
	t+jLtj+UTBR+BkAYJzlvwbbKsFQfjeeY+nXAfSgsZRJKYTpeJhj4hDsc+C5ERrwwz6pRneVL4U7
	2M6nF/OpLg/UAlwsFPdmmya+tZV9wtoiXttsW0qNS8G3jUr3q6rRzwfCC2Ag+YiybqUHKUvnszj
	tlgS5FVW+YCeyl491W9F4nvJuIMbUr72XwfK9EBiDyeOgtXzQ72VGw1sjQ==
X-Received: by 2002:a05:620a:278c:b0:7ca:ca00:735 with SMTP id af79cd13be357-7d4439a80a6mr450477185a.41.1751027627750;
        Fri, 27 Jun 2025 05:33:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE6Cgx2agTOK5/IZXOIF0ZSAwg41hRwabLP1fIcfmij7RmRnTOdnah43vsFXkHU0/3rV84TIA==
X-Received: by 2002:a05:620a:278c:b0:7ca:ca00:735 with SMTP id af79cd13be357-7d4439a80a6mr450473285a.41.1751027627297;
        Fri, 27 Jun 2025 05:33:47 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4538a306a01sm52217925e9.0.2025.06.27.05.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 05:33:46 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Fri, 27 Jun 2025 14:33:44 +0200
To: Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>, krzk+dt@kernel.org,
        bryan.odonoghue@linaro.org, quic_dikshita@quicinc.com,
        mchehab@kernel.org, robh@kernel.org, conor+dt@kernel.org,
        konradybcio@kernel.org, andersson@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 5/5] arm64: dts: qcom: qcm2290: Add venus video node
Message-ID: <aF6PqCY/E6H0Mc2/@trex>
References: <20250626135931.700937-1-jorge.ramirez@oss.qualcomm.com>
 <20250626135931.700937-6-jorge.ramirez@oss.qualcomm.com>
 <6e330e8f-5856-ef8e-5fe3-52bd61b59e02@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6e330e8f-5856-ef8e-5fe3-52bd61b59e02@quicinc.com>
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685e8fad cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=DfKWsWQFUtAST0jsyLYA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: ImxUc2wF9xXiIP4Q2ffqdvfc9QPB_Fyy
X-Proofpoint-ORIG-GUID: ImxUc2wF9xXiIP4Q2ffqdvfc9QPB_Fyy
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwNCBTYWx0ZWRfXybnZJ2+FV9x7
 jNyLAWB/fk1ojka7d/od2wymRHjdUNRvcWVvyu+mtb4TcaKRx0Ctxg6MjXZ+vLaa/6eJ5BfE3VQ
 uGUqpVcLcAsHrxOLIwFvjqO75LN+CwmyBt9yT9S16uWEQC9qjiwSXpxz+4NbISg75qajx1s40Mo
 NA5gbUEte/JkFgNZ3f6wESmYbHbacH1MQHNCLmL6TCaje15jzcDj9MMJ9bLocAawxrFOGyLx48T
 6/+0i6vR/gyoKRBLyuYzu/DOSLOwoWb8neI6WnhKxPcICkFmIduD1b54dIgsmLGfxKAsdViSk9L
 4D5WRKl3FiAxlIsjBdcmetU9VqB3G6MUAYzoOyEduWghTxZfPY7A7vMUwXIW3lf2IbVGWKsgp+u
 NMg0MeOjdc83g/MriCm6M2dsmyisw6JPWWRVOUpDlry4nUWH0M9QxYf5uZ3elEwp7TRfAyKO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=999
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270104

On 27/06/25 17:40:19, Vikash Garodia wrote:
> 
> On 6/26/2025 7:29 PM, Jorge Ramirez-Ortiz wrote:
> > Add DT entries for the qcm2290 venus encoder/decoder.
> > 
> > Co-developed-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> > Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 57 +++++++++++++++++++++++++++
> >  1 file changed, 57 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > index f49ac1c1f8a3..5326c91a0ff0 100644
> > --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > @@ -1628,6 +1628,63 @@ adreno_smmu: iommu@59a0000 {
> >  			#iommu-cells = <2>;
> >  		};
> >  
> > +		venus: video-codec@5a00000 {
> > +			compatible = "qcom,qcm2290-venus";
> > +			reg = <0 0x5a00000 0 0xf0000>;
> > +			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
> > +
> > +			power-domains = <&gcc GCC_VENUS_GDSC>,
> > +					<&gcc GCC_VCODEC0_GDSC>,
> > +					<&rpmpd QCM2290_VDDCX>;
> > +			power-domain-names = "venus",
> > +					     "vcodec0",
> > +					     "cx";
> > +			operating-points-v2 = <&venus_opp_table>;
> > +
> > +			clocks = <&gcc GCC_VIDEO_VENUS_CTL_CLK>,
> > +				 <&gcc GCC_VIDEO_AHB_CLK>,
> > +				 <&gcc GCC_VENUS_CTL_AXI_CLK>,
> > +				 <&gcc GCC_VIDEO_THROTTLE_CORE_CLK>,
> > +				 <&gcc GCC_VIDEO_VCODEC0_SYS_CLK>,
> > +				 <&gcc GCC_VCODEC0_AXI_CLK>;
> > +			clock-names = "core",
> > +				      "iface",
> > +				      "bus",
> > +				      "throttle",
> > +				      "vcodec0_core",
> > +				      "vcodec0_bus";
> > +
> > +			memory-region = <&pil_video_mem>;
> > +			iommus = <&apps_smmu 0x860 0x0>,
> > +				 <&apps_smmu 0x880 0x0>,
> > +				 <&apps_smmu 0x861 0x04>,
> > +				 <&apps_smmu 0x863 0x0>,
> > +				 <&apps_smmu 0x804 0xe0>;
> keep only the non secure ones.

ok

> > +
> > +			interconnects = <&mmnrt_virt MASTER_VIDEO_P0 RPM_ALWAYS_TAG
> > +					 &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
> > +					<&bimc MASTER_APPSS_PROC RPM_ACTIVE_TAG
> > +					 &config_noc SLAVE_VENUS_CFG RPM_ACTIVE_TAG>;
> > +			interconnect-names = "video-mem",
> > +					     "cpu-cfg";
> > +
> > +			status = "okay";
> > +
> > +			venus_opp_table: opp-table {
> > +				compatible = "operating-points-v2";
> > +
> > +				opp-133000000 {
> > +					opp-hz = /bits/ 64 <133000000>;
> > +					required-opps = <&rpmpd_opp_low_svs>;
> > +				};
> Fix the corner freq value

can you add some reference please?

I took this data from an internal document - not sure why the downstream
driver supports different values or where those were taken from (AFAIK
they are not supported)


> 
> Regards,
> Vikash
> > +
> > +				opp-240000000 {
> > +					opp-hz = /bits/ 64 <240000000>;
> > +					required-opps = <&rpmpd_opp_svs>;
> > +				};
> > +			};
> > +		};
> > +
> >  		mdss: display-subsystem@5e00000 {
> >  			compatible = "qcom,qcm2290-mdss";
> >  			reg = <0x0 0x05e00000 0x0 0x1000>;

