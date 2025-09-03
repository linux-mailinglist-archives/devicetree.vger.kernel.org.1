Return-Path: <devicetree+bounces-212188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D38EB41F60
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 14:40:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2DC4C3AF5F0
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 12:39:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B0972FC88A;
	Wed,  3 Sep 2025 12:39:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jP8bZfTk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3002FF174
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 12:39:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756903177; cv=none; b=K9MtTuiRul00P1ZNJyoCUIjj+3DQhHy7O0fYM+kgcuQF2KxUZiesgwNWXTWTLm8rAOpJY8a8cG97NlMGt/hYrYtewdxifukXs2CLDQegDl1Z1EBPaK6SQqdVuCaKHI6xXO+rJI/d5xR7uVNFSuVndpkiyjAwednuASP+sOU44qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756903177; c=relaxed/simple;
	bh=yADNLCBdTWcxvE+19nermOxAO18JP0cn+4ambpmZ76o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=H0VYEbT1BPMtbJ6729+H00dlVAjQyHh8WY159EZTiVc+B545JfBZiU4oT24bMvz4gpv/d9tD4eeuunc/462RJ4udy6wuIf5RGlKSNYYhZ4H78xmxkaDgCc3EoEBbcd2VXW8ne/GAiSuhhgBM73iPmZVHkS9HbGwDJUfB5WUKScY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jP8bZfTk; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583BF4bo010176
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 12:39:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=oB5zz3RfytAZkiTmGBlOmVi4
	cyClShFOwbxdsuokSZg=; b=jP8bZfTkIU6+CM9/1SrD5yO4OdWZSsNZBiMFUweO
	rmVyZ5TMqda6N3bHDJCAfnxH5MmcliWCFu0OLbCKCGYDA/zdWhdd/Sz/hPATj33G
	GtFZGbk/S4EozmQ+ksCCkNV1aebzoLat1wMP/iwS2PcduBR+HiQNouUeTJ9iokXc
	XEhvxkdzTL0RtAxIZaK+XrkDb58wvNEKkpjFb7lo+Oie6///iTGPSjVNwyMlb4NR
	b4OrT4Uvc/lZAg0JlQXS3VMNYLUk2keeSA/KilcyF/32bZF2JTAeS01AxonLkG4a
	aN/7Qo4/P4voZE8fTljEs70fB+vVvZtGfXYlFK4+1ojtkw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8ukxr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 12:39:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b325446155so71274241cf.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 05:39:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756903173; x=1757507973;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oB5zz3RfytAZkiTmGBlOmVi4cyClShFOwbxdsuokSZg=;
        b=C89EBPky5zOTA9ZFxOsfd6G8LdSExwVtDCAUi8Pd1UesZ7YoiwNSpFV1wOuabO+8Po
         6EgMu8Vd6+5GIRAZEU9rPLe8J05Zbrvir/VafomytuaoEp7i7KE6whCEnXDY4i6t83yt
         3tUU1bpx0HOpV4ei6+rP0/oupwoMVKJTbZTVQ1Wd5dCkPJzhyYkI8ttbhA62ZmGU1iDh
         HLgOEe2TPo51osseKT4NRAyN5XgZV1j+scwmVafhMd3XLzHBzSaQ7uVAPovSsfkoX4dw
         crTEN58Uam6ei2GWErQoh4uR8xa7PfUGEI8UUdJNCvaKRu99YxOtXPDkN1faNTk80EGP
         zSiA==
X-Forwarded-Encrypted: i=1; AJvYcCW2+yAyPhpdBQmYvNiEBDsY1GLrapzW+/IgaIyhs3wOATA0ZK20bAT47KNO2jIU65947A6N/Qtcujxy@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4inJROnRi2Ve6lTsNGeAKI2W/GauVzE2Hp4pysZEYgHU78PLC
	HjXuDTkXAKBGcgoVYnmmZ7o2NgYr5hDmGZ774jAcJqmbrm+xD5WZsurZJkOM2+Z1YdWp/oUgKjq
	fCJqF6QfbeuiWKKHCBKb57IenKfatFlKp6YHDB68XLcysE426tOYlIe94juLInajQ
X-Gm-Gg: ASbGncs0FnTZ8jm6LjOfl531ZyBCYg+it7oWnqGYcYkzwyh1Qjs2X2sk4ozY5IbPSwl
	aM0Z7wgwWzghC3CZGBhYuZPkjl154wlTL0hEHSNqrj+A3i9O1Viff7ixTwQZgVZoVvT8aAT6jKY
	q6DSp0n6RwCbhTaBpwPeZXOOGe603ZEo3SPoLsZmbz+WCl1jTxRSnq0EMMKx9bWCQ1D0jHZvqNw
	YfEfmSHinIz8GVB3bOBv5/spVoW6H8Gsg0vDBpJlP4W1oANziLzjczdIhHiCXcs6J9zF6atsHmz
	qjB23De2y2vMiuRtF5UdW51xBP6HlMXUJhA0IZPJo/Y7IeYbRtE4WJaax4NaN0kz2HH7BW//TLF
	wkhrnCIeICFc5FKxw5hAR2M1obPI3oVuwHkyyLD5q6C7aPYliZyFa
X-Received: by 2002:a05:6214:e8c:b0:71e:bbb8:9db7 with SMTP id 6a1803df08f44-71ebbb8a459mr109507156d6.34.1756903173347;
        Wed, 03 Sep 2025 05:39:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG63LR9Aapde9PYpVYUZt99aQbJ5sCqnamanQcH/5zSG/5fKAEXGXcfQRfuN5dgQfaxo69CWw==
X-Received: by 2002:a05:6214:e8c:b0:71e:bbb8:9db7 with SMTP id 6a1803df08f44-71ebbb8a459mr109506366d6.34.1756903172631;
        Wed, 03 Sep 2025 05:39:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608aba1767sm503270e87.49.2025.09.03.05.39.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 05:39:31 -0700 (PDT)
Date: Wed, 3 Sep 2025 15:39:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
Subject: Re: [PATCH v4 3/6] arm64: dts: qcom: sa8775p: Add gpu and gmu nodes
Message-ID: <exkrgx6rdotfrrsnklsd7zk4ydehsk5vaoevibpqisyq2dwbd4@sa4kgnuexlna>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-3-97d26bb2144e@oss.qualcomm.com>
 <f11b778d-eba1-4712-81c7-b83f2cb38b46@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f11b778d-eba1-4712-81c7-b83f2cb38b46@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 7qLVAhy7tGW3sJGTArdAcywZJfmX-XHR
X-Proofpoint-GUID: 7qLVAhy7tGW3sJGTArdAcywZJfmX-XHR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX4kHAf910Ay1d
 Qjh6bp1nYDIL3Vq6YOYCtDA4f7cRjTlHklvHkzmtAoXWEx2TqSgofEWC7sjQTiMfUj1cLi4shWC
 xEpaLr/s9pKchkateJRvo1IrUlErjP2n+oo04+Kxov11BAkWoRQhRN/f/c1ijU3JgMN06p7fBcE
 p+0VdtYbJir4+UHccAU7pOdtHJmxaKNX1JKGHox3UDkM5c7g3PABNvJnPKYgDj9eW/aDmrf1yG2
 n9/kgyP3vyXi+JtzUIiCfSsIvlTWk1kiPIXPYRJxyTSS6+paYSrDm5bBa1koarYTDxxd2aryZG6
 q/7KkfJwFtR90PLMuk0Rz48yndPKis/Q9h9bcUnffsjE5vZ23pIxTScno3kv6vpMMR0WLplDRSP
 xuSsEtDv
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b83706 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=eIaLAbkvAzmcLstrs1gA:9 a=CjuIK1q_8ugA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_06,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On Wed, Sep 03, 2025 at 02:26:30PM +0200, Konrad Dybcio wrote:
> On 8/21/25 8:55 PM, Akhil P Oommen wrote:
> > From: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> > 
> > Add gpu and gmu nodes for sa8775p chipset. As of now all
> > SKUs have the same GPU fmax, so there is no requirement of
> > speed bin support.
> > 
> > Signed-off-by: Puranam V G Tejaswi <quic_pvgtejas@quicinc.com>
> > Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> > Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/lemans.dtsi | 116 +++++++++++++++++++++++++++++++++++
> >  1 file changed, 116 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> > index 8ceb59742a9fc6562b2c38731ddabe3a549f7f35..8eac8d4719db9230105ad93ac22287850b6b007c 100644
> > --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> > @@ -1097,6 +1097,18 @@ ipcc: mailbox@408000 {
> >  			#mbox-cells = <2>;
> >  		};
> >  
> > +		qfprom: efuse@784000 {
> > +			compatible = "qcom,sa8775p-qfprom", "qcom,qfprom";
> > +			reg = <0x0 0x00784000 0x0 0x2410>;
> 
> len = 0x3000
> 
> [...]
> 
> > +		gmu: gmu@3d6a000 {
> > +			compatible = "qcom,adreno-gmu-663.0", "qcom,adreno-gmu";
> > +			reg = <0x0 0x03d6a000 0x0 0x34000>,
> 
> This bleeds into GPU_CC, len should be 0x26000

gpucc is in the middle of GMU, see other platforms.

> 
> > +			      <0x0 0x03de0000 0x0 0x10000>,
> > +			      <0x0 0x0b290000 0x0 0x10000>;
> > +			reg-names = "gmu", "rscc", "gmu_pdc";
> > +			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names = "hfi", "gmu";
> > +			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
> > +				 <&gpucc GPU_CC_CXO_CLK>,
> > +				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
> > +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
> > +				 <&gpucc GPU_CC_AHB_CLK>,
> > +				 <&gpucc GPU_CC_HUB_CX_INT_CLK>,
> > +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
> 
> This clock only belongs in the SMMU node
> 
> > +			clock-names = "gmu",
> > +				      "cxo",
> > +				      "axi",
> > +				      "memnoc",
> > +				      "ahb",
> > +				      "hub",
> > +				      "smmu_vote";
> > +			power-domains = <&gpucc GPU_CC_CX_GDSC>,
> > +					<&gpucc GPU_CC_GX_GDSC>;
> > +			power-domain-names = "cx",
> > +					     "gx";
> > +			iommus = <&adreno_smmu 5 0xc00>;
> > +			operating-points-v2 = <&gmu_opp_table>;
> > +
> > +			gmu_opp_table: opp-table {
> > +				compatible = "operating-points-v2";
> > +
> > +				opp-200000000 {
> > +					opp-hz = /bits/ 64 <200000000>;
> 
> 500 MHz @ RPMH_REGULATOR_LEVEL_SVS, 200 isn't even present in the clock driver
> 
> Konrad

-- 
With best wishes
Dmitry

