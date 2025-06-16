Return-Path: <devicetree+bounces-186304-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B47CADB0BD
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 14:57:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75A367A89DC
	for <lists+devicetree@lfdr.de>; Mon, 16 Jun 2025 12:56:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20903285CBC;
	Mon, 16 Jun 2025 12:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WcqeOPWc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C01A292B25
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 12:57:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750078653; cv=none; b=QcWhXYCY3+jR6wso9ZKvGy1vkZsMYTOK8pa/o13eN5xCbZV19dCzmPzHCvNmqZOkWizB9wCvd2prS1s53BfmetPQ1RWW/0/OgSrgEk6kd9ko0q5FFNGbxnwokJwiRFdNVWzf/wWNcE+PEl9h7ZSNPHLujpkvDyNxDVmawpXUN24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750078653; c=relaxed/simple;
	bh=+7ZvudxHU1Lit+zQphHI1ArwnPJbfdXOQbD3tJTkJx8=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tnvvl1JSNl6qSBozN6U4vfSRNW5HMzIM4LDNMbQza0N4o4UxVE1mIxXsbv4Cqmo55dNdSc1YHi+CirqWdggRJe52IX/yoqHUMRt1ep6FlY46egIdAmgcO8z/GMAZhLPYqymDvq0CAikJu5ClEVBhRAuo3dCLbcDCoL0YaKN/TQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WcqeOPWc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55G8rYw3010383
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 12:57:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Z64Ls8klGzhod1haDtExsW6H
	yVPHV51JzdXZy1TafjE=; b=WcqeOPWcceP32j0mgY/yv5a28y/XMM+SThZ+QBmk
	+l/787gLGvRQOP9ZKwLG0amzlIaa4BV5rBrfePyoFOFJHdjDB2LQZqGEX098R8EI
	JGk1556vWLDOwhlC/Y8yKSqHNXWThT5Onr055PMzaBfIW6H9IKjAcDdnhL+StnFh
	wZn19+880KTMg5TpVnUYTwH51NteuNSskWHDsG8InTWQcyaKPJ6SiReXX4lcPIMQ
	QLyWy9jCyQNdkYRQee3KgUttamaH61uc3uUWGnG7GNX9f4i58uAoeqMXT2L7OYvf
	auiUH2Z9drrkCE+Pugv+mTmMUB1uWgPuc07RpaX+Io6RAA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4792c9vgha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 12:57:31 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d3d3f64739so225364885a.0
        for <devicetree@vger.kernel.org>; Mon, 16 Jun 2025 05:57:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750078650; x=1750683450;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z64Ls8klGzhod1haDtExsW6HyVPHV51JzdXZy1TafjE=;
        b=cRaElg48ORmjy1rFJfneSDh4Dcs0HVZLe8NLuHvh+vYDUDlTgzSBlMMdY2ZQLhPHjj
         bBSHnCugzCTmjU8NlnAoc+rYxuEYecjCCy7zCwtoByNTzdYsp9UbdK1U8N0hNZiROgCG
         L2GWskLUWcxu4H+hrvYbrFW0l56dT92WzeP3pQyUEOkiu4pYx4oU0at+heZQWUmt7Qgc
         ZN4HRzYwk0SDYSkO3EtnBtDjhmUR2tCLB56DOvjeomuYFGe5wHbHEGfV0uEVfHT4g4AI
         scSw+X+ToDWXt6XTj+9820tlvIIJ8hLnmuH3+nOZ2i9vaLlhaPwYGEdnTOiy1/3U4vpp
         nXyw==
X-Forwarded-Encrypted: i=1; AJvYcCWU5TxpVuLyYlqKHTWPSmlHPbgCHOzGTxgIpSxbNnFJHyp8k7eqrwgoRLeCSWD3CCYf20CWuM4yPNtU@vger.kernel.org
X-Gm-Message-State: AOJu0YwlEcGsYIgPUTH287U8zrjwQa2E+9Tj8tCFYpJRJoUCyHYDv3oo
	v4TbtEawih+/haQR+mdW8LDd/begBLRIdN+HGifTBn7S1Cfbmcdq/9bW+khHdAmehyoaQqcSPxm
	+Y/e7FYRtgeOmv2J1Ov7k+mQboX3lVFmyrkg/7do3Z6mFvINjeMtiQiRZU5cwe2Vo
X-Gm-Gg: ASbGncvDzWvbZFie2ZVdvEmy//OAZR8Up7z88eLh2oL1lRKaQtSaGgdT8vyOy2EdpBp
	bjao3U4T5tK8sXxx1bk9RIekZnwkwB6MnU0lssGZiAG9K+2FON9GljzPnqtzrGiIU/9jKwtLz/l
	T5dmm6cLBxUM5y2guBPXIJ2BZGTfeqXJd5NBKT/xW+PHeT/hA5PlWB2iFED+UdOr2tqGtlXAPbs
	DabzUbutk2wL0k05/NLdDBeW2al9KX2CWmiXVkx9HibxQPowis1U1mGl3Gf9EA2hPPxVtmk2hen
	goIRTVz9zssDeAMOPFfsD4ol7yZB34xr7kNrBrJQbqk8TrsUOv0vcUzVhw==
X-Received: by 2002:a05:620a:1a8b:b0:7cd:ca60:7bdc with SMTP id af79cd13be357-7d3c6cfe10bmr1657082085a.48.1750078649659;
        Mon, 16 Jun 2025 05:57:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHgXpyrNuCMRpJdFdvIc90NA0VcDu34jwTkut8k7XZoDWbnfYZHiho67s0sox/Pmk/OdelNRw==
X-Received: by 2002:a05:620a:1a8b:b0:7cd:ca60:7bdc with SMTP id af79cd13be357-7d3c6cfe10bmr1657077785a.48.1750078649195;
        Mon, 16 Jun 2025 05:57:29 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a568a54e71sm10879843f8f.1.2025.06.16.05.57.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Jun 2025 05:57:28 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Mon, 16 Jun 2025 14:57:27 +0200
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>,
        quic_vgarodia@quicinc.com, quic_dikshita@quicinc.com,
        bryan.odonoghue@linaro.org, mchehab@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, stanimir.varbanov@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/5] arch: arm64: dts: qcom: qcm2290: Add venus video node
Message-ID: <aFAUt8eXbrNJyv+Y@trex>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250613140402.3619465-3-jorge.ramirez@oss.qualcomm.com>
 <9e901aba-5e4b-40d8-810c-a7322637752f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9e901aba-5e4b-40d8-810c-a7322637752f@kernel.org>
X-Proofpoint-GUID: eIu1fRdPub8oWTHHZDr8_j9MFKP3DPEw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE2MDA4MSBTYWx0ZWRfX087T/FEv+eHY
 EXiunK+j2xSIKXwJjDj04UpU/Sa6cMjFUh6Kw+HnPCeM2YZAkyb2DZYy+jQP8B+PsOaYo1wogln
 SBl4Xs5wElKXUGUx9tZ/X397Izyazqb2INHZVNZFRWlZJE/BGMmqD/iArcdKZsiKhjl1nlWkI4D
 /fxbo4VmJDo8dEFBzwC5uk5MsmGAlAGwCTofdkr3CHQNphbb9KC5sD/FQ1blz7tu2eNZYEgaQUu
 wEFO2s32YVi4VUNSQPFHJ8ySu2c+G+jBzdt/JloAsMQYH6nFRo5YGGvzyw8BY7IDXVWv+XjZXHd
 m2OzIoOpmlEtexxJxkJO8HL3JEF9dursCavqL9It8OevRbMseD/Rvr3jVazpJxE6/lr4Z4t5Wy1
 R4s67V2BbVYuvD7dPgGB3AgAbuof9bhZKrluagWQ5JYoN4YmDqBy0bf+kKGAulLB9PHeYkxe
X-Proofpoint-ORIG-GUID: eIu1fRdPub8oWTHHZDr8_j9MFKP3DPEw
X-Authority-Analysis: v=2.4 cv=etffzppX c=1 sm=1 tr=0 ts=685014bb cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=Llyb1ICWO3Llu68erG4A:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-16_05,2025-06-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 adultscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 suspectscore=0 phishscore=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506160081

On 16/06/25 10:22:06, Krzysztof Kozlowski wrote:
> On 13/06/2025 16:03, Jorge Ramirez-Ortiz wrote:
> > Add DT entries for the qcm2290 venus encoder/decoder.
> > 
> > Signed-off-by: Jorge Ramirez-Ortiz <jorge.ramirez@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/qcm2290.dtsi | 53 +++++++++++++++++++++++++++
> 
> DTS cannot be a dependency for driver. Order your patches correctly (see
> dts coding style, soc maintainer rules or internal guidelines).
> 
> >  1 file changed, 53 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/qcm2290.dtsi b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > index f49ac1c1f8a3..af2c1f66fe07 100644
> > --- a/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/qcm2290.dtsi
> > @@ -1628,6 +1628,59 @@ adreno_smmu: iommu@59a0000 {
> >  			#iommu-cells = <2>;
> >  		};
> >  
> > +		venus: video-codec@5a00000 {
> > +			compatible = "qcom,qcm2290-venus";
> > +			reg = <0 0x5a00000 0 0xff000>;
> > +			interrupts = <GIC_SPI 225 IRQ_TYPE_LEVEL_HIGH>;
> > +
> > +			power-domains = <&gcc GCC_VENUS_GDSC>,
> > +					<&gcc GCC_VCODEC0_GDSC>,
> > +					<&rpmpd QCM2290_VDDCX>;
> > +			power-domain-names = "venus", "vcodec0", "cx";
> > +			operating-points-v2 = <&venus_opp_table>;
> > +
> > +			clocks = <&gcc GCC_VIDEO_VENUS_CTL_CLK>,
> > +				 <&gcc GCC_VIDEO_AHB_CLK>,
> > +				 <&gcc GCC_VENUS_CTL_AXI_CLK>,
> > +				 <&gcc GCC_VIDEO_THROTTLE_CORE_CLK>,
> > +				 <&gcc GCC_VIDEO_VCODEC0_SYS_CLK>,
> > +				 <&gcc GCC_VCODEC0_AXI_CLK>;
> > +			clock-names = "core", "iface", "bus", "throttle",
> > +				      "vcodec0_core", "vcodec0_bus";
> > +
> > +			memory-region = <&pil_video_mem>;
> > +			iommus = <&apps_smmu 0x860 0x0>,
> > +				 <&apps_smmu 0x880 0x0>,
> > +				 <&apps_smmu 0x861 0x04>,
> > +				 <&apps_smmu 0x863 0x0>,
> > +				 <&apps_smmu 0x804 0xE0>;
> > +
> > +			interconnects = <&mmnrt_virt MASTER_VIDEO_P0 0 &bimc SLAVE_EBI1 0>,
> > +					<&bimc MASTER_APPSS_PROC 0 &config_noc SLAVE_VENUS_CFG 0>;
> > +			interconnect-names = "video-mem", "cpu-cfg";
> > +
> > +			venus_opp_table: opp-table {
> > +				compatible = "operating-points-v2";
> > +				opp-133000000 {
> > +					opp-hz = /bits/ 64 <133000000>;
> > +					required-opps = <&rpmpd_opp_low_svs>;
> > +				};
> > +
> > +				opp-240000000 {
> > +					opp-hz = /bits/ 64 <240000000>;
> > +					required-opps = <&rpmpd_opp_svs>;
> > +				};
> > +			};
> > +
> > +			video-decoder {
> > +				compatible = "venus-decoder";
> 
> Don't add deprecated properties.

right - Bryan mentioned. my bad.

> 
> Best regards,
> Krzysztof

