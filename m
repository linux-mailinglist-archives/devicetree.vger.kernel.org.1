Return-Path: <devicetree+bounces-217781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D76B5934E
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:20:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A44B81BC5380
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:21:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1BFF30274A;
	Tue, 16 Sep 2025 10:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GnSbv5g/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD6429A326
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758018039; cv=none; b=EQiHv9IxkGN6Y5+uYgkH9pUG0Yvv2TCBYWarhH3AYdp7B2eKuEtzq2kepn3dCnQJ6Bmjdr7U8BsSZQy4R3oehBR8D1luiAG/AQANNxGSMd6LRsfJEr80tjA9HQNK53/+kmahq0Lsl6j067QNJi972a6YhQyWWcH+sFYMKFD+lL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758018039; c=relaxed/simple;
	bh=Z79MuAHqLmnfhIXPhPe1WTgGzRY3sqQwPS+B2AZHKGM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Q7RRIdJkE6nzdEb7Y+8uB8E0LGbtg2C3iwyu9iQwyLpOXXJ89Q7wMCsxZ4EbOEu/cS5i3ZtBm3mIWkrhyvbULa/IrghggPyFYE5z5bTZ6keN48OKgtB6DnMIUxATTitu7Zsh9J+x/EU/ouu9WSi1v+F8+eJ2AMZ7YGkeq+B4VTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GnSbv5g/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA4kOA019791
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:20:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fX0Y/gtR++vND/LuB2Nc1fsO
	EUd47UfUpCZUEjof6Zk=; b=GnSbv5g/5O3hW81nWJ7ffFKFtbH9IDf6UXsaINIf
	SVCUblUcW/qjJdYivWkOQe5zw7uZxPqnBiTqoB4SqZRsoWGJFH+sHFgSxs/vNlAG
	Lu4e+AiGiqK6CzA/QGQFteHdh00+C906yXsYkVuvsAxbQspaRpyHsyFloSqbgVv0
	Z9vYFcglIbaoYgUb2qvYygdfDMKTJQILB0YktwMLKwmTL8wPbC09UV8UVcATpDiU
	oOdBCD9KRgDv8RUWuX56xPHtpbe5/2r7yS88nGLpC1Jcwcq2XHbjP43+2T1rQaeX
	sIYf42LSBb33dU2ByJU1S+iVzTy+fZSYIpytDI+qXjhuQQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494yma8g4c-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:20:36 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5f818eea9so101799101cf.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:20:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758018036; x=1758622836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fX0Y/gtR++vND/LuB2Nc1fsOEUd47UfUpCZUEjof6Zk=;
        b=cONnrzf+qLcJM6kY7wAN4Yq5Qg1n/rDASGD5x4C8tlIQbT4RKQVcndj+bteYeXL+B+
         8xixaeW8XAI9XoeNkrBY7WmKSZo59vWM8AtOY7JbQ1PaJSxFTI1gRQl/JQM9ciwBEca9
         o8n06GPuTDhKmO2trXI+SSE/r+lu49Jl20DDqhHYcJCTUvurCSMtFn47X/AzG8R993uB
         T9pxKchIwhFvRaJkiwLJC/j00kNU9jcqwQ7qcdpjYGMMNMuBmYVNYYtUNaYmgqfMeD3Z
         Y5hlUOYLBZ311D5nmpEw3kyHYaj+N671TAnVq0i5Sw2VBkci1JsshiNaNwjpEnPKlGI7
         qYgQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFt/WCBLh5E6T2LI/AfE94QdqYLrcZ49g/LhOkczy749oMdwaa937rdd+ipObI/nL0PKJLcU2PuC5P@vger.kernel.org
X-Gm-Message-State: AOJu0YxsunLFgxH1Bpnh3bDaSsBWhF8E3KrRmCLHQakvrZDrwdHlEK0r
	TENNPzxE0YN0PKrRcxDGFZNs6MXf5H3SQS9Udu3UOTRPFse+syQlKpIOuygCj2ow8tipYvYHdB8
	GNOWCbOg1fvzptjlVAWD/A7JqaHPBviF714bTlUQHTKtuC96Zo2xg1XNlNBciLrrF
X-Gm-Gg: ASbGncsdW5mNDeB6eeXPieTb7dLWc5ozFKad3lrdzWJGWbzIWXTynUUJpBUlwZqyKk0
	mhA1xzzklJWTInofVLCu9NqVUMVxYQI6gH7wQDjsN//uBHHHtRImSAUMvOOWoh7OzK1BMRMWN5S
	QJCURLGRFuVktRuZupnpeKR+ZT83ntyH/0uiH+EmAX9mcKBBC2zvBzDV8lTKQ8g2jJwVmLhNcv1
	D9L6RT0zzUjE3UcFn2pLG2ZLRFsNzqHqxhfB+IeUuqlUyZcjRvQT99tcPn+2p2ECz/0n9cKX2GG
	xarS4ZpblPK5giLd+QU3pedp3nfwLu+shmHw2Q/TibGQ2Cl3Yxj8fm/bFZcnf++NwJTWbMTIKJh
	CmTPanUkCTp3scCMR6LZXOAL7MY+WF7YkZhWW1LQJMADDsoO8mxk1
X-Received: by 2002:a05:622a:4d45:b0:4b5:e644:67e with SMTP id d75a77b69052e-4b77cf982a8mr262930391cf.16.1758018035902;
        Tue, 16 Sep 2025 03:20:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwQ1pTniGU4JXGr/sMdK5biZOWU0CLhI+tTtSwMj7eFmqrGcBZ1WkDskr95Pi8m+6q+eazYQ==
X-Received: by 2002:a05:622a:4d45:b0:4b5:e644:67e with SMTP id d75a77b69052e-4b77cf982a8mr262929951cf.16.1758018035258;
        Tue, 16 Sep 2025 03:20:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1a8211d6sm34724701fa.43.2025.09.16.03.20.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:20:34 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:20:32 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH 4/4] regulator: rpmh-regulator: Add RPMH regulator
 support for Glymur
Message-ID: <gsnmpdxnuihagle276sagfcxpblxvwtjztb34r53f3nub7be5m@twj5lizpevpd>
References: <20250916-glymur-rpmh-regulator-driver-v1-0-bb9b00e93a61@oss.qualcomm.com>
 <20250916-glymur-rpmh-regulator-driver-v1-4-bb9b00e93a61@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-glymur-rpmh-regulator-driver-v1-4-bb9b00e93a61@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAxOSBTYWx0ZWRfX8AB90otCaE3p
 q6BmU/F7cG7nHfjXhDKaclQwq0H9J7QH9HJEjwyvC/ilFy0pX07Ua7TLEV+OMrI7QaH0EQ3mpRu
 TbP4WzggXdwMMWJkf/N8DUbskYhT+nhhCXuQsWyrSCYpksXjbNCHkc3HbdU8X9HiFh2uZboBzZm
 Ip6ArRiq6Ir9zE4rGZnv37sJeOkxsXPh008CYXVOJnd/0NxOcImvR6XtzsI0B0WjEZEDBXTPtyU
 HZep4qjelcfb++fH1fXLpIiPLBvr/5sWZ8QNL0+pSZkyo+0zEuLONfFcxqH50zPFCW1jVk8z/UQ
 3qsfpTStRifTZ8gZ1PZjchlxLrHAAqc7hgXd0N+RViTf2Vjk8ASutkYps66oL3gDZ/LkYOSGjpq
 HYT1Dt0u
X-Authority-Analysis: v=2.4 cv=cdTSrmDM c=1 sm=1 tr=0 ts=68c939f4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=A_yzNFqrIlXfnZhuJ7gA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: 4x4f2yqY_OzfwqIDKiXT3_vJs7D6NPZZ
X-Proofpoint-GUID: 4x4f2yqY_OzfwqIDKiXT3_vJs7D6NPZZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 priorityscore=1501 adultscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130019

On Tue, Sep 16, 2025 at 01:28:18PM +0530, Kamal Wadhwa wrote:
> Add support for PMH0101/PMCX0102/PMH0110/PMH0104 PMIC voltage
> regulators which are present on Glymur boards.
> 
> Introduce new LDOs & SMPSs under them (PMIC5 subtype 530 for
> both).
> 
> For these new LDOs support a new optimum power mode(OPM). In
> this mode LDO will automatically switch between high power mode
> (HPM) and low power mode (LPM) based on the real-time LDO load
> current. Its operation is analogous to SMPS AUTO mode.
> 
> Co-developed-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
> ---
>  drivers/regulator/qcom-rpmh-regulator.c | 188 +++++++++++++++++++++++++++++++-
>  1 file changed, 187 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

