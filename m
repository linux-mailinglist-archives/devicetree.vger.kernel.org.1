Return-Path: <devicetree+bounces-182752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27AB5ACDEEB
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 15:22:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B63CD3A6FFF
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 13:21:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 955ED28FA8B;
	Wed,  4 Jun 2025 13:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SNlwsKKX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0507928F935
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 13:21:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749043313; cv=none; b=jYeF7wtKAEifFUoWQw05odO8xVXceXjrTN+2lzat1zwLqkFvFrR0+NQpr6Ykbim/yrsvjBLNyBoKXPFsHD1at8oHv6q3avraZ87toqDnwTHRNxB3fp9WFr8MRXmaILW7RYfkCD/Ar+IAtXc0DxzJX4YE+fPlNs23rL3f5G6U9Pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749043313; c=relaxed/simple;
	bh=Z1tbkPEjU7vxBp838sB95jmERxuwrYr3hyTQmVluvOg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=trkD+ECgJcHIqZrcvZE3oggBIJ/DEM9itqXNaJ1kXxcJV7WPBPRavXM+KzUYXIVCxQh6rhuzo1v2F5NNa2pT6fOb8H5wlbCANq9bdpvorIxDp/1F8oahCMEI1npeP4IFY259g8xx3IGT70WDwbABItsY7t1Xcb7dFG7wd7PKc+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SNlwsKKX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 554AP3Mj013969
	for <devicetree@vger.kernel.org>; Wed, 4 Jun 2025 13:21:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XdjpFZHO8pEeHGXIBs/kB9C9
	YUntjyLrTqtUkQARpak=; b=SNlwsKKXsjrPqZ658617XENwZYli5fvwViFzCYUr
	gM6lv+yzDhkmTAMK+K1BaIdOVBnm6S8zrM33TylwY/u+4G28m6Vlk9jdSPK5oXZ3
	UD32EydJ71nEjo8YauNb7Klfmt+x21yFpNrD7ogbkZXquoTsoYxGzy5kVdNFK/PO
	xf/7c87qP06DJPbwuku0H5lBzmYC1QMw4Xx/gg99ILmq26uP7t3dxSXNO6QVWvio
	B5+41y0Bj1TCIzb2Y+bkSFewQoDotyhvMwo9Xh6Lb5R/vnA2HwwaAvDkWyu055Km
	6Hj9gjhnaadhy0sE8bdd9zpaLsY/ZAiPAlJWVfMkMaafqA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 472be81uyx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 13:21:50 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5e28d0cc0so1048598085a.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 06:21:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749043310; x=1749648110;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XdjpFZHO8pEeHGXIBs/kB9C9YUntjyLrTqtUkQARpak=;
        b=vBoO1+Rr94NF/kKEstw++poedfDWzqxcMdQzsxA9qwB3igUUEsfDGxu0scW4IC/GY4
         rzoPhfDbbROJcW4jxUcckAEe/KfOuvmb37PggGHAcDfgtftQdVcq8YyXbrfLwQZCza34
         9h3eUuDiYNWRuZVRwPdIW3GlJw+63MpXkZ/5EK97QDGhF/9cRCaKM9Eb0iJY6TRAzppf
         eHvLEXliukRNQuRaUhwWHZxkBjvG6NT1QLUK0PWWOuObmHYeRhhZrqo3TEjsTsSAaZxQ
         5lGx3iSayU5DkV+uxSw+FGUffTNMPpEn7OYXgSlUjX1WP/RB6V6QR13lm/WBflSa5E7c
         Usvg==
X-Forwarded-Encrypted: i=1; AJvYcCUKUk1H2C5xXSI6jUwGClRI+1G+PeB8EyPW6Cw+hwzyKmg17xJqeb4yYS6r+D9gXDJGxCe/TQDI7FG3@vger.kernel.org
X-Gm-Message-State: AOJu0YxWWTIY1kXD1CMeI1m1eMm00VKV3VoZo6r22XOYFeXA5gp7E78M
	TK3QFhP2ERMJzd4FnPj+g5PmKXvJHci2aLGFX1PeU8FNkMtZxJv5m2xIykytq+h3cSttS3m/lEY
	xJU6iOV1FucPAFMQtv+7Lqp9Vka+70IXllX/0eufk+uf0gjsn/XA+vQsPXOiPcHwo
X-Gm-Gg: ASbGnctC0PZ68PhAtvgqtx4bzAEsIQFoEfR6KNKQdfgFUKWE1wAVln8TJxqvOvmTcRc
	EUVD3cTAp+B9rNlwI4fDq+iofhjxPiLv6ZNdlow/RJmgf9nB0SvzIfTtaPANM3OCU5MlyEZK6M/
	+87CBZIsR1ebeZ3wZFTI1GjI6Pn2zkbgW1lQ8ouKkecd//Lg8Eag/W6uHOfThAh+HX4PmRPNCH0
	/nXttI1oknk9FtLofPYEyAHSywRxeHHojxwmleb48cbDUkajxmTu3W+XpWP4y/2L0Btj5uYz/k+
	ukCIbo/u+Fo2KxQlgRNrjIGT/G+0JKHgT9IE7IF+LmiKbKEZ5GbxyRPYKVqQ9hNkwoyD8NGNAsw
	=
X-Received: by 2002:a05:620a:17a6:b0:7cc:7704:bf87 with SMTP id af79cd13be357-7d21a8cc5f5mr330786885a.42.1749043309616;
        Wed, 04 Jun 2025 06:21:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEaF4yXH3QHGrC86KV384wdHehXheVmFfGi0pAVLSi1rxL4Rab2eJh8WFfbXpmmmsGjs+MfaQ==
X-Received: by 2002:a05:620a:17a6:b0:7cc:7704:bf87 with SMTP id af79cd13be357-7d21a8cc5f5mr330781385a.42.1749043309032;
        Wed, 04 Jun 2025 06:21:49 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32a85b33c09sm21728751fa.27.2025.06.04.06.21.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 06:21:48 -0700 (PDT)
Date: Wed, 4 Jun 2025 16:21:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@quicinc.com, kernel@oss.qualcomm.com,
        Pratyush Brahma <quic_pbrahma@quicinc.com>,
        Prakash Gupta <quic_guptap@quicinc.com>
Subject: Re: [PATCH v9 2/4] arm64: dts: qcom: iq9: Introduce new memory map
 for qcs9100/qcs9075
Message-ID: <q3hzryk4s7jd4kyavcg7s6d3oyzfpnjy4jhpeluvnikiglbeng@r4ydugwidgv7>
References: <20250530092850.631831-1-quic_wasimn@quicinc.com>
 <20250530092850.631831-3-quic_wasimn@quicinc.com>
 <ss3xhat6v3s4ivcypw6fqcmblqait56pqhzwuhzyfhevp4kzlr@5e3f5nwb6lhb>
 <aEATe3pi1SsfZVI3@hu-wasimn-hyd.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aEATe3pi1SsfZVI3@hu-wasimn-hyd.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=bNYWIO+Z c=1 sm=1 tr=0 ts=6840486f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=dNdsqrdDsggF3qCCPzEA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: CkhAy1Yy9NAUdlhjv1JfrcqxpMtwoEVh
X-Proofpoint-ORIG-GUID: CkhAy1Yy9NAUdlhjv1JfrcqxpMtwoEVh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA0MDEwMSBTYWx0ZWRfX0bWF73B3SIwV
 vI5BzfgrpeF14yJXTjwZ+DHSTEl13tehIpqL0/BErSL0ab9bVTNFi7sLkKcN0hfjLD/tWFIIMC6
 ZFCuHNfMApEKje+jhtg5twnmir2obZN2d3VUrANfpekO7br4nXuSGgZlvhdPXevwCEZEb1jBsQu
 nKUBLAuWkpkaifx5tYxkyQR90oItkODWKsd3q0fOhPFM37R9yADf0Faq+mm+7cIKHtiGuDPX+WG
 l7HVkZO1kSUTsx0TddlpBkhAgOmnCHIa+rQFEQAm32C77DLsZ0+UMJunKgGeTKPJjt2IdamatOR
 whE3vjjNzavw/5llXnewm8eERv5HrFkCLOoaS2Wfh+tpt3JdNVm9O8gALg49iW0XNnju98I9m41
 0fwiXKaoqvqVDzMVCe3Pyf+dxbVSy6Sgcy5d/ihg26B2L3kyI+lCbbUiV0OwYDV0Xzs187fp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-04_03,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 phishscore=0 priorityscore=1501
 suspectscore=0 mlxscore=0 impostorscore=0 spamscore=0 clxscore=1015
 mlxlogscore=999 adultscore=0 bulkscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506040101

On Wed, Jun 04, 2025 at 03:05:55PM +0530, Wasim Nazir wrote:
> On Mon, Jun 02, 2025 at 10:41:39AM -0500, Bjorn Andersson wrote:
> > On Fri, May 30, 2025 at 02:58:45PM +0530, Wasim Nazir wrote:
> > > From: Pratyush Brahma <quic_pbrahma@quicinc.com>
> > > 
> > > SA8775P has a memory map which caters to the auto specific requirements.
> > 
> > I thought SA8775P was the IoT platform and SA8255P was the automotive
> > one. Has this changed?
> 
> Both SA8775P & SA8255P is for auto but former one is non-SCMI based while
> the later one is SCMI based chip.
> 
> Only IQ9 series of chips (QCS9100 & QCS9075) are for IOT.
> 
> > 
> > > QCS9100 & QCS9075 are its IOT variants (with marketing name as IQ9) which
> > > inherit the memory map of SA8775P require a slightly different memory
> > > map as compared to SA8775P auto parts.
> > > This new memory map is applicable for all the IoT boards which inherit
> > > the initial SA8775P memory map. This is not applicable for non-IoT
> > 
> > Is there are platform out there that actually uses the "initial SA8775P
> > memory map"?
> 
> Yes currently sa8775p-ride and sa8775p-ride-r3 are using initial memory
> map.
> 
> > 
> > > boards.
> > > 
> > > Some new carveouts (viz. gunyah_md and a few pil dtb carveouts) have been
> > > introduced as part of firmware updates for IoT. The size and base address
> > > have been updated for video PIL carveout compared to SA8775P since it is
> > > being brought up for the first time on IoT boards. The base addresses
> > > of the rest of the PIL carveouts have been updated to accommodate the
> > > change in size of video since PIL regions are relocatable and their
> > > functionality is not impacted due to this change. The size of camera
> > > pil has also been increased without breaking any feature.
> > > 
> > > The size of trusted apps carveout has also been reduced since it is
> > > sufficient to meet IoT requirements. Also, audio_mdf_mem & tz_ffi_mem
> > > carveout and its corresponding scm reference has been removed as these
> > > are not required for IoT parts.
> > > 
> > > Incorporate these changes in the updated memory map.
> > > 
> > > Signed-off-by: Pratyush Brahma <quic_pbrahma@quicinc.com>
> > > Signed-off-by: Prakash Gupta <quic_guptap@quicinc.com>
> > > Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> > > ---
> > >  .../boot/dts/qcom/iq9-reserved-memory.dtsi    | 113 ++++++++++++++++++
> > >  1 file changed, 113 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/qcom/iq9-reserved-memory.dtsi
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/iq9-reserved-memory.dtsi b/arch/arm64/boot/dts/qcom/iq9-reserved-memory.dtsi
> > > new file mode 100644
> > > index 000000000000..ff2600eb5e3d
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/qcom/iq9-reserved-memory.dtsi
> > 
> > The naming convention is <soc>-<something>.dtsi and I don't see any
> > other uses of the "iq9" naming.
> 
> As this new memory map is common for IQ9 series of SoC (QCS9100 &
> QCS9075), so we have used its common name.

IQ9 name is not known or visible outside of this commit.

> Once the DT structure for QCS9100 is refactored, we would update this
> common file there.

Can you refactor it first?

> 
> > 

-- 
With best wishes
Dmitry

