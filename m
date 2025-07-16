Return-Path: <devicetree+bounces-196916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 078BEB078E2
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:00:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C24343A6E0B
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8E6C264A7C;
	Wed, 16 Jul 2025 15:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="at6/24Ga"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 623BB262FC2
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:00:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752678042; cv=none; b=GRc89hukraM9XULOHe9nxn7FqPjxg1QGtBZMf9/QGfdNYd+P7icxB8OLUIduLcxuB+b71+MKlajbwnnW/X8XKWHA+zBbdgoXAJZpGdYNO3hMgLkASzN7mO5MKw9Z+eRfC903b6qUQAzEvJFZDIpSg5RckbyzC65/r+nxGMsH9gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752678042; c=relaxed/simple;
	bh=MHIyHlqoA/Uqj9LXN2PMXeXEUCUsJxys4641D1GX0Lo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YHkDaaXC+HzWJVI1MwnTHP/Q7z8C1mCUJrdsskVo+rQsJ8a3GeXSlvPcdY7rFSDlBgo6dKQwbwKVwIM5WBHJSEPaKWx5gVHe5hpEuKuFjqfpZC6RVX03ADB1O2IdH90hOdWpqCJZ5YAgOSpsBYYGaDazT811PX1dXT5UwGO8hiM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=at6/24Ga; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GDBHBg029739
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:00:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=jF52cvUSvshXb9p4qQS6TK4m
	/ZISonXy0nEmQgM1hBo=; b=at6/24Ga+F+8Vvdxi5MQ8Z/aKzQ+QzS5eKU482hu
	9yw7KL38x0cl/MFRl1/agbWUDihD2bPPA9Z3VLwiNLilwY71acLUupABwXtBJDEX
	Q/99juCdVfXgVkrAUnnQ0xK9s/rY46PtJ5H3pRN4ACywXoxJsB5yL8Qlubg+xtJ9
	qkY6T2OCkn6b7Ded9apRS8xBXeXIzJjtB1VVMnjzpUpXhL3K5QwQMRexB9FKn2Kc
	YlTxEGxEWUaA3DeYyR42WIQwgaQ4M0DR4VTYG/b8+NpNyHSJP2MPn4bLVkqDb8bV
	pHwiLJAUN6BzzUv3YRl5q2uuLFCspjpjsdcWswkPVvayZw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxb4dha-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:00:40 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e1fb57a7adso348113385a.2
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:00:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752678039; x=1753282839;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jF52cvUSvshXb9p4qQS6TK4m/ZISonXy0nEmQgM1hBo=;
        b=YsV/A5FBljavhKAmckor++DvqPCRkglt2Mrh60tnNN0X+1jDumpurmf4xb2CYi0k8w
         6BBcH7N/kwEXjQOo5bg0PibC8fCBQGf3Ls9SjkdrSZsLTI27pu7TsQTH/GlfGESnvw23
         vmfRH+p6EN/APthdKtQd1Cqx9uS+9io1SHaKny3BicRy4GmPKBYxNS8MvdSdmWPyxI8d
         drmpHYOORd1xay2d6+EFOUbifl6k2CWHG2gkouZ9o4JFCs11/lF+fyvZl4yn4E9n/1vK
         GD2hN6PhTG8nuxjBVzRVESRFF40giAPqLTcpJJ6ZWZBf4rl0sr4nVqOdCRzfiVUy3Oiu
         ywmA==
X-Forwarded-Encrypted: i=1; AJvYcCWOSYzv/2zrY2UamYIWLXr7pCj4WjETEyZt8zqDwHB5W51VWcR7xvUNA9DIYhEjUGRyFnZZ83UNtQO+@vger.kernel.org
X-Gm-Message-State: AOJu0YyfJTsFjWfVOWisYAKxIxiR079gMDCFieNsvWEawuWXAZi3Xalm
	cXf8IntNPSral+gq7f0WksN52Uuwv/M1AxtKSH5+mcq2D9dgE3k1USJ19gvAMveGDf9h+eZxrWr
	M1151cfL7fVJj/SCB6cLqTqfZdDdQaDItFJo2DgOaST07iT/0MXF/YyDf+2H/qsyS
X-Gm-Gg: ASbGncuF3o7iw2K1vkrAnjLugiV9iyIK7mPlRg4t/j4dsmcOPBuhHZ+VcnEgJ6RAhuI
	iGBx+Izx7yyutHH5GJcTLK/+i813ZseqkypwIWznwa2GUUS5RGQkIiwa2xhvXneuOU/9jAmErsc
	fGbE32YnQNNPEXUtdpJjXrfkyBgP6zPu0uYACb5/sAtibjp3Tc4gyFVLXF6ehqV2CncL197m/HO
	sBCSQwbeXB5j2+yFNh9o2Foch7Iln+TAV14QzS+InXslHks9ZOqVXz7MiB5DQ3NdiYDBrP3Cg4W
	r4Pgx/pEeEd7kKgcp28GMc9E7jii3nqhxOKYqlPcQ8kvIQOiTbztn0JSQ6Pk5TRJ1lSDxWjlM+x
	WuWGHTfpktUoVwTDMMi+dwY+iJkZCnpBJeg4wLPC3B5Ig/H3fhnyk
X-Received: by 2002:a05:620a:688d:b0:7e3:3019:e16a with SMTP id af79cd13be357-7e34356f603mr435571685a.17.1752678039040;
        Wed, 16 Jul 2025 08:00:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxt4H5FXg39a4tOdmD3AP63qnFyd2IRuTr09Fx8yHgRyZMJ6icisMhrFI2Cre9KzAr64FPuQ==
X-Received: by 2002:a05:620a:688d:b0:7e3:3019:e16a with SMTP id af79cd13be357-7e34356f603mr435563585a.17.1752678038354;
        Wed, 16 Jul 2025 08:00:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab9134b5sm21435371fa.102.2025.07.16.08.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:00:37 -0700 (PDT)
Date: Wed, 16 Jul 2025 18:00:35 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ling Xu <quic_lxu5@quicinc.com>
Cc: srini@kernel.org, amahesh@qti.qualcomm.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, arnd@arndb.de, gregkh@linuxfoundation.org,
        quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 3/5] misc: fastrpc: Remove kernel-side domain checks
 from capability ioctl
Message-ID: <aepmtv6mxlzhpncwcwlmgfrb3m2c4xe2edl4y5qsnjpxmvivla@gwufrh37y473>
References: <20250716132836.1008119-1-quic_lxu5@quicinc.com>
 <20250716132836.1008119-4-quic_lxu5@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250716132836.1008119-4-quic_lxu5@quicinc.com>
X-Proofpoint-GUID: bdDKVYGWcXsCIHlQsHDsQQBvtEQJB1pK
X-Proofpoint-ORIG-GUID: bdDKVYGWcXsCIHlQsHDsQQBvtEQJB1pK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzNSBTYWx0ZWRfXxAK66Nd/De2u
 sPtDjLWVRsxbQ60AHOaVm2UPmqvytCY6EZyLtLuSafdUMkWxLMoxY263tY7XHQ5ax6OIEWHxdfl
 GYDJtCLrOWNA/VX68cWcE0+UxacGEcoUGjt6kSFJUAOv0vgsiN6EMYASobSZh2ArWRADXy2fB0a
 9b0lHpmIBtK1lpOhrKlm0WbRCdOA1Fk5LlzJc4/pFTYGcCmgeNG4R8sMQu1HxoaKMOZmzw1W5XT
 t9FeFpFitUulEXdo1wOgM+5tbfZtPYJYYjf37iO6BOxqQkLlukn92RAkrvCNPmSWJ8+yImcLBlU
 EstymDBC+IPlfuyU2EhVgmT8i1XtpkwQYY6gZeIBuioevfJEuMYzSv30W7tkWUTEF1QeO4UfThK
 Ne2CtolF7w90h4oPurthNCjUaWZ3NQ7BZuNAc0gNalA19dmzg4XxwtFnt2c7TZun4SiKShua
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6877be98 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=lc4KdpPQecCvDiYUKO0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=712
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507160135

On Wed, Jul 16, 2025 at 06:58:34PM +0530, Ling Xu wrote:
> Domain ID in the uAPI is misleading. Remove checks and log messages
> related to 'domain' field in capability structure. Update UAPI to
> mark the field as unused.
> 
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c      | 14 +-------------
>  include/uapi/misc/fastrpc.h |  2 +-
>  2 files changed, 2 insertions(+), 14 deletions(-)
> 

-- 
With best wishes
Dmitry

