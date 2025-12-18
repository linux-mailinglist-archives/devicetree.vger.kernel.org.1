Return-Path: <devicetree+bounces-247703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 19359CCA922
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 08:04:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 538723019872
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 07:04:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E81521FF2A;
	Thu, 18 Dec 2025 07:04:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NMAyKEEE";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="RdV3F8+v"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2994F231A32
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:04:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766041447; cv=none; b=nr2X2C8aopSqVWrgEdgNvGX279ydnTcS0hnAFnJ+d2ZiJziqIpmuMGtr/KdW1Ee3UU4wgA61ci9jxt86eYuf3pcBpc931gGtsB9lR5DdOZLSokqZjNzjWPMILeYbsiAw9T2lQVFHljYai52gHZqfed2qfjg+uhTw5vvR4MWTGFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766041447; c=relaxed/simple;
	bh=sexp/pOSs52k6n8duXLg5v3UNbNnTTsl7yoidQ8+c8M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=m86DzpKqkKCgNVNAqCv0YkFXqdPdRXpCX58HFFSBIpNL5IFKzUrR+NWZtZAztEWxQ//3ojWpsx1ViTymL2mIpSVW+QQw+tBja6WtB3Wvr9xpUlZuuw4Br/kQXAfBs6xLZTy8wV3qHG6r3VFTCQtk6QBnbbUAhZEFlqnToKTlLe8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NMAyKEEE; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=RdV3F8+v; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI1YUJE4057275
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:04:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yhQVaGxjPZZ/Sn8LPtCU2nxg
	Vp8ENued6rDxogl7jss=; b=NMAyKEEEGXviVkv1B8FrhDN2WBKO1KT1+aazirMX
	tVEOG4gMl4MZhoFI0pmKPAWd0qM1KrnKeCQZh6iMqVpo9UFcm7SJR1+CqhmVNefP
	vvFxZSCRcuO9QtB3m63a5kqFO6PNeNidTUtFQjSanvsyenVhsjq4d7LDkbD6E9DW
	epsvEm576Iog/eO6sQJqxKwrEHObO6K50jCGl/7RyclHKYWn2OlKPEd9JDhXmxG/
	9MH9WBX+6FxdD0jFQFI+RnU7cUhSEVyTr6KuQXM++1UD4gcazXpD2EWtA5jQTOrl
	2+qGtaKzLh/miEoN0u9L2aXJfC05mT/yPmBOVH4TQIJwrg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3xr5aghr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 07:04:04 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b4f267ba01so347788685a.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 23:04:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766041444; x=1766646244; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=yhQVaGxjPZZ/Sn8LPtCU2nxgVp8ENued6rDxogl7jss=;
        b=RdV3F8+vTXGLJFBI/pj9j+AVTFji//tkkMrzhDqEKq0+RH3lu4zBStMg21kg4g7OP6
         1UIuJ02VwOVf0LimPhfM8gs5PXyEIyf68iTNdApokk7wVxL1vCk18xMCveDEAQ+TQXlv
         QxSBPHpE82CPRO0LX+ZZeOxMpTZTGWxLvwa99oqSoOVbT6bm1yeSUBgHLLGTi6YYfyQ0
         TQVC6s/TNP7OAOZkySpR5QSgZ9MmkiGFYRV1Ft6/OFbPdgVVP2od13uXKJ6cDtOJocDr
         73+vMglowdnlsweJVJdFTvOrdU/8IAocLw/pPtxYgXjjhTSN4G7qT/NJhlB4TrUNW2VD
         Mwsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766041444; x=1766646244;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yhQVaGxjPZZ/Sn8LPtCU2nxgVp8ENued6rDxogl7jss=;
        b=a0DKYbs95grki4go0vMuAHrwbHc/QhbDczZCFXdYM8EiGqHu0aRyuNw68Cju+hx7jo
         wVnnQXr5SHhZNPcTabPe8QcnoyKTJm6EizRJSww3WPa/hfqGpMm+ETmf6YJVBkPXVecx
         muDTgQw9tMrWrNb8hB0Pg8cufDWRr+flYF8RFk4JopAjhgTBojE577TP407/vNdLGiCJ
         m2baNHquXmiMztYhy9WZIeio0B/a8gugH4t//vpaKRnGcLVfkbmOrrdAJubsmHq4oz9Y
         Z5VzmHrMcx8TUw75AVKzcmcb7HKswpZAlZkf9LuSHHkgBhlesZlsXFpuLJLfoPK2Nomr
         K1kQ==
X-Forwarded-Encrypted: i=1; AJvYcCWnIL8cTCL3Rdipd3AOVgX1fMLODerRe+cSQHIi8yFXda5QT+bpnBsPyGT0tLfZ0rhB+jZnnDufGcUo@vger.kernel.org
X-Gm-Message-State: AOJu0YwNR1VKDMT+2c92EplfDsyv6d4gpu+fx/CnfmAuFewYEron1oqD
	HYyVlZ+qb+bBQd3IWjjcuFPKyqo251NiP24109BdqAiu5EoH6lt5mM++Zm5qlXdi2mWYxwOvMF+
	9WdJPNrYss8azWHFXbf842IjIVjCmPvuFh0ynUPPey2XPHlFOORPcjgkw0QatgOwfSH+6iNtW
X-Gm-Gg: AY/fxX5ia+LN4e9y5XS1dtwGsYjcptppycxs7xnVcXSUxI0bieDaVyNf9iTq1Bj1yWe
	ozTLGVGqGx99UOeLTPXuo+mXbsMsL6BVnUZ9TX2Pu9iH29+70cXEJiIa2suzH+3HJgpb4eNDXWK
	9Q2I3JiQr4jyac9XOI+ar3vXD6FaTofPDmtQtDC8ST9tT5yiCLoSOVmQjPRawqV4N2NGuTKvMIR
	SNmnU4SSDz3bb/n85SQTOtBpfDp1cTkBq03+U4WF7keMN0O8vfmW9ZOATllTLTZ+3pvlOxp4M8I
	d8zXmsXNpmx+CX+ApD2kqemG1OT5GgQ+TCzkps+aSXJOfQB3ILNJd974rLHRTx5L0ZlBaC8xT1+
	Xfap6l+D/I5qLoKDxemgE5IRbK0h43c8BciR592aNEVltRsbXHNNVt1BDaYocV5bOomP9Wt0=
X-Received: by 2002:a05:622a:181a:b0:4ee:17d8:b583 with SMTP id d75a77b69052e-4f35f43b6c9mr27363631cf.27.1766041443979;
        Wed, 17 Dec 2025 23:04:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHTObuEl0BF71PRLCDvZVIfI/7tKVfqlBj31pn7BFRYAWA2Fk3DBUTTnEGGn6z5Bbs8MGDYCQ==
X-Received: by 2002:a05:622a:181a:b0:4ee:17d8:b583 with SMTP id d75a77b69052e-4f35f43b6c9mr27363371cf.27.1766041443537;
        Wed, 17 Dec 2025 23:04:03 -0800 (PST)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-88c5e16668dsm11844456d6.23.2025.12.17.23.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 23:04:03 -0800 (PST)
Date: Thu, 18 Dec 2025 15:03:56 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        tingwei.zhang@oss.qualcomm.com
Subject: Re: [PATCH] arm64: dts: qcom: talos: Add PMU support
Message-ID: <aUOnXKItwKtRapm/@yuanjiey.ap.qualcomm.com>
References: <20251217092057.462-1-yuanjie.yang@oss.qualcomm.com>
 <5d258204-097b-49e1-a53a-d35f846ecfa8@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5d258204-097b-49e1-a53a-d35f846ecfa8@oss.qualcomm.com>
X-Proofpoint-GUID: KL0rPYooibjnIx4RS60_3dqopCvYbG3N
X-Authority-Analysis: v=2.4 cv=DsBbOW/+ c=1 sm=1 tr=0 ts=6943a764 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=l6bYHGOvgJwPg63tIUIA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDA1NiBTYWx0ZWRfX2JOg0oQdGO+B
 g6Yo7uVOQIXUn+dnZnnsjl3S9quhA0w3D6c+6gcmRfpGEmkdE7V04ElI6grc45JXGp3Rfmab80M
 kWjI4J28pJINoHWnV/XIBMluVwup+9TYYiTSNGUIR3OJRAGVsxLbKqmpoqiILwIDrNMzDVq1H+V
 wGgREdQqBN3fC1rQKlXVWpwMB27ZfmGJsE6Y9DagSpIfda/xK+nPvcToHe8pgnjgN0HL3PdIBLJ
 bU3wXif08Bu82qNAdYIIWjBCN3A2Iwus9za6GLlC07So0iPSmaKCNCEYXINAdKHCnvAVLt0czZg
 VxUs6q6wL3QUrcIJXEVuctESkwX3HzP2GHIrumKlTYQZk0XamcYOeIA1pK5Yx/NuO0pCW7yhsRJ
 F3Rhc3U4r6IE8rfldpWQI9/TvK1mbg==
X-Proofpoint-ORIG-GUID: KL0rPYooibjnIx4RS60_3dqopCvYbG3N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_01,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180056

On Wed, Dec 17, 2025 at 11:07:17AM +0100, Konrad Dybcio wrote:
> On 12/17/25 10:20 AM, yuanjie yang wrote:
> > From: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > 
> > Add the PMU node for talos platforms.
> > 
> > Signed-off-by: Yuanjie Yang <yuanjie.yang@oss.qualcomm.com>
> > ---
> 
> Check out:
> 
> 9ce52e908bd5 ("arm64: dts: qcom: sm8650: switch to interrupt-cells 4 to add PPI partitions")
> 2c06e0797c32 ("arm64: dts: qcom: sm8650: add PPI interrupt partitions for the ARM PMUs")
> 
> You'll have to do the same since the interrupt is shared

Get it, will add interrupt-cells 4 add PPI partitions in next patch.

Thanks,
Yuanjie
> Konrad
> 
> >  arch/arm64/boot/dts/qcom/talos.dtsi | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/dts/qcom/talos.dtsi
> > index 95d26e313622..3ba1e3c1d1d7 100644
> > --- a/arch/arm64/boot/dts/qcom/talos.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
> > @@ -555,6 +555,16 @@ opp-128000000 {
> >  		};
> >  	};
> >  
> > +	pmu-a55 {
> > +		compatible = "arm,cortex-a55-pmu";
> > +		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
> > +	};
> > +
> > +	pmu-a76 {
> > +		compatible = "arm,cortex-a76-pmu";
> > +		interrupts = <GIC_PPI 5 IRQ_TYPE_LEVEL_HIGH>;
> > +	};
> > +
> >  	psci {
> >  		compatible = "arm,psci-1.0";
> >  		method = "smc";

