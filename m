Return-Path: <devicetree+bounces-256010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 027B2D2F993
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:33:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4432430A92AF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 10:32:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1740635CBBA;
	Fri, 16 Jan 2026 10:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iv6JwJfA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pnq5QjR9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B77B13612CF
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:32:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768559528; cv=none; b=sPv3Kgqpv/gcgfgkA7tmENwUn8XLJtAuj/3Gbdqaom6VpIkT7hTjv6y3L2E1GilK8EtUs0szFhLk5iUsm5o0daJvY0wOlA0ruZyDlsdrg4X+jJ+5EqaBDPtYXjJy4mx0ZDGLYVvKFZ4T/fn9Wa/2xA2oy+f3j3Gfu1GLa9Fhnw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768559528; c=relaxed/simple;
	bh=/Cx7V5d/qObJUyBY9jlVvQ8ZZP50XCxdpJR7+g4EbCo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Pl75wVBTckgNwFbYy4s2kFWrtr+qqrphVvdFliv2nJ8Y+OBUqSXxSAWHPPdOiQb/55JDfob9v6G+Z9uSn5XjBiqttqqBT51PwPDNQs+RZ3AAl1Ay8L8UQfWB7UkiGJrIdBebKnDKMU7imb/uFoQTJVIVOfdgBfFvT26CxnhxvN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iv6JwJfA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pnq5QjR9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G86JKd3192448
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:32:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	952Y3ub3hNvwTYEtHfS96ADhtWIoX8HVuHXXqCwpINc=; b=iv6JwJfANV98Tvl1
	LQm81yzPFtLSjzBMX9cTKqZSEhVr/Kwfp4UNegqU6wZG/tsaRUUR443ordZzO8s7
	RhJ5ByFbwrXZm7Fp9mjRkg0aPjK4EALl8HuajU57sLHbn8ednQQbvvNn4zuJ5Nap
	FaxgbbSIdrX3Lb3HNWrOh1pHYo2MoeGVgHjLUKDxWZ3y0mwESqF6DFnbIUcCsoHy
	4ReSw5HlIjHKzMYL6i6RMeeiiB8psZZKXAPCRzFRf74Iw+tHyNrqIQ22yzfw+yD4
	0DjCpVTkECsJUiUHZkKqC+vrhx34MYW4VTnVR+CTs9I3EAPIHdtrYOxuF/ELJeCF
	P2S0aQ==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq968htmq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 10:32:05 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34c38781efcso1523310a91.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 02:32:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768559525; x=1769164325; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=952Y3ub3hNvwTYEtHfS96ADhtWIoX8HVuHXXqCwpINc=;
        b=Pnq5QjR9FZXo15nhhAZVE1XTBx1pPlBarGAYQe2mLmGwq+NIfLgliGBoHVKPXEu/ZC
         cMOofyRmzCfGS8b0cGa+gc4SRLov4qHEyDyitvIWFFedtXgsUVd59bG9f9PjTUz3Ndqw
         6NeSy/Cvxy6ZpAKkUjiPim99DFxfYdteRCbEWxvhwoTg9G3zOhpINsQBwFHp0X3/5yej
         +1/X0uAs0pzq76RxZWtK7NLI7pRQnf8LkLTusrs98V0QjLKww2vi0DeUA0zsTHLhsCUH
         vFuI1CRs/V/m+KwHOkrF45tBNsqEkHEjzm8m9bk8AXCVrQb7iZL847c8Y7M7AqHbn15c
         RZUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768559525; x=1769164325;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=952Y3ub3hNvwTYEtHfS96ADhtWIoX8HVuHXXqCwpINc=;
        b=ftbr80fjtv8arV2UXsliAW00H+layL3s8HjtBUUnc6xo7GgscqJUTiXGj0JxqZkOdT
         z0L6qnVIsE6vXQcteMLOUgXXniWwVl30TKPFWH/IWvVUaEjkmmw17SCSrT8O0ukyyTlP
         lLs1gbPFPEhM6EMdZ0TRu/fguLgn1Iy52UkbBskSHbNmL2XMxo9Ikd9iTbYp53qcDo4k
         jxcuUwuHFHsMzTrQUkYpZOLuCI0mexOMK0+yLEEmWqiNfdc5As0Rh+9N19VQXP9lp/WA
         Koc3Loxrh0UB5RPFr+5RdDL1dE+EzWb4mJ3ZVpWnm2onwrLaY0s0K+tStVc3/J49pxCp
         FtzA==
X-Forwarded-Encrypted: i=1; AJvYcCUQ7n1Ml+od2T9JCT6hzshVbye8O9OppdteV2WEQU+TvGptAbqfcX0BnhQQB/QQF1SLFcC4S98s+SOC@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpqr2eOeb+Itctk1QaHQZXn6vWHlePtyDW2dI73GwD9bjHmO5C
	pRtMnxIi1/T+6HgA6Kzb31LV5D/Pl4wHnQPuv6+bLmWFKvYABtqZeeUmEhaq9ygwwGfbBJCNiWy
	6Nji3Dg8OnmEdW0kY/GmbIqqq6K8j5NzJeTHXzxvk9EFql9QZpds1ScJV8SMI3Z1Z
X-Gm-Gg: AY/fxX5I6twQ4Ik0QFJ2BTz+vw87tnjZcUAZ4TH3pQUylDXh64R1l5Mb9ugWFoOxpcJ
	tPOrQa+oJQ0OIh29hfXDZ3kttJMo4TbOPfmlgF8TntOeoBIf5ZfpxhdegOJo5tJVdPE93g6/6/0
	EcKDvExOkIyyfD/K8Lh6lcj3HvTLjx2o3RcdQnPfHsHTZYFg1rKx08Eq2E5P1mAePD8ITU8kEd1
	mPlGYN2y6EuTCdMlO5gzl4Mzxpko7WvxVkTzvPrzhPkPdBObirHLSRQFBYkO42z6b/m1ieErBBs
	s2C33nYTDAZZxZtvTxVDG5JLa638iMBsLBCoGtRZt3B7Uuqnwge/SIUMlPvpWTn3DZUwtFRec+y
	dMTZF5ZRyOlkQsMOUbmNJFeY3tg9Sn8s2zF3qqyng6g==
X-Received: by 2002:a17:90b:180c:b0:349:8116:a2d9 with SMTP id 98e67ed59e1d1-35272f96be6mr2269132a91.19.1768559524733;
        Fri, 16 Jan 2026 02:32:04 -0800 (PST)
X-Received: by 2002:a17:90b:180c:b0:349:8116:a2d9 with SMTP id 98e67ed59e1d1-35272f96be6mr2269111a91.19.1768559524275;
        Fri, 16 Jan 2026 02:32:04 -0800 (PST)
Received: from [10.0.0.3] ([106.222.229.125])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c5edf24dd2bsm1763003a12.10.2026.01.16.02.31.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 02:32:03 -0800 (PST)
Message-ID: <9dbabf2f-e2eb-ffad-7cf9-f452a10e7628@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 16:01:58 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v4 3/6] media: iris: Introduce buffer size calculations
 for vpu4
Content-Language: en-US
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
 <20251210-knp_video-v4-3-8d11d840358a@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20251210-knp_video-v4-3-8d11d840358a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JNg2csKb c=1 sm=1 tr=0 ts=696a13a5 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=blWSk0AuXjsE0o78ys1YMg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=AadUnATRwRICCIMr-X0A:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: v5UuFM_szClolFcwNRpK5hZhe3Q8k6AT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA3OCBTYWx0ZWRfXwJpGrYJDBX4B
 r6NYcpVnvFtAOc+PsMYOmgutx9lIwOwwWPKCF/VijbySIuRkCiv6C46kh7lEidAwniI8VaEeAyq
 nzOKuMQ+1+9sWvEdEj79+wiwRbxka95fm1fqF2cE7DNWsiBA64NukRLYTYa1NDauIJ5NXjl/S9H
 BXXWy0hQU1WeOiFwz0XHssn/XDJ74nHMXO8sE4LFUs1mvG1sfbuF3TQENj7zwbY310gaqbVHD1e
 4nFuoHBncOx2GRI5/XJYdED4kcW10Apo5ARFr7d4eQtj0l99HGHDhI83YCIQ1U3LS+GP9kHovQw
 AZaMMBEcVTz8E3KLLXeZhH5PrBViNsUUUQ1O6FWNBtnpUOTgBlw9qDTD7f+6NE7EVfkzco+rwYa
 6CdqBfh5GCtcemY1qPqMMFbrUcWIpLQOcAi1y4FeoZnLEemN6NMhX0etkF7u6y+pv2MycmhDNdj
 a0gB7erANHGp30OFMLw==
X-Proofpoint-GUID: v5UuFM_szClolFcwNRpK5hZhe3Q8k6AT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 adultscore=0 suspectscore=0 priorityscore=1501
 bulkscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160078



On 12/10/2025 6:06 PM, Vikash Garodia wrote:
> Introduces vp4 buffer size calculation for both encoder and decoder.
> Reuse the buffer size calculation which are common, while adding the
> vpu4 ones separately.
> 
> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/iris_vpu_buffer.c | 342 +++++++++++++++++++++
>  drivers/media/platform/qcom/iris/iris_vpu_buffer.h |  24 ++
>  2 files changed, 366 insertions(+)
> 

Reviewed-by: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>

Thanks,
Dikshita

