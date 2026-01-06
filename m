Return-Path: <devicetree+bounces-251753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D9223CF67C4
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 03:38:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A6EAD3008886
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 02:38:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E64D822FE11;
	Tue,  6 Jan 2026 02:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZI9d1Try";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UNDzxDwP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 439F122129F
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 02:38:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767667130; cv=none; b=Xaph/ZvNhH8NlDKR2LZz7219v5t75mZmZDMq3kiCGjeWe1ehlyj+qjnK7fWFDgM0gRJcH2TueK4rLmsy88csyaXCWxrTVdx2p+EKL24rO1Ec8i+N+F3n9cyv2s9hw/WkDJsRaC3ZEjvdwPQuiTYZ9qPddAZd1+jUXN+FtV0RTwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767667130; c=relaxed/simple;
	bh=/NJDBvW/a24TZIBfpNthUIKSurAU9nB83iwbbVnTWrw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=esEJG+WocME+g04JyEJKiLUZgBqAclL07Pf5Ic+AvxSoK1AUUKIJS5zVK9RKvqCLzjcZYt8ktf3fO4a2+KgUJarwBoUVqCVlJAEhGo84kMhWmMKx+5dNHqRjdNHp/UjGgePlAd6FfU3QVVpIo9LLG0dNqeRfSyA40BGrukuvCsQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZI9d1Try; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UNDzxDwP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6060nEJY2726011
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 02:38:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kRmPmRjfHl0gKWnMQv/zgY+RpWwclnw9yyDx4+Lre2s=; b=ZI9d1TryMR6FNUdS
	Vv35Vx/9aFyIKTjtjq9FazW4c4Hl8JSWzRQuLVfFayUuhoqrFidx21uWx+fSrEDL
	dbZyIPk0fAIn6V/oxYKyMBZfm+zSTrYVXUHvHUBvMklLzBjwZoea6Fw6EJDAglgG
	tDQnPaJjph6KewRRSCmfGBeIux06S6Jum/5wBc1XI0oJ0oEWaUxU4bVwEnk2A4YR
	nJmzA8MNig9mWzRblsCGBGT4WzfKdwkNoroTXvaYyfyCHBRj6qcEJ9w5ynLgwNEj
	Uzg6mp+MdvcbcGiZUgFphdkzgtuUj3AEb+k8gcqjvevG+aV/GKsbQubiAV+I+12B
	V8tU8A==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgpn9re2k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 02:38:48 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-88a2e9e09e6so17354326d6.2
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 18:38:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767667127; x=1768271927; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=kRmPmRjfHl0gKWnMQv/zgY+RpWwclnw9yyDx4+Lre2s=;
        b=UNDzxDwPZXA0UyH3p4VaoT/CLD/B4XMhrpHgxfXTaXIk1g0JG+Kge/V44CbavQJa7R
         0S+LZExEMk1ThBAl6okLuft9I2g9v+iakOM6GAvjZ7Cf8RgMlAVmIVqZLxMR2dO5GOQm
         VjhONW++CVAG2s1nHccvbaKP/6ujntfUM2dXs/DSg6+5Zw+wQZJ6sPDCbTQETKZUCR17
         G6xbglm8kDZ4knNfOZy8NUe4as/lZ6fyj9pofRglFNzSSKt2/ToXivBr9R4kgIfNAOoE
         wyJ86avZzWShFEVHh+es3jXrQBxiVE94n5efOc6wfpi4NUts4S4/atISWX0kA8tMJ7uh
         dPXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767667127; x=1768271927;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kRmPmRjfHl0gKWnMQv/zgY+RpWwclnw9yyDx4+Lre2s=;
        b=gGHf2TaSLijnG0+KM2pR0IbTVEUbxO2Vt1vdz77FTdgGO7LylK88Y2D/za7tYCF49q
         88QRMvIVC4IRI/R9Tj8BgI/6LFnEwthBB62Oma+gvVs9HYmFSHhLqXVYhMFau3yVv3Vg
         txjBWnItf59pg93GPR4dv0amsdaj2v6+4bCzPWYDybVCwbuVWYy4zBK+PeE1Vq84jKbr
         rvDP92QGioJ7L3ihVLh+knpuZF0BChfPEhKgqvW3gol93eAdprn3VmZmCscqljZTkTKk
         y7sYkE1txYk44rRKac+TgjeCLs9aDtDUV4C1RAjztjbptxQ5u7p9l/I0uJQxPa0YSpJt
         Hkeg==
X-Forwarded-Encrypted: i=1; AJvYcCUxEBpiEoMR3GmSxXNgF34pKk6fUmJ8uWq/MswUEzYtyzVF+FMdvjiQGwui1Ok3GKhzWSjXmuigJdVy@vger.kernel.org
X-Gm-Message-State: AOJu0YwQNlMOycenSApiiJgGZt79PhNxJikd456UTgJCB+YV2JkV8sYh
	JxjhAwpi9E8yR2CDp8mDSy1i77qIeC2MKnj9Y0GzowPC9xmESHUz+6dVJhfChwC0ObBVEzWlE8X
	f48fRiIfSDeuuYapRshivkePS64Ub+XAsTMqtUXQ215FmVSqbYbg95yNoDwWerDS4
X-Gm-Gg: AY/fxX5LGWcQEhJVf4CdP0YTAc8aW1wQNfeJuQKQS1P8vdESy5yUZvQ6IYQCx3Qs6WT
	pW5jhjtulpsNjnLfBKFsU87Bs9zkzEqYO9whWvO+HTbxGRPp68tJgwd6Ez/45k2iRyjTPAm0B6q
	9VQuMZjjNCGj2a/3rNn5hCap7Big55ryO6ZAtNIrkozoElQKjepXg3V5h2Kvc6Sr+R/myy3p559
	+5csOZmDLYULww872iXJkROccK2dM84c1mlk/gQus3ZvOXvyU5VbGI3Pb7GppFYlbPEoJrZtb6p
	FDUV7ErAhtf0e1B4GsgJruPW7xdDciHFatkxrmV9Yh3JjhNm2+017K6tMYMPjreIUxMam6Hgaq8
	kJWyvFksWGY9p8TtXAzsPqfNHpwBeDb2dAFAbhbVE5gpc/ttB+ZEigSHI4gB9vNbuKEDFokgLKA
	3wmnZwX6UajFF+f81PpVGR8z4=
X-Received: by 2002:ad4:5d48:0:b0:882:ff95:5252 with SMTP id 6a1803df08f44-89075d218a4mr23139856d6.8.1767667127554;
        Mon, 05 Jan 2026 18:38:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEwc0H9gIx/QRMt/4ZcP0Kqt31v7vU+mCWfq1+Hc/H5cKtzg7XsKABttwvTlweqJSiBAG854w==
X-Received: by 2002:ad4:5d48:0:b0:882:ff95:5252 with SMTP id 6a1803df08f44-89075d218a4mr23139646d6.8.1767667127109;
        Mon, 05 Jan 2026 18:38:47 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65d697d4sm212909e87.73.2026.01.05.18.38.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jan 2026 18:38:46 -0800 (PST)
Date: Tue, 6 Jan 2026 04:38:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Sumit Garg <sumit.garg@kernel.org>,
        Sumit Garg <sumit.garg@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, akhilpo@oss.qualcomm.com,
        dikshita.agarwal@oss.qualcomm.com, robin.clark@oss.qualcomm.com,
        lumag@kernel.org, linux-kernel@vger.kernel.org,
        Prakash Gupta <guptap@qti.qualcomm.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: agatti: Fix IOMMU DT properties
Message-ID: <pfvgupbvbjfhzb2p7ejslpcfybnae72s2k7d4fcri3bskjys5n@el5cg42jo2yt>
References: <20251229070712.456138-1-sumit.garg@oss.qualcomm.com>
 <CAGptzHOftKG_3h3KegrYuNiaDFCUHC8oS+eN2JyBDh=aRMod4g@mail.gmail.com>
 <5fdf6122-3c2b-44fb-b8ea-9e554208a56d@oss.qualcomm.com>
 <aVexkPYW0X6nWW9y@sumit-xelite>
 <bf62a6aa-fba7-4c95-b1e4-9da2528d0556@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bf62a6aa-fba7-4c95-b1e4-9da2528d0556@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: RCefhqiYxevgHbTauyZ2sWUOxzlXn849
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDAyMSBTYWx0ZWRfXwJyCf3lEufyt
 ga4R2SghKoVO9tScb8q3uwhDVwUlTyfD/di32as6lixg3CPwaN/eIB1MvUgkYUQiKsc+oupZQrE
 HLU76MY7wbqmD0FgiXrTJWoM2I2zBqcBZ6Izx+96eK+IugTTSMJ7JCYa5f2hSQDh22/UGu8c0p3
 ZAqwsC2YnGXd9JHA8EF3E/oDefOmZV4JAaP8iR0hyDGp3o1iQ2MJNUj2BH0qYUplOidlUDbn5l2
 wlUzArllA8VmJJNh9C3doHdA+KV0KpPgK7lLNwWoiPTbL9zEbUSP8cENYZxYatlec6YiK7RCNMB
 L9lbI0A/J9np6IpKCEa6nWJ721aLDA0LzKUH84JUmVvrE9AhKyJZIsmQIrzqFgdrgYCxuD6WKpt
 q7YjYzmSG6771k7lRdYSvdjN9LXKKR2BSb5q1QuY9lw9zOnM80pSYWTctZd5FUCVkv3hF5IGU58
 PrrHbUGKgsLgm5hrz+w==
X-Proofpoint-GUID: RCefhqiYxevgHbTauyZ2sWUOxzlXn849
X-Authority-Analysis: v=2.4 cv=KfnfcAYD c=1 sm=1 tr=0 ts=695c75b8 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=u5c2Fsq0vf77OEmpFKwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 adultscore=0
 suspectscore=0 malwarescore=0 impostorscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060021

On Mon, Jan 05, 2026 at 12:51:09PM +0530, Vikash Garodia wrote:
> Hi Sumit,
> 
> On 1/2/2026 5:22 PM, Sumit Garg wrote:
> > On Fri, Jan 02, 2026 at 03:32:57PM +0530, Vikash Garodia wrote:
> > > 
> > > On 12/29/2025 12:50 PM, Sumit Garg wrote:
> > > > Hey Everyone,
> > > > 
> > > > On Mon, Dec 29, 2025 at 12:37 PM Sumit Garg <sumit.garg@oss.qualcomm.com> wrote:
> > > > > 
> > > > > Fix IOMMU DT propeties for GPU, display and video peripherals via
> > > > > dropping SMMU stream IDs which relates to secure context bank.
> > > > > 
> > > > > This problem only surfaced when the Gunyah based firmware stack is
> > > > > ported on Agatti replacing the legacy QHEE based firmware stack. Assigning
> > > > > Linux kernel (HLOS) VMID to secure context bank stream IDs is treated
> > > > > as a fault by Gunyah hypervisor which were previously ignored by QHEE
> > > > > hypervisor.
> > > > > 
> > > > > The DT changes should be backwards compatible with legacy QHEE based
> > > > > firmware stack too.
> > > > > 
> > > > > Suggested-by: Prakash Gupta <guptap@qti.qualcomm.com>
> > > > > Signed-off-by: Sumit Garg <sumit.garg@oss.qualcomm.com>
> > > > > ---
> > > > >    arch/arm64/boot/dts/qcom/agatti.dtsi | 11 +++--------
> > > > >    1 file changed, 3 insertions(+), 8 deletions(-)
> > > > > 
> > > > 
> > > > Looks like I messed up this patch-set with email delivery leading to
> > > > non-delivery. I resent it properly again here [1]. Apologies for the
> > > > noise.
> > > > 
> > > > [1] https://lore.kernel.org/lkml/20251229070712.456138-1-sumit.garg@oss.qualcomm.com/
> > > > 
> > > > -Sumit
> > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/agatti.dtsi b/arch/arm64/boot/dts/qcom/agatti.dtsi
> > > > > index 8bf5c5583fc2..e705eb24160a 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/agatti.dtsi
> > > > > +++ b/arch/arm64/boot/dts/qcom/agatti.dtsi
> > > > > @@ -1613,8 +1613,7 @@ gpu: gpu@5900000 {
> > > > >                                            &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>;
> > > > >                           interconnect-names = "gfx-mem";
> > > > > 
> > > > > -                       iommus = <&adreno_smmu 0 1>,
> > > > > -                                <&adreno_smmu 2 0>;
> > > > > +                       iommus = <&adreno_smmu 0 1>;
> > > > >                           operating-points-v2 = <&gpu_opp_table>;
> > > > >                           power-domains = <&rpmpd QCM2290_VDDCX>;
> > > > >                           qcom,gmu = <&gmu_wrapper>;
> > > > > @@ -1895,8 +1894,7 @@ mdss: display-subsystem@5e00000 {
> > > > > 
> > > > >                           power-domains = <&dispcc MDSS_GDSC>;
> > > > > 
> > > > > -                       iommus = <&apps_smmu 0x420 0x2>,
> > > > > -                                <&apps_smmu 0x421 0x0>;
> > > > > +                       iommus = <&apps_smmu 0x420 0x2>;
> > > > >                           interconnects = <&mmrt_virt MASTER_MDP0 RPM_ALWAYS_TAG
> > > > >                                            &bimc SLAVE_EBI1 RPM_ALWAYS_TAG>,
> > > > >                                           <&bimc MASTER_APPSS_PROC RPM_ALWAYS_TAG
> > > > > @@ -2339,10 +2337,7 @@ venus: video-codec@5a00000 {
> > > > > 
> > > > >                           memory-region = <&pil_video_mem>;
> > > > >                           iommus = <&apps_smmu 0x860 0x0>,
> > > > > -                                <&apps_smmu 0x880 0x0>,
> > > > > -                                <&apps_smmu 0x861 0x04>,
> > > > > -                                <&apps_smmu 0x863 0x0>,
> > > > > -                                <&apps_smmu 0x804 0xe0>;
> > > > > +                                <&apps_smmu 0x880 0x0>;
> > > 
> > > Are you planning to update the binding [1] with this change ?
> > 
> > Yeah I am planning to update bindings as per changes posted here [1].
> 
> I tried a similar approach for the very same usecase [1], and what i learnt
> is that we cannot describe a range of iommus given the fact that there is no
> hardware which exist with *min* count of iommus interface. It is suppose to
> be a fixed number of iommus interface, OR i interpreted it differently then
> ?

You've interpreted it correctly. Sumit will need to drop the extra items
from the corresponding iommus property definition.

> 
> [1] https://lore.kernel.org/all/20251017-knp_video-v2-1-f568ce1a4be3@oss.qualcomm.com/
> 
> > 
> > > If so, how to
> > > handle the case of iommus for gunyah based vs non-gunyah based ?
> > 
> > Currently Agatti doesn't have any support for Linux running in EL2. This
> > patch-set is just trying to enable Gunyah based stack.
> > 
> > [1] https://lore.kernel.org/all/aVOFL3jmNrFNiYV0@sumit-xelite/
> > 
> > -Sumit
> 

-- 
With best wishes
Dmitry

