Return-Path: <devicetree+bounces-122240-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C76299CF4C1
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 20:23:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9108C289CE3
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 19:23:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95C4D1E133E;
	Fri, 15 Nov 2024 19:23:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="O9AQRPON"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF1DD1E1049
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 19:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731698591; cv=none; b=HYYlf4VeySd1/ZBQ2GQsgVnK4kDIm0f6wMtY/WCq08fB8z5OsMF1bLrmMiLucAfRMkgtQcABB+2ARb6BT+Ai1+JwfwCh2YElj2C0kwIIYawOqK0OUzHwLU4Xlsg/1s2QgmseC2wvsqpjRtZZ71zAGQL0SLR1vAf3jK9KXPfL0dY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731698591; c=relaxed/simple;
	bh=0ugwYsMiPjIzE3XO6yj6SmDSHCV6ux2FxLlF975nzOc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cTP6lYsxfLXVgnDERAON9NXPoiOkaNwzPjSoLPcDe3mYdzmqXBfvzR2d7/LfWQWKfvnYCcxduGJVILw9cvITZLchsIPhu1bOYnYhvsck4r/8kJJ+Hbs5nBCzNel5IYhUmIH57xD32M13TF+CRAAlM1dMDgfQ33VnBCS+SFeLT3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=O9AQRPON; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AFIaeFv016915
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 19:23:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vQzNcm9MPebrurEXRmoO+0JRCZ5y5XJ1U7A64WaIO54=; b=O9AQRPONyF+IU8e1
	sX8WQubaMBWfkr/q774TjLs4rcEFmb5VHPMyxL9eoItXv44e/4ve0zi1NlQZrXBh
	nmsirgnss8GovmTniEqLVSCtl4LlGYJSg+j/SL4mv8i39XWsGt+Lse+0gnap4JXK
	84ywbk4ruaOk3KYuRXvDmUXVgdJSc6I1MyAleIa1AHjrjW43NGKpovaUgotIhmmq
	tLrmbKXd/EouD502jy4k2XjsvXxrElgur1Fa3r99cbS+bkkKDNIIUQkgdGWUTUf7
	tMLQkatyDp8OXVo5R9X+OV0Y45AK+LxsyHwGqqAPOmCrjusIylHhMms5/CwkeHVF
	fzFAdQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42wm75v54s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 19:23:08 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d3f929dcfeso4727806d6.3
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 11:23:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731698588; x=1732303388;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vQzNcm9MPebrurEXRmoO+0JRCZ5y5XJ1U7A64WaIO54=;
        b=bdg2PABPric4Ek5S5bycSGhUdPhAOrJeYhjW51wFlPtvtUwKXM3OPN1hcxkF+pJBZc
         OmE8BiHyhj9LoMP1xGx/qmzik8Hf5tTFtEo+M4W6CLkJL53H0oB72GU83q1IDVOk3/MB
         uSDnd9+a8NzQMwBkBn1yJ2rKZ9xtXT6fgJ2WjbavtDhp+PP+oG3D4140Af2g8ZdK+bkp
         DEiZ34SifkBEDtldcuHGHmBQK8gFZHdAgqR1VXp1wRqA7bQk9rayM0cSj28zbhkPCGJL
         hX6uEV5KVmZb6t/NH3nT42vugfyjlCuLiSG8KX0QEOroDCp2PE0deiGqEQsMs5O/3X8D
         vICA==
X-Forwarded-Encrypted: i=1; AJvYcCWioDkQyiX7LwCKtVDzPdOArCy/NNF4ot41K2Sd4qw+sA/60w3yBbhj66ZQcQj4/+bPkhWVelCAaYi+@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7+8yJt2BXlUPhzARdDbExNQBsZktjdbj1uwRNZWiQMCVp1tW1
	Li2/2ppyMgUZBTTRbJX5C5qOet7yqMeKmR8b6tvwY9NiFRNqGTG+CpnWFgdyJyakCjKQo9azuVg
	oojusLdMEkPjQ/px9MA/f9Or/eFI3dXFtdmR4c8GXfG+CSafZ+wIYR6ZGxQiA
X-Received: by 2002:a05:620a:d8d:b0:7b1:aeb3:8cc8 with SMTP id af79cd13be357-7b3621c7d95mr233831785a.0.1731698587743;
        Fri, 15 Nov 2024 11:23:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEjzrzD6ZAVyYrWwmcz9xTYFtSBD7Vx63QI4phyNsR8JT9avb0i4h9YwIrXteSGtjIrVPNcpg==
X-Received: by 2002:a05:620a:d8d:b0:7b1:aeb3:8cc8 with SMTP id af79cd13be357-7b3621c7d95mr233830185a.0.1731698587348;
        Fri, 15 Nov 2024 11:23:07 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa20df1b5eesm211019666b.26.2024.11.15.11.23.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Nov 2024 11:23:06 -0800 (PST)
Message-ID: <87cc1f1e-85d2-40cb-b3b3-8935004f4f98@oss.qualcomm.com>
Date: Fri, 15 Nov 2024 20:23:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] dmaengine: gpi: Add Lock and Unlock TRE support to
 access I2C exclusively
To: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>,
        konrad.dybcio@linaro.org, andersson@kernel.org, andi.shyti@kernel.org,
        linux-arm-msm@vger.kernel.org, dmaengine@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org,
        conor+dt@kernel.org, agross@kernel.org, devicetree@vger.kernel.org,
        vkoul@kernel.org, linux@treblig.org, dan.carpenter@linaro.org,
        Frank.Li@nxp.com, konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        krzk+dt@kernel.org, robh@kernel.org
Cc: quic_vdadhani@quicinc.com
References: <20241113161413.3821858-1-quic_msavaliy@quicinc.com>
 <20241113161413.3821858-3-quic_msavaliy@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241113161413.3821858-3-quic_msavaliy@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: t1vKpTyQ69AnIKBdbbx6YOaJOzXswG6b
X-Proofpoint-ORIG-GUID: t1vKpTyQ69AnIKBdbbx6YOaJOzXswG6b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 mlxlogscore=999 spamscore=0 priorityscore=1501 bulkscore=0 impostorscore=0
 mlxscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411150162

On 13.11.2024 5:14 PM, Mukesh Kumar Savaliya wrote:
> GSI DMA provides specific TREs(Transfer ring element) namely Lock and
> Unlock TRE. It provides mutually exclusive access to I2C controller from
> any of the processor(Apps,ADSP). Lock prevents other subsystems from
> concurrently performing DMA transfers and avoids disturbance to data path.
> Basically for shared I2C usecase, lock the SE(Serial Engine) for one of
> the processor, complete the transfer, unlock the SE.
> 
> Apply Lock TRE for the first transfer of shared SE and Apply Unlock
> TRE for the last transfer.
> 
> Also change MAX_TRE macro to 5 from 3 because of the two additional TREs.
> 
> Signed-off-by: Mukesh Kumar Savaliya <quic_msavaliy@quicinc.com>
> ---
>  drivers/dma/qcom/gpi.c           | 37 +++++++++++++++++++++++++++++++-
>  include/linux/dma/qcom-gpi-dma.h |  6 ++++++
>  2 files changed, 42 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/dma/qcom/gpi.c b/drivers/dma/qcom/gpi.c
> index 52a7c8f2498f..c9e71c576680 100644
> --- a/drivers/dma/qcom/gpi.c
> +++ b/drivers/dma/qcom/gpi.c
> @@ -2,6 +2,7 @@
>  /*
>   * Copyright (c) 2017-2020, The Linux Foundation. All rights reserved.
>   * Copyright (c) 2020, Linaro Limited
> + * Copyright (c) 2024 Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
>  #include <dt-bindings/dma/qcom-gpi.h>
> @@ -65,6 +66,14 @@
>  /* DMA TRE */
>  #define TRE_DMA_LEN		GENMASK(23, 0)
>  
> +/* Lock TRE */
> +#define TRE_LOCK		BIT(0)
> +#define TRE_MINOR_TYPE		GENMASK(19, 16)
> +#define TRE_MAJOR_TYPE		GENMASK(23, 20)
> +
> +/* Unlock TRE */
> +#define TRE_I2C_UNLOCK		BIT(8)

So the lock is generic.. I'd then expect the unlock to be generic, too?

> +
>  /* Register offsets from gpi-top */
>  #define GPII_n_CH_k_CNTXT_0_OFFS(n, k)	(0x20000 + (0x4000 * (n)) + (0x80 * (k)))
>  #define GPII_n_CH_k_CNTXT_0_EL_SIZE	GENMASK(31, 24)
> @@ -516,7 +525,7 @@ struct gpii {
>  	bool ieob_set;
>  };
>  
> -#define MAX_TRE 3
> +#define MAX_TRE 5
>  
>  struct gpi_desc {
>  	struct virt_dma_desc vd;
> @@ -1637,6 +1646,19 @@ static int gpi_create_i2c_tre(struct gchan *chan, struct gpi_desc *desc,
>  	struct gpi_tre *tre;
>  	unsigned int i;
>  
> +	/* create lock tre for first tranfser */
> +	if (i2c->shared_se && i2c->first_msg) {

Does the first/last logic handle errors well? i.e. what if we
have >= 3 transfers and:

1) the first transfer succeeds but the last doesn't
2) the first transfer succeeds, the second one doesn't and the lock
   is submitted again
3) the unlock never suceeds

Konrad

