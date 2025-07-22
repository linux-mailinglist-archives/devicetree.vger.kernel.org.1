Return-Path: <devicetree+bounces-198783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FD2B0E3D1
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 21:02:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 02CCA189F009
	for <lists+devicetree@lfdr.de>; Tue, 22 Jul 2025 19:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3B1A280CC9;
	Tue, 22 Jul 2025 19:02:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gyhtp8el"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57468280317
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 19:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753210966; cv=none; b=Y/K587uBO84KfUVp7jLjD9elXXrtPk11AjKcak3DpSdWYDAQUQesaehEe8zBfIRB6kavTZWgtLaPkkhAsndj8UHjkag/9B0YlySvaUMyVRKA6c/pStK2+XKqNntN8tf0WcyzcuLL0FDl/WGOSmZ5XEabxDq2CfPugeEs0mbYfLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753210966; c=relaxed/simple;
	bh=1jW+AQBLmrBwT5OqSJctwQ/2tI0p4B8L4gpSCTjZz20=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Bp0IFbxRiIwhPG3iEPLDl/Nk7xrc1xSvcmlrnjShOORcEmE0Oc94n8uqnZO6u8Kf5G4yqNpol4IRoY23ZVR8kqOC0cAlSDR/+Xp7+3L5R0VyGlNOxkN1cZs1jlDDcosohYM2UzqiK8qvBLUeyU/THBofzZbEc+2R9NkYhiYOaYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gyhtp8el; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56MEj7BD009779
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 19:02:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=eeNJd288lALWCAPcNkFrKeWB
	uzWCZ8l6rZ+MwXhFjY8=; b=gyhtp8elLmKM4dYCBMpPzjGY63U1H7BqaIPm3d/V
	iuhp8iqecnu34Ssg+Ellxxf4780WhBLpFkf0vGOi+IrmadgAMyyR5N0NO8O2Xq/H
	YOcsSfOgJg3dUuyS6FUsPrO6MBFYV+A7UCBTUpKGbz3CjI2GFSg3omVv1tZ/6Fm1
	aHXhIhM3Ls5o+d8EFry9Bo8vN1HOuEwJRGYVRgMS2KPRlilyXuitfggnQk2txLOY
	YnIXvrJ+KD0rShyIWHR1XAl/yglCuuHj79XtqxdIcR4UCsoAT+7ANPS6FF68Kv8g
	Ucql98aRd1srlKnGkvac1UCcQgj4znjRLvHQjjnFnc0/wQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481g3end6s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 19:02:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2363bb41664so1357885ad.0
        for <devicetree@vger.kernel.org>; Tue, 22 Jul 2025 12:02:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753210948; x=1753815748;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eeNJd288lALWCAPcNkFrKeWBuzWCZ8l6rZ+MwXhFjY8=;
        b=FrO0MpHfbLNYU7qLu5ES564hXWgzRJv4+OE4DKSaN61zr3qntjApBXqtgCX0UqQOoU
         ePmKbmzK5DzGooY4wnKL50dT/QLO3SIT+eCDI76FFHcZsKthSY58krk1+OCJgThqru6v
         JX4uJuRLSc3TrI6PIZBkdtcH6/li1pAQjavjH9DsAgCJvC8mmp7SJs+R1G92ZfMldyjN
         ZZe41Vk8UmMpUQtl7EgMKHxkfyCKOPZkprSQeNTSflbY3g4MwkZCNUbvfhlY+F5wHeX0
         dYu6fz1+z1Z3/8FQdtgbJp4D0by8bHJtPpfHUwwXyDptsBm5aKzqqC78Fnb3P1YEt/57
         J0Zg==
X-Forwarded-Encrypted: i=1; AJvYcCUqbDkfx8cSak9eDHBJ6jmzGdzAXfqHeh5WKW93n016oPiQwSWr+ugw3XE7LqFLxXmLO/xtHfwta9zw@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1fVKb8xwsBZIN0HHdXn/sDSJTimEzZruwVhiv5CpCsPfimcj0
	dEZPUfEm4i98ScyUIltAcGK6SOZMN9ZVIoLjuRg8B4rIgjb44WCbeBMa8LenrZfifP26a9LxSwB
	d536HNQw3HSUxiw6gCbMgj7oBDT+KVukiyHuULbl0Kdm2T4LKweYQSGC+RC9zhCzo
X-Gm-Gg: ASbGncs5iUcDJ/rO4oo0B5RpF1a6ioGGSFTNRqJmH9e4T9fs2gnvnGnqL/RhD9MJpKL
	TNCSqa/L/BoU2feuir/7RHYTkHF/Q5WHhknYHrjxK3H1RS2O/R3Yp1Vh7utIDhcwSU5dHzeDf04
	LFGyjmXtG/j+viKaHepvWmF3s8EBa1t6zKseKwugo84fRTilZXiHj4OUuTMdkKkC2BQxx/BwZKL
	79KmwnbUBh+7gmMgVsgu665+NSbykoa3zmgwUuOZ5Hx4xgyEZVo9l9X/RCqiatSews8wJECgQpN
	LBeJiL/CF+sv7M1oDZCRvVVtbkr7ascPpTJxUHOqJrYrtj9pzIpT39WgKjl9KQmwV4yagz1MX07
	LGqc7ARu2tkiFCPlz2E81iVCmTXa4xTnh2yR1+31+vJ5m3DMEYrTO
X-Received: by 2002:a17:902:ce8f:b0:21f:5063:d3ca with SMTP id d9443c01a7336-23f8acb16f9mr66352955ad.16.1753210947596;
        Tue, 22 Jul 2025 12:02:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHTaRg7+RT9XmmVIQa9Z5l3X/9yEYapn9SUbtScQ0vSYOHwQTYMt6q/ro/+Isxq9+wASsihpg==
X-Received: by 2002:a17:902:ce8f:b0:21f:5063:d3ca with SMTP id d9443c01a7336-23f8acb16f9mr66352225ad.16.1753210947052;
        Tue, 22 Jul 2025 12:02:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31d7c7a4sm2038313e87.130.2025.07.22.12.02.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jul 2025 12:02:25 -0700 (PDT)
Date: Tue, 22 Jul 2025 22:02:23 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
Cc: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        James.Bottomley@hansenpartnership.com, martin.petersen@oracle.com,
        agross@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/3] dt-bindings: ufs: qcom: Document HS gear and rate
 limit properties
Message-ID: <6yhnlwyuimkrlifmmdihcsuhws6qkdjzmjxdupu6cevu24nmi6@f4vk5dffjie2>
References: <20250722161103.3938-1-quic_rdwivedi@quicinc.com>
 <20250722161103.3938-4-quic_rdwivedi@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250722161103.3938-4-quic_rdwivedi@quicinc.com>
X-Proofpoint-ORIG-GUID: KmODiL8aXPlLFtZ1vvwysXzrpTAgOWF3
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIyMDE2MyBTYWx0ZWRfX4KNNIMlyauSE
 Oy6GYcxfL06pbCKwU8CXsF1G6rmVAW0iTVz178AVrdFCLD33KQZWOps4T30G2f3qvredx7r2HLe
 Cu4jaSz1yu8w0qXZC7ZWL+Z6MWNU0HopfX7s4Bkgb2BzcGy3+BTuLpzSmv7Rh4yKlSBmQp3RGMw
 EqfXIa1QVzMKcaWdHYOogGgXjxHvXA6rkOczRcuRQZdfx84YRBS22DGJujDbTRVhJCp2QiReE5B
 zxb+tGXaTk1JZMXHQhwabhdxuKRTcI7HpBzGLIcZQyJs0GTZM3Soa1DKUEL4QjOQ3wDNct6SPKl
 iEmfoo5n+8OJxpIR6BF8/C+vreiCkH9RDes5QueWR4iWdOrO4D/bCUqgUXQpuz9chnEdbNRgpzz
 HJFEVzXiP3Z0bw2nJL2s0VnW5KL+rqBmdVgKqC0s9+GAcUB17P0xzpXZNtMDsye6+XQaPVzq
X-Authority-Analysis: v=2.4 cv=Q+fS452a c=1 sm=1 tr=0 ts=687fe054 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=rRQ5tug-ufnQS7fofaEA:9 a=CjuIK1q_8ugA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: KmODiL8aXPlLFtZ1vvwysXzrpTAgOWF3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-22_02,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 adultscore=0 phishscore=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=999 suspectscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507220163

On Tue, Jul 22, 2025 at 09:41:03PM +0530, Ram Kumar Dwivedi wrote:
> Add documentation for two new optional properties:
>   - limit-hs-gear
>   - limit-rate
> 
> These properties allow platforms to restrict the maximum high-speed
> gear and rate used by the UFS controller. This is required for
> certain automotive platforms with hardware constraints.

Please reformat other way around: describe the actual problem (which
platforms, which constraints, what breaks, etc). Then describe your
solution.

> 
> Signed-off-by: Ram Kumar Dwivedi <quic_rdwivedi@quicinc.com>
> ---
>  Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> index 6c6043d9809e..9dedd09df9e0 100644
> --- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> +++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
> @@ -111,6 +111,16 @@ properties:
>      description:
>        GPIO connected to the RESET pin of the UFS memory device.
>  
> +  limit-hs-gear:

If the properties are generic, they should go to the ufs-common.yaml. If
not (but why?), then they should be prefixed with 'qcom,' prefix, as
usual.

> +    maxItems: 1
> +    description:
> +      Limit max phy hs gear
> +
> +  limit-rate:
> +    maxItems: 1
> +    description:
> +      Limit max phy hs rate
> +
>  required:
>    - compatible
>    - reg
> -- 
> 2.50.1
> 

-- 
With best wishes
Dmitry

