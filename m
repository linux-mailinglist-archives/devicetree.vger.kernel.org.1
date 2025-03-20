Return-Path: <devicetree+bounces-159370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B90A6A7EE
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 15:07:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 058813B07FE
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 14:03:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69C021D7E5B;
	Thu, 20 Mar 2025 14:04:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SVy4NEZ9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C60AD21CC6A
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 14:04:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742479446; cv=none; b=YcAK6sYOddEZLEs6AZFsP6P06ynIZQo8fOCEpMDNVKLuZ+nv8U3guF0GdH1m+mPww+wQg+84PTBaJR6/VwSfNGVzPlTJw1GHbaeO+6YhJXulUbpGjn6vxTRKcLjeZb6eW1OD48AIbKdCnOd2hVvNh26KOOML5br8lqZc2VBkKiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742479446; c=relaxed/simple;
	bh=58JkKNNJ4DFi2Sc9wU2rMgtgN5ne21L0pN3nrl/8cW8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MX1N6qih6q0GHBbB07Sgox5AyBtxdv8d+kaidCDhJt64yWErSM2+1+xQCU3W9EIs0+GIXEzwa/1+LB92guV8sZYaXm3LKJlN0iLOyrfVgPVgibuSeBqDUSlSd6sIFgNrxDkY0jjVY3gkw2LvZY204vxudMX8pZ3HxbFoKinPXXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SVy4NEZ9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52K6Z7SZ010956
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 14:04:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aZG69Gb8Rg4wqYE5Zlnz4YPU
	9LD6EgYlhsjK/lMjlgo=; b=SVy4NEZ9sglsWOcMgSjQOoDZr1kZCTmEYcdSMVgl
	PSB+nu41uaoDbBenDYAAkjg0oImG36nv24uaZkWiE0oytIgh1hmqSmgzfUA5218Y
	MUQ+CLkd628ynOqoj42fH6uagIizLUl3qKlHvSMqXizlRaI66h/ikZsM10SJLEhU
	lnLM8azmFFlH4vQ/HJTVP2RtPtOUTd5yo6hb1vNEpL6LF9ItzjWJZr1G0DYXRv5Y
	ROVJeoeiVI4BvwhEpzaeSvwi8YSc/+JP6fbBTDQbc014GrJJ06t+s1T7/y2ufq9Z
	cA7abPgq2USRDPAHSVGuDmgzlaz1wdsDgHJMJr9CrEn+wQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fd1dpkgq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 14:04:03 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c543ab40d3so137662085a.2
        for <devicetree@vger.kernel.org>; Thu, 20 Mar 2025 07:04:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742479443; x=1743084243;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aZG69Gb8Rg4wqYE5Zlnz4YPU9LD6EgYlhsjK/lMjlgo=;
        b=PguSrPF6UFe6iOG3g95O3TAPpxmpi73KtxJ61rI4vMZSCnRlSc59AxraG+ako0kbtp
         MIIsDo2DMXVv+sS1VT+U+QPfKZEc/KBplGXepW0QQ/6osovlm5hd/yAQA6RiclYovZWF
         LdLlNGna1SBlaRBoESmsiIvDsPLw3NSw6DDSdMlkiHrSsP+f0K0alZFkq0fHF99qjZPR
         np8OCZ5uS79gtHAqOcMF7FWdegFM+8DnVNv/R9WkN2S59PP/KTFq6FSiu1frGWZ4bfJg
         ncK0BZmAAyVmqdZSXQWKcw9MzWG0TLCKlPFtXiBSU3qPtWnuAw+jqUkJCB1HFt5axGaB
         uOoQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUYnQjDoy6IcClrOqX6o3W3S8TUy6pSHLqEwMo4wM9DRcEDBLZel29JjXnUFF1TPGV35kQ86U/YKDg@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1BHh1k9HIttwbZfwwn8NlUTJZj36xluAPUWK61Um/q4/i4cTO
	w/nrJJYTCOfm7mu0efCKekxt4fsygOb4ssgk6Jmkoviyrdga7uiG0VF2NY5ojfmzzomAE6lIgRr
	nFD6bubtWmrWZB/f1fsCpKr+Cop1MM3V8qfQufWIKE9UH6fMWRWNVea6rvgzy
X-Gm-Gg: ASbGncsYCWBLrmJTgaehsOV6QnxlrIqnBsxomFhGkxhpiVl61vLKyieKISmQ/bOI/Pt
	RJaJtNZjp2/Ly+qxGhbgU9wf6Rl5tFpg/2xpxkbHPW00dpULgrNYCjaS0ad9Vp8tnZkQo5QKzgs
	knidbMqwoo326EeWeSTf7ab8Bx1xqGSlMQkP09Rmfv/DpicRyZy6sI+Sv3dI3elCZBaf/4xI4ig
	7IXpJc7c5GkxuDoneSE5+Bhc4LBdKx38bGXN6ZO8G9Hh4jeuSMX3DSfiA9v3KeFQirZrMzeluGD
	Q1IL0ZkwqFNgmfWUDNz4wDmJ8xRk51ZBMf+mlkqsfdyMeKkHtFCdt7Bbo+g7AYVg7B4fDlKC4vv
	WFRI=
X-Received: by 2002:a05:620a:40d2:b0:7c5:79c6:645d with SMTP id af79cd13be357-7c5a8397faemr886720885a.11.1742479442426;
        Thu, 20 Mar 2025 07:04:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGxrSjeqF6bvbl3He9tiF4dKDPJLyxqjGi9lLtRwtFa5vJGHE/F4XSyDTZNU+YV9hEc4s90iw==
X-Received: by 2002:a05:620a:40d2:b0:7c5:79c6:645d with SMTP id af79cd13be357-7c5a8397faemr886713285a.11.1742479441855;
        Thu, 20 Mar 2025 07:04:01 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8853bbsm2208705e87.204.2025.03.20.07.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Mar 2025 07:04:01 -0700 (PDT)
Date: Thu, 20 Mar 2025 16:03:57 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: srinivas.kandagatla@linaro.org
Cc: peda@axentia.se, broonie@kernel.org, andersson@kernel.org,
        krzk+dt@kernel.org, ivprusov@salutedevices.com,
        luca.ceresoli@bootlin.com, zhoubinbin@loongson.cn,
        paulha@opensource.cirrus.com, lgirdwood@gmail.com, robh@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, perex@perex.cz,
        tiwai@suse.com, linux-sound@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, johan+linaro@kernel.org
Subject: Re: [PATCH v2 4/5] ASoC: codecs: wcd938x: add mux control support
 for hp audio mux
Message-ID: <rdvsnxuc6by6sci56sh7thzpxo5cqi7q24fnmc7hi5yrfszwrg@kqjpiilko3xo>
References: <20250320115633.4248-1-srinivas.kandagatla@linaro.org>
 <20250320115633.4248-5-srinivas.kandagatla@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250320115633.4248-5-srinivas.kandagatla@linaro.org>
X-Proofpoint-ORIG-GUID: pEi-Gt_pMXZzL3gScqg3GXbqOkSMmL9O
X-Proofpoint-GUID: pEi-Gt_pMXZzL3gScqg3GXbqOkSMmL9O
X-Authority-Analysis: v=2.4 cv=T52MT+KQ c=1 sm=1 tr=0 ts=67dc2053 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=KKAkSRfTAAAA:8 a=O8kJzBLDCMT3sX5uReoA:9 a=CjuIK1q_8ugA:10 a=Toojp5lMUUUTO6xlXwhV:22
 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-20_03,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 mlxscore=0 clxscore=1015
 mlxlogscore=999 lowpriorityscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503200087

On Thu, Mar 20, 2025 at 11:56:32AM +0000, srinivas.kandagatla@linaro.org wrote:
> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> 
> On some platforms to minimise pop and click during switching between
> CTIA and OMTP headset an additional HiFi mux is used. Most common
> case is that this switch is switched on by default, but on some
> platforms this needs a regulator enable.
> 
> move to using mux control to enable both regulator and handle gpios,
> deprecate the usage of gpio.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  sound/soc/codecs/Kconfig   |  2 ++
>  sound/soc/codecs/wcd938x.c | 38 ++++++++++++++++++++++++++++++--------
>  2 files changed, 32 insertions(+), 8 deletions(-)
> 
> diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
> index ee35f3aa5521..b04076282c8b 100644
> --- a/sound/soc/codecs/Kconfig
> +++ b/sound/soc/codecs/Kconfig
> @@ -2226,6 +2226,8 @@ config SND_SOC_WCD938X
>  	tristate
>  	depends on SOUNDWIRE || !SOUNDWIRE
>  	select SND_SOC_WCD_CLASSH
> +	select MULTIPLEXER
> +	imply MUX_GPIO

Why? This is true for a particular platform, isn't it?

>  
>  config SND_SOC_WCD938X_SDW
>  	tristate "WCD9380/WCD9385 Codec - SDW"
> diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
> index f2a4f3262bdb..b7a235eef6ba 100644
> --- a/sound/soc/codecs/wcd938x.c
> +++ b/sound/soc/codecs/wcd938x.c
> @@ -19,6 +19,7 @@
>  #include <linux/regmap.h>
>  #include <sound/soc.h>
>  #include <sound/soc-dapm.h>
> +#include <linux/mux/consumer.h>
>  #include <linux/regulator/consumer.h>
>  
>  #include "wcd-clsh-v2.h"
> @@ -178,6 +179,8 @@ struct wcd938x_priv {
>  	int variant;
>  	int reset_gpio;
>  	struct gpio_desc *us_euro_gpio;
> +	struct mux_control *us_euro_mux;
> +	u32 mux_state;
>  	u32 micb1_mv;
>  	u32 micb2_mv;
>  	u32 micb3_mv;
> @@ -3243,9 +3246,16 @@ static bool wcd938x_swap_gnd_mic(struct snd_soc_component *component, bool activ
>  
>  	wcd938x = snd_soc_component_get_drvdata(component);
>  
> -	value = gpiod_get_value(wcd938x->us_euro_gpio);
> +	if (!wcd938x->us_euro_mux) {
> +		value = gpiod_get_value(wcd938x->us_euro_gpio);
>  
> -	gpiod_set_value(wcd938x->us_euro_gpio, !value);
> +		gpiod_set_value(wcd938x->us_euro_gpio, !value);

This looks like a separate topic, but why is 'active' being ignored?

> +	} else {
> +		mux_control_deselect(wcd938x->us_euro_mux);
> +		wcd938x->mux_state = !wcd938x->mux_state;
> +		if (mux_control_select(wcd938x->us_euro_mux, wcd938x->mux_state))

Can't it just be 'mux_control_select(wcd938x->us_euro_mux, active)' ?

> +			dev_err(component->dev, "Unable to select us/euro mux state\n");
> +	}
>  
>  	return true;
>  }

-- 
With best wishes
Dmitry

