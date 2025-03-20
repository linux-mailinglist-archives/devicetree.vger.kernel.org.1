Return-Path: <devicetree+bounces-159276-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BF9A6A3A1
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 11:29:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9333188652D
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 10:28:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D0FA22423E;
	Thu, 20 Mar 2025 10:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h4cj1sGn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C179C223324
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:28:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742466526; cv=none; b=pvPf6EPo5A7cj3D1r+8dEyLh2w8cVz+ZcnQn4E8UAXyKAKnoGs7iXUplTE5gC7pAuRt9lKHqtCaf/O5VANMN7RdXT/v49VL8EtToyrFCdthQiFVdTitv1tk6Bc4apt4MBRcbWe8kBxGe0sVIncXILzeuAxMOSnty+6KyLDMhexM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742466526; c=relaxed/simple;
	bh=uKLOxDij7c7sdT8Zk1Ksoy8JUZVDpgomJWrglxeAbhM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=b9cGOCIkW3qxwiIUmgMSUy0ZUz0TKAKGLZCVm4kEkSfy4QpDhYQm61kP4CCL/tbnGIaNg0va62cmD4O2ZS32/yI+9FbzyLUmyBZAmhH/imvaUgAFePQBRhQZWSHkUF3Yu9EyuVbPCaLbugborGzTwHer9zRHUea/G5w8hBzvCpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h4cj1sGn; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52K6Yxj9019485
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:28:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	t7JCFxJENGct7M1n7Kf+6tvuHHB4HK4sMdAZpytvjcM=; b=h4cj1sGnX3jHFcpd
	Y/V7raEGTWPOS9mM35u/HRsKdiQTSCVklabyqD8TAGASorLC+Dg1/kC44VeoObuQ
	vDLZBz20Ebgb3lwitOAHGVcYqT88UgSNgqw8eZarU4esArZwCnGaDKzo7CZA5hRt
	GQRjwY4CulEsIhndQBRBwQlRUS1ImEgfHZ+YOgInELBwT7jU68wChIwYqHbHXQKH
	Do/nW565edG7cVdUXf0KdnxebtOsFkoVNQTmy1Hnq78DOVMX7SPuLg6i8CQS/5n3
	OsDhKN2gGzMW0351kW1ex3uvoxkNkhg0Z3RWvKfJ1Q1o+so5hrQdv0Qoxi2WuZTY
	Tc76Aw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45g3sf216w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 10:28:43 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8fec7ab4dso1326526d6.3
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 03:28:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742466522; x=1743071322;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t7JCFxJENGct7M1n7Kf+6tvuHHB4HK4sMdAZpytvjcM=;
        b=F21HpMS20F4Fh+dZRLGYvRPiZTuL++DSXZzX4hceI+VXemDSCwQ/Eqi8COXN2p08oG
         NUBAE6Jydx+vsQhk2MyyAEnkR2Cr2lm3ukMReKClOjprWZE2cxAimKaVSUMmb884vEOb
         3wybhdmsp1nom6l9MFd9EkOSbqG98wJiJpUup0VJxOuhzFr3HTGySzPcrEmSf/jEAiD4
         MGp3q3IqBJkaPsVKePtgMYJMuJn+7S8g7TvDzjCyPlZ4g2z/JH+lyEKGWx0MVJwMjlGC
         JJnQMI1O2PwxiPGLVPajLXSfcbANO9X2d3NhwvZiN4WVGDyl8sb/bEdAMVC5oN3wZ6lO
         RJQg==
X-Forwarded-Encrypted: i=1; AJvYcCUXA5SomUb9whvkqthxiSvbYnozPcmS9SdzZnBzGYopxZpuDZnVKdiQibNyCe76OyEyNMBNKmg+1ulp@vger.kernel.org
X-Gm-Message-State: AOJu0YzsSEWgayeBeBdj+aZhB8LE9gMqzskDuXm51kLhKT29l9d3g0tG
	iJYH3ma8OvSiQfcReBWh3AIQRsuLjPfIX2beDo4f8V4HDDxg3Z2WCixyoksx2IqMlaSPe40dNye
	LeweejkoGMTnNw90o5li5YVGLbl7J0AiqXtvEkyFIrtPfsmCAiwrDJhi2AS5f
X-Gm-Gg: ASbGncsRcoBf0obA2qD4zPzgHNRqVdFaaYI9+X1ekL4L2dkUb0q4VHGvB/tOSGzBnHL
	T4HeYMmfX2GPneayCQGdiZe11m2rF9n20AKm3aJmVjuf7IGZmTys1VKcV/1Meb6jfjo0eHb568s
	BboXPAh0O2nTT3KpP3DdWsuVSQ/EBSPgEzcdgCrGeKqhdRsg+TeYskuDANn2uwyTZby9c3hIc70
	JeFLoqk+vHrvCM8dPxs9IC+rC1p30q8GvxOMskwluRjb79Z0w0pIN1BwYXqQEzo22eyiCdCKxVW
	elP0iZ3ZDPQzMiHwmi5UEV/rIUMO5xLFpUaKA0TxLU9pkpT4nWRWHNt73HbMn7X0+hVVgw==
X-Received: by 2002:a05:6214:23cd:b0:6e6:62fb:3504 with SMTP id 6a1803df08f44-6eb2ba0c59cmr29712176d6.8.1742466522652;
        Thu, 20 Mar 2025 03:28:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENDiGX/C/TqtQC7A30JrTt6Srt5dzpSfvmRqIWtJNoV+GAAS2k4SYx2YUt3qrXWOs29AJnUw==
X-Received: by 2002:a05:6214:23cd:b0:6e6:62fb:3504 with SMTP id 6a1803df08f44-6eb2ba0c59cmr29711986d6.8.1742466522225;
        Thu, 20 Mar 2025 03:28:42 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3149ce9a9sm1138534066b.110.2025.03.20.03.28.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Mar 2025 03:28:41 -0700 (PDT)
Message-ID: <3b4c816d-d7e7-4029-917d-f519a75149d6@oss.qualcomm.com>
Date: Thu, 20 Mar 2025 11:28:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] misc: fastrpc: add support for gpdsp remoteproc
To: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, srinivas.kandagatla@linaro.org,
        amahesh@qti.qualcomm.com, arnd@arndb.de, gregkh@linuxfoundation.org
Cc: quic_kuiw@quicinc.com, quic_ekangupt@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20250320051645.2254904-1-quic_lxu5@quicinc.com>
 <20250320051645.2254904-3-quic_lxu5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250320051645.2254904-3-quic_lxu5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: mO1JzRAUkT4fYP0boLibIWxBafSMSwYg
X-Proofpoint-ORIG-GUID: mO1JzRAUkT4fYP0boLibIWxBafSMSwYg
X-Authority-Analysis: v=2.4 cv=R9IDGcRX c=1 sm=1 tr=0 ts=67dbeddb cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=0IcnB8eo5JocWn4U3IUA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-20_03,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0 adultscore=0
 suspectscore=0 clxscore=1015 mlxscore=0 priorityscore=1501 malwarescore=0
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503200064

On 3/20/25 6:16 AM, Ling Xu wrote:
> The fastrpc driver has support for 5 types of remoteprocs. There are
> some products which support GPDSP remoteprocs. Add changes to support
> GPDSP remoteprocs.
> 
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

This sounds like a good enum candidate

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

And this could become

*domains[FASTRPC_DEV_MAX] = {
	...
	[CDSP_DOMAIN_ID] = "cdsp"
	...
};

etc.

Konrad

