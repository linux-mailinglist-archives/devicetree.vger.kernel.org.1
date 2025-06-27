Return-Path: <devicetree+bounces-190341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DCF4AEB79C
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 14:24:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BCF721C410F2
	for <lists+devicetree@lfdr.de>; Fri, 27 Jun 2025 12:24:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B57772C3257;
	Fri, 27 Jun 2025 12:24:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UgZk89ET"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF5CF2BD593
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:24:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751027045; cv=none; b=lR1PQA5w/OU2zkY7szI9YnxHZQnNdFgoGW2vERz1fxdLDm7YN0Ipuo+LlP5JLmlS8+s1qI400NNpRVlx9IBBExfH95EgI0tmXcGNrF07KWfXR8uFF+Bf0ZoMKeHEkrNdWRmFh22KqBNi5QdnV68/dEqzRjDFO2NJeeUgn+LfA9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751027045; c=relaxed/simple;
	bh=uXV4c38ge4kei8/Su56vzTTUphRCp87P4D4dYrJyD9k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=F6JIR8ljrzbm1zaiptcqx3njbV0p1DoydcGkxcoKz4UlgUzKOL6tHlfi8BSBoNOBIJwPoNE3Y+LItB15OOji9X5Fv5/D392b0E0t8Q6l8qxk6/YI1yNdV3PUwru7a2CHDMUZw4tKU0nJaaW3cRkxsgxJW7soCUqdJlJi/8b76XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UgZk89ET; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55RCBCKX009538
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:24:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bnx6gv66AxgLBTUhDkEkIj9uWKneRMRMJeD5Q4kvWmY=; b=UgZk89ETclhOmh89
	bODZDvPo5Ns82vOPLtHg3lhkRjHus/APr0sgQxC8yg14k5xYDTqR1LDczuq/0ENS
	19sDAW68nWf+GZ99/I/QLTS4qQqvhJbZZesHP3uu4YcQwiS6U4SWe9dNhE6stRgz
	NlFLeSu00sPRzOzIB/l7t2XiPTMfRFMQTqRH7OHdNdx9RulQDQ2oMPQRDDeTiOPC
	xlzV2o8jL5rnGFAN2AkPKf7tkn3Sv7dL4VXwmMMaKtJR21fOvpQDITppVUoepbn6
	nt3HPl0PXASvzG/NQwhhkvxoYa4p5zR+ZddugFjHs5dPSpcDdmz3lRYIIcpKMT1F
	tLydyw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47f4b46qgg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 12:24:02 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4a7ff6ac25bso905551cf.3
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 05:24:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751027041; x=1751631841;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bnx6gv66AxgLBTUhDkEkIj9uWKneRMRMJeD5Q4kvWmY=;
        b=DMjolvQK6XAxfFekh0FfYcYdvCtBU5CdFUvVuxqmUTXg4LipPiLVwaJhx6oL8WMamM
         V6ViZ5AX6h1OYbToH6QhEnI5rZgZOZ5CTTh6+sl/S1GBS/vDWpR5sl7hOyAZaTODvf5L
         k8EVpf8gIFErrGagEn8LqZBfKUCCkfgzf4ysZfmEFrs+Zuv9MwHONeh3yVUfN26nVLIa
         O5Bs5/uegoSymSBz9ycrM1gKjH1qmWHoIC3XvqUHMh6QqNvRJZIQQxYFX06+IgUxLeeA
         cqCg7oFkCqGUfASc8/FGkLNm0kDAAgWP8K6ZRggAVgi6aPs2D7S6tT2nTkm0DkjLLcpr
         x60Q==
X-Forwarded-Encrypted: i=1; AJvYcCW1RxRpOJjW8hswdyikLkK9IUhNtXjzQ6IyngR/3F4NzXQLSVVwWb8Me8e3MMBXBcKOqVtLgD9gvD3C@vger.kernel.org
X-Gm-Message-State: AOJu0Yxlud78gdxsO3vr6CKvmba6VDY66yaXyI0DfXtQ6QiGGpEo33xT
	rvfcH3VZDS8aJ2YhFEhzFlgJUfgaBjyDKO0j+ixAIR+7xjivmUVgGzquHFDyhqvIv4IJBohRFAr
	osP/rww8Lg9qhjZYuJY+S3u7AHYsJT9A68adWhDXKS5nYzuc6w8vy+afcDJ7EhNOe
X-Gm-Gg: ASbGncvDEAe3d1vMpd6aYW6c3EATqr5XHyZ0FxC9gUyZDT7yKUg50M0VqHxVJGfrCzs
	klNe4v/5ahGg1JtPgjI/n+yDBln0PM8qRW3CN7AxZrFnUz8llVL82cHPZfAoLhrOxXTnMogk4ei
	OFsTq4BGwEwKiBgEumEfDx6Ynm5HdIu/PTeK/z5zsEyFeYdAIG+GAx06def/VkXfJKOMGoKjL9w
	cwW/TjlZMCp2/ziOdVikqIQPwe4XfyGATm7ySFUrpsOWWUdZ1SUwvwCB4SpfSu1kkq53lL58fpp
	XutZmU3zQP1ockAtZW88C1nK2mdNcz1QDxU9Y1/ouwGLY1qhm8EMhFuiEjc37hygkekZQZEs4Np
	2Ukg=
X-Received: by 2002:ac8:5d4c:0:b0:4a7:4eed:6764 with SMTP id d75a77b69052e-4a805a7b2f3mr1098351cf.15.1751027040718;
        Fri, 27 Jun 2025 05:24:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHCH66K+eZ7+yWjG8u2nzdrIuteoB2hoHigmzqTcWK9g8hs2x5qZkLnX1JOh7Tx1aoKb5mzqw==
X-Received: by 2002:ac8:5d4c:0:b0:4a7:4eed:6764 with SMTP id d75a77b69052e-4a805a7b2f3mr1098021cf.15.1751027040169;
        Fri, 27 Jun 2025 05:24:00 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c831aaa5bsm1394459a12.43.2025.06.27.05.23.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Jun 2025 05:23:59 -0700 (PDT)
Message-ID: <084ec69f-7b52-468b-8561-de4c1f517a21@oss.qualcomm.com>
Date: Fri, 27 Jun 2025 14:23:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] misc: fastrpc: Refactor domain ID to enforce
 strict mapping
To: Ling Xu <quic_lxu5@quicinc.com>, srini@kernel.org,
        amahesh@qti.qualcomm.com, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org,
        arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, ekansh.gupta@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
References: <20250627103319.2883613-1-quic_lxu5@quicinc.com>
 <20250627103319.2883613-4-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250627103319.2883613-4-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI3MDEwMiBTYWx0ZWRfX5spmHcH5dSOn
 M4AXzNC+qO6w729AeyST7QL2yrlwaUUw5zNHhJ6Iv4ISTcUN8ZLzh4aEwuLOrZkezUbVGy8higK
 EmXxJrhUIjDRp92hb1tM74jLYe3FUa+p/ZER2Dr5F2gCwaPVo3nUzVSaZ91ovalezKgq8yfoyUj
 GKIeFiXO7hrX/PJVpt0pfW7Y0+X9RcdWCIgdwl3A+8XotUFoqLWLEuBGt4jpPPfVClljpb4KjZA
 lVHpIUme7XS8xgnYbl5aEd/n4IcPfQZaT3GwLiRY5gjuFRvTLxkvqxUHI5DGt8hYqSF028LeqXH
 sbI1i2CFOViluljNL1uXiZxKjMddRCz7hA9AV9W4fWrNOJvER61EiXidKkmAZyUc11+YQzEeRYK
 YtS5ww2G7Z6AYPYnzAQm6JLxz/DN/5VpKIAwoklM74tAXNmso2raUWgcNyZoXShiGwSqDyWi
X-Proofpoint-ORIG-GUID: h8OpcrNIkrqVljGnoIQMxORoItx3fS2n
X-Proofpoint-GUID: h8OpcrNIkrqVljGnoIQMxORoItx3fS2n
X-Authority-Analysis: v=2.4 cv=A8BsP7WG c=1 sm=1 tr=0 ts=685e8d62 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=KOtGWYD313IA7KdcrOcA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_04,2025-06-26_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 mlxlogscore=999 malwarescore=0 spamscore=0 bulkscore=0
 phishscore=0 adultscore=0 impostorscore=0 suspectscore=0 mlxscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506270102

On 6/27/25 12:33 PM, Ling Xu wrote:
> Currently, domain ids are added for each instance, which is not a scalable.

's/ a//g'

[...]

> -		/* Unsigned PD offloading is only supported on CDSP and CDSP1 */
> +		/* Unsigned PD offloading is only supported on CDSP*/

missing space before comment end

[...]

> index f33d914d8f46..b890f8042e86 100644
> --- a/include/uapi/misc/fastrpc.h
> +++ b/include/uapi/misc/fastrpc.h
> @@ -18,6 +18,13 @@
>  #define FASTRPC_IOCTL_MEM_UNMAP		_IOWR('R', 11, struct fastrpc_mem_unmap)
>  #define FASTRPC_IOCTL_GET_DSP_INFO	_IOWR('R', 13, struct fastrpc_ioctl_capability)
>  
> +#define ADSP_DOMAIN_ID (0)
> +#define MDSP_DOMAIN_ID (1)
> +#define SDSP_DOMAIN_ID (2)
> +#define CDSP_DOMAIN_ID (3)

No need to include parentheses, as you're not interacting with any
variables

> +#define FASTRPC_DOMAIN_MAX    3

#define FASTRPC_DOMAIN_MAX CDSP_DOMAIN_ID?

What I meant in the previous revision is that you can not move
data inside the fastrpc_ioctl_capability struct, but you can
definitely add a comment like:

struct fastrpc_ioctl_capability {
        __u32 domain; /* Retired in v6.whatever, now ignored by the kernel */
        __u32 attribute_id;
        __u32 capability;   /* dsp capability */
        __u32 reserved[4];
};

Konrad

