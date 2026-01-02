Return-Path: <devicetree+bounces-251154-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2BBCEF753
	for <lists+devicetree@lfdr.de>; Sat, 03 Jan 2026 00:15:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1240E300B822
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 23:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFD262459C6;
	Fri,  2 Jan 2026 23:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WG1ca2Tv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KTuW02rc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7BE925334B
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 23:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767395708; cv=none; b=XvgdZV+Z3IhCc4LHCg8FBl7IZX2GwcqVnP4Qe2mftqIF/b+7F3tar5A9TZmjiHm7wbj3VL6BJ6bb7JH8BmUgfxOYNayfj2KfmRH0PfUoM1lvy8f1PU0JTmLWGASkP4fyc3I+cmvJSUk3pfAFUd9FZHjRTpeNe/g4cJmVetNpU/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767395708; c=relaxed/simple;
	bh=rSRFoCfdKmb6UtCiy8aqLO0MGgVjiI23RrhiW9ZMEkU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LKwJprFFxcJ4wxTWwW7f+t0S5iIzr6Kcxju375h0rvMkXlldXmWUfTkTtcR4qdxgJl/B5u5hSNC1/TS8mTzjKBv+ena4GzEYQ0e1wsuGa/YRbhc60w7d+52Bq9zeoMXT6SDnDiRPSw6grIx7N1n7KnLz7cNMamIp0FDLKDjmWbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WG1ca2Tv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KTuW02rc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6029W2HB824403
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 23:15:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=U+MbvygnS/TqHceRvslTElN0
	qMNlDFeAOrrRcu0HeAg=; b=WG1ca2Tvqu7pnu9+Dltrw4Dg3sYr7CqebAAcI2sU
	P84LhODTpeFbuXuAcul/KtfxxSzYF7A5vlfWWGHG2W670cXR7tbuY22iyHXDuBba
	fnjmgoTJah3Qd5bp7wiytxtZThhjd8k5hwDe06YbUTB01syFCPGKC/GhdkzCQLgd
	WK1bKi6FpB/xC7HiQaLecEiL14eaZOCh5Vt7QoCI6y07j73pb7mYWznsP1oZelRj
	qjduBCpv12CmM/LNrcKRVe8Q+iG02nuyxY9cKXgnbeYn4I1ONCZR+bVJhOheGFpo
	5TQ3i1B+TzcVc2qjVB6E2MzqTskX75UiyGPU5R43F8xXrw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd8534ex6-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 23:15:05 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed79dd4a47so275994931cf.3
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 15:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767395705; x=1768000505; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=U+MbvygnS/TqHceRvslTElN0qMNlDFeAOrrRcu0HeAg=;
        b=KTuW02rczBj/EDeJbviGliSW5qfLE7VRmtgPGwIQC2kmzyIkgIuPOycyYGuR/6JUKS
         X9Gixo7qGPzS98EpViZuXg11XFa9jrKf52jgMryAoJhxccLNfVri+H9lMJnbixG2+LSB
         p7fPICp1tZJhZuHqvBbHh4M2iqsRAt51q3LZXGpumC12atfKw1uf3C3Qg5gV3vs2WyZi
         0Xn/TK4EU+K5yNrpMjmoNywV+v2w9YUS8Mk6A/Rv8zAMEJ8oq4TlJVGafP2KQaG/xPmM
         Xgl3HwJTNfuVMtg470pB9e7cNyDV463zUjK4VPdfH/4jErQegCvrhy6pCCZHzts1gpPk
         kU3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767395705; x=1768000505;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=U+MbvygnS/TqHceRvslTElN0qMNlDFeAOrrRcu0HeAg=;
        b=BglKNgIkkHYo6msLSaOXdoJKlLod4d4bePmZF5d0NIyw2z3YdM0fLd254So1gfkgYO
         omUHRKfKDhke8zQNoYnp0UzraW15n/BFEHLXhgn1YuCkHck5dk0MsQ+3x3xm5kyAmadx
         K9dKvSIcBAP51c62hUh8aU00eE4KXsYWRFqDcaT7c0o3ySTSBiWD8Fm1C+F4zrO+Piar
         8hancHFguOT1ic+VytCdQqrVeWccvA/YCSrFeoEteA7ar60iYPElVaz+ICOCvATuX2cH
         7l3OnPqTL920AhfbhWgTZh1nZoGf/cS6CxXiXp6tyU8CKgkgP14WWSFqiv9np+S4niXO
         f0pA==
X-Forwarded-Encrypted: i=1; AJvYcCXicRdT2yaK4/HN1tuPqp9aT6O02NAxxEv1ZNHsgdS5CqcQio9YoPEla8ly/oLmCE6kFVRbAVTcfVmo@vger.kernel.org
X-Gm-Message-State: AOJu0YzKekxfKck9phtcXe0gjk/kwJGkzt1Pwz08MdLhBeA0ilwqKxwJ
	zj20qSSC6+nhXMsa95cDJGOo3qadxFUtrEGuloXwVx0tvEYUrMm/ryJtx5y3ATPtcUf1fIu2x14
	VWb1ym6ktgnajIxVFNzrieQqiepJ0zwPCdAPm9Z+bZqaq7R+NmYqVhPFQ8R9mDcCZ
X-Gm-Gg: AY/fxX6q8qxtPcr0njIJc2lnXoJ/kVb08SzWnJ+CXjp6FoAWjnNj8SmDbfqfR99skrf
	idYGwtLNJFBJAZ3P8f5UtV428wvkYKIQqz0YJw8woqqcC5/DfrEmBUmgnINmTksEM+/2oW22voh
	GUSpusIVrCTuYV8oWgYODw3V3xksapE/xffokwvOjo/zTFhqDX/XuuJVMK2OkahQGuQL7MH35RG
	KJ1ewlz6SmUU6JbJwH9oJltFH5AUqzvBuSaxLVRBXVaX5epkrYZgzJ2IWVqL3gwtGqfGVcDNYNr
	oT3pCwc/SGnUNi7sZt2WrOO+khcqFMT38lADUN85f6uRtHMuWqKcjAf9MrTwnNGW91rZ5PRm/4m
	V9RRFXRcyeqi6Cc5ciIbhEr7su8qsLnj5tulFnE8Np5adWY2FSL99AECQYpC/Tq3iYmjlPhgM3e
	wT8ScXlOLzQ3WV0b6cdLetrLM=
X-Received: by 2002:a05:622a:115:b0:4b6:299d:dfe4 with SMTP id d75a77b69052e-4f4abcf8bddmr643752921cf.32.1767395704689;
        Fri, 02 Jan 2026 15:15:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG2/PISVWlADx7RO2+FId3JKm92gkI0Ey03yAvmvYEJRLz3NGqCvvhaAomm19lMIY8cm1hi6w==
X-Received: by 2002:a05:622a:115:b0:4b6:299d:dfe4 with SMTP id d75a77b69052e-4f4abcf8bddmr643752581cf.32.1767395704176;
        Fri, 02 Jan 2026 15:15:04 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3812264c8e9sm113588311fa.33.2026.01.02.15.15.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 15:15:03 -0800 (PST)
Date: Sat, 3 Jan 2026 01:15:01 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        sumit.garg@kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: ipq9574: Enable eMMC variant
Message-ID: <rr4o54alm7xdbsykavcuorrsu6s67zolnax75mnzs2ps7yu5v3@nuggxazflbqt>
References: <20260102104638.3802715-1-varadarajan.narayanan@oss.qualcomm.com>
 <e00630b9-56f0-4a30-84ef-8b691ea7af3e@kernel.org>
 <nbmkrvppluonhvs7gjttsyw2nvxq45y44rz6f5w2ytci2mq3sx@m7c5nc5pujll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <nbmkrvppluonhvs7gjttsyw2nvxq45y44rz6f5w2ytci2mq3sx@m7c5nc5pujll>
X-Proofpoint-GUID: B2SWa6s3MXxThP6ws3HKqGH-oGNpJmEp
X-Authority-Analysis: v=2.4 cv=fL80HJae c=1 sm=1 tr=0 ts=69585179 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=BCWKdMQUbuza1RPr3-AA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: B2SWa6s3MXxThP6ws3HKqGH-oGNpJmEp
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDIwOSBTYWx0ZWRfXw6PwOAS9B6pY
 oj67u1RLk03fTg3vRQqyQWcHnuXkXsA3vehwwnG9I4XwLzkiUGUew1o7AB6C5nmXFk1XLBPZbJ1
 oUOv75JDzUvFpy7BXjPZSR+/cRmMipVFFP6FRAhTivb+PzbLcpcLFISDbTfGOXon0W3AekhSlka
 QEgl51GSe+FdCrT1ta4roOclsYWexIPzm8mBwDoNYY8lwjgCXBZz8CcFV75IznUE7HLH2hDvyk1
 dMSBpFe5N1TP0fu6x2gT+xZ4cUyJhwMnc/8rOk9ujEUQdftO/++KLrtZ1To25GbNMyhqLzo3rRn
 B1QjiNpyRUXU/yUCGZvbyNE+IBJMvNwX+pOLPt/BAeeTI7Ga6HWw+Hgv9RbJBM6VFUJ81Vo/TCB
 XvIgFF4YP7cNcA7UImulTgVy3oHmf1lh+h91NhYKGXph+Ai/FFg23+Sznd8ts2qesLSgTGN1xWE
 hN5ZqRq0vPToBBwptNw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_04,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 lowpriorityscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601020209

On Fri, Jan 02, 2026 at 02:09:04PM -0600, Bjorn Andersson wrote:
> On Fri, Jan 02, 2026 at 12:08:03PM +0100, Krzysztof Kozlowski wrote:
> > On 02/01/2026 11:46, Varadarajan Narayanan wrote:
> > > RDP433 can have NAND or eMMC based on a board level rework. Since the
> > > same GPIOS are used for both the interfaces, only one of them can be
> > > used. Add a new DTS file to disable NAND and enable eMMC.
> > > 
> > > Signed-off-by: Varadarajan Narayanan <varadarajan.narayanan@oss.qualcomm.com>
> > > ---
> > >  arch/arm64/boot/dts/qcom/Makefile             |  2 +-
> > >  .../boot/dts/qcom/ipq9574-rdp-common.dtsi     | 32 +++++++++++++++++++
> > >  .../boot/dts/qcom/ipq9574-rdp433-emmc.dts     | 26 +++++++++++++++
> > >  3 files changed, 59 insertions(+), 1 deletion(-)
> > >  create mode 100644 arch/arm64/boot/dts/qcom/ipq9574-rdp433-emmc.dts
> > > 
> > 
> > > +/*
> > > + * IPQ9574 RDP433 eMMC board variant device tree source
> > > + *
> > > + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> > > + */
> > > +
> > > +/dts-v1/;
> > > +
> > > +#include "ipq9574-rdp433.dts"
> > 
> > I find it discouraged practice. Although if Bjorn is fine with it, you
> > still need proper compatibles.
> > 
> 
> Nah, I don't fancy including .dts files. But I do see that I've let a
> few of those slip by over the years.
> 
> The general approach for these cases has been to rename dts->dtsi and
> create the two dts files.
> 
> I wonder though if this would be better served by an overlay, as it's
> the same board, but with modifications applied?

I think, overlay is a better fit here.

> 
> Regards,
> Bjorn
> 
> > 
> > Best regards,
> > Krzysztof

-- 
With best wishes
Dmitry

