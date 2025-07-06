Return-Path: <devicetree+bounces-193322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3CDAFA452
	for <lists+devicetree@lfdr.de>; Sun,  6 Jul 2025 12:08:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF4EC3A8930
	for <lists+devicetree@lfdr.de>; Sun,  6 Jul 2025 10:07:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A88D41F4CA9;
	Sun,  6 Jul 2025 10:08:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RHOfC2aT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0406E2E36EF
	for <devicetree@vger.kernel.org>; Sun,  6 Jul 2025 10:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751796500; cv=none; b=DRmVozFsnB0B5nK2KJH11yA203o52oqpLuwugDwKfmM/QUeNZfl6+QwguaM3+Ml5NslkeXrpNWSiZ+1lo4nobCZkfrtJGCirNtUSKJ1UDPYsaTiwSMJVES3tMG5ctIZnyK8uNQiLjXSnO96rHgFBUrT4ME9vlpjnWPkxJkR4uVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751796500; c=relaxed/simple;
	bh=pGpR/Ul2mRfthu6duxkNeXnC1ePuVsMucysS7cKrgws=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VlHJNoNkc6h0+sSbkUp2IooDBjTGnMn0v6I+fdG3MurbkikInQjuRoFCecJHJBa27/w7zKuGLc0B6oysNlQth4rAgO1V8gXZi7LP5/qY5wvzDHFIoEzQxq9XEmWH8nXcq0P4m+na7fAnkfrXzm8r+DKcPPHZgykcM40prm0bhSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RHOfC2aT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5666GmiE003244
	for <devicetree@vger.kernel.org>; Sun, 6 Jul 2025 10:08:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9rxBrJduKA1XwbX2eE5GJB5p
	6Vs6GBgukIccWci1vVo=; b=RHOfC2aThtEopI6kYtLUc0I9R0KIMEy4qxzqLTCs
	+gYKgunR6tDHrZHICQ1FFvs8UEcA0x4Q89gVlNHYegiYruLxX6FG6Kfpg9zbiwu4
	vBU9NgOGCkIMeGD5QMuz5rl/iqSzuBhah4b2Zervl6Hz3oRTP/yp1AgET+OqetpW
	BAGnToSn+YiIV5cyI3Yn7wht35AGcZokpvd9OuPxyEfRIkehKfU4FHjJn2i08oF0
	rrEEzuj1oGagJv9SzqU16LvAtR7f6oB0Nv3rCnYc/i9eLPvKKUiUoIIxHM+i2S1t
	lR20uCS/O4e2uK3T2z58C3Lwz5Tc0TCwPCaLkxQxFqYz4w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47pucmbm0w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 10:08:17 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d22790afd2so310042485a.2
        for <devicetree@vger.kernel.org>; Sun, 06 Jul 2025 03:08:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751796497; x=1752401297;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9rxBrJduKA1XwbX2eE5GJB5p6Vs6GBgukIccWci1vVo=;
        b=OrkjeypRb4XVDbBgrDVh2TmKFR16zayjjWIQu4e8fh9WMmsAXmWhViaBQoACKRpKBa
         I9kvRgZ4VMHSqvNxr7H+J7PwcaDVONy/yO6EbqkGscLvdS2DhhAcYVQsVs2A89O2EXgs
         QNrEfEJvUlx9rLZDCs3D7hfrx7DZYfuW8MmwzFTFPuhlkzaTjWgostWXsYbUGlAf+lXN
         UEbc7Pu1tMKF4baRCuCF7jSCwXqsVioMjrHpkdgx9pIkbfAKHXnoy8iG41WWLieAk0Bg
         +oPF37UJ/8XiPQ4dgIoQ2jZjNom9DjG5p8FQM0aRbla5gUdd9zgK+dtr1eihn+lX70H/
         vJqA==
X-Forwarded-Encrypted: i=1; AJvYcCWnm98O+XJFcc4nyQdySHs4vZsSvCMPbDFdKs7b7f3RgYUBnf3Eik8AS+nKn6Jg+M40XNt4bbo4nAYb@vger.kernel.org
X-Gm-Message-State: AOJu0YzF4plq9Ndo6vAtpfIT6FoZNS5bRL4qMWYqeviPSIZcGVbKjPNr
	hla23H96Xo17UspT6cdh+fQQdBlKdMe0JNJ2FKsEnKUvd0xBZ2dy49IGr2FBIlagtllfpX+krP9
	fFhE6w7SzOxiHUipROzXt3gmYyljNaMv6kbTx7WAdInXEu4gBQwcIvfZHLvnrh6PX
X-Gm-Gg: ASbGncvIsYSJ+wvffJcYK4OZYAHaApgFo0xdIEpqLHjWxsfsCql0Yuo2cI0Jm0Rmc+P
	eJ7gpp7z62BROUz7butiwLATUWpCMqb4yKHslFNxn3oxcBwEJRjXpnYiQP4nFM13c3CPRKu8Amt
	pYqMxjPBdiMEMHTkQh2BRmjgjWO5M5Ue5W3XUlUGrSzXyDXdXky4Edsr8y9X70VTpMJ1S4dd5xQ
	wOc679r9oUnu7SSrAnPhmMDPaD2OY2LvTTPCX89nt6iKg6ZaEVo6b25SD/YuD3VSj9f41J3lPIw
	/iNTtQoU0lYO1lKme5JFMVacVYzkpClOa9wmhKEv76iQFSG2GWyMhyLUF0lsPHoL7yb5t+xVKaf
	U5BXKar1kRoBPMCtsHCDxsZO7oygy362DKQE=
X-Received: by 2002:a05:620a:6884:b0:7d5:bfb1:db0f with SMTP id af79cd13be357-7d5dcc9de63mr1158836185a.19.1751796496851;
        Sun, 06 Jul 2025 03:08:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2rJKIVCI6vY82Px1cq0ub41yacho5CchNwdzf/+6nXejkmotjHKGVY5YMkNYBSccOGLqJZA==
X-Received: by 2002:a05:620a:6884:b0:7d5:bfb1:db0f with SMTP id af79cd13be357-7d5dcc9de63mr1158833285a.19.1751796496410;
        Sun, 06 Jul 2025 03:08:16 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556383bb162sm911052e87.15.2025.07.06.03.08.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Jul 2025 03:08:15 -0700 (PDT)
Date: Sun, 6 Jul 2025 13:08:12 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca@lucaweiss.eu>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/4] remoteproc: qcom_q6v5_pas: Use resource with CX PD
 for MSM8974
Message-ID: <znv7ish4ufkgnzfwyxjt2ercdvemxh644zwpqthj7rtf5gb4fe@auvbeemdlbtk>
References: <20250621-msm8974-rpmpd-switch-v1-0-0a2cb303c446@lucaweiss.eu>
 <20250621-msm8974-rpmpd-switch-v1-2-0a2cb303c446@lucaweiss.eu>
 <hwewzj4ygfbb22vxrahjfc3b4oxyagh3nkd26bs3p5k2fcxr6m@mkgtyjkxz3d7>
 <226fd16c-8071-43c7-9ecc-9bd95e319aaf@lucaweiss.eu>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <226fd16c-8071-43c7-9ecc-9bd95e319aaf@lucaweiss.eu>
X-Authority-Analysis: v=2.4 cv=GdQXnRXL c=1 sm=1 tr=0 ts=686a4b11 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=dlmhaOwlAAAA:8 a=H2ulDEPk4kSp5EVQF9cA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=y4cfut4LVr_MrANMpYTh:22
X-Proofpoint-GUID: MAobXP605WnvN3fwrROKsc8kNQ8n1Ef-
X-Proofpoint-ORIG-GUID: MAobXP605WnvN3fwrROKsc8kNQ8n1Ef-
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzA2MDA2MiBTYWx0ZWRfX95EqSdp+Nk/Z
 eJQP8yDwZEF/POowupNVXMZhnZK90lGBEXqpybCeI5g/Ib0Ys4aOZp9+aZZzRdaljZ9DMxditGm
 JLitp/5Luaks8yHGrzp15kmJoSTgYM8/gqsC07UZoDYmWdKbocqjEEEFeFvz6FnytKTncGUBL0X
 vPb8ml+aU1+t0o2xergYiNIO3pkpn6ulA+cmim87PGXxsbwTcif1LFyAYwghNkrRvL6zcQ4AnBA
 YrGIIqVRKTQhl8wreqkzS9xb2eS+wSnmiG0f9ybf7zQAMDPo3Q+J0bUS7ph6m67+pGQ97x0Ek8V
 Tarw85h4uEaT5lSQbN39vN2aaabZkMwchWYDlxYGDyF0/3DxY8ttpjkVdhrmGvhDUGMBwQ5BwQH
 HW4z+q1OK5NTByAkzo2fxlsBATuALymXpfFoIZ4ysjJkAMwY9ENJeiRhpoybb//28Ka5E8Sr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-04_07,2025-07-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 clxscore=1015
 spamscore=0 suspectscore=0 mlxlogscore=999 priorityscore=1501 impostorscore=0
 malwarescore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507060062

On Sun, Jul 06, 2025 at 10:31:38AM +0200, Luca Weiss wrote:
> On 05-07-2025 10:57 p.m., Dmitry Baryshkov wrote:
> > On Sat, Jun 21, 2025 at 03:19:57PM +0200, Luca Weiss wrote:
> > > MSM8974 requires the CX power domain, so use the msm8996_adsp_resource
> > > which has cx under proxy_pd_names and is otherwise equivalent.
> > > 
> > > Signed-off-by: Luca Weiss <luca@lucaweiss.eu>
> > > ---
> > >   drivers/remoteproc/qcom_q6v5_pas.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > Hmm. You are modifying the ADSP configuration in the driver, but at the
> > same time you've dropped CX supply from the MSS remoteproc.
> 
> The qcom_q6v5_mss driver has this support for .fallback_proxy_supply, which
> are used in case the power domain is not specified.
> 
> So no driver change is necessary in the mss driver for both old and new
> devicetrees, but the adsp driver does not have this fallback, so that's why
> the adsp config is updated.
> 
> Does that make it clear?

Yes. Would it make sense to implement fallback_proxy_supply for ADSP
too?

> 
> Regards
> Luca

-- 
With best wishes
Dmitry

