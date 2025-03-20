Return-Path: <devicetree+bounces-159277-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 62211A6A3B2
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 11:31:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0DA7A3B4BE7
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 10:31:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A9DE21CA12;
	Thu, 20 Mar 2025 10:31:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L6P5GH3q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8711C213E78
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742466680; cv=none; b=EH3DEfY3kpumzNoK3awi7tzSTdhf3tEBIozpxhez26dSDUWHjc/Fpi1fg4EfW5OPjfInpc/YTCtojtfdUYxJG7gpmGwB/75dMF4cj4xjnd8hKllp2ci0hq9Filq8qVgRlbUe7vj2NJ4GMkzBgYEay4qJy52NklXMpP5/wPKDuoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742466680; c=relaxed/simple;
	bh=Uqqfz4TCeUweBGm6MFD+Y1pFnY2abeb6RAXC/T0hx60=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g94UH1+8ad1wv1zTUjJByZqUAQmoSdND9lu0J8GuYhU53rI+Rolf+YRX27dqNk0E2crU0aITkZSxHTzESF3nZ9Y3f1GTLU9Hh+WzZ4ElHjmpEKYHltaB7YldBIdukjqynEI2kRZi76LuMxfyIDqfy0BGfKmJvaRo3K6dyhmTqx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L6P5GH3q; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52K6ZNxh025624
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:31:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	36UzwJlY8WygcJ7OC9rF2JL2H8lu5cJBcRlW3DTYlSk=; b=L6P5GH3qx3tT+NHD
	TiiNMbptXd57D0t0G3YIsUuDIonwQJmJCwX0aNydR8tE4PWbCwlcoBrkfozHHCk4
	dYb2ZMwkyq+SSSNYhV443jbyavl1C7XV7eiyXxPCq1TSQj4w4A6SSdvIz3g8sQX+
	D2wTR0YMVhkkU5Y6G/aZhT3IdY92iyFXGxsn2wTAtULWC/aTkP7RQ6iZbfgZx5x6
	tt7AvDOt7BtfWYKR71Lw0lVF4L42nFhfywWuZdgiE1YIE5CiLFwroj47Y9t7C+0A
	r7jUZNqqP7yLmZlJexJO24nL8GoLwD5IbX7C3TfdIww9saMdEs9NB1jXiEpEFrQT
	P7MLeQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45g15y2hpr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:31:17 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47708fd6446so792411cf.3
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 03:31:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742466676; x=1743071476;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=36UzwJlY8WygcJ7OC9rF2JL2H8lu5cJBcRlW3DTYlSk=;
        b=ZMWwTuG4M90U7i07Ms8StItjyFMkD0ZLPlAmJnJr9wmBRpM1wNKoDpZJz0F9jblsFt
         uaCH7j2j5iZHkyhHYdw5zBnkt7wwQTyZADU33GTGv/W2a+Lxyuvd1QJAJxLVkUJIg6nW
         li/BOj8KMWb6rhEGUtSMEU8xrgIobcGlAEGHZjFAeiulBk9CH3VdXSPFoRoKx/6EEc3t
         TWMcxeay7vYd8g6NYjNITR7c/4vlmiCtVKycbcqWeamyeM9rR0qm+xI69O1waEJcvqUP
         LfstYkhrS3Z67ToC9gdALQeJzp2XiqlwjIUpLl1yuViIDtg1fBxCSdbCe64YVZve2dt8
         ND8g==
X-Forwarded-Encrypted: i=1; AJvYcCUmlHHTf5tQ4BMzpwvNw5fM8gl1nhw0OX8GdfkxuAsFI/PCXacx1bWfmKjQldbgdLli8yGCH/+2JUYw@vger.kernel.org
X-Gm-Message-State: AOJu0YzaCXeoAFqjPKluOUCdYTTcoBxCqZP2xS3XJ6+XMdxaRQp7/eWC
	P8v0S4nMmTQnEc2ofMtjAOH69m70hB6ELTE+TA/I5F6Q8vUOC+WRqWzUHks0zDKdo5Jdo05BIFw
	Jw9Com0c/NdClKWKZuyIZ/1j4P4/1X88BwgE3q0fEmTJPtvm0DfBUmO5QIz21
X-Gm-Gg: ASbGnctjeBCKIsEWwB/KQtlY/4OZqP30gM2WioC2UfzhsRWXzEA2TPsJorJsbZkQQAs
	VL52wABt2KxpCbtA3rSaBJNX+nDVwqUDN0TJnZA0a0jGTKmiV2sDfEt3BtNWzu61vtW5MOyB9Qj
	A+lxOIYjRoCoGPwE++qs6Xb+VEDKkMcNJHZ0IkLbN07OtY7WcPuau8HsCwJ8W9QARQj6wg9jCQR
	pN8bhvqNMxMXjIX0cH+r2EWwi6lQQjjqLtyN6YxawFB2k5Zc6uf89u/RVE6ZkdRBkB2oQRlWCkF
	4O+lk93AHMLJCBPbvaMJyBXPLkk3W1VLNpRgYU4EPMDrDL0Z/g5poRJvVtUkS/caMsCGDA==
X-Received: by 2002:a05:622a:609:b0:473:88e7:e434 with SMTP id d75a77b69052e-47708385019mr33204231cf.14.1742466676093;
        Thu, 20 Mar 2025 03:31:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFIovFeuj/9Kdw2uplzLYek5LaMRqzFe5uQVLzBQNPcEO5ZEu7AMi81ywbHwodwhn2RNco2Ew==
X-Received: by 2002:a05:622a:609:b0:473:88e7:e434 with SMTP id d75a77b69052e-47708385019mr33204031cf.14.1742466675771;
        Thu, 20 Mar 2025 03:31:15 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e8169b1602sm10459819a12.42.2025.03.20.03.31.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 03:31:15 -0700 (PDT)
Message-ID: <f8d12312-dfb7-481c-a025-dd4c6d3aa268@oss.qualcomm.com>
Date: Thu, 20 Mar 2025 11:30:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] misc: fastrpc: add support for gpdsp remoteproc
To: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, srinivas.kandagatla@linaro.org,
        amahesh@qti.qualcomm.com, arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, quic_ekangupt@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250320091446.3647918-1-quic_lxu5@quicinc.com>
 <20250320091446.3647918-3-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250320091446.3647918-3-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: wZ0FDCdXi2__fpZIJkByY2qAhKTwkAd3
X-Proofpoint-ORIG-GUID: wZ0FDCdXi2__fpZIJkByY2qAhKTwkAd3
X-Authority-Analysis: v=2.4 cv=VaD3PEp9 c=1 sm=1 tr=0 ts=67dbee75 cx=c_pps a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=98RdHtkJ8WjIMYe7nFEA:9
 a=0bXxn9q0MV6snEgNplNhOjQmxlI=:19 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-20_03,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=999 phishscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 mlxscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503200064

On 3/20/25 10:14 AM, Ling Xu wrote:
> The fastrpc driver has support for 5 types of remoteprocs. There are
> some products which support GPDSP remoteprocs. Add changes to support
> GPDSP remoteprocs.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
> ---
>  drivers/misc/fastrpc.c | 10 ++++++++--
>  1 file changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
> index 7b7a22c91fe4..80aa554b3042 100644
> --- a/drivers/misc/fastrpc.c
> +++ b/drivers/misc/fastrpc.c
> @@ -28,7 +28,9 @@
>  #define SDSP_DOMAIN_ID (2)
>  #define CDSP_DOMAIN_ID (3)
>  #define CDSP1_DOMAIN_ID (4)
> -#define FASTRPC_DEV_MAX		5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
> +#define GDSP0_DOMAIN_ID (5)
> +#define GDSP1_DOMAIN_ID (6)
> +#define FASTRPC_DEV_MAX		7 /* adsp, mdsp, slpi, cdsp, cdsp1, gdsp0, gdsp1 */
>  #define FASTRPC_MAX_SESSIONS	14
>  #define FASTRPC_MAX_VMIDS	16
>  #define FASTRPC_ALIGN		128
> @@ -107,7 +109,9 @@
>  #define miscdev_to_fdevice(d) container_of(d, struct fastrpc_device, miscdev)
>  
>  static const char *domains[FASTRPC_DEV_MAX] = { "adsp", "mdsp",
> -						"sdsp", "cdsp", "cdsp1" };
> +						"sdsp", "cdsp",
> +						"cdsp1", "gdsp0",
> +						"gdsp1" };
>  struct fastrpc_phy_page {
>  	u64 addr;		/* physical address */
>  	u64 size;		/* size of contiguous region */
> @@ -2338,6 +2342,8 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>  		break;
>  	case CDSP_DOMAIN_ID:
>  	case CDSP1_DOMAIN_ID:
> +	case GDSP0_DOMAIN_ID:
> +	case GDSP1_DOMAIN_ID:
>  		data->unsigned_support = true;

There's a comment above this hunk that is no longer valid:

'/* Unsigned PD offloading is only supported on CDSP and CDSP1 */'

I would say it can be removed altogether

I would also support renaming "unsigned_support" which is very generic to
something like allow_unsigned_pds

Konrad

