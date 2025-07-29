Return-Path: <devicetree+bounces-200461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E405B14C85
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 12:49:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5035118893CC
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 10:50:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD9B28AB1A;
	Tue, 29 Jul 2025 10:49:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KQ3J8MGM"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF648253925
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:49:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753786177; cv=none; b=OJfY7hbx6NjmMSyYtfE535ekcTjKDsExYksPHZiYE6S0jO8FL1d+3ejOIEhCFy8DbK8cFoNFOOJUBK0MOHQVUNv6q9vpg/1/wzzFWwbua/Yc13SyRKBeenlntqJzDUQht1AaUWlh5/LXiG4XP7xfEX+qDH/n8M9SEwOSfID5AMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753786177; c=relaxed/simple;
	bh=vUdyfTdjbF+l3su631l5cooBtaC3WlleYouL0ydx3Zo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jG6AEQTiD1nTi/FANzT37dIpomQOSsHizDRIW08H9aURqECR8tibNnszffQ6gunJgp37FhF0jG5iyDnzL1qtgg7KVfTg0SA+etv9SLaWrdHxaPIXcMjapvfTby6I12pqx/hOJNAgl0YfPvka8CkdzPgCvQo7ZxrlhpyizP9n+/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KQ3J8MGM; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56TA2wk5016221
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:49:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lo5hcIj++3t+Pk5CHCpA6OOx
	qnwkB/ZqQgNwTp/vi58=; b=KQ3J8MGMx2ou2NCU7VYBeXt19vAJfMqVfNj/9ypd
	0BSOxe0HgLgumZ30klRpZzBfzJseh00YNBfVMOWXaGMzug31SVQpplld+hMP5Uka
	uGYWwjbAo490xmiLjPP4jcWVFxrFvAtTXNsVF+ByODS4UdCK7jnVer3hETec86Ia
	SZM2tgeHDGPmp2MQMKXwuw/SJqk82PBWFqKO6JFewh4tExPUtqcAPYR0U/eHbE3x
	QOe5WyFTVd5wNGvJIGEJJKdRHCvwR0BnAhjQ8Gmh8bqZahaL1YYwnOu04LKO6/sq
	cRvW4xo0AAdT3SiUecGZwezPtUkICm9XzvHUuVshydv7TA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 486v6y03yh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 10:49:34 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4aeb486c46eso45169481cf.1
        for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 03:49:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753786173; x=1754390973;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lo5hcIj++3t+Pk5CHCpA6OOxqnwkB/ZqQgNwTp/vi58=;
        b=RV/Q+ltZQ6hNYCLY/yv1SsxIvoX0o3IPtWmPIiS+qDBC7PINGq/P+qb1Es4GTyLWto
         DWQDPPD15IEIn8qyPGp6Zkl5IZ8GMT+rZkaE6CdtyI94AXMbJRu1nfK+5Y/w62+z8U9c
         b/+ztFa0Wq5WzOBODnauICIcSNxXWm69BxV1AmX3lWlYGz6ZcdgXu0fzoLRzZgzWe4UX
         LOG646Mp4nxHXoz0YtnW3i3tqLdik9IasO+UsGIXEdbeYATvLqHZNNED7GmP7UGvu2ML
         A4qkx3ab51VoyLTsrMYYdDEFXe4okFNd3Egkels5lIES1yJ3CHYpt8jKbKFpxssogbM7
         WQ7A==
X-Forwarded-Encrypted: i=1; AJvYcCWGnM6A5Cjffmq+uHfHFVOh6lfFULGgZX8Oaaz0+u9h+kFZu6A3JwvKNPuKFZ7QWJlWQ3mUDJOtBjMj@vger.kernel.org
X-Gm-Message-State: AOJu0YxVnqEoK+s4xf3X4PzMa4vgkQe4RbILoeKglhHNhMBehiixpw5U
	9RLJ8G/pomb0O0zJJknyBkxomjwICXIEgVdrc/P3Iof2FGTHtkct7ncifCzkPz+gOxx9uK+Fi4B
	VFpByv7q3xsAxcWJY1PhtoVKPPs+g/HiZNxQXlJTW/1FYPuu3TnL8yKbJrYrWjoHA
X-Gm-Gg: ASbGnct5l5KPxNJa0PyjSeflqdobmQhkmcaAeQuTJYi2GvfegQ1vSmzmbE39pYRlG1I
	+8l+raNgxgLuyIRT2Fod6rV7aXsudqI+epD72+pWGHHppMEthxNbvEEWsmbe6W62R49FkjmosYi
	kqD5i9hLY7KFjpmq8xuVLmEIhFNhE4UZlyLSxszf4PFPIYJhm8ZxrP4uystG4Cia8DIKz6F4bfG
	Mn5gkCXKfIOENDVBtoVuZU4jDGPkpqenv5mXlE4KVWkZitd7avDPYzoPMMQFQhcOe4CgB/gDYlB
	P7m+pNITrV/pK4yA2u0wi8emC20jw6dH0jHjGgH+g0BS4uslxrxLOKIvT2k2Y1DzUegVGrefm48
	79Q2qNNGoahYKW/aL6m4zqAih4mWcllBbBlzOzH7OHAnrRfcRaxTW
X-Received: by 2002:a05:6214:300f:b0:6fa:fddf:734b with SMTP id 6a1803df08f44-707205aeaf3mr174250146d6.24.1753786173155;
        Tue, 29 Jul 2025 03:49:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJD7qzRsibNuXaKYj25dTlRQLHEQU+p+3CjeKzyh+6IunNWCn9ZNOdwvfaAwF05to0NXbu7g==
X-Received: by 2002:a05:6214:300f:b0:6fa:fddf:734b with SMTP id 6a1803df08f44-707205aeaf3mr174249386d6.24.1753786171940;
        Tue, 29 Jul 2025 03:49:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b631a1b6esm1645910e87.77.2025.07.29.03.49.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 03:49:31 -0700 (PDT)
Date: Tue, 29 Jul 2025 13:49:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: kernel@oss.qualcomm.com, Pankaj Patil <quic_pankpati@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/7] clk: qcom: Add TCSR clock driver for Glymur
Message-ID: <63iuccupcdhzlo6u4j66vr5latfabjpbvtvrq4gx4lmxqsqskp@4yamwbuv4ct4>
References: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-0-227cfe5c8ef4@oss.qualcomm.com>
 <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-3-227cfe5c8ef4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250729-glymur-gcc-tcsrcc-rpmhcc-v3-3-227cfe5c8ef4@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI5MDA4NCBTYWx0ZWRfXztIna3VYkK/X
 I1Q3yIlsCun4DmK9OKrnqJuCVlrlPfzKtLrbYQCBffnsX32Dc4MgLTmqcbfM3zVRstgOVc2vevV
 7dHKJRu83CLk06nzI0zfufgZM+v5bD3sWS1Sxwg0M5EVk36KmTXpupoOSn68LTQ6cUatI7ro/Nu
 zgOoLmoNFtEj4nsYGQAmKr2hLPrjrw9vlcao90PqPERuVMOPAmg/UVmOnvq984w0yADcH53vzqT
 p0CdJXhjDWFrt8hX08FD2YnilR/axFJJGiNl9eZhv7b/0pI+IrkDRopUyEa33AVJT/wyx5zppei
 59eL5D9ZS0qTtFux/ExH4E5r+L599xgaRy6W0Bm7Gb+rv38Jg6X3JzGcsB1DNXUq5ZG6QAMxV9/
 +Fixj4rwGT1rKENuNXiTR4t6/ZmSFjssEPwh9RjS72gy9ppp6Ce4NvEwxFBwLUCvXPgk0WOB
X-Proofpoint-GUID: FRRcDlRmtbp0-darOPPQT4ZlIG1k7pAL
X-Proofpoint-ORIG-GUID: FRRcDlRmtbp0-darOPPQT4ZlIG1k7pAL
X-Authority-Analysis: v=2.4 cv=QYlmvtbv c=1 sm=1 tr=0 ts=6888a73e cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=CzopthhaEyFBFQvfYY0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-29_02,2025-07-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 clxscore=1015 suspectscore=0 mlxlogscore=730
 lowpriorityscore=0 bulkscore=0 impostorscore=0 adultscore=0
 priorityscore=1501 mlxscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507290084

On Tue, Jul 29, 2025 at 11:12:37AM +0530, Taniya Das wrote:
> Add a clock driver for the TCSR clock controller found on Glymur, which
> provides refclks for PCIE, USB, and UFS.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig         |   8 ++
>  drivers/clk/qcom/Makefile        |   1 +
>  drivers/clk/qcom/tcsrcc-glymur.c | 257 +++++++++++++++++++++++++++++++++++++++
>  3 files changed, 266 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

