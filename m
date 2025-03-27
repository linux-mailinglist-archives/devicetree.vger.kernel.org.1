Return-Path: <devicetree+bounces-161373-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D156AA73DD9
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 19:17:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A10F2189239C
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 18:18:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A63EC15B0EC;
	Thu, 27 Mar 2025 18:17:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aCBZ7Icj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3359DF9FE
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743099468; cv=none; b=o4ArwliNGcxWS7dCQhKOHOxuQ8WgEtiAda9AIN9mZFVe9XZ3nzBWV3ShtkMDr8N0jO5MM9xMw4jGJDycbwk+CTzLGMenLHcLCXZre+SneNAdVjiltKPnakQ1wNhEjsc1xONdpPN2iUXmaLt9BfcTwS4kF9PH9Zlrm//1k6aRzdU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743099468; c=relaxed/simple;
	bh=KW1XOgrQ3GQ/OPLgErzZByWNZ5uV+mJQGn+Sqyjw1F4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H4CKpaBT6EloBmRnDT5qrq8/vYyP2zvAz65kDAHlABM7ediGSzcEDsgZJM/HJxfL0dgu0THnTn8KRoNNLb+nb3CCO7ktXPj+wLZcosWJgymW7gmXfHj8QeT/8MNvZG7ppXBiHR2nrNRKJ74xLDvq4u15oJEDI6S/jaC4Cbx7K50=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aCBZ7Icj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52REfvex025746
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:17:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Ivr0I5HVMfYstzwphlRpvh0b
	dAYJ+lzc5mUPAuhF1Yo=; b=aCBZ7IcjsgNq8KGejbNWnSGCjbGeLiMHZtq5VGPX
	OA5yahrANGkxKx0qSuUGKQZpPUmZmtghIuJ5apn9dK/AjFNEr1u5l3lBsYriDo81
	1yiuiN00dg4rQrecOyVT8aCLY93AP/rV8wonwugikOSxBhPhMIFM8knRUCmrzH+P
	usFRa7bfEanjMZkBt+D1lnEiT/cP4sOe2q8mWpLVrUCoQv98lauvPuAzPFoMV7b+
	kkVsYShCRzhJVmv6mRz/ql8nSCyMW5Wi9lv8BIA2Zm79bEV3mlXo6SzFCIIHqa4G
	vP64WSbvk8XmYAM7IFlTaHdOUwofHr8XM0kR7pIvmxlnBg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45n0nut27m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 18:17:46 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5c82c6d72so254982385a.2
        for <devicetree@vger.kernel.org>; Thu, 27 Mar 2025 11:17:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743099465; x=1743704265;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ivr0I5HVMfYstzwphlRpvh0bdAYJ+lzc5mUPAuhF1Yo=;
        b=WPRH7/CGJM8yEcmXiRzsc2idHURRs1Mr6n9+iCVutDndI7ewmBGBAgZThcdU5nquUS
         Ba/yljGk41a/VxH0cCkPASyD6KsNnqYdk9Jncf2y/FTRUbycYx3DJtCf8HZSSpVRpHzP
         E8j0I1eAfK+JuqmPXOYRCU/rkSSKB4MsUnEZMF3H4VVMpuTUs1wfd41ntkmwvsCwFHao
         7rl0iAWz7zNPdWv1emDXT4ntZfL95si0VoJragw6yyBD269CP+WS18LY8FtGM6/02oga
         telPLgHAfThNyqZ1c0hA8mRnzT6wNsALVvwnfmeicIT2raF2UG/cLkXIp8iVBqloSRPm
         Woxg==
X-Forwarded-Encrypted: i=1; AJvYcCX73Uxty1VyD5dDdt1N/+LjWrHyTeJMbKA7VwMwcYUFoocOBEXUxg+QpRD3zNgiTpUWGCO30VpxqaTw@vger.kernel.org
X-Gm-Message-State: AOJu0YxX9J/fFn/AVm99arnGvvqd8VUfgP3gT+MntE8Q0gEyO1VvRBSL
	0+RI1lqnktZ83gtXYMDjLDH007qWBmD26Kft4fod9FxYRDjWARXoZNzIMjshiO5RGGCUwz8zC26
	nGxvMJ2o4wditHavjl6Stz4RZTnQ8jryOGvA4ZTxX8gw2AembholARTkriT79
X-Gm-Gg: ASbGnctYITRaUq/6OTysVK25kjuSaOUfEsBKNt4M2oFghzISYYNG/vAE+zMYRYFnPNy
	9QWroCN5M+iAbgPi7c7DkIq9RntIBPBS130xpd0n0vIR6c6Ppgo/VBVjtqL1h+JwSh2tUdXPlbC
	FjVmHz/mVUW+7SvisoRo39rx7/yIPNlo80ePrjKBen+3cjSzSDsxjai5ECvOKoEQ+vYnGeaz9P3
	jsD46yXUsZW0LJojBB8+YprxGTqaDLj/Vv+h2V1nHl+K1JBcn+/N2iR/RfYIdnJY9BXZO/r6Z0G
	jrMpRvPBBcrUtv9EQgxy9QaGi0Ny28XRUXaihTvzbkknZ3pxXNvMjFNb90KRfmVObP1ropgXWFM
	YoYw=
X-Received: by 2002:a05:620a:248d:b0:7c5:5670:bd75 with SMTP id af79cd13be357-7c5eda7c0fdmr819392385a.46.1743099464597;
        Thu, 27 Mar 2025 11:17:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF1R2tIYExWtVdZWngFMnDQIfX00SIhdSN/5Ew7MEBRf5UNvCxnJap5htUOs6BbQP0lafu6JA==
X-Received: by 2002:a05:620a:248d:b0:7c5:5670:bd75 with SMTP id af79cd13be357-7c5eda7c0fdmr819387385a.46.1743099464051;
        Thu, 27 Mar 2025 11:17:44 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30dd2b4c82dsm307961fa.72.2025.03.27.11.17.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 11:17:43 -0700 (PDT)
Date: Thu, 27 Mar 2025 20:17:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Loic Poulain <loic.poulain@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcm2290: Add crypto engine
Message-ID: <yc4j3peqze5plmcmkktqishq5orw7bxsvehvu2h774t2sdygg2@yj2yzbkpwb76>
References: <20250327142842.1138203-1-loic.poulain@oss.qualcomm.com>
 <h3ol4qc242w7h3u7uiywxyc2v6op6cvxhzuk2dx5q5dvhitolp@pb6c53ki3cag>
 <12e011f2-1aa3-4e95-a081-bf81e00912c2@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <12e011f2-1aa3-4e95-a081-bf81e00912c2@oss.qualcomm.com>
X-Proofpoint-GUID: zZNEqJd8-K3ZawmZxQAxWG3jVOEYYsRI
X-Authority-Analysis: v=2.4 cv=AcaxH2XG c=1 sm=1 tr=0 ts=67e5964a cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=jioIMPyrAgG-8eQisfIA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: zZNEqJd8-K3ZawmZxQAxWG3jVOEYYsRI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-27_03,2025-03-26_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 impostorscore=0 malwarescore=0 bulkscore=0 mlxscore=0 adultscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503270125

On Thu, Mar 27, 2025 at 06:13:29PM +0100, Konrad Dybcio wrote:
> On 3/27/25 4:05 PM, Dmitry Baryshkov wrote:
> > On Thu, Mar 27, 2025 at 03:28:42PM +0100, Loic Poulain wrote:
> >> Add Qualcomm Crypto Engine (QCE) and BAM related nodes for this SoC.
> >>
> >> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 28 +++++++++++++++++++++++++++
> >>  1 file changed, 28 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> >> index f0746123e594..c9ac06164d43 100644
> >> --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> >> +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> >> @@ -749,6 +749,34 @@ config_noc: interconnect@1900000 {
> >>  			#interconnect-cells = <2>;
> >>  		};
> >>  
> >> +		cryptobam: dma@1b04000 {
> >> +			compatible = "qcom,bam-v1.7.0";
> >> +			reg = <0x0 0x01b04000 0x0 0x24000>;
> >> +			interrupts = <GIC_SPI 247 IRQ_TYPE_LEVEL_HIGH>;
> >> +			clocks = <&rpmcc RPM_SMD_CE1_CLK>;
> >> +			clock-names = "bam_clk";
> >> +			#dma-cells = <1>;
> >> +			qcom,ee = <0>;
> >> +			qcom,controlled-remotely;
> >> +			iommus = <&apps_smmu 0x0084 0x0011>,
> >> +				 <&apps_smmu 0x0086 0x0011>,
> >> +				 <&apps_smmu 0x0094 0x0011>,
> >> +				 <&apps_smmu 0x0096 0x0011>;
> >> +		};
> >> +
> >> +		crypto: crypto@1b3a000 {
> >> +			compatible = "qcom,qcm2290-qce", "qcom,qce";
> >> +			reg = <0x0 0x01b3a000 0x0 0x6000>;
> >> +			clocks = <&rpmcc RPM_SMD_CE1_CLK>;
> >> +			clock-names = "core";
> >> +			dmas = <&cryptobam 6>, <&cryptobam 7>;
> >> +			dma-names = "rx", "tx";
> >> +			iommus = <&apps_smmu 0x0084 0x0011>,
> >> +				 <&apps_smmu 0x0086 0x0011>,
> >> +				 <&apps_smmu 0x0094 0x0011>,
> >> +				 <&apps_smmu 0x0096 0x0011>;
> > 
> > Don't these fall into the previous entries + mask? The same question
> > applies to BAM SMMU entries.
> 
> (effective sid = e.g. 0x0084 & ~0x0011)

Yes, 0x0094 & ~0x0011 = 0x0084.

-- 
With best wishes
Dmitry

