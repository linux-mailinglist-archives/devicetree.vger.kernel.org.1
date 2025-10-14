Return-Path: <devicetree+bounces-226803-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 579FFBDB9AF
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 00:19:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A4BA8353962
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 22:19:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 861A630CDAF;
	Tue, 14 Oct 2025 22:19:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k3CZsYbl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 172562FA0C6
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 22:19:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760480342; cv=none; b=hejrHd8vlNdxYbTs4spy80QM1YQCUTxT0aJlcXLmXyp7NeDKPs1U8lvQKzcVWuhtlnwVsx+9Hukf9bnrjW8XODyjGDjj9M6jUWFT9R775bG0Zb1a8gLCcKNZYj3mtmJVAsH4ywtVwL8tHGRvnAVgrhevnC/JhIPPapaquaHhjo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760480342; c=relaxed/simple;
	bh=BgOEdwjIa0sGaBXDZWeP/zbioOzpk1ibfhXUvrGElG8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kx8vtxuQpPsiUyNu+xfUljvSXC3ursnfi+e1bcOSRWgNPtlbNkajCL2iNHBRzXJ3tL4gdOq5g344cWcit88LHTv48Pi6Wj4AiQ57y62oSuZHwF31yYnUlDP1yNqDirbT/5NrDZ6poI+GjnHkxhWKQm58JrwZu4KPrjHjq8T5Q64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k3CZsYbl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59EKR50X005477
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 22:19:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=OkOpBf2jHdOpnY2dKRzZfr8A
	V66mGASDdTGyX8Gj1ZE=; b=k3CZsYbl6IVyzJiYvjp8IMg6+AloVJA7TyNccJR2
	QXNEHf1jD8GjHqD1oVkHRGP0GRO5oSGwFxDnXsev31VOsqRzUd/CN9CzFu8A5dor
	ViykUK8LI+t0cFXFKC/sDl3nertJ7Jj0NwFT1VmnohUoInfTxP5X4ipTnD9jGHme
	Rh9bALdkV0OO4SU426F9KVXeAUuy2peF74Z1yloAdoGufSkYWorDo4GN1b5ojhy3
	iOG2OdCDXSLn3vypuHgM1UvTeKRI2x9xxzNmgNi3Lnep+d+O1XciETJF0P5lQV8K
	nnzRmAsED9vCAfGp2EVIYFTIvPXZEQAaIPTnXedTZoXWgQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa8a6yq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 22:18:59 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-88375754e8aso2314573385a.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 15:18:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760480339; x=1761085139;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=OkOpBf2jHdOpnY2dKRzZfr8AV66mGASDdTGyX8Gj1ZE=;
        b=MahHLCjSXLciHTDZmaQA1jL51ASzgfFeBbR7OTu3vB9N8nFaMqbehKSJLHnFeZkWPa
         eWq7HxnaAZMAH7vrCrrlTC+oSuDDydb955ybfqQtFnMuT2s6LJ08+lsz09ROBUxrC3Nl
         UBQdVTYe3ao9MF0eWfXbzgjKZecwDerP2aIT1e3srorg+8SxY3fE140y1VnrCglVuwK9
         dMkO7SgWJm75bbekdImpSv4t0QsYsY/DHZFP+oueb2w4NPeNip4goQP6sfu6xxXGF8FG
         r5rMbWM8nHfHigqPaPtEF5sKbWtQ+4vxhf5LrkW4mRHPLDPf73VNyOMA6K/NXhE1T1OX
         i9BA==
X-Forwarded-Encrypted: i=1; AJvYcCWPBQD3uARUioSvAcxjlmPGmDlmL7JUcq45hOny50KaDhtjHhfs9aY65Sxu6GYCiT8hgx98VK3D5WlW@vger.kernel.org
X-Gm-Message-State: AOJu0YzKEvjWnGYMa/q+UvwO3br/PJ98DxY1AvbrCm1KfyZBE2p/iKZ5
	qE1gxaZ5Dx7e//q4a/tdZ+KdwdgjLX4Osn+tTVj/gFkc0qHlk7eKlFs+XgBkOcQsT4s7JQvaA7Z
	pF/DP2xUAnwfWz8PlWVnKqT+2li/UowZAiF/90/FIyovSDh0yVxYI/eyRY43L7AWI
X-Gm-Gg: ASbGnctp4oZ8xEVK47bpWBCi2Uuilj160E1bWf62lafAZbPqBo1Z3YVHYwZYvhZbWKD
	8YPBfv0ujohQi95/alod9HOe/0ZEuGxzuHn5h6hPPDe+0a8zkPXFhMXbh7tW1yi0mPT0fZ+LqZR
	Rj7Uu5vBoGOVMwml0Vc8SuBF4O3087JPrToDEma1dDlWzhPFytNIqPMuiWovCKR25cpHi4VsKw2
	1wHbp0EZfOX2W/F0dkjzZgxlXm6WcxWh81q+r58AOoPxfdDPiPzyfpTjrcWTIUNKyTWKisAmUC5
	jIsgCHMNAJsP4isQ+Su5wbehaTL451qVCEDcfStYF1OxLV++38hqhxSvUwZcgV5C+rATj75ZH5w
	IwkTEu7GaikTFDrr2yz3pKnZVEkw4l26VUpklGgeezx/TAlKbya5N
X-Received: by 2002:ac8:5dd4:0:b0:4c9:65c0:7e46 with SMTP id d75a77b69052e-4e6eacbbd09mr386007811cf.2.1760480338868;
        Tue, 14 Oct 2025 15:18:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFoofHc3p3XoPw0ntgLmVxwJwo1t56LJFp9p6rCx/UWs550Z24zInc1mT131SYTrfrcnEeFLA==
X-Received: by 2002:ac8:5dd4:0:b0:4c9:65c0:7e46 with SMTP id d75a77b69052e-4e6eacbbd09mr386007491cf.2.1760480338443;
        Tue, 14 Oct 2025 15:18:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088212380sm5592069e87.58.2025.10.14.15.18.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 15:18:57 -0700 (PDT)
Date: Wed, 15 Oct 2025 01:18:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>
Cc: Robin Murphy <robin.murphy@arm.com>,
        Charan Teja Kalla <charan.kalla@oss.qualcomm.com>, joro@8bytes.org,
        will@kernel.org, saravanak@google.com, conor+dt@kernel.org,
        robh@kernel.org, mchehab@kernel.org, krzk+dt@kernel.org,
        abhinav.kumar@linux.dev, vikash.garodia@oss.qualcomm.com,
        dikshita.agarwal@oss.qualcomm.com,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        bjorn.andersson@oss.qualcomm.com, linux-media@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, iommu@lists.linux.dev
Subject: Re: [RFC PATCH 0/3] Introduce iommu-map-masked for platform devices
Message-ID: <mwthowuei7pcqp2b4hg5c45n47iakclkioumc6diyznhnldfv5@wloeoys224bg>
References: <nzqte4glwtpjs5bhkxz43yhdufelxvqvzmg5tepudxwetimir3@bvlw5csjizsh>
 <9d3eeb9f-b8ea-48e5-a1d9-0865f63ef991@arm.com>
 <fhb4woejzh3r6v5dxvdiopnsbuwstucfuuzbiymxg4wrxrjc7t@dt3z3utq6lwd>
 <8d88cd9d-16e8-43f9-8eb3-89862da1d0c1@arm.com>
 <hOs24ZavnUyKYyNwBWwRpYnrsefzBfp95yuy9zyp1ByxR9_3VacGX1Yntt8pCE4w3gllPwvevs1AZqghmwKoFg==@protonmail.internalid>
 <zcgn4xw2xghyna2eysavujbzbiydyki7p7upzzv7one5mdyjy6@sj7f75kc4vwu>
 <fb767586-a376-48eb-97b4-bf33061642b9@kernel.org>
 <a4WDx80rJP1GnGNEK0OOD5lh-m-MiAvireXdpiM9ETLKZ084sBJ2UthU_QqRbU_nwD4XtsdiyEqQ0AhxguzJ6g==@protonmail.internalid>
 <6gx74wxie4wcabq27wo5y7v36uuurez4jxlzanroepqazdlgtw@sdtv2ld47d3q>
 <fa3c1732-328d-46a2-8514-2e7f9ca6c63f@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fa3c1732-328d-46a2-8514-2e7f9ca6c63f@kernel.org>
X-Proofpoint-GUID: 1GxXcYLB_Jh7iiYcLkHuYn_0z3_-K4jv
X-Proofpoint-ORIG-GUID: 1GxXcYLB_Jh7iiYcLkHuYn_0z3_-K4jv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX5eGqMLDtjWAt
 Ckv5vQLsrA1+MpJ3D7FlYM0mM3C5A+JOSD+L6UJJDSLlB6G71G5rQ6mQEtVJXRDmeP+TFuljqRO
 BsTmbS6NT2q/h3pSYX59k6je1tb78BKmZ2lDNu0pLyIAE/d7cpv+93WWbeXOZVyx8NJ/s9DBncK
 NTdzdevOuyY49S346K0/2VZVRA2aaIWHpkJVdzmE4JwpFpsNF4CaIw5kFrb6N+5M+HwGB2aJvxf
 RGpk7uucoeqe2hZ+jswl06pxQlaB15U5WO/vj949I7PoMfeC6A2VaboHw2byM24U/NvgDgNDZ60
 udvST1GHP+TUXPn1M4qcH/Q1fJr9Tun5TAi0RwPbzajUnaZJLqLDaBU5MFmYq8HqXHrafE98QHE
 HFdQuHzFfDpbSWyv4Vq3HyqJLzCPsg==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68eecc53 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=GN0BuYHDo_BzztcbwqwA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

On Tue, Oct 14, 2025 at 09:49:17PM +0100, Bryan O'Donoghue wrote:
> On 14/10/2025 19:35, Dmitry Baryshkov wrote:
> > > Each function id can be associated with a device and a compat string
> > > associated with it.
> > So, which part of the hardware is described by the -cb device? What does
> > it mean_here_?
> 
> The non-pixel path video encoder, the tz video encoder...
> 
> What's not clear about that ?

Where do you have pixel encoders in the fastrpc device node?

-- 
With best wishes
Dmitry

