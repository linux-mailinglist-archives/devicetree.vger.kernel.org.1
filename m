Return-Path: <devicetree+bounces-189705-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7CD1AE8FCD
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 23:03:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 647253A8BA2
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 21:03:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB7561FF7C8;
	Wed, 25 Jun 2025 21:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jE5QY8OC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639791C5D72
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 21:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750885413; cv=none; b=SHjpqP2xUoqJNBfsXRVFFl40xj+EO/j6KyyDt3z/HD3SqGPazERZxsZq+mbZaf7qBncpuBRtSFG+EMtCvLDo41wcRJ2BgW1NmwrR9+Yz3EwDqQuC5ocWtyBXIVKh+KH1ACTppzFNVNybihlb9rQn7qYR59ZSC9UF134iHPDu0MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750885413; c=relaxed/simple;
	bh=BA1SJ7BB+xjW15IIb8AKZyMEAqBjcfpDeU4wKnF9SNA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gtocZ5mSDdvsBWZAVDEVyBwOEHMR8mDi2156d88VK7Fj6durh3b/w+/ID9iG5dgm+Zql68dKjQehyiDGI8A6yE2T8PO1RtXtiyWAVkeD5yxWTPVo1xvq+rEe54rJsCGXJTv7uKgDb83Jud34DENo5ozeeYOCjyN+ueeHGyuwNV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jE5QY8OC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55PB1fTg027698
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 21:03:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6G8NazoQCjyeRDRCOe2NN6H/
	BOfkB3FLygIjOlcUYwc=; b=jE5QY8OC95ET4xnGwB0hcpWGffIshWW7qDsJ7IbU
	ODJMc6E7WrvkXfdg6/UTmUu/+QwSdIij1tBuUMI5fuM9jU5adiawiAb5P8k/Q1VL
	oYggcBezPDsNBp/gx05kv/seoUZsbs0cbD8fdWYYbUe1ztlcvlI5FzXIQM8FE+Uv
	kFheIsCpk4cT70gNQXsj4NzCuZ4/H0AEnPEUiqy+iatYPWx6X1BvoCGWTUzMxKue
	9XcuZ8m1GnD7ovHobwgw649P3wOqRBYHoT4AjMf6JEIMi1VurFLHTznQdJlFqO2j
	3vkLesROGNrUcSCNVHFZaSmywIlOcis53kzvuZVBHWOOmA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqqmkq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 21:03:30 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c7c30d8986so74988485a.2
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 14:03:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750885409; x=1751490209;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6G8NazoQCjyeRDRCOe2NN6H/BOfkB3FLygIjOlcUYwc=;
        b=jye1+aEnRDbOW5iyYTKs/Mmr0Y4R6biqGRHbNgGu7mHJZao9YrwAK2D8c+zFUarCAG
         SCZ6rQxPtOI1tCJZdrppbNXa6K/OMfkw4o/tygnF4eMCDdf9BW/yPqIBPaibnl/Nmo9K
         OWjRGPF86UhuydzmG/O0iWdlI3S0hwkShpXmHwWncArOjQRS7OSThNaWaqrScQ128O/U
         ZgVpDw3c70pCVpKo9mIH9HdNk4Ij7nh8XylwhOhSLkGvnKgVkBSkRsoBeYPK3kV0PYPf
         up9WR/njuIbpE2YUQFMYa+n0pPHjHfpz0eF/ZjIuQ0uexUqHbHhdqrZdJNOU8fdjTxnx
         OORw==
X-Forwarded-Encrypted: i=1; AJvYcCWb32xr2qwknf3Ss9UY10iZK0/T8ESJn3HV44VOTI8MIPlhaq0DigsODoz90Yy77Q/m0ZbymP6TyXgj@vger.kernel.org
X-Gm-Message-State: AOJu0YxPcpns2YioMZbtQvBO8KfwR4qwI+uyB3/3GPzqDnNMj5lVZwyT
	W5PXVekp3fCKW0ryVDnReEYuFIaSuNqSvkZ+Pl5Na2FF7yvMqpaGl6/iUVyzxEXCu4H4rHKFI5P
	Zik+sdF7ZUQlSSPnBqk5Okxf8DkAmMBQUlntQoEkX+X3fba1YTH0cMVLfcIrAMGCo
X-Gm-Gg: ASbGncvN/NOH0NwEoG89+OTSIlUy4F/GIEDfXi4i4Q0+UbvlIaDVFuUjOhPoygkADxz
	UlCsv+Ru9e8XpHDPdlUmfwxzrrmK+IgPQ6y9wqF+DTNPn8XsdE2N99SCRKnU4DWyn0T/M0Z0kOg
	gN/TL4QYI+qw0d/nA4hguffNF4mzSAb4WYyKJoik86xHAmseEfUnOTUrwT3bpTSHWi9FueQE1f2
	iMIhXRdyF7Zrc2Wc9Eivyu9+GNtEU30QbEbKxbZR+3xsIbnz2NQaRD/d8ZqJSa2QeA7Fh+4/h82
	ObmrEdr+FclffyCIJjwnoFcx0CIf3hfXp0TkI0MzgOkbLk3J7rwMOmR3906xPWUhdsJZa9YE8SU
	jqJHDibRuvy+7cpk7p3Z8RkZH8aIhlnt1ZmQ=
X-Received: by 2002:a05:620a:6293:b0:7d3:8df8:cc04 with SMTP id af79cd13be357-7d429754e9cmr611510385a.35.1750885409411;
        Wed, 25 Jun 2025 14:03:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7oKjmuvEEF1WQFmTjT2Ttz48tRtbggO2WDZJ3rR8g4bzcxgd7OZWfwRoKuiaa2MrZBIv4BA==
X-Received: by 2002:a05:620a:6293:b0:7d3:8df8:cc04 with SMTP id af79cd13be357-7d429754e9cmr611504685a.35.1750885408782;
        Wed, 25 Jun 2025 14:03:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32b97f594e0sm20999961fa.23.2025.06.25.14.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 14:03:27 -0700 (PDT)
Date: Thu, 26 Jun 2025 00:03:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Lee Jones <lee@kernel.org>, Pavel Machek <pavel@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-leds@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/3] Add support for PMXR2230 PMIC
Message-ID: <6zut6hiwig4qanrmloqvibx4tmpb6iv23s3hp7bb4ja6jzzia3@wnre6i3mukbp>
References: <20250625-sm7635-pmxr2230-v1-0-25aa94305f31@fairphone.com>
 <zmqkdpmji2uodm3mxcteteyhfkef47kihola6vtxb4mhuynqwz@hvgfd2637mhz>
 <DAVPDN4U6FSJ.1MHMT5G04KSKA@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <DAVPDN4U6FSJ.1MHMT5G04KSKA@fairphone.com>
X-Proofpoint-ORIG-GUID: Te8puw2Bkotsweeph3p6rm_N3mSK5fyu
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685c6422 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=TnUiieDH8m5hmC2EXGUA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: Te8puw2Bkotsweeph3p6rm_N3mSK5fyu
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI1MDE2MCBTYWx0ZWRfX1PfL8BhWXzA7
 BtxScY7NiX6/aRBIDoCjQ13LaVqSz3y/SANLeJCw/mO4cRkDE6Kmt/nvlo2H+n5smKj0Tv+ZRrH
 zpk4GpF80hsAlHjfFyjrnwW4qhiHte3eHSsToAKwrcU12vN+VD0Zamqp5LA6kuVgj1ktlYiNXIg
 FWr/HiY7IcIhrxbczBaMfUmSy1REbXJVQD6yS1XoiCHoZ+M+mealBUgQXVHA3xmB7/+KmYonROK
 Pp5E5neKEiGxmXyrUhsd0rbdlkV9nuX4kScrVKoGUPqD0sK4tEFQ9a/MJCYGrgxXivxKwZ16h26
 pvZvr1qdg5DXcZNGlffRdBUUVKNUqi572TAVYdw8j0++M8yejumdpDHNTHFPf8JQl8NXcY+FFjF
 q50UYOisN0EA8ogJldKE7aFW40NC7yryXX+Hw9hlgEUcdXLBvPEM36eL2JEzv6CwDYEiymuK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-25_07,2025-06-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=986 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506250160

On Wed, Jun 25, 2025 at 05:01:29PM +0200, Luca Weiss wrote:
> On Wed Jun 25, 2025 at 4:25 PM CEST, Dmitry Baryshkov wrote:
> > On Wed, Jun 25, 2025 at 11:18:36AM +0200, Luca Weiss wrote:
> >> The PMXR2230 PMIC is used in conjuction with SM7635. Add binding docs
> >> and the devicetree description for it.
> >
> >
> > Please use PM7550 instead.
> 
> I'm happy to not follow downstream naming conventions if being told, but
> do you have any details whether PMXR2230 == PM7550, or PM7550 is just
> another SW-compatible PMIC as PMXR2230.

It is PM7550.

> 
> Also we already have qcom,pmxr2230-gpio upstream, so that would need to
> get updated for the PM7550 name.

No, leave it be. We should not change existing compats for no reason.

> 
> Regards
> Luca
> 
> >
> >> 
> >> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> >> ---
> >> Luca Weiss (3):
> >>       dt-bindings: leds: qcom,spmi-flash-led: Add PMXR2230
> >>       dt-bindings: mfd: qcom-spmi-pmic: Document PMXR2230 PMIC
> >>       arm64: dts: qcom: Add PMXR2230 PMIC
> >> 
> >>  .../bindings/leds/qcom,spmi-flash-led.yaml         |  1 +
> >>  .../devicetree/bindings/mfd/qcom,spmi-pmic.yaml    |  1 +
> >>  arch/arm64/boot/dts/qcom/pmxr2230.dtsi             | 63 ++++++++++++++++++++++
> >>  3 files changed, 65 insertions(+)
> >> ---
> >> base-commit: 19272b37aa4f83ca52bdf9c16d5d81bdd1354494
> >> change-id: 20250620-sm7635-pmxr2230-ee55a86a8c2b
> >> 
> >> Best regards,
> >> -- 
> >> Luca Weiss <luca.weiss@fairphone.com>
> >> 
> 

-- 
With best wishes
Dmitry

