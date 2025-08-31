Return-Path: <devicetree+bounces-210900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E9AB3D1EC
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 12:06:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 154A0176411
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 10:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92D4225A35A;
	Sun, 31 Aug 2025 10:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ni1a+nfF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A66258ECA
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 10:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756634729; cv=none; b=QdAEugfxchj1O+kjQC9B96iYZUUP9tKxmDLCfT9KJaI9VAUe/lmILJ3dxfvXfYJ0xBGjgmSAIG6yUxSpGB76YFqOhWzK2b/2ay+ZxB5AdKgsbQb4hnnRjNTSLTg8d1d9M5nraBpvfHOU+V/yCjAnWnRDrzHNPkw9g6QLP3jdzqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756634729; c=relaxed/simple;
	bh=qgZOJ23E7GKrRrkmvhIvbpHwFEbyncXhUWLXTsvOz7g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OSIbyDQitJ/dLNnKBFhw9jIIUGwJvdFpzitN/l5Z7vTVpPXMFLR+XjtGMN1EnWEnLm51UUG6LMLYCAxhvu6ZZUPTotYoPC7/OK8V7bMPG0bnacGVlH2YZigPwOcb+tIFmqhOwu7zjurhZ73YTZktFrajIDiSVeJ865yQxsIaFjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ni1a+nfF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57V9b3AF023340
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 10:05:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WtmVK7p/SotPayBLtQrG1bWg
	qezjRJbwZ0ptisq/x4g=; b=ni1a+nfFBepFZIUGTSVLat6LgmRUrjZdFjbzB7fL
	TCcZLbzXWz/J8sSwjtc4VqCUG2/yHcV9oYX5Xz6gZ21Ouw1BXyzfWMMpbtHhlaZz
	mojI06occsqeRs5L2TQDU/xlDDbuCZcZcS5YLFu0V6TGvNFmM6UooS291/2pi51X
	f2Xiak/bHNEV8OPO8bYUl4AiYB+zNmxj76aBWhkiduz38qvQWysgeBco/Sff0aFE
	J8pg0ylTrC9DccUS3nDzZPWSGzk72/CBropCQdd0jzhS2TRrVUMGR7b4mocRgHbJ
	dfPrfcPnn8IdH57tBMQAbAs/RRDD3IOb6IBVcsdliTMsgA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ur8rsytw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 10:05:26 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b1292b00cfso35412921cf.3
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 03:05:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756634704; x=1757239504;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WtmVK7p/SotPayBLtQrG1bWgqezjRJbwZ0ptisq/x4g=;
        b=J0zc2SdnuWzfNmMdo8HYxCZM+4rWlXO394FV6WyQ3DzLfr9BTTqczYHzkODoptnwJ4
         2FJ2/Iu+B4MPkbAOr5i77tEYvJVJ3Vh8m8dB2vwkixQVhF5voYrnuFJIBPC4kjFTQfsh
         VO8C+/T6z7Mb4NAoYXNp2zYv6dboIbI1O7/HgStnvskos6i5dPkIaIqQSvzAMEdTFypE
         /thWxkFyDl8x6q4uk2fLElTthTMcVyzwKIIp0BJme090/9C8JTwbRPb1N5/rBC/w3GDP
         ZQymcF+z6YOlffIABwvK5r2yJQmThRtvlkE8kHSB8CGWMNBf/Hxin1Z5Nc/VVbf9p7IZ
         Bnhw==
X-Forwarded-Encrypted: i=1; AJvYcCVE7s1RMucBi30Xw7jGMcXs/PgRhIUUorXphP/V3YLSx3ck9xCminRoD2bhcRW1/K1ASLxvQSjLM9mk@vger.kernel.org
X-Gm-Message-State: AOJu0Yzv9UkrzLdkGY8OPz4pjXtr+OAsYEVsplF5iGdV8YfNIAVpAJFt
	vl0n4zXnaGQ6wXJD7SjS1pPVl2Yt1CIIrDkR7VP9UT672nL2ediN/CSzrd942evJHlGEHEqe0LV
	/yR0bqucmivjMFEukMMsvZBvXEO61XCXWgREygdy/rrSHuWQ57ubA58wMrQrDAFlG
X-Gm-Gg: ASbGncvajYMVjQ2Be9ym6xMjyw48hMZRNBDInQIEFSQ90Go+ITooP1hPaIENFzFMgyA
	b4UFuFj8tPYoSluT4DZX3oA0n447UFtG9rpNbzDzj3cvseix5rWPkm1O1ik+GqTGd/dNlYIbTIx
	TbQPpl5TgSdHL8dsHEb3yP1niHppUxK/DsdBF5y9hWGA44De/I7AfZC+GluZdXQOOS+6Ql5Tpr+
	rIwxByeG7Ex0GCPDXPWz638u/j0jVXKnTZpbMVASjAkY4Gqs4Xl4cTy0gNSF+MiJPp7UVMGrtcw
	yaKzrzv2O4UEp7Gg/dEtTUHSjOr84kOPVze+7nVQj7ntSY9XPNXdT9445m9oApd+8Sgf8e3n8KW
	q1oJyeBun+YueIAObq9Q8+rInkk2/iHdbTmy3dgn3s0kFZ2R/m2lA
X-Received: by 2002:a05:622a:259a:b0:4b2:ed82:29d5 with SMTP id d75a77b69052e-4b31d8526bcmr50235301cf.33.1756634704038;
        Sun, 31 Aug 2025 03:05:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHb2lKo0iJNscirT3bEFWvA/JJp5w1yC0Ywe+zyzyU6LqWGRFeZc7bNUVhMX/eTELojDizGSg==
X-Received: by 2002:a05:622a:259a:b0:4b2:ed82:29d5 with SMTP id d75a77b69052e-4b31d8526bcmr50234921cf.33.1756634703397;
        Sun, 31 Aug 2025 03:05:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f6770d9a8sm2101064e87.40.2025.08.31.03.05.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 03:05:02 -0700 (PDT)
Date: Sun, 31 Aug 2025 13:05:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Dzmitry Sankouski <dsankouski@gmail.com>
Cc: Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: add mfd/max77705 definitions
Message-ID: <4atqwegfaq5ivrd6oypsfev3xpgfjhqw3hooxh4mit3fl23rtq@a5vbqtts46vv>
References: <20250831-starqltechn-correct_max77705_nodes-v1-0-5f2af9d13dad@gmail.com>
 <20250831-starqltechn-correct_max77705_nodes-v1-1-5f2af9d13dad@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250831-starqltechn-correct_max77705_nodes-v1-1-5f2af9d13dad@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAxOSBTYWx0ZWRfX4toscvpan2Nq
 OiL8LUrfJnPP/8xvq2Q8Zge+A4eWanGgOvTAbCExEiHtzMRApZQi/hsbKAzAKG4tF17EYQjpmyb
 8SxLRCozfE0s6FhLSGHoisJC8A0WTa3ZW3q8wK1tYe+E7GtJJzZsZ2lexLoOOrfD5FaK2DW5wz+
 mPYHxrs7/SpCC4Jd983njx6wuV2c+YUkAZX78hwyWQZt9C6kN8zTKF+TZyPU2wN9wG/wflarJwe
 P3XE0+SXrppZIXfb1VQ5jtpHK8w/wiDvs5PVSJLKCNBLRedjJvgB1QYY74AaRDiz1votPJpc3yW
 8vPVJcxQ4OA6S2+p3wZUrfxhPie6s7DrjpXolsTqLXb0W2vQckr9dBiI+mm/pgYiaSywoWSapsD
 XGCasgyy
X-Proofpoint-GUID: S_-6i_uBZGKUDPCjJxKXzKAh5Xc9tFZU
X-Proofpoint-ORIG-GUID: S_-6i_uBZGKUDPCjJxKXzKAh5Xc9tFZU
X-Authority-Analysis: v=2.4 cv=PNkP+eqC c=1 sm=1 tr=0 ts=68b41e66 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=pGLkceISAAAA:8 a=pNwjqshDI-g99FjbY1cA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-31_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 suspectscore=0 adultscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300019

On Sun, Aug 31, 2025 at 01:21:21AM +0300, Dzmitry Sankouski wrote:
> Add a dt-bindings include file for max77705 devicetree definition, define
> available irq numbers.
> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---
>  MAINTAINERS                        |  1 +
>  include/dt-bindings/mfd/max77705.h | 16 ++++++++++++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 020d7aa13188..82f500cf3c02 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -15166,6 +15166,7 @@ F:	drivers/clk/clk-max77686.c
>  F:	drivers/extcon/extcon-max14577.c
>  F:	drivers/extcon/extcon-max77693.c
>  F:	drivers/rtc/rtc-max77686.c
> +F:	include/dt-bindings/mfd/max77705.h
>  F:	include/linux/mfd/max14577*.h
>  F:	include/linux/mfd/max77686*.h
>  F:	include/linux/mfd/max77693*.h
> diff --git a/include/dt-bindings/mfd/max77705.h b/include/dt-bindings/mfd/max77705.h
> new file mode 100644
> index 000000000000..34fcf1642e2d
> --- /dev/null
> +++ b/include/dt-bindings/mfd/max77705.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * DTS binding definitions used for the MAX77705 PMIC.
> + *
> + * Copyright (C) 2025 Dzmitry Sankouski <dsankouski@gmail.com>
> + */
> +
> +#ifndef _DT_BINDINGS_MFD_MAX77705_H
> +#define _DT_BINDINGS_MFD_MAX77705_H
> +
> +#define MAX77705_IRQ_CHG	0
> +#define MAX77705_IRQ_TOP	1
> +#define MAX77705_IRQ_FG		2
> +#define MAX77705_IRQ_USBC	3

There is usually no need to define IRQs as bindings.

> +
> +#endif
> 
> -- 
> 2.39.5
> 

-- 
With best wishes
Dmitry

