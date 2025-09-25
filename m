Return-Path: <devicetree+bounces-221659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F0BBA1A9E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:47:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AEF43BF46E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:46:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11E1025B31D;
	Thu, 25 Sep 2025 21:45:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c7u+liQd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F15DDDAB
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758836727; cv=none; b=lSyIYBDnkayoZv6+cZUXaaohiY8jIFpnQC9qzZ1iqdw9X5NKTMFv5fJr9aDCr2hvPHEQCLYQd84zwmjjeVhwiVrTEXdxB+naaRvnOYI/yfLdgaBI3SznVOmNdhUpMnkH3NSZMH+CziGj8Gio39a7oXK8+sFMVFPE5ZiHxDAHEqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758836727; c=relaxed/simple;
	bh=YhLlLoCcel08r9Gx/Qu2bGRQ4+ve/mWhng6cCkd6vzk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HktB9JMqYyxwW1feQW24SGJYpJ9KJU/KFut+ehAP1A70Rs1hb8wyY0nmMmgTpbcYoDyDV44LhOcIDDQNjd2CiTxFjb3yN0Fm4D0vQHl43lF3T9dk/ybAc2l7T2I+7qg6OCwx+y4tTMrQNv7Hc0mta+3UTgPWW9fuM8UVfU7qWsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c7u+liQd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPoTl014849
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:45:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=EaWCskU7/xIy9v9EzPg9EedR
	NsRDoPnmo+iW5K02zbM=; b=c7u+liQdik0/p4p8xSVjRh4dmJiO0AAOxax1PKXZ
	Fu9la89LPXABeg6F7/osgY45pAkvTDaU0+AgHmzc2RoaQiExCl7e0DEEK/6HFLYn
	d8+IfxNoLFhEh/VOEuiAFx0nCO5T23zZ+M8qBGqZzS55X/d5xCuhkjbkBRdLiC28
	uP7/9NS8YADtYd53Thcmso/aLfmANHgTQcuCemlZJn+M6xyruxaglxf7buDfwAMS
	z/9NtAgjmkrPic6sI+ElOd6RHQm78ziQfgjfIev+//Xn3TrXP4y1q+F+ZSVYdYmk
	R4vCerdHSr/wVm+UrshwfdEF9gFSpC6bpIMGoQgUXE37zA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0t8gj0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:45:24 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d8b8c3591fso41072961cf.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:45:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758836723; x=1759441523;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EaWCskU7/xIy9v9EzPg9EedRNsRDoPnmo+iW5K02zbM=;
        b=H7IEpA/+Mki1FJ+4xiuw2wicoJGb+AHhnBr9tGSrFJF+2yCPpT7OLyOGC0/+jU5kAd
         pcBBXejgJaDQ+PtHetE/J3RnRbHIgnHVpfQ7UPYV2qdBNm0i46skbo8XntG/SoMNPzIw
         JsTTJnKAKRNr1LAMGoCc6Zog/mM2JOmtHuSRjJBmunRgtttxVdfhN5UL50WW/44iG7Ck
         fdt7aa7ekvK53q1sT+sxxNu8ErfoiZ9pqLSdJLJr/J2lNV/ZG/BCG6jKPJJbTkmxrXGy
         DNfMHX+8S88hjIzXLwfL4uFnjHUuxA+m0CWceoKRQa5SQaJbcjlSCk5A4pNpcjdjSTrO
         EsMQ==
X-Forwarded-Encrypted: i=1; AJvYcCX4fw0ZeN6UhchqYRqbU+bRJSaChVYj+MtloZMtO/CSeFpRV3onMbrHjB6aPofbF0EFolKwgLwSvBCN@vger.kernel.org
X-Gm-Message-State: AOJu0Ywp/YPY2p8wSGdtQVVe7oXr4wDcbnsNkbzoS/DFgH8CU1rXgEeA
	Mp3m0qYwLcjruUSqvWMzQJJ6q2Y7ZwWIagz8s5URwa8p8KEqsacj0Y8CcRuxYE2geUGSxid48Yz
	GCAkiRmnStpnXmfnRHfIHjGxCARh7jQFrfO505caHEoOV81DY38HfAzCjHMb4W5LV
X-Gm-Gg: ASbGnctByLhnWdoyyJ+qXHAiHEvSEdFwgN9Q9dnS2vZ/49RXZiNz4LDGwGh90RZOn9k
	dVwN0OhNv8tKTjZmzV1M3ecuWIMq81OUCDQKSwsjp1fEPdKnj4YMrVqsnNPqbORqU4lfavKprse
	WTiLZRvjIo8w8lSuX0jb6T2sprWJF7DL2Tp66T5H5ApbdsBi7buUtPoW6hPBkhbammYaNrnvDsI
	gC4qlSaB1pGahiFnKRNyiQBLRAAOOaMPdQlFAij4GPK4bTiB/KmTd2s4KnuyThjdoH34MEadBSa
	K9HgTBUAJt6HQ2E0cUSkb8fJQcQLjBCKeUqRDTLLvvWq2Jr0oyOQE6VI6pzLGIqSEInPhFR0eeU
	tu+nPz8N7+85Zfw0rQrlpGtZ89Z/e8VODPxYWdAQnmW75R7acirIy
X-Received: by 2002:ac8:5a4e:0:b0:4b7:a16d:e5f2 with SMTP id d75a77b69052e-4da4cd4adc9mr70027731cf.65.1758836723092;
        Thu, 25 Sep 2025 14:45:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZ8rvJdYnnVBaGZNPhC5D43eUt6pM6CHAIbkFZJDrYJzaS1aYSU4CbABE20Vz4oU/8LstcPw==
X-Received: by 2002:ac8:5a4e:0:b0:4b7:a16d:e5f2 with SMTP id d75a77b69052e-4da4cd4adc9mr70027241cf.65.1758836722550;
        Thu, 25 Sep 2025 14:45:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb7fe6924sm8076041fa.61.2025.09.25.14.45.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:45:20 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:45:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Mahadevan <mahadevan.p@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: lemans: add DT changes to enable MDSS1
 and DPU
Message-ID: <5nkxxydmtjt7hzp7v5ym4crx44d5o2v5jsq47bxehzzihyy2bs@owvruxcbde6a>
References: <20250925-lemans_dual-v1-1-9c371803198d@oss.qualcomm.com>
 <b1c12696-9e08-47f4-8fd0-11e415af187b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b1c12696-9e08-47f4-8fd0-11e415af187b@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 9ImZRbaW9YZ0vMiCri2xpoAvZ9_DMnaJ
X-Proofpoint-GUID: 9ImZRbaW9YZ0vMiCri2xpoAvZ9_DMnaJ
X-Authority-Analysis: v=2.4 cv=Jvz8bc4C c=1 sm=1 tr=0 ts=68d5b7f4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=V3-xdiz-50e7mNWZjwIA:9
 a=LDN4jnY7WN4wdhk6:21 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX8npH6uXaT0tl
 ZudeT8e+qzhE7bFsHZMnIh4c+vftqPurTj/+11S4SexaMmkLeYuMZOH2a7dffggTjhb7BpVuaWp
 +6xxN/IHy0jGOhOt/hNG3x3QGMiOXu7FpM7MmyoC2G2VcfTwmzHOhXqBJURNE2YZHELn4RRXc1s
 jAQ/B9navbrgr2bMY8mpz0b5gswX6n1Ik4EXzzg4aEyeZyBrbktGiNvk+506lwwfRU+W24Rq/3P
 +yaEbz3aUeYzvyX1tuY7YaKzzCW7RjLds6NX5ArIb9Wi0HbBzToJLsIVvDLeSJmuyFbNTG5KcAE
 ro/kEI9nSwFpSA44Brlw5V2s7rvddtsnwXCI51jck0kW4hpCqCLZEsoBBSbcfpkpjXugGyGYctu
 i25ec8chsdgVl7s76FslDK9AyyYq7g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 12:49:48PM +0200, Konrad Dybcio wrote:
> On 9/25/25 10:58 AM, Mahadevan wrote:
> > Add devicetree changes to enable second Mobile Display
> > Subsystem (MDSS1) and its Display Processing Unit(DPU) for
> > Qualcomm LEMANS platform.
> 
> No need to scream.. "lemans" or "LeMans"> 
> > Signed-off-by: Mahadevan <mahadevan.p@oss.qualcomm.com>
> 
> Please include your full name in git config
> 
> > ---
> >  arch/arm64/boot/dts/qcom/lemans.dtsi | 88 ++++++++++++++++++++++++++++++++++++
> >  1 file changed, 88 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> > index 48f753002fc459a3e9fac0c0e98cbec6013fea0f..45c11c050d3f8853701fd20cf647aef5c6a9a8c9 100644
> > --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> > @@ -6751,6 +6751,94 @@ compute-cb@3 {
> >  			};
> >  		};
> >  
> > +		mdss1: display-subsystem@22000000 {
> > +			compatible = "qcom,sa8775p-mdss";
> > +			reg = <0x0 0x22000000 0x0 0x1000>;
> > +			reg-names = "mdss";
> > +
> > +			/* same path used twice */
> 
> this comment is misleading
> 
> > +			interconnects = <&mmss_noc MASTER_MDP_CORE1_0 QCOM_ICC_TAG_ALWAYS
> > +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > +					<&mmss_noc MASTER_MDP_CORE1_1 QCOM_ICC_TAG_ALWAYS
> > +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> > +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> > +					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> > +			interconnect-names = "mdp0-mem",
> > +					     "mdp1-mem",
> > +					     "cpu-cfg";
> > +
> > +			resets = <&dispcc1 MDSS_DISP_CC_MDSS_CORE_BCR>;
> > +
> > +			power-domains = <&dispcc1 MDSS_DISP_CC_MDSS_CORE_GDSC>;
> > +
> > +			clocks = <&dispcc1 MDSS_DISP_CC_MDSS_AHB_CLK>,
> > +				 <&gcc GCC_DISP1_HF_AXI_CLK>,
> > +				 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_CLK>;
> > +
> > +			interrupts = <GIC_SPI 865 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-controller;
> > +			#interrupt-cells = <1>;
> > +
> > +			iommus = <&apps_smmu 0x1800 0x402>;
> > +
> > +			#address-cells = <2>;
> > +			#size-cells = <2>;
> > +			ranges;
> > +
> > +			status = "disabled";
> > +
> > +			mdss1_mdp: display-controller@22001000 {
> > +				compatible = "qcom,sa8775p-dpu";
> 
> Adding nothing more but the DPU isn't very useful at all
> and doesn't really let you test the hardware (since you don't
> provide a sink)

Only with writeback.

-- 
With best wishes
Dmitry

