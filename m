Return-Path: <devicetree+bounces-176999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E061AB635A
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 08:42:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1A7DA4A102A
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 06:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB189202978;
	Wed, 14 May 2025 06:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FkY7rKVA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BE7920102C
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 06:42:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747204968; cv=none; b=h5LcsIK8kxUOUkReSBEEHUeYah65vXo1BvPKFe2IJzhTFrpcx2OOMhn0LTz+h/XJJJS9HR8l1SwlEHehTwMPY2fI5cO7163PNA6KNMV6f9Zdd0s46Et8h81/i/vNjYF2JclUmgGfx1BLyQPyn6AyIsLgRAlyVIzfHWbTG8YHIX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747204968; c=relaxed/simple;
	bh=W2lPWkK0xtLvB6EVRo0hijyvktlOgtLlUSX5Erkw4Ns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=t8/ZZ4ns+wI2o8v0+j0Wi1DwlKiG4fYhXgmRm4kTM3hV8O7ygqHqSBDppD70XeuDT2Zx8GQQGZ844lSIzxokeqQ6HN2FFheAPuBmo1Qj1u81crc1zidQct7hxC97PURKePZbP1rTdfVitQQQM2XpyN2C2v16Bu9KPxXgXkyb/GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FkY7rKVA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54E27D2D000736
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 06:42:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JE3ywahSgKeZLLk2eR+4hbG6tcJpuko/WfGL5GE2avk=; b=FkY7rKVAQBZQLgGs
	hhYD/mzVaCZ9Y52SZvnHOGxHF6AcOAp3ICdjiGOCzb6gUldH4k7bEu7OEWVwF++J
	U1objVR9edQ5PBMw91kobQbrTa7PmqtO+jGNbXJ4RKI7Ujo2KcWXN2QrdGFIxbPd
	JIFejx5Bq8I/PKX9fGnxLkFIvQ7PmUOOcaudB2v3SxFbC6j3c969KHmKpVarR3X6
	yEDKjkDNlfQbqBqXdLnZfZMlsKEL7b26HBn84gxIwAmjsN2lI04JIDwSbTXwuBaj
	dN9GfLwFA0nDJY0f6kBeqpl7i5zH2Y7yagE8FlII+liBhFsubUHdWo4IP/dKkWRr
	IPK3GQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46mbcr9nqp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 06:42:45 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7cabd21579eso762943485a.3
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 23:42:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747204965; x=1747809765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JE3ywahSgKeZLLk2eR+4hbG6tcJpuko/WfGL5GE2avk=;
        b=bg/R7YbU7xM43aWBnCjMAjPd7RgQOwfjZ/INHDr+az4nwhMco8HxlxQxZ5HC8lptYN
         q1JdorhppNK+F0Je/0152dpcobKKv1pFrQBBNBbKL5l9vD5j16YIa48gBr/SwhdoLtgI
         jvP37LSNyX7MlddD6V0Ius2US21+BZhGGSCI1y72eBu+1qbGr6zXbR35i5s0YA83HX47
         hUbt85w+gnThc65U2xFE7mFZoR/lXPtaEBsBrDcCS19Qz6pWtR/e+OpR0jDrUWWs+2kc
         XmJzOZ6YfTQ0eG+riFMlyKMkD9d3SU4bu/vWvFCO7qM1lWYe/vfi07boeBUgfbWxqOx3
         EJzQ==
X-Forwarded-Encrypted: i=1; AJvYcCUZcZSS6eBdpeDtps4MYnc2wozvBCE0tDIIl65xgxzXglrD5/+kGIMp9Pr+E5DxU+lO6CE3BqYCbPvB@vger.kernel.org
X-Gm-Message-State: AOJu0YyLB1j6xH9livb8pbvlcDOdASVNqDd/r8atvuGGGzZMF0hpOYWK
	IqIfiyzTe9kYb02AISbwdHzvsksOupUAgD56WQe7sO+UPDJs5pWnyPdNDxoQ9kll1+7H3r+i7Vs
	+k8QSKG5YlZFEiWSGgKDrUdnXQFrAO66WS9qX6TREoWtVt7PICFZVEr1A+g1E
X-Gm-Gg: ASbGnctctKDjZyjC8gtY5Na52sCviuK1/v5n5c2vd/qAiMVuvEY9jyXlP/l1kZXyMED
	Paoyp9nLVqSKdp6P/EsbZthXghI1A5zL7xjKoaxLuNVWbaYSsWAYUMgAAOnYAoVmyDs4rsiVb8+
	bvnBe5HhVS/VRFWRDIZBDNBb1eEZEJacms2kAfQFPjnWg7M6zYRIDM2iIhvYmQXIvGV40IUpJS8
	fjNY+vmpmAQ4xbdMdvtP7KzW5VClJ4eTlpj8RwzNy/lohcUxzUU3YyYZyaiHgjZUjgulbClSpxs
	XR6/mAg4+N3aMdgLasC83g71zLUjTWwm1mmeDKQHCQ8axJDaEhKaS7Hx8ra1yw==
X-Received: by 2002:a05:620a:179f:b0:7ca:c6c7:be14 with SMTP id af79cd13be357-7cd287def2fmr311052085a.1.1747204965042;
        Tue, 13 May 2025 23:42:45 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE/TX+EOyLGPx3RCZxzUdd7gY67Jbmj+T3fCNfY8HTMGXEWyH6YEm+X+YAuMYfMaxiKp8G7Lw==
X-Received: by 2002:a05:620a:179f:b0:7ca:c6c7:be14 with SMTP id af79cd13be357-7cd287def2fmr311048785a.1.1747204964660;
        Tue, 13 May 2025 23:42:44 -0700 (PDT)
Received: from [10.61.1.19] (110.8.30.213.rev.vodafone.pt. [213.30.8.110])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3a1f5a4d0dbsm18271702f8f.88.2025.05.13.23.42.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 May 2025 23:42:44 -0700 (PDT)
Message-ID: <ee60c802-f4b6-4d0d-9c0d-b16ab732e6c5@oss.qualcomm.com>
Date: Wed, 14 May 2025 07:42:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/5] ASoC: qcom: sm8250: set card driver name from
 match data
To: Luca Weiss <luca.weiss@fairphone.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Banajit Goswami <bgoswami@quicinc.com>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        alsa-devel@alsa-project.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250507-fp5-dp-sound-v4-0-4098e918a29e@fairphone.com>
 <20250507-fp5-dp-sound-v4-2-4098e918a29e@fairphone.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <20250507-fp5-dp-sound-v4-2-4098e918a29e@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 0CYuq9Js8JJPtcKY70l3cm1uIgBALmqr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTE0MDA1NyBTYWx0ZWRfX8yWwzQuF6l8n
 P3J594A9T12Nx+hWez6EyIyYSjBtXnbR9rNFKfN/KH8C3vComwRHJe19XT0BKP7J+ojEU2uW8hL
 kt7doFN0L1qNLLu/0J9R14HKZk2wyvWxzaH92L6CzPZyMDTKEi3dSM3nsvFXiOm3Ynaug5BsGuY
 94RiU09TVwY8HoB16WZUHo7gYoA1u36bOU2/lAqLqNirHOzty9aZpOUD3iEWoL4CecYFnFC1Cc6
 Xg2r4mI1yWAl4bxaMTOTsVnT75yqfueqwTBu2ozuBTc0LihaaG5Uo7mHNbg3wpVSWwJioCSjKU8
 78Lo2n86qa2BxiSo6vyBhDK7rAnEV3HJA4s7vFtHB1SvVscERJy3qk/akxa+knyI6JX8gGsWF6k
 aorgbfd9iHUI8dIJbG2li2vqohldKjCjYnXlhqVNL8FEcnotvNUZRRygs8Rb6GgceMdF0m2L
X-Authority-Analysis: v=2.4 cv=K7UiHzWI c=1 sm=1 tr=0 ts=68243b65 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=mS7wm7roH4dnaGY2uMEGzA==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=6H0WHjuAAAAA:8 a=WerGdG9rmgDbcAo0O2AA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: 0CYuq9Js8JJPtcKY70l3cm1uIgBALmqr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-14_02,2025-05-14_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 malwarescore=0
 phishscore=0 mlxlogscore=999 clxscore=1015 bulkscore=0 impostorscore=0
 lowpriorityscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505140057



On 5/7/25 09:01, Luca Weiss wrote:
> Sound machine drivers for Qualcomm SoCs can be reused across multiple
> SoCs. But user space ALSA UCM files depend on the card driver name which
> should be set per board/SoC.
> 
> Allow such customization by using driver match data as sound card driver
> name. The QRB4210 RB2 gets its name set to "sm4250" as requested by
> Srinivas Kandagatla, and since no (known) UCM has been written yet this
> should not break anything.
> 
> Also while we're already touching these lines, sort the compatibles
> alphabetically.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>

> ---
>  sound/soc/qcom/sm8250.c | 9 ++++-----
>  1 file changed, 4 insertions(+), 5 deletions(-)
> 
> diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
> index b70b2a5031dfbf69024666f8a1049c263efcde0a..f0d83a843765d8dcdd51569e7cbc95eb72292497 100644
> --- a/sound/soc/qcom/sm8250.c
> +++ b/sound/soc/qcom/sm8250.c
> @@ -16,7 +16,6 @@
>  #include "usb_offload_utils.h"
>  #include "sdw.h"
>  
> -#define DRIVER_NAME		"sm8250"
>  #define MI2S_BCLK_RATE		1536000
>  
>  struct sm8250_snd_data {
> @@ -200,15 +199,15 @@ static int sm8250_platform_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
>  
> -	card->driver_name = DRIVER_NAME;
> +	card->driver_name = of_device_get_match_data(dev);
>  	sm8250_add_be_ops(card);
>  	return devm_snd_soc_register_card(dev, card);
>  }
>  
>  static const struct of_device_id snd_sm8250_dt_match[] = {
> -	{.compatible = "qcom,sm8250-sndcard"},
> -	{.compatible = "qcom,qrb4210-rb2-sndcard"},
> -	{.compatible = "qcom,qrb5165-rb5-sndcard"},
> +	{ .compatible = "qcom,qrb4210-rb2-sndcard", .data = "sm4250" },
> +	{ .compatible = "qcom,qrb5165-rb5-sndcard", .data = "sm8250" },
> +	{ .compatible = "qcom,sm8250-sndcard", .data = "sm8250" },
>  	{}
>  };
>  
> 


