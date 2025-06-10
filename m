Return-Path: <devicetree+bounces-184537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D41E5AD45CF
	for <lists+devicetree@lfdr.de>; Wed, 11 Jun 2025 00:21:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6C98D174DD4
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 22:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 645FB28B4F2;
	Tue, 10 Jun 2025 22:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XX7VdYmo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E918728AB07
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:21:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749594102; cv=none; b=Ca3BhpknKsnv9FIZ9YEy27KF77q8cNy5IAdoDO0+wEcvv5KaFaY+JTgKAGnivyOPMeCYn8BxM4CjFCwE1VdHAC1jgopa1tuzb7ILTEucjGX7BLX7ovdF3YhfX7ABUAurTNrqKYfEPT3t0GyYdBnO8TRurSiQYlpkZ6pjS09D5KM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749594102; c=relaxed/simple;
	bh=YvdzXJMQSdK/2qt8MvMMQWgunI4DcAdj3g+QL5Ek9oQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FGPcMshy7EgbLz/v+IiBtCW7ibdZak6XYT+xpsHbvU4IpRX3/KqPibpTNe2KLttgNQ7V7Z7dBJIxt09U0dhl70JXKreoTvdmkiBPXBiq29nzdavFFWCkPld3Zl58BEMs2qDAACDANznepJdG6hcl4+yI1SRVKiprFZUy+5po0ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XX7VdYmo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55AIPxJx003170
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:21:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RV1FvH/Z3KH4jd5rDx93/TSY
	2YFYDygQCaUG4Knudc8=; b=XX7VdYmoYX7cozWQtTQRknuFrZXvGvvFWi5qAfAp
	PR0tOwPUR0Aiv3ZrloGKJSaAmqhsVlQ/gWGXSkz2GiflXyeUFyJkvC0RmUdQ0wLP
	WzmVAltHcHQWxvbLgsvQGZA4KP/OigVcHmyVJdZMmi6omMoVmvmd/jEWP54u/bCU
	9k+gYYcAXxaD0UHWPKREq/zpDdq4tNUut3qFoVv5xGHq1jtYK5Ivr5ymJJo/iJwu
	znaNIc+PELGU2h0Ic8lsc8GfmTJ+6GxNt5kjyXw80UV7DRTQA/31w4NuJ5Hhu20m
	dvi87IXMXncUA1AGc+TjuWTDeYG8vWu+7vxE5JrPPAtF2g==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 475v2y5tas-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 22:21:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a6ef72a544so72061411cf.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 15:21:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749594099; x=1750198899;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RV1FvH/Z3KH4jd5rDx93/TSY2YFYDygQCaUG4Knudc8=;
        b=jTVckXFEGlAqaIXAyyfBL7AS9WlUvClngVD8Yms7WqK/jgIebnjSe6MFL+4kKvFCbm
         uPMhc2qPoQIkq3XdS8Y2v2X/dChNkzVyOGq7I8Z6dMtKuYhzqhO3qnNzmr1S3s9dnKPO
         yAIrfvdgjMAcRqWFN/UwwU9cEWZizF5Gqrg4RgHmAp0kTTiWpoGsh9JAyxoOzkp7//kX
         rtwraA9NM9Cenzt7FCnhyMSv7JWSGEoqrxNrfNt5cwSd9DT0SDp2SW+QW/5UUgdOkVUH
         6qW+P1dVA9gjOyW50qKssMpsg9lhPHH9bkQnQzUNEIHUST0s4Uw+moz10eiwmLgAGJm4
         bnyA==
X-Forwarded-Encrypted: i=1; AJvYcCXilEZL0bfee4Zs62iIe6b0nko2ZiYEzRawzNij6oSXvqYm84GAoucuunQoKMw1l01jezEcuAm7ioOI@vger.kernel.org
X-Gm-Message-State: AOJu0YyxexnYyHzxxzp7WkI7b+71go7bPqUb6pV7fbTwsZzBaJ3cdpen
	yZJiELS6Ha2hH9n4YrMEuzRZNdWif1S/FtJBzFug4Vzvs6Sf5IA2WzjC3qS4vNoS88WWpQjqwpZ
	baAXOW4uXHDgw50NjlE+mQFmNP++8YzrWAMJ5pQj4YqSZx0nWt7aFccDrs1L97yAv
X-Gm-Gg: ASbGncvi5XF3EzAc//O/fCEPIKYvN+telhe9Un9+XIll0ghzLgrH6tvqRVJRPTvQ1hL
	YZ0eHwmWcT1tg+tq7kst75KjiHdvd6mHAzxja6uufALtORVtNeKWHO0oT/FG9mto2AqAPe5Wy23
	vb2Hmameg+mYryr5VC8mNbp+yyXN57NC5aEF/g5ytMTyoaKXr1M/lHjEeQ6IQ4rr4xY0/qVrKTU
	Wj7l0/0F7zEZSjH5Unms8nz7QNpCW0mi/XNTL1MIB4pJQ1/KbQ9G2PMBTrCSjIiuEUDr3RVz85B
	gsLddNSRvfYazOYUjQGOt1LwhWzkawm53psCP6VKAxGPxJvhKrLlq7tyQzieH4Cgc9WNUb+vkFW
	RbzLoT1lMnY6JPULvAhydqG51EJWP1t6KbAE=
X-Received: by 2002:a05:620a:170c:b0:7d2:1199:ac89 with SMTP id af79cd13be357-7d3a883f33dmr208488485a.36.1749594098713;
        Tue, 10 Jun 2025 15:21:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGHRRQuijtNJMUaKmxwgA6z/qlHR9MTcJ875zwNfzdSYx+nk7dE/YEFyR8j7QpjOr1/vQvrRg==
X-Received: by 2002:a05:620a:170c:b0:7d2:1199:ac89 with SMTP id af79cd13be357-7d3a883f33dmr208484785a.36.1749594098350;
        Tue, 10 Jun 2025 15:21:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32ae1d01dc9sm16225641fa.108.2025.06.10.15.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 15:21:37 -0700 (PDT)
Date: Wed, 11 Jun 2025 01:21:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Robert Foss <rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: media: qcom,x1e80100-camss: Sort
 interconnect alphabetically
Message-ID: <35muvo7h7ynfvzjt6jomasr54xaomfgt5etjc3uuczhfxww2ds@u5xsayanthx7>
References: <20250610083318.2773727-1-vladimir.zapolskiy@linaro.org>
 <a072d00e-df91-420b-9363-424bcdf1ed8e@linaro.org>
 <3e8f8220-1fad-437e-9fa4-5eb628891110@linaro.org>
 <ae364f1c-5d64-4178-b26c-e58e352feee0@linaro.org>
 <97e51ab0-737b-496e-81df-b73c9f598bb0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <97e51ab0-737b-496e-81df-b73c9f598bb0@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDE4NCBTYWx0ZWRfX2lhW+BZhgwwo
 AlYp5bhq7r5jBGu/+OmCw194Ez5Nk37frM3LiHAmSrgsSgQoLJD0uCR93zN4sZLJVuyH2Tvqml4
 F7GoKOUZ3ulUqmp4kc6qsBxqMvxUZrx5ZY3wPvkCNTIQUdHLgzcnzfSvXRiCEq5z8ZbQG2zeJgZ
 LZ01MSQlgrU1UQNLTc1quWV8hggwhE1qY59oMRfoy++xGCF85Vq+2Rvnon+JaKHV36HCuprrcvE
 zD0A5CEI12yKRwS4oZG5nDlBeZaU+Epud8ctliNNMDovA0EnEveWw5I3TR/E6rX0srGfo7kLlLZ
 HLlt3vuZj9Av/bedfx4/E+4H0zIoPclM3pLrRNAZkeMtSCUP48A82lsDHMAj48CBaqlVttom9SG
 q04ivjC6wazqtwILgWGXuGBZnRVYU6R6TbXzrZYzvaV1eMkPiVd0MqQnHaoDl0nhBacpWAHg
X-Proofpoint-GUID: otij-hp_o-dcsU_h3V-jIe2XAGD4NSuh
X-Proofpoint-ORIG-GUID: otij-hp_o-dcsU_h3V-jIe2XAGD4NSuh
X-Authority-Analysis: v=2.4 cv=f+BIBPyM c=1 sm=1 tr=0 ts=6848aff4 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=yfBDPXAuP_RVhw_2PxYA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_10,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 mlxlogscore=999 bulkscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 phishscore=0 mlxscore=0
 malwarescore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100184

On Tue, Jun 10, 2025 at 06:10:33PM +0300, Vladimir Zapolskiy wrote:
> On 6/10/25 18:02, Bryan O'Donoghue wrote:
> > On 10/06/2025 13:45, Vladimir Zapolskiy wrote:
> > > > 
> > > > How is this a Fixes: ?
> > > 
> > > I call it the fix to the dt-bindings documentation, then what is this
> > > change, if it's not a fix?..
> > > 
> > > Anyway, if there is a strong disagreement about if it's a fix or not,
> > > the Fixes tag can be dropped from the change, since it's so secondary.
> > 
> > Since we don't have a committed upstream user I don't think this is an
> > ABI break.
> 
> Well, Dmitry says it's an ABI break... It would be beneficial to come to
> a common understanding here.
> 
> > But I also don't think it warrants a Fixes: tag either, there's no bug.
> 
> There is no bug, but there are Documentation/ changes with Fixes tags,
> it's okay.

Fixes means that there was a bug / issue that needs to be fixed. For
example, if there was a user for the bindings and the user had these
values in a different order, then changing schema to follow established
order would have been a fix.

> 
> I will resend the changes with whatever updates requested by both of you,
> if they do not contradict to each other.
> 
> --
> Best wishes,
> Vladimir

-- 
With best wishes
Dmitry

