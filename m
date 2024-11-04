Return-Path: <devicetree+bounces-118675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E219BB338
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 12:27:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4AD551C21B0A
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:27:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F24FB1C232B;
	Mon,  4 Nov 2024 11:19:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XS5i/5yS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 648DA1BB6B8
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 11:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730719149; cv=none; b=gPI+voIUny5/S2GHJgn5m6T/SW0x2E35Uip9sq4eKqBx2BFoBv+5NrjJu5NETJBvXStdmUQN6E7yT8H5NKy0p/Rrw6ONIxNHK9Lv7Jm14KcI9WGkpLogZaFlYWoQB1LliI3+7Zjp1VakaEd8aA6DevsbMakvxDhW1fCcW8TZ+Ts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730719149; c=relaxed/simple;
	bh=JgGFqZMz2Caxo/bqJtXtplmuZg+Kq0OfABkegunbOdc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QnJFZXmxUS8o924y6WLVcRddarb3D0AFf1lcJtyui+DJHd9wGq9dgw8BkxNSQfpwQ6bNHyGVLrMCjaxTh4ieeSfMXa/4KXBKu894XzDqNhp3eLfKYQG7d6BJH3IEYDrv409ULki4YN7JzUzsfoxeoosg4fdWlQ3w3HQtrs7dyy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XS5i/5yS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A3NGK1P016904
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 11:19:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	A2oqrkGjzA/cLsOTZU66EH16Yp67C8bgxn8gSXmYQkc=; b=XS5i/5ySL9/dX/ot
	PaFTZCwraJhzf8Z8uQxKTavoDl709y+gKABp/+cdX0BjDp01PZ8HSu/opEETfVQc
	yF7f+FZUFbJfG+pDvSLXa0w7zHSPbaXVdW+r0sC9aZLJj/H1dxVRtvWvVMzoGYWF
	5q1a0I3IlN59SHkSQpjT/LTVNYEjLgb6MdK7raUqOeGhUqJal974T6jLZnQz45LW
	y5QMWSQzwWSDYPzIm2b61uTT7RNBCnf1eqAu8OKsjbFKRH6di/SKPosSNwk4XU4H
	DTwJGb6ejJUj3hpKPhDAhkL50vm3n5uoZkd1uVI92SxauoH1eR3kIqyDpL0zthe6
	lYdH7g==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42ndc6uw8u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 11:19:07 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-460a7a53e1cso10427911cf.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 03:19:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730719146; x=1731323946;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A2oqrkGjzA/cLsOTZU66EH16Yp67C8bgxn8gSXmYQkc=;
        b=T41gYIVC3ReQ7OX3LDH7Yu9iR6iFt3BNqD8S8vWF1rWyU4igl9ABmNoGDjkj38/553
         VB5e/0BR54Zn+zhrnUedZe4HXXKXDVNzwUsRdM6LZXS+B8v5O3gpialbJ7nRs5w4uw6E
         VXEr2+69rzSGSLDuaHICcwUk3xitxSOMbKqHouaIVOe7aUR5XvzUPEA/v60P64vcBrb6
         lpG/MXCg8feqCX8ToyNvh5z6ahMeUX9/MqKwGCI26PIenqkgacGtkOR6ynUu/HFbXzS+
         RIekjM7vD3vnipep/Vf1k60eBqYu6zyDxnkGjX7H0NcJi8lTseuG0RLHspjPnEpHIoGI
         A2rg==
X-Forwarded-Encrypted: i=1; AJvYcCUG/mtDgJpWnv/Uve8q9ABKIMWYPAtx1vcoVmr89oFcBhljrZ0aM1C+AAHaimSAHEhiM2xXgWAvA7o4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2VM9ZTe9JyGhIVdikqpwBFe6iol7tFmhWSPJnVC70OIfxhi4+
	lpl4EAP/bAECZs351wAH2wajD7dweliCBGwTL0YH0+0CwB+/oToHLBk/z5DFqOkpptY0Wd65MnP
	O40FZM3oc/XhKr4XgRk1TPKxnZxF9cWLKZmLDlkevydywnXZfPRgwNKYn6yCf
X-Received: by 2002:a05:620a:3181:b0:7b1:2242:e3e0 with SMTP id af79cd13be357-7b193ef409amr1999302285a.4.1730719146240;
        Mon, 04 Nov 2024 03:19:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFYmjI7Jslj3eJ0wFw7ek9WtoDBg7hvIWPiFS3CeTaEvgboxht0RJg92uZc82vxdJNXaDmrMg==
X-Received: by 2002:a05:620a:3181:b0:7b1:2242:e3e0 with SMTP id af79cd13be357-7b193ef409amr1999300485a.4.1730719145792;
        Mon, 04 Nov 2024 03:19:05 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e565df949sm540724366b.121.2024.11.04.03.19.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 03:19:05 -0800 (PST)
Message-ID: <33174321-d81d-472a-b267-ed2cdd691b74@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 12:19:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 10/10] ASoC: qcom: sm8250: force single channel via
 RX_1 output
To: Alexey Klimov <alexey.klimov@linaro.org>, broonie@kernel.org,
        konradybcio@kernel.org, konrad.dybcio@oss.qualcomm.com,
        andersson@kernel.org, srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com, lgirdwood@gmail.com, perex@perex.cz, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241101053154.497550-1-alexey.klimov@linaro.org>
 <20241101053154.497550-11-alexey.klimov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241101053154.497550-11-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: du2tHW4OGH1fHU6L5v01ycbQMo3fiOrq
X-Proofpoint-GUID: du2tHW4OGH1fHU6L5v01ycbQMo3fiOrq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 lowpriorityscore=0 mlxlogscore=999 adultscore=0 clxscore=1015 mlxscore=0
 phishscore=0 impostorscore=0 suspectscore=0 malwarescore=0 bulkscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411040100

On 1.11.2024 6:31 AM, Alexey Klimov wrote:
> In case of mono configurations we need to enforce single channel
> output. This is required for audio playback on QRB4210 RB2 board.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  sound/soc/qcom/sm8250.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/sound/soc/qcom/sm8250.c b/sound/soc/qcom/sm8250.c
> index 45e0c33fc3f3..7994488d7998 100644
> --- a/sound/soc/qcom/sm8250.c
> +++ b/sound/soc/qcom/sm8250.c
> @@ -39,10 +39,20 @@ static int sm8250_be_hw_params_fixup(struct snd_soc_pcm_runtime *rtd,
>  					SNDRV_PCM_HW_PARAM_RATE);
>  	struct snd_interval *channels = hw_param_interval(params,
>  					SNDRV_PCM_HW_PARAM_CHANNELS);
> +	struct snd_soc_dai *cpu_dai = snd_soc_rtd_to_cpu(rtd, 0);
>  
>  	rate->min = rate->max = 48000;
>  	channels->min = channels->max = 2;
>  
> +	/* Maybe should be moved to driver data variant */
> +	switch (cpu_dai->id) {
> +	case RX_CODEC_DMA_RX_1:
> +		channels->min = channels->max = 1;
> +		break;

This doesn't seem to be specific to either 8250 or 6115. It looks like
this is board specific.

Konrad

