Return-Path: <devicetree+bounces-176178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7425AB30B2
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 09:41:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5A5A189BAEA
	for <lists+devicetree@lfdr.de>; Mon, 12 May 2025 07:41:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D97B52571D5;
	Mon, 12 May 2025 07:41:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Tm9kUkgM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 533F31B4F2C
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 07:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747035680; cv=none; b=VzAlsieMHHiOSs11SPMcU9goYoPJhQaMRAl2ChVmrlaNqdPcUTe5S2AOBVYQ8iRKzCZuNoCq3wzvvvOQKl8sN0957Lyx78QufDLZQZJwpKUMj7ZXDKAt6FOOYK/MUCwBvVY509On+ITBoR4wMqMsswSHHRSyrf7DGwq2VvJ7DRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747035680; c=relaxed/simple;
	bh=yZ0CGA29M3rcJ+MvhLe+QeIcohtu6StaRYQuN2haPIM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qH3QR5hAb1aZ82qywktCOsggMcxkoLiYwMXBOZAx6mKIJAf3GZOH7PNF8qCCE6VdA2FoR6RGofgBWVGblgwWuC8h+Ih2mdxrsnxyR3c0Nv9E2kdLM9doot+SLMtOz/xPIkYKvLPLOboSsmD8xUXy6porJsIeJqkhvsjVIyMdZ/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Tm9kUkgM; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54BMLk3a015839
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 07:41:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=07H7J1WxUG240fs/pO939g9t
	ouj+8gGhAGiadw9TC9M=; b=Tm9kUkgMjp9XD0j7794zYjC7Kxhh1QR6KXzGcaA8
	+43GUr4yz4Sx8zIBf6Pf0hjlZ8HdtTLqUTNtdqPuZdkVqs3fWT3Dz/X3Y0xt9U9C
	2QYkWYRPl7l9rJsiPFj6C8NcxLXwnNfmkBvHi78ynvvTpRzzCkKL4ns3fdhbB1R8
	K3VqOor2CfWQpQspWtEpBh9q/kNm3VsPg/csw6i5GLjRhE/SNRSas7124NPsQNWl
	kPH23mVKSkes+j+RKRHnRwkxXvJPwVBmdgnVqPl3ts9jRFg2/Bn/VLYItZKbF2dS
	ZvwPNDIpB1GIxzRx2+ELxYyO2UfaO8EgmX9TxPRmGfseWw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46hx4k3kck-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 12 May 2025 07:41:17 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3086107d023so4569073a91.2
        for <devicetree@vger.kernel.org>; Mon, 12 May 2025 00:41:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747035676; x=1747640476;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=07H7J1WxUG240fs/pO939g9touj+8gGhAGiadw9TC9M=;
        b=fjKLaqWV9cE1IOeblMM/nCVo6McqDfl+zOH4qEZrSn5fgAzqoCm2Cjw0axM02JjvJv
         593hklEhUkLOGKw4t8Pz1FH7SZAIqcClCUft2/AdgPjQ7yKTzw/Ztvz9e0diNfOrGFbA
         aSU8Qlf4kw1YeTM0NPUMyKH3lxxie4nN7HCr7rxIerfZ6Ndc0twqtK2S/S8VW7FO9sjG
         1iK9Xy1zJdbQ300O4B2Rv37JFqRQxTWGlzvcdXvo4NkuwOxfKe9YGOtd6jG03g1+nRvD
         IuowvU0A7CBluhoEejyJdI8mP/H1Jil8zDTW7x+E137zJxOvi4HB9x+Fmmqz1cHmBliQ
         JoGA==
X-Forwarded-Encrypted: i=1; AJvYcCUtqSfFeASXu9zixgZRgapZQDFrba6Thh6w4Wlkir6mBw8keJWJ5afm+Fro20lUS3NXwoynXWyN0V4T@vger.kernel.org
X-Gm-Message-State: AOJu0YyeiAcoK28Ma/zDC95dNPEcAuocR2mT6Idi0euyUYbkA8NmwObe
	9tQ30B/a4tVjmeiMwKmcIfbck0cYYhy0Aihjb2SpstExhDFLGmt2+e+q+sXsVQDvZf2WcIIdmtP
	w4NEW3b594dPP3WUTBRXXadH9T2m/TWupld8Osz6Le+fXgs8DaDMqyfBEVc7b
X-Gm-Gg: ASbGncuJB/P5YKYw/V7aMaWVe4ORth0wcyg/ejFq9Zw3pa74+hoBmoWtQ/WAYvHVYYp
	zUPwbadLlMC1Smgd9RaEKO+srnPj6KD0u5T3MmIUM3aS95mQE7LISD6dRAMYHoYIY6PdXXQjcIU
	ORod5IHJGZRiMNxHRUx3qjeYG0v//FMKSw6+iklR9WUgXjlYGq+HZwi3nXyeTw1oGEAENSv9Dkg
	Sc/qfPzEyf2Rm+f+mEPoas5yyg44tqHWtx7TEY/ZQvCPo9+7eYghL/oX26vs7fg0O9LIRLYY6K/
	oMv/NSp0MyVBFNJd3BqQNjdZeLPT
X-Received: by 2002:a17:90b:2d06:b0:2ee:edae:780 with SMTP id 98e67ed59e1d1-30c3d2e2e67mr21168292a91.15.1747035675990;
        Mon, 12 May 2025 00:41:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExWuL72ZS+7tugxJHglTxQK96hvhpMFxtO0vu/JY9uRC/XDAlkU5cQR07NvobNtlJ6mInbyg==
X-Received: by 2002:a17:90b:2d06:b0:2ee:edae:780 with SMTP id 98e67ed59e1d1-30c3d2e2e67mr21168238a91.15.1747035675558;
        Mon, 12 May 2025 00:41:15 -0700 (PDT)
Received: from hu-pkondeti-hyd ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-30c39e76062sm6007792a91.44.2025.05.12.00.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 May 2025 00:41:15 -0700 (PDT)
Date: Mon, 12 May 2025 13:11:08 +0530
From: Pavan Kondeti <pavan.kondeti@oss.qualcomm.com>
To: Nitin Rawat <quic_nitirawa@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, alim.akhtar@samsung.com,
        avri.altman@wdc.com, bvanassche@acm.org, krzk+dt@kernel.org,
        robh@kernel.org, mani@kernel.org, conor+dt@kernel.org,
        James.Bottomley@HansenPartnership.com, martin.petersen@oracle.com,
        beanhuo@micron.com, peter.wang@mediatek.com,
        linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH V2 1/3] scsi: ufs: dt-bindings: Document UFS Disable LPM
 property
Message-ID: <852e3d10-5bf8-4b2e-9447-fe15c1aaf3ba@quicinc.com>
References: <20250506163705.31518-1-quic_nitirawa@quicinc.com>
 <20250506163705.31518-2-quic_nitirawa@quicinc.com>
 <667e43a7-a33c-491b-83ca-fe06a2a5d9c3@kernel.org>
 <9974cf1d-6929-4c7f-8472-fd19c7a40b12@quicinc.com>
 <8ebe4439-eab8-456a-ac91-b53956eab633@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8ebe4439-eab8-456a-ac91-b53956eab633@quicinc.com>
X-Authority-Analysis: v=2.4 cv=ReqQC0tv c=1 sm=1 tr=0 ts=6821a61d cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=dt9VzEwgFbYA:10 a=gDD5y9GCQ-Lx19kb1DEA:9
 a=CjuIK1q_8ugA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: TyXViy6CFgB2fBrl__KVba9vWloUdlCb
X-Proofpoint-ORIG-GUID: TyXViy6CFgB2fBrl__KVba9vWloUdlCb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTEyMDA4MCBTYWx0ZWRfXz6rw0jloFgit
 kleLD64qqfjrw8j5Gf6SbTiLKaYMWTDLFA2kFfGWpnqYdTH1Vr2BGBHkcbS5hvUX12i0NwvVIEr
 lY4ROjzyCSNgbLJ68NK1B14lMVGsaYynqEI2HnTPBs/RTvDPZWXckYWXo0hX/9p2PgsEP0itEZ8
 bihz05j2/3QtQ7V4olucGpUwJYM6qaF6oSaq7WYzXFs9rBl8YOxS6i6I+zpIpasZtKUQlZApI1j
 VGTcIf577pee0bVRMfMK0C1rwXc/AerQAepjtLvyawYiLaazsrrG+QC5RS7FcInbzX9R8TmmR72
 /rv7qfacdvcRF9kLiXhODiMDuuzMMTMpn99i/8pWsUnpUHfJy9QuaR6l/B3yceoBlMkAWA20ubL
 HWC6UFSklU0kD06gckRIlDmWZCAKet2ceNDMhgkImvm3yWNJd3LyEcXee+bJjCsXLSClNqbU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-12_03,2025-05-09_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxscore=0 mlxlogscore=999 phishscore=0 suspectscore=0
 spamscore=0 priorityscore=1501 impostorscore=0 bulkscore=0 clxscore=1011
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505120080

On Mon, May 12, 2025 at 09:45:49AM +0530, Nitin Rawat wrote:
> 
> 
> On 5/7/2025 8:34 PM, Nitin Rawat wrote:
> > 
> > 
> > On 5/6/2025 11:46 PM, Krzysztof Kozlowski wrote:
> > > On 06/05/2025 18:37, Nitin Rawat wrote:
> > > > Disable UFS low power mode on emulation FPGA platforms or other
> > > > platforms
> > > 
> > > Why wouldn't you like to test LPM also on FPGA designs? I do not see
> > > here correlation.
> > 
> > Hi Krzysztof,
> > 
> > Since the FPGA platform doesn't support UFS Low Power Modes (such as the
> > AutoHibern8 feature specified in the UFS specification), I have included
> > this information in the hardware description (i.e dts).
> 
> 
> Hi Krzysztof,
> 
> Could you please share your thoughts on my above comment? If you still see
> concerns, I may need to consider other options like modparam.
> 

I understand why you are inclining towards the module param here. Before
we take that route,

Is it possible to use a different compatible (for ex: qcom,sm8650-emu-ufshc) for UFS controller
on the emulation platform and apply the quirk in the driver based on the device_get_match_data()
based detection?

Thanks,
Pavan

