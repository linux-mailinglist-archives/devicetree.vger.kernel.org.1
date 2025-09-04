Return-Path: <devicetree+bounces-212906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E510B43F96
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 16:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5EE6A7B4A2B
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 14:49:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3012C3090DF;
	Thu,  4 Sep 2025 14:50:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nWBjnhvg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A09EC3090CA
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 14:50:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756997422; cv=none; b=kZjt3X1EYeEzKHK2tLReLYfXq9u/+KD3bJ8dLVTK+wfWDeaNE1cAXy3ZF11LfFGRLONR1Vdl1iw0fzixu7BlOYtryz/rR9j8b0gyA0Pis8khoQiRCXAQYhQMlOz4p70Ou1FjlLzHhV9rkRFgRMoyLQ/EXuyVJoU9e7sb/P8AZps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756997422; c=relaxed/simple;
	bh=alMbirdT3CCc6D7G4e583oLfyh6D9HJKmtifjlFhTOk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YXNXx2uD8kaouzl3gp05kUZ/ZcqnoFksaloD+pr1qtUpRyjTWJ0e10JekiLM2XeZtRlsjf5yNbQDcrGxUS314GhHqKUISw/xL1wszbMPJjerxUU2ihFfOeRSds9cXwH/dwqnX1qMitShkwTGoMUGs2T7g7mL8K4npAA4b5n3st8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nWBjnhvg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5849X8kR008125
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 14:50:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vEN3DVQPWnQ3YmNmi0dGVFvSE5AeHGCdQkQ8yWp6IEM=; b=nWBjnhvgBAlcyJEd
	8K6sQ67Jt1vV0mUBXuWNZB+AydZGmLwO7+mQn/QTdhJEmnNJuR8YBYCSvkHnhBuZ
	iDiuP60TvAkucuIN4zMJ/SqcgtBVS6qUZxVuk+s3d+YxKKcCov7Hrfjxu3V7F9US
	fBSVit+0cQzXoXHUBmuCosYJUyzi74tuK7wTIY2xFGsJ+CZIbq+4AsTrze4WRt7L
	xI8xGXNZbUYTX9Jzq64Mi8g7k84jVxUVyXdDiM1V9qzyr+Sawp1oiu9dANZ3CrrH
	xYMS9RrjcGUCXSS8jvCMAQ0/dt/CyIlh2VbcpsH2J+xFhdBMUi8NG5GW/fPHTXhc
	oRx9VA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjqshe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 14:50:18 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b4bcb1e32dso4459021cf.1
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 07:50:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756997407; x=1757602207;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vEN3DVQPWnQ3YmNmi0dGVFvSE5AeHGCdQkQ8yWp6IEM=;
        b=U4nzFKNODLEHYCbhl0fjc5MY22To1vKbdVUT7tfP6fVosSGNBzScXfOUHsaOrg0rgg
         ILHzXXMTJKbAFGV52gPDRnWJ1bnmSDaA+gX80MlikrG0qKmP3Gc6EfNmNwR0jV9I0qPF
         uzEE1sBxia9ioOUOcnPFAB7GORA217dkLlB6MIsBjuZD8DV4JO/07teSTFu+7ro7GQi1
         3QY0jP8NgIWebE0xb86IiKxwEW9AfyoDvoAEFiZiPQI4w+pvXAIBITPlZ04lOCloaBiG
         4zAli5KuGDj61fM4HbW7lTvn6X2DImXa53IzwF88Yi9yzXNjuseFNLxKrDaIy/9wG9g0
         BY1A==
X-Forwarded-Encrypted: i=1; AJvYcCUsBNs7gX0e6HGDi086FyFBXyVY6LhXdBopU/9VuRg9TqsdZa4vYX7hgJdMeMzxbabPQMifaxDN73mW@vger.kernel.org
X-Gm-Message-State: AOJu0YzuxHDyz95XC/ttIfo+QKzGerE7FECTNT73TL6QUHSN/tdP40NR
	4tsNiNuGsdlBKGkNjyM0/r1qUtzFQSg4upNcIU5KPhAQ2m7gV38hGQDv8AXHBzwg6uyfgZUg6zZ
	SHkL4Q4Khy0Q8APDVs3afpg9sL1emejAObxQumfA5pfqSKwcGe57dnLj+fpyB1bDf
X-Gm-Gg: ASbGncsxcOa6C5YuLO7mcbbv8cB+G47IgLmPctQdIy0mDVTwZjihjH9dvIQsKDpqTHr
	L9xezjufFrnoXTbhabE5KMhre6P+B9G9YlCKV55KHj0y1KwBp0GvUkwWMqDZFxIrZgPA5MmmvUw
	dyCWyuPL/365N22E0nlwWkkwNzNCejTt8pDZRncyw+w7cEW2Pa/InWeqgSjq3AMBN3vQv6pnIO/
	MwyLGSTp1xoUTP6l435gALpq1d2khlCq0D1gxImsAUTHS9e5BcEZ6GniTyFZDGoFAMOgSuonBWc
	4Dx3l2t1sMRqkp8K72EuNnIdmoa8ie2NclU3MwmbHND99+e+fmkvr+4NsRM6afKdzZanIOKk16p
	YPaK6LAhRwGoq8OYTMI4uPA==
X-Received: by 2002:a05:622a:314:b0:4b2:9c61:4925 with SMTP id d75a77b69052e-4b313f6f611mr170378071cf.11.1756997406606;
        Thu, 04 Sep 2025 07:50:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH6TDGPjmSsCamHewOM2+IFNcFZnByXwpc+6NwBdpVl4gFaguUqKR2wdfL7cEbd1fWAsWZrWw==
X-Received: by 2002:a05:622a:314:b0:4b2:9c61:4925 with SMTP id d75a77b69052e-4b313f6f611mr170377791cf.11.1756997405872;
        Thu, 04 Sep 2025 07:50:05 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046cd5c274sm375616366b.98.2025.09.04.07.50.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Sep 2025 07:50:05 -0700 (PDT)
Message-ID: <6501e5b4-9939-4dac-991c-7a2033cfb506@oss.qualcomm.com>
Date: Thu, 4 Sep 2025 16:50:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] i2c: qcom-cci: Add OPP table support and enforce
 FAST_PLUS requirements
To: Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>
Cc: Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
References: <20250904-topic-cci_updates-v1-0-d38559692703@oss.qualcomm.com>
 <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250904-topic-cci_updates-v1-4-d38559692703@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b9a72a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=scFqH3SFngUqC7XewS8A:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: ZZVuK_lBBfhxDKQl7jlkMiXPKbQmW3aR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX8ZTeZ2IBSurk
 t/9uCweeNHlqMOCiRaVtJXbP1ObYEw7kOVsUx6ydF659i3J/SOTiGhxe8Qd23tpuH0Knb+bhmap
 FmoM7JQ9keJMZuiV89DLMDPxapptlsBGRZ9CJSHGUgpF77Kx2xQxLCZQHIa1Twgk9dxvotUhhBP
 zipWMGefFaqN9h4mLIVDwuWXv/EogHoEypnRrHgey/GGhAkV/76jVfn5bqHQQPrBS/sy3MdW2ki
 McqGQ+7TX89XrqykPf84XOtjAURQBD/uoC931JDUWXEL8cDL70NIpEfsED+9LdUqvHJtbXoskZf
 NC7URUCpbdLo7kCQdZVozvimGjS7DkBZYkcBRfpafIztK/+djRRgvjx8zXy9e11EJZtYO9rZFPm
 /rWK06aE
X-Proofpoint-ORIG-GUID: ZZVuK_lBBfhxDKQl7jlkMiXPKbQmW3aR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_05,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On 9/4/25 4:31 PM, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> The CCI clock has voltage requirements, which need to be described
> through an OPP table.
> 
> The 1 MHz FAST_PLUS mode requires the CCI core clock runs at 37,5 MHz
> (which is a value common across all SoCs), since it's not possible to
> reach the required timings with the default 19.2 MHz rate.
> 
> Address both issues by introducing an OPP table and using it to vote
> for the faster rate.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  drivers/i2c/busses/i2c-qcom-cci.c | 33 +++++++++++++++++++++++++++++++++
>  1 file changed, 33 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-qcom-cci.c b/drivers/i2c/busses/i2c-qcom-cci.c
> index 74fedfdec3ae4e034ec4d946179e963c783b5923..d6192e2a5e3bc4d908cba594d1910a41f3a41e9c 100644
> --- a/drivers/i2c/busses/i2c-qcom-cci.c
> +++ b/drivers/i2c/busses/i2c-qcom-cci.c
> @@ -10,6 +10,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> +#include <linux/pm_opp.h>
>  #include <linux/pm_runtime.h>
>  
>  #define CCI_HW_VERSION				0x0
> @@ -121,6 +122,7 @@ struct cci_data {
>  	struct i2c_adapter_quirks quirks;
>  	u16 queue_size[NUM_QUEUES];
>  	struct hw_params params[3];
> +	bool fast_mode_plus_supported;
>  };
>  
>  struct cci {
> @@ -466,9 +468,22 @@ static const struct i2c_algorithm cci_algo = {
>  	.functionality = cci_func,
>  };
>  
> +static unsigned long cci_desired_clk_rate(struct cci *cci)
> +{
> +	if (cci->data->fast_mode_plus_supported)
> +		return 37500000ULL;
> +
> +	return 19200000ULL;

Well this is embarrassing

ULL -> UL

Konrad

