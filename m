Return-Path: <devicetree+bounces-190147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 24011AEAC52
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 03:29:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6B2494A6EEF
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 01:29:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49FA314AD20;
	Fri, 27 Jun 2025 01:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DGiJoNa1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDE44282EE
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 01:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750987735; cv=none; b=CHMIVk6WC/XCGg/cuUyXuT3tCY2FrDdwtPPG0L9a2bkqasf1gRjpx/wpB++i+1bCy0Nd+bz5Wa7TO7aK749ZgNp1cKmRh244nMFzhFW7+ZtvcWFVqztykn6cbIam36Fr69bMMeeIEHgJosUYGHrOFCYFul1BDITR+/DDWc0JeWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750987735; c=relaxed/simple;
	bh=mLhzT0gbEINjxMyIEBcYQYBQbYT3gPLBbXmxqgDjbXQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=R80tDTCYD8LqcaKuuwlWexJ81YxHujEbpK4ML6gz48MeiHb9W8fw9ecWu+1AtteWfmmKUtIWydd5paBxo7fdUGlKk3c2yVI0kiLhSqcioyhJ065ULzekm+Phk2zeTpIClOFi8MCk9LMEJDSlMNtFly7mfhTGT87XOKTZXaMD5mQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DGiJoNa1; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55QJ9psI029529
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 01:28:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=7BHttPaz4TxUNQzBLNE+418p
	FfXOu6+pWP6NmmNpoHo=; b=DGiJoNa1uPazrx+2KERUtSEAXuqt4lVnru3pvqJJ
	J2DFGQVD+8mf+Fl2GVyLhAKu35qYZb8sSEmA1WTSMo0Jt+paxrecMa9BzYPO2Wnm
	KYffpuY2cfCquGg9F5QyTYfsJwHHOucH5FURTX31/PKx8gYxn0BRN6Gp7mT7A/lr
	BLtWaRVfMJNeeERQNRTo3utljaZdI1nnWrGe/cs9btcI01h9BslyF+08y0hFXGKe
	THEzYiPVEtomHF/js31JRvJ927aFAn4gc/NwzgfNid+YfsElOPJc2pjMSfsq0avP
	G1UtWR4nTF2oGSSpQ2sGFu9qddblmKuJfXZMEBVXsbUFtQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47esa4xbs4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 01:28:51 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7d3d3f6471cso221778285a.3
        for <devicetree@vger.kernel.org>; Thu, 26 Jun 2025 18:28:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750987730; x=1751592530;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7BHttPaz4TxUNQzBLNE+418pFfXOu6+pWP6NmmNpoHo=;
        b=RpxAfA8m+uH0a4g/vLiHo4XocSkVN+rs77xNzbwXvciSKp43B5N660SL1Q1tMADu+D
         WuTx1Zw5V2z1hTjx4Ge5fvPtl/hStyS3gOy2NFcWNH2QSkXPZPJWqbFp2adRhDixqMSX
         l6KZe2FzjFTicY2wu8q+VPp7itsoDSYp/EXxOhjdQtS5dxkJtQj9h9CD/D0VNPvAI2GA
         ttQRqlWNXzZqIpI270VC7pjZn8rjIGnzEcEvWaa+m7VQPUmyozCBMJWck6Mv3zRKPGHq
         GRsZ6TQLkZkYMagR7YdMpOIAD5WxVX6lh6N7cGbMvtyT7SoU12BSoIyrIGGk3O0teiCI
         zu/Q==
X-Forwarded-Encrypted: i=1; AJvYcCWxD2srijR7wR7XO2nA5KaDdfrOwcf1rZ1PfnS0PO3r993AQDQMRG1gJgGUa81FD9VqWRIBVi1fuOHi@vger.kernel.org
X-Gm-Message-State: AOJu0YwMxiXGLl3efzCNNDZGzVu+6YnPnbrBcrCOSwkAxySqm7MUHm0K
	tNxDQki9GuzLYfe77k1FjM15VrSLXKqwyfdEwGG8PTbt6YtMLRpq30bnY4+jIkgsE+EkUCAlgfm
	lZs6aGLN4tdnjd9jfELOULedSSKrb2yT31Ljc/ocjscpNRq7qjDvAqP9r71w9dcIC
X-Gm-Gg: ASbGncuahNM4dnT6C92AiMZVOpIYk5OSX5p+BiiPw9OHEI/KNF3WQ0KFFb3mu95jkuy
	XN28I0yDW3EC28fO4XeF2ep0YsKn8M1lrFXfzRfH1WgNvDGfS/V+Pgm7Kb2W9TzyX8hjOxYu1b+
	qCZpanr/VewtbenMUoHRXrW8P9chQd1DjvT4/SxXfKX2lsyy4qUNzsCnGakoCX/Bw8BBX+5xZ/Z
	Hyaq5i/e+YAZLNt9rmYfC7ZWmGTYsSKZfSkvIpk2dtK9or6KGzMcTZ80fpyj15wfgNBhTOupsC7
	CwLetyQ8l3NtT+uw2RJQdmHGAEU2TIpb4OQVRGu1mWnabXJk+IWU7PuzP43VjZBhDk5EN/hVt7o
	SCXET62iXaIhbsr+8angbdmFk8dowdCAy7ls=
X-Received: by 2002:a05:620a:198a:b0:7d3:ed4d:f1ba with SMTP id af79cd13be357-7d4439b298dmr282410685a.49.1750987730515;
        Thu, 26 Jun 2025 18:28:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF4mM93pJrmTOiGI3AS8mbJSAOrrA8+GDhMNzP/TNmnR49p+KAgomnY2oA+PJOFrHgpx9euiA==
X-Received: by 2002:a05:620a:198a:b0:7d3:ed4d:f1ba with SMTP id af79cd13be357-7d4439b298dmr282408685a.49.1750987730124;
        Thu, 26 Jun 2025 18:28:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2ee85e9sm3688701fa.82.2025.06.26.18.28.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jun 2025 18:28:49 -0700 (PDT)
Date: Fri, 27 Jun 2025 04:28:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Luca Weiss <luca.weiss@fairphone.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] interconnect: qcom: Add SM7635 interconnect provider
 driver
Message-ID: <2we5y3aimhhizbsr6rvhpvtfkzl35lvpqr5vlhpxzsdcjudlqb@iotpzxpksveq>
References: <20250625-sm7635-icc-v1-0-8b49200416b0@fairphone.com>
 <20250625-sm7635-icc-v1-2-8b49200416b0@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250625-sm7635-icc-v1-2-8b49200416b0@fairphone.com>
X-Authority-Analysis: v=2.4 cv=eLYTjGp1 c=1 sm=1 tr=0 ts=685df3d3 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=6H0WHjuAAAAA:8 a=lAZXaacekHF5OtbiRAEA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: pCoUl9n5A1AnQf3bD9bhSree6RhuuX31
X-Proofpoint-ORIG-GUID: pCoUl9n5A1AnQf3bD9bhSree6RhuuX31
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDAxMCBTYWx0ZWRfX5iO5xPbQt9Zs
 4zRXEjlnYITD3+tacyRMFR5f9zkvTcygDQwHcEblcofM9mnzOC1suhWz7ir1XsaMdlkRkCqLMmF
 zsBkgU+ui/UB4lvYLNQ91arqp9RTCrKdHt7/XgDa6CCGV6Bp5dTOmgl2hFoulbBoyQ3pD3uw+x0
 9xQasP+4eKGj/k1Z+ZWrMwpGUR332XSivIY21NYEnjgNF8d43UEX+HeLKnbHWZ1eavqSU5t/SLa
 m1375DxffYcdhtWceeu7RaDAFJNlwK0EG+UkCt0xsyXsVLL0W/7hDgo5r139N8HVy6k3GLB1piw
 8WSBwnlUD9DHSdW+prpjdztoyx1gYTHBvHBMsPJUJD6wEuD/YmE+GnDMVWHW3O3hX1RtkryUIlk
 Q2/A2rb+5Mb0hS9t7ojqQshxqKaAEI0R0HomLmw+bQBLhNWvmHYEsY+N11cQMZkyi2St9RE7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_01,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxscore=0 clxscore=1015 mlxlogscore=999
 suspectscore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0
 adultscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506270010

On Wed, Jun 25, 2025 at 11:13:48AM +0200, Luca Weiss wrote:
> Add driver for the Qualcomm interconnect buses found in SM7635 based
> platforms. The topology consists of several NoCs that are controlled by
> a remote processor that collects the aggregated bandwidth for each
> master-slave pairs.
> 
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
> ---
>  drivers/interconnect/qcom/Kconfig  |    9 +
>  drivers/interconnect/qcom/Makefile |    2 +
>  drivers/interconnect/qcom/sm7635.c | 1554 ++++++++++++++++++++++++++++++++++++
>  drivers/interconnect/qcom/sm7635.h |  130 +++
>  4 files changed, 1695 insertions(+)

Could you please use dynamic IDs? SA8775p driver has been converted
already and I've sent series converting the rest of the RPMh drivers to
dynamic ID allocation.

> 

-- 
With best wishes
Dmitry

