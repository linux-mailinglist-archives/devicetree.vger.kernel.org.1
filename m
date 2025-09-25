Return-Path: <devicetree+bounces-221574-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39AAEBA1256
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:20:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DD066169ABD
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 19:20:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A24CF31B83A;
	Thu, 25 Sep 2025 19:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LqY7GMJd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196CE31B822
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758828024; cv=none; b=tzJ+g8a62WSrg861enSntlv1cYw3mWtQz+z1tArG++wgaaDMRX1RXMuwqzLmuNZceeRyjvcTyqGHNHw2s8BAMVvtHl/GcKnVrJmuLfPxXqnWTmTTymI/QuHgY4Zmn9bq378QSIcL0p1XYI7/9N8F/mMM9J1g8+15n69/eVtAZ2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758828024; c=relaxed/simple;
	bh=noW53Wf5UMsuRxihTPOClr/O7tMQvTr8ecxLwXqIN2g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U51zT9vUaDQ82x7mqntveIXVd/BJDnMMMZfr0UC1d1vcGULuIdzPwmts0mGpALkmsm4irLoiVfSBI7565O66B5u+evuLYSl3colUXkmhTItMQG8N2CV0c+mGARZc6UU7HIvRnCJtzxuV9Sqds9iRfQcMs8CWGs00hV+oQKvS+94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LqY7GMJd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPcSF023326
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:20:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aVX0yTkOhGHO//LwAnkNtuoY
	YVQTpFOBtRIrFzAKS80=; b=LqY7GMJdMK7VeHpJubbg1X3fVp9z6oO0XoR65PxA
	e3y9nowAr7pj+UX0eaY/WSRbxTy2BuMHVmN/DE9a91a0bazt4oZCtF0e1dpFBJzS
	/Gu4JWCQlMYjjnfZ7b0uboToEBNzSsyR6NdYqN1eo41E4/KHPBTEJa2lYEm4H8cM
	SQBUVVKxY5rTsNuHdj40yu037mZcMnYDLL++ax94W5DMEUFcH3HNjbRfZ3lgF+ga
	dhzIVApUKLV+Bl/spwk7RdZUsGGtGHLW450z0mPPhF6L6vQLoVg76CMF1Y9mcLjP
	az/RAsnYfxk7VmpuID5BpRrFnXjmOS+nxma5qLVY9mLMag==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0qr468-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:20:22 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d59a4c23a3so34588491cf.2
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 12:20:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758828021; x=1759432821;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aVX0yTkOhGHO//LwAnkNtuoYYVQTpFOBtRIrFzAKS80=;
        b=C8rZEVtSN46TlpPsUFvdOaUahxvVPdOkCb+Zp+j6cFBZJJljFkXRdlTS9ffkzbYmCg
         wzgRKo6jTa03p82HciwlvuzkahLSanjpqQYr588J37+diqRWhFZ0VKXNNjyzLW8qiEEc
         EYvYqG+QqyE8NvnJZV3VR5ha0ayR7dXqv3B+KS6izsqEwjadxRhCLzuER8Is+2PNzxH+
         w1kwpsQsixwgHpVc6Tmb3cifX4nwvPFxnIsUeeb7gny972H9NVF8fjzYHPMx+dR9EiG8
         9zgPJax5n16HhYof+qoxbGNYprcSmFkIAVafT0HoFWi0azaU9FjnCLOvy30ym4DrTM25
         B9/g==
X-Forwarded-Encrypted: i=1; AJvYcCXZodDZpbGLUfES4KuK5GBiWbJ2o1QlVQY5DFmV47sitsT553vmy9aJeiZSJJagsJ6IeOdidjX/pX66@vger.kernel.org
X-Gm-Message-State: AOJu0YxoVDYzw+C9dMvxu/VR0KNJp+knSySLuu0rWnJjLHO3mImXGqtJ
	a+Kh9NnnBZkAYYcesCddWEc5ZD9p7nj1AzIxRYb8WXNnWnna4isD1a9MJBsaoS8F6VNGUV5dkoc
	lVg3kdH7sm5LHZ12c1d7F+huYohgXid3cUtkOigN0KpPwTZF41IEJrv3wz8hYOxuX
X-Gm-Gg: ASbGncuMtwlveiQ6X9l+IsEs5sPiMJdfHJw/TMxfLkkdkmffdMzVOg9SG8EKzLCTe2e
	mdJVRHeGfW4ssZmDFisOIj5vf0NLHoetH/VxKnkvYaubf+AAvbDq5Yw6/GfKISux1K49zwe8eYv
	ia70fbxeNTVBky+FQRmX05/tNqID8zE2NOqXBuv3Yignb2VFOtAaHtRPTSn9CAjbkUyw+QcSed1
	lHwWxeUEYEws5Azx3WnvFp0FPKr9+YEgHl8u4a6Qgj2KcKa65XuKajpu4dWxeYzh0s3FAWVouS2
	5jYUMNTi0kbTc0mTYNr4avdOyTFYh+WFahUfLAnJh/hDXvrCox0gJVpMdH8qNhOdl+gU/uYOWSo
	Rutd9ApsI2HsHwBsIpeX9IAOSU9EbRa1Z5k3Unf5Z5TO5Ax9NL9Jx
X-Received: by 2002:a05:622a:11c8:b0:4d7:dc01:e007 with SMTP id d75a77b69052e-4da485b8ac3mr59098211cf.24.1758828020787;
        Thu, 25 Sep 2025 12:20:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHEL8DUJGV4/DRSfIOimZuTn4Odn0UkGiNcvVKXr7ZTyuhqcFAJEskXyqrnPKAfJUZx5GcQdA==
X-Received: by 2002:a05:622a:11c8:b0:4d7:dc01:e007 with SMTP id d75a77b69052e-4da485b8ac3mr59097771cf.24.1758828020143;
        Thu, 25 Sep 2025 12:20:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb4e394fcsm7414781fa.22.2025.09.25.12.20.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 12:20:19 -0700 (PDT)
Date: Thu, 25 Sep 2025 22:20:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Vishnu Reddy <quic_bvisredd@quicinc.com>
Subject: Re: [PATCH 1/8] media: dt-bindings: qcom-kaanapali-iris: Add
 kaanapali video codec binding
Message-ID: <dyfkztpjrfcgi42vjriabogh362zzxp24eoolr5vkhno2zi2ny@t43qpjdv7nkl>
References: <20250925-knp_video-v1-0-e323c0b3c0cd@oss.qualcomm.com>
 <20250925-knp_video-v1-1-e323c0b3c0cd@oss.qualcomm.com>
 <vqzon3svfqvk3poz76jm5x5gf4rd6vkygegonafcprmkejt4aq@5kwlwytg3ulk>
 <1af0d19e-30e0-1260-877c-5d6027c3d297@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1af0d19e-30e0-1260-877c-5d6027c3d297@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: rEhlBgBZM7GjM3ko_buLe_d-39NoL9t-
X-Authority-Analysis: v=2.4 cv=bJ0b4f+Z c=1 sm=1 tr=0 ts=68d595f6 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=7bwHjh3cNi8DZH5-rfEA:9
 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX3LHeYcKB4MsZ
 A+AxyfIn8rJS8bWmCzqJ1cLu4+GKNdQB9Zj1m0I5bH9cjQySHB7wpRxZI1XCeVY3LvYSG1pn71p
 ks9/N/c4tyH7x579mgxwVoHzh1CZhXFZLcaWeUjpJ6t5v0iObgiSuzcNI7Mfw0vvxyIn/PcPTmQ
 SpkuYCJR7ZoNwa49DuHuE8falAhleWky5hWtZWSLozl1mq66dPIVYMhi0hUzwjNqux9+cGaN/rC
 X6xKu09w04EkmcYLtb/ClXk3IZeWg77FI28AcEMD1hnAVdnMS7yOBL9STSXbwQolfBrkGYMTzoE
 WE6FuYJQ1LAZPqeCvSqJwpIbN87V+k/NHvwMYPjPV6k5ue1Jje+Dv14/jlYdbMyf1pOcOeF7kO7
 jIHTsQxv0kVFoTou4zQQhOtT8wvSwg==
X-Proofpoint-GUID: rEhlBgBZM7GjM3ko_buLe_d-39NoL9t-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 01:27:29PM +0530, Vikash Garodia wrote:
> 
> On 9/25/2025 8:36 AM, Dmitry Baryshkov wrote:
> > On Thu, Sep 25, 2025 at 04:44:39AM +0530, Vikash Garodia wrote:
> >> Kaanapali SOC brings in the new generation of video IP i.e iris4. When
> >> compared to previous generation, iris3x, it has,
> >> - separate power domains for stream and pixel processing hardware blocks
> >>   (bse and vpp).
> >> - additional power domain for apv codec.
> >> - power domains for individual pipes (VPPx).
> >> - different clocks and reset lines.
> >>
> >> There are variants of this hardware, where only a single VPP pipe would
> >> be functional (VPP0), and APV may not be present. In such case, the
> >> hardware can be enabled without those 2 related power doamins, and
> >> corresponding clocks. This explains the min entries for power domains
> >> and clocks.
> >> Iommus include all the different stream-ids which can be possibly
> >> generated by vpu4 video hardware in both secure and non secure
> >> execution mode.
> >>
> >> This patch depends on following patches
> >> https://lore.kernel.org/all/20250924-knp-interconnect-v1-1-4c822a72141c@oss.qualcomm.com/
> >> https://lore.kernel.org/all/20250924-knp-clk-v1-3-29b02b818782@oss.qualcomm.com/
> > 
> > This doesn't belong to the commit message. But you also can drop this
> > dependency alltogether. Could you please do it?
> 
> Sure, i see below works good w.r.t schema and dtb checker. Please review and
> confirm.

Yes


-- 
With best wishes
Dmitry

