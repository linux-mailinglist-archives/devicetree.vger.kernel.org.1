Return-Path: <devicetree+bounces-217346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E94EB57617
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 12:19:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 309B7200F6A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 10:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C665B2FB089;
	Mon, 15 Sep 2025 10:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="da0JSbhu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C8C82FB96C
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757931528; cv=none; b=qYm07wgudQ0wbKkx2qTM/LQNj43NhVrYqq5BUODBicKS2/gzlVQBnhJm8uFDwxCMBj4peJ1+lgs2ygMRt8DGPg0uehg/Mv2OgUS/HmPijXoICL7vUGx6HvpAeq4iK4oNdKvmhzGFY79U3cnE9sU8Ug5zeNJLHemM/UqNnuelfXU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757931528; c=relaxed/simple;
	bh=2DFmeklvao42pHIQMNAwiexVB+Ti6nsJ0npJbl0Lig0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=J/8vaCaRYYiWb/RnmvL+UQoB8oNVl36gJVi4m/OWZCF/+L92TEsF4wQrNn+y2QeJTVFyL+x0e97vAVlRU+wozfmRSpfH5q7lNJBB9FWqNE8kykvc1day2RA24hRV0CNSp+4GOSLFo1NnPaGAe/owcRun+7zhQfq+xXdZkWOMXyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=da0JSbhu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58F8FfBJ027143
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:18:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=55rSt8hh8LRp7D+XRwZ3HRX8
	gaT2aSzDULCuVkcpLrk=; b=da0JSbhutHhuvYdOrnSuP3WVs/M7F7kPfyjnQgg8
	pGmMsFBJ1B6++4IUsdS5u0rAH1qJCmgt/9L7GTWsypoNDJ5ghen9JKUfmwCecSRN
	RL/CHtmjZ1USdZIJldVUyXcUUF7gMRDV3GIIeCOg+CL1I8kIkSqxubPw/cLH6uJd
	d167DALSOkivr9vX+Ujk7RL4Aw8Qre8/GSR8uzswGZslhIsfZ/ALBRp4sFfqsFts
	OzAWz11rMTzHiwz7CQQiEuxI3A/k2PvAywkZnSu4b2zrc/Onbx1Srj3s/EqXFLIN
	rtTdZGoM/9/Hua8N6fIulSDP9q8akZKmL/6pFZ7VPLXcgQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495072mhk2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 10:18:45 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-7721c5d86e7so41158596d6.3
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 03:18:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757931525; x=1758536325;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=55rSt8hh8LRp7D+XRwZ3HRX8gaT2aSzDULCuVkcpLrk=;
        b=ciAFWtak+q/IPdFFtUIB6P7eJXb3qvU4c+9o3bijOF50A0wm4SRd73Rmmob3wPFG37
         SYsaEfviqIyWW6N2GfKTwab35kM3I+da0abgfnUtKgKMHDk3pFxTBAwDpX9vPhfjC12V
         mvY3SOJiMkS6lUrej7Nphb88Yl6EE2xoYKXDGH7y0NS/CV5HUD1g6aH/XttNVi5juZ7+
         ZedbL0x2WL3BrRemdtP8UAgOSVrvz98kDMGtIu0aZxrMn0GdGZpeiWJTNnHtFaTmn0d/
         IdRDDsxhrLLHlHZ82Ml8zal2rIs+sNwTcIGNh3UnBMNYQzcxQzoBu3xHE/bJgpcW3kMo
         84cA==
X-Forwarded-Encrypted: i=1; AJvYcCWuH/xvTMdvKMQZdLLJU6GkEGGQx5iL3heRLJOzASH8QFY7ZXiNaxxNr5BaxtYUzkEUKhZhpGmb6FYm@vger.kernel.org
X-Gm-Message-State: AOJu0YyIiV7bAf7zB/MyP2NuLfxsL3Vua2FQLkVis9qFzWo9/CJGBiRh
	C//mY0IDlGYRb96phmAJOZx3tH0+wqavhayFHxza5+B5RAReILZ1+hhF2ccVQCvcE/I9j+Pg3AI
	+j0rFlxsmWdcPNj37qEXZCDXRtqApAU+fm49TfhVIRTVVq665znXo5RMNFClCnVaH
X-Gm-Gg: ASbGncvEy6w557jXnxAKPtYjNiTtsX9Fib5nkU9GjyFv5p3005aAHXdXj+C5p/tX0Jy
	PG+ue0imy5NAxL177c/QtTcA1SLn3JDcKNE9aAt2Z18pdAlQ3pK6dapGcPeUnXBkldjufiV2QaL
	QWXOZytuEHEHyw6iuiJniI/usKV0eqJq9e5gDEKSnlXGza2MtL/RW9XwpJHHJCmB5cSRfyFdSUW
	l4pzHGxyMmzzgeV4vlcBUmZZPbop3lgS+nWHmnCPfFRjRU2x4GymSvdliplC8e3H86+/6DF8+2q
	OUIgEwUX+c2DFw1NK1t3HpoxhvHZtB+50W5MQjyC2/UIRRXvVlorMYVC0YsmRHQhN0faLug2/o4
	9ypNoWZLBuKZ/fiwYIAfyNjKdpjfBijXXeLeW7byKi8ZmD/ZIkdY8
X-Received: by 2002:a05:6214:260b:b0:767:a99:9652 with SMTP id 6a1803df08f44-767bc5e5489mr113847406d6.21.1757931524582;
        Mon, 15 Sep 2025 03:18:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGb0rsGhFRkV1wcbwpZkUhSb0Y79dOKiqbr59bDkqCwcyia5wF996ysW8fqVZME6pG5L6Q2OA==
X-Received: by 2002:a05:6214:260b:b0:767:a99:9652 with SMTP id 6a1803df08f44-767bc5e5489mr113847086d6.21.1757931524032;
        Mon, 15 Sep 2025 03:18:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f163f400esm27540601fa.23.2025.09.15.03.18.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 03:18:43 -0700 (PDT)
Date: Mon, 15 Sep 2025 13:18:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: fenglin.wu@oss.qualcomm.com
Cc: Sebastian Reichel <sre@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        =?utf-8?Q?Gy=C3=B6rgy?= Kurucz <me@kuruczgy.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
Subject: Re: [PATCH v4 3/8] power: supply: qcom_battmgr: Add resistance power
 supply property
Message-ID: <gk2ho7ugp35kb4x65meqsm3aufnry6srr4p7jspf6xyn7ywzkh@vd5ca7txjdk6>
References: <20250915-qcom_battmgr_update-v4-0-6f6464a41afe@oss.qualcomm.com>
 <20250915-qcom_battmgr_update-v4-3-6f6464a41afe@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-qcom_battmgr_update-v4-3-6f6464a41afe@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyNSBTYWx0ZWRfX4PSi+i4dhHjR
 6SDuqjD4vrGuxRpip0WblWBdTlhhptqAbW2J/LPTrJzoDSAeru/WnnV8wgNFY9i5EhJtRSKk9Xy
 HAxOit61S9yi8nNfZLaSfSTyURQA5rM3ICfRX4OeaIeg9anVQBtsA36//ffxrCXdGs6s2Xw8oZA
 9VL2QK4WLFzozL9fsE+9YsYLAEnAcJd9a118h+GHdco9fBpZ6u1DidT5MD81lkfzJo+G+wpW1gO
 Z0BBQ8GRmDWoRQp4djUHOR0py7r9W1LIl5//j7mtcgAthBAwO5Mkcn0/RzmZp0d5YU+J3CtBxbH
 JEVjWq0otRlZpV9JYTqn5+h5D1OJur8g5RXJWtH4sKrF2sNqF9NO3g25D5b6H3WYqOz/0NdiPoE
 58jMRfZS
X-Proofpoint-GUID: cldTxlUl_-P7vG_-Rrqunp9HJpgEirZ1
X-Authority-Analysis: v=2.4 cv=WcsMa1hX c=1 sm=1 tr=0 ts=68c7e805 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=4KYCil5nhH5hbAJYY60A:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: cldTxlUl_-P7vG_-Rrqunp9HJpgEirZ1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_04,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130025

On Mon, Sep 15, 2025 at 04:49:55PM +0800, Fenglin Wu via B4 Relay wrote:
> From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> 
> Add power supply property to get battery internal resistance from
> the battery management firmware.
> 
> Tested-by: Neil Armstrong <neil.armstrong@linaro.org> # on Thinkpad T14S OLED

T14S is X1E80100, which uses SC8280XP-specific sets of properties. This
patch changes only SM8350-related data. How was it tested?

> Signed-off-by: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
> ---
>  drivers/power/supply/qcom_battmgr.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/power/supply/qcom_battmgr.c b/drivers/power/supply/qcom_battmgr.c
> index fe27676fbc7cd12292caa6fb3b5b46a18c426e6d..55477ae92fd56ede465b32d6f7ed9da78ebd869c 100644
> --- a/drivers/power/supply/qcom_battmgr.c
> +++ b/drivers/power/supply/qcom_battmgr.c
> @@ -2,6 +2,7 @@
>  /*
>   * Copyright (c) 2019-2020, The Linux Foundation. All rights reserved.
>   * Copyright (c) 2022, Linaro Ltd
> + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.

Please follow marketing guidelines here.

>   */
>  #include <linux/auxiliary_bus.h>
>  #include <linux/module.h>
> @@ -254,6 +255,7 @@ struct qcom_battmgr_status {
>  	unsigned int voltage_now;
>  	unsigned int voltage_ocv;
>  	unsigned int temperature;
> +	unsigned int resistance;
>  
>  	unsigned int discharge_time;
>  	unsigned int charge_time;
> @@ -418,6 +420,7 @@ static const u8 sm8350_bat_prop_map[] = {
>  	[POWER_SUPPLY_PROP_MODEL_NAME] = BATT_MODEL_NAME,
>  	[POWER_SUPPLY_PROP_TIME_TO_FULL_AVG] = BATT_TTF_AVG,
>  	[POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG] = BATT_TTE_AVG,
> +	[POWER_SUPPLY_PROP_INTERNAL_RESISTANCE] = BATT_RESISTANCE,
>  	[POWER_SUPPLY_PROP_POWER_NOW] = BATT_POWER_NOW,
>  };
>  
> @@ -582,6 +585,9 @@ static int qcom_battmgr_bat_get_property(struct power_supply *psy,
>  	case POWER_SUPPLY_PROP_TEMP:
>  		val->intval = battmgr->status.temperature;
>  		break;
> +	case POWER_SUPPLY_PROP_INTERNAL_RESISTANCE:
> +		val->intval = battmgr->status.resistance;
> +		break;
>  	case POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG:
>  		val->intval = battmgr->status.discharge_time;
>  		break;
> @@ -665,6 +671,7 @@ static const enum power_supply_property sm8350_bat_props[] = {
>  	POWER_SUPPLY_PROP_MODEL_NAME,
>  	POWER_SUPPLY_PROP_TIME_TO_FULL_AVG,
>  	POWER_SUPPLY_PROP_TIME_TO_EMPTY_AVG,
> +	POWER_SUPPLY_PROP_INTERNAL_RESISTANCE,
>  	POWER_SUPPLY_PROP_POWER_NOW,
>  };
>  
> @@ -1174,6 +1181,9 @@ static void qcom_battmgr_sm8350_callback(struct qcom_battmgr *battmgr,
>  		case BATT_TTE_AVG:
>  			battmgr->status.discharge_time = le32_to_cpu(resp->intval.value);
>  			break;
> +		case BATT_RESISTANCE:
> +			battmgr->status.resistance = le32_to_cpu(resp->intval.value);
> +			break;
>  		case BATT_POWER_NOW:
>  			battmgr->status.power_now = le32_to_cpu(resp->intval.value);
>  			break;
> 
> -- 
> 2.34.1
> 
> 

-- 
With best wishes
Dmitry

