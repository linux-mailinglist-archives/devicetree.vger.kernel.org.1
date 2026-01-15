Return-Path: <devicetree+bounces-255772-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6BAD2845F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 21:01:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D40433052F52
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ACF68319605;
	Thu, 15 Jan 2026 20:01:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JypMXQ9j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F6hTBjPP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4B402D0298
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 20:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768507264; cv=none; b=jU89REdspa9nVH7yCdJq6FkjotF7bIYDpAOGAY71IL0g81bxTOnsuUOQtAdH0JLvrBpAfhSyvNPzWh0LIIil77fmAWQuDZVQbswlx9mCCx0TabJ0EDYA05ln/1DKUPOvuHidExzpPscukMOCxwln+etoFmaXe2HTAXRjXsCcMeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768507264; c=relaxed/simple;
	bh=j0KnlLmPZJDeueg2HCP4gbfs2ZYlp2t1cI9AaOl+sZY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=riJV8iR8izq78axRu75csROLEyPDVJmxn9YC56bi+MVk0aRcQCjUNZqATaU6QUJkhy5bnFZCyYnetAi34mwlSfn3Gq8sbeSSuqDR5+DMp4hJSNw4RIxKJBEThinS1sDFqAah970oWeI1fH7GjeohNilVA8muuOQ87EMNVjEWl64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JypMXQ9j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F6hTBjPP; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFYGNe3113503
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 20:01:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iGNAsi5NvW0w/zxaBS54l6pl
	2j/zbg/8m5WCIafia3k=; b=JypMXQ9jTJoVYUdRYGHMy+BjL3K45duCN7NzJ7xU
	SOD/WvqsLTAMnrrRXv7V1wJA4PKXjbZ8jvlJHpbqMKDZqYlIxKdJboN/Hu6ZPxpT
	vfuEUnoeBDxH+0cjKNGZMlfKjLRKcNx+Ea5VqizyoY5lTeMYX98KeZO6xZ82waTw
	WC5MmYWHDzKk+DUi5V7UZtBjMjalfPRdqA8Vod2SZY8toJssZOdbV7x5iQMEougu
	4NC9G5UMrkZVEYGuQfvrsgm30Y2xPbaeXbE7HG/cA5qBGzD9JQbrj/Fs88AxGN2f
	0L8mmK8xqdFmjGajj6QBBgniyaMprBpp9+tSb/uIMqzIbA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq2pm0v70-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 20:01:00 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8c5297cfe68so266025585a.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 12:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768507260; x=1769112060; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=iGNAsi5NvW0w/zxaBS54l6pl2j/zbg/8m5WCIafia3k=;
        b=F6hTBjPPsybnqVdd9f4DLHKbvPWWC5hx6jpvk4iiXyPV60l+7VAq7K0Tu/mWuNxZ4G
         jtkTIDwi3fHTzj4X9BgHKy8PkjJxUIOYo1LgAs11tk/jMHLKqkqywmwNVN6DWvJa8q1J
         8ffKiwL+tAVPsJAVJEv43zjuWvw8uchWLB1gcPBE3NYvc0FEtFHOAqvE3pqjY0kY6lxz
         ogrTSHnVA26z0bqYMom7U0Tvjy8xp4KmPZg2AA2/s1TBmieOIJBOetqrkQfi7FMmXK/a
         dBWPRAzvpQnD8b6Y8o818mYCu6xkri9jnh3qt6HpCRBcmuBG0Wb/xCFSpphl2/sRpQVZ
         bdqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768507260; x=1769112060;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iGNAsi5NvW0w/zxaBS54l6pl2j/zbg/8m5WCIafia3k=;
        b=hzt3f/Lz9G1BPPBZKEZI3TN21bcGpEA9d/ssyQprJB50kln18DgggJ4CgG8MxlTN+2
         /tEJ8YBb7aqi4uv1qpMujlLFcoRdDBe9bcwcpD9W+nCgHgHmA3dp4TfuQFFC+OGEcdDI
         ln0l3c8//HdLI2u9E3FPliNcueEH1ADvx3DXflsYF3KZnmVyODJf+so76bpu7a8+rM/7
         tHe/WWJrpAF7MKp/sD2Wx3pdPMtMvbv9mNnzlL11pERTQDCY/UvbDuXxi2gNKLNQACnf
         ZuH0z41HMu5XVEW+qWEl3VkB6Hk3qEz+rucrP6UMDwMQN2IYr/07uGO0QQKRcNUQ5KBl
         5Q3Q==
X-Forwarded-Encrypted: i=1; AJvYcCWzzJdziyOfOpiRh8FGW0q+3xXu5K6MI3RUqZXJwzen1MSLFaeGqkk9+hpl4hqEWgW1iEDHfoaTOdz3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9g1kOtPCHz5ZQ6I7odw1Z73ncTN2qeUuVWUBhFtfb+2XRaUdk
	rGulO/MJCJek0SemtGf+7jkR6W1m97RD85O9nK9iXP8rwvdx1Xvnooad101CxDqVJYGLc+8Jlxt
	h93tlN08hjepBgvwAhbt+EfJnAukUVnIwXeumoKHqOeSF63UZ5fAWKQPJzfqHY3DN
X-Gm-Gg: AY/fxX6wuoC+AfoQVIh7FFgVch7ZztX3a7kepf7Bm8GZnJFZjC4Azfh//BGr6umjCRZ
	d4lqoHIrLh4BX6iAon8lVPEreoTb432X00dMV038FQ3+GeD5S+0iG4yHM618TiAjFBZgpd6gOVx
	k256G5u8ON5bPjC3E9CayRlDpuScCHYhjGLbk4H0myi+mRR8LKkpAmTgkZL6F4Zn4CzmMmnhcNc
	dU8TcgHlXj2FSnKPqDAUG48Y7y/90YT4YmqkaWSvABBAjhYtailWLHziAGg2tITa4l2/Ghg5VnC
	/Yd8IcNdf0L0/Dp9p8rKMIMBBizGi/AEdzpw/td8da2eo24MxtYNpGXVMTemGGcD+/CEu0VppIM
	SlZZedBuZov2ep+t3fmjMcgEDppEB4hZzLSMk1PtSznCrfRuXXHRIdVssHcCUKVK5GSZyq3Luhq
	Upw+qhVnVWsON3SXVr7qCC+yo=
X-Received: by 2002:a05:620a:4729:b0:8b2:e346:de72 with SMTP id af79cd13be357-8c6a676ddc6mr102116485a.57.1768507259305;
        Thu, 15 Jan 2026 12:00:59 -0800 (PST)
X-Received: by 2002:a05:620a:4729:b0:8b2:e346:de72 with SMTP id af79cd13be357-8c6a676ddc6mr102101485a.57.1768507258106;
        Thu, 15 Jan 2026 12:00:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf39779dsm115148e87.55.2026.01.15.12.00.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 12:00:57 -0800 (PST)
Date: Thu, 15 Jan 2026 22:00:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>,
        andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        heikki.krogerus@linux.intel.com, gregkh@linuxfoundation.org,
        abel.vesa@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Subject: Re: [PATCH v4 4/4] soc: qcom: pmic_glink: Add charger PDR service
 path and service name to client data
Message-ID: <s6xfgmrv7axotpozgq43qxsflr7muzg4snff5coadkqbvfcofq@ktbqljjlue4l>
References: <20260114211759.2740309-1-anjelique.melendez@oss.qualcomm.com>
 <20260114211759.2740309-5-anjelique.melendez@oss.qualcomm.com>
 <20260115-refreshing-panther-from-mars-fb2f2e@quoll>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260115-refreshing-panther-from-mars-fb2f2e@quoll>
X-Proofpoint-GUID: SOXQvtmqiAjXbHUhP-xlMykab5zZlrIV
X-Authority-Analysis: v=2.4 cv=TNlIilla c=1 sm=1 tr=0 ts=6969477c cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=Qpx8sCsO31C_0ahKLUYA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-ORIG-GUID: SOXQvtmqiAjXbHUhP-xlMykab5zZlrIV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE1NiBTYWx0ZWRfX5NxTv3xATEJc
 0mrUQvdqGUh44OjyCtQ8ZgSa4HhMmfh/IvnK2qK20hcIXhHKbgM930xGRr6ssANyuyngjX/XzsF
 spJumxlAPuVgXO8cjjE9MBhSbPT8cQxzYXE7Oe7oVQPsPbqZw5+KdXLuLnC6j9ZLlTHWuAeU6qU
 bL0i5k0+1/3iiAP/rtJJUYapXnOgpUZjFoqV4eThe3jT8TyWwtEI5mjaUUJtBuJMK6q1l7yjdts
 EhHIbj8hCI8jfNShgN9WwWTmXxkPgtFHEjOMX7Vvs8PGIJkKrRV9q+m4XT2tkdSrI9yAdi/E08L
 NeKuDYfKTJZvnkdKpceW0naY/TqsAuL/aZvgkw6yjW+XNjvlxEf3k3Us0NqyhngTAqjXI/ho+HN
 P3f8Nsxz4pRF5ut9yfVqjdHQMB8gf+Zxu7LCerUrMIg/F8TT009lblEJgP8Z6JNf/O7Eq8CCRuS
 4Yu9f2ckdDXxuRuNEtQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_06,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150156

On Thu, Jan 15, 2026 at 10:19:20AM +0100, Krzysztof Kozlowski wrote:
> On Wed, Jan 14, 2026 at 01:17:59PM -0800, Anjelique Melendez wrote:
> > Currently, the charger PD service path and service name are hard coded
> > however these paths are not guaranteed to be the same between SOCs. For
> > example, on Kaanapali and Glymur, Charger FW runs on SOCCP(another subsystem)
> 
> None of your commits are properly wrapped. Please use standard IDE/SW
> editing tools which solve all such nits. You really should not have
> received such review.
> 
> > which does not have any specific charger PDs defined.
> > 
> > Define charger PDR service path and service name as client data so that
> > each PMIC generation can properly define these paths.
> > 
> > While at it, add qcom,kaanapali-pmic-glink and qcom,glymur-pmic-glink
> > compatible strings.
> 
> This is confusing. You either do the changes because something is not
> correct OR you do them because they are part of Kaanapali/Glymur. Fixing
> a bug AND adding new support are two separate commits.
> 
> Find the real rationale wahy you are doing this.
> 
> > 
> > Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
> > ---
> >  drivers/soc/qcom/pmic_glink.c | 66 ++++++++++++++++++++++-------------
> >  1 file changed, 42 insertions(+), 24 deletions(-)
> 
> >  static const struct of_device_id pmic_glink_of_match[] = {
> > -	{ .compatible = "qcom,pmic-glink", .data = &pmic_glink_sm8450_client_mask },
> > +	{ .compatible = "qcom,glymur-pmic-glink", .data = &pmic_glink_soccp_data },
> > +	{ .compatible = "qcom,kaanapali-pmic-glink", .data = &pmic_glink_soccp_data },
> 
> So these two are compatible? This should be somewhere clarified.

I think a lot of questions (both from the patch authors and patch
reviewers) come from the fact that the actual data is spread between
several drivers (this one, UCSI, charger). I'll take a look at pushing
all the data here and then necessary bits down to aux drivers.

> 
> > +	{ .compatible = "qcom,pmic-glink", .data = &pmic_glink_adsp_data },
> >  	{}
> >  };
> >  MODULE_DEVICE_TABLE(of, pmic_glink_of_match);
> > -- 
> > 2.34.1
> > 

-- 
With best wishes
Dmitry

