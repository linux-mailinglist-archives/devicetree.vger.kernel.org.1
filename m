Return-Path: <devicetree+bounces-224849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6284FBC858B
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:41:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CEB3919E2ED5
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:42:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DC452D73A7;
	Thu,  9 Oct 2025 09:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dLuQV1FK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 796702D73B5
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760002879; cv=none; b=cBEGaMMKWvMW4IqMMMrMZJE/tYJvf5woz3HDWgIJSXCEMaEjqRddN21PeBdbNF0sOwmcBG0Ru5lv7LuJEqZR8Z4cyYLVoTPbOOB4Mn+t+SNPm/KhVqMGRaiPHwDvVSt2pzWgmYrpi5mOmkE4yjP9BrDgUYjvXa8RkQ4kHe6n97g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760002879; c=relaxed/simple;
	bh=cUHx9qgZFQYGZ/HN+MbTOeqQQ1J5kKxuW1Jd5pKcnEM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hQ0UoH1jv2XzLzXKDy6DLJ9fck5RWqzJgsAHRZgGegBbpwybDC0iTOeXnsebGiC1lneqpx0FJ+EpBUxWRmvYvH25G554xaGEfkAqDvl1DB3mBmRwVcbqVOC6qUcYSLks6LRObENt1GjVJ8gLHc7RXNoWOhAP22qfM92xICc3Jr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dLuQV1FK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EIQ9022299
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 09:41:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HifFETgbzrd86Mja8ubAMcZowhzvoZfzV3gSLqhMB/k=; b=dLuQV1FKz6rJlEi8
	k482NDgHQgwX1JIVXe+T0mgfdWCpEFVuAGd2P8FeMYvcHlMaJfFx5PYX5kHWEIue
	DZct4qToTOiZDO1p2AxZGJd3ghTiPu1fCudxHu5V9c701yuHKv9s100hftyyKxXC
	DoKav/eeZ4AAxV0B0i/e/ir1WFeorOlCSAF+EzmcrSp2BPe4yH5aHiAoE2YiZgcQ
	bw/k7GWFrmvV6FNtRl4U8RdgzIFDguMtvE82QsQeZSPtpRPIOADvH/fcW66aibcr
	jvD3EvHVJzJGY9QpmqqEQ0EGmG0e0QvlSE67ubfHEuCcfy5GKGOV40zPRfzuGemZ
	igSZtg==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4sj8w8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:41:16 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-85db8cb38ccso28997085a.0
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:41:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760002875; x=1760607675;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HifFETgbzrd86Mja8ubAMcZowhzvoZfzV3gSLqhMB/k=;
        b=WhKhQLl6kIbua4owFa273xQYSU7CviX7NZoPZXVcyUZZ62EYoTPeg9Vnq/YbX9UiIL
         xsL1lZ2iD2PzLS5x12UIouiIB3MBr8F+nETp0qjDgfzQIbFp+6My1jEJMTutW9uzjuZQ
         Lxs7IwPs8F9ibqus2PCr396GT2RbRSWoy/ZqcgT0RDt19jxEZSzT/6z42RG60nu20afa
         vw6ydjuLz81CShA/+52kyTLiejRT2SCGdiB+axeM42YmXx04u46i55YY55/XevpGMpdx
         r4E4ZQadVG0DGWR051Hnjl4iOP7frAIhJkFNaFqE3XMREbYuldcm1g8ks16lN7LBeNLe
         s2VQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIWdtB/nHdysN4wI1b0U0lt9TzD+7uUZUFDqKjqi9URCrJu65QivSj1UXZvdMyaYzrq9VEbvVIgews@vger.kernel.org
X-Gm-Message-State: AOJu0YzZWBSHOp/v9Ez8rncIBvcxJ4xDKWgYoJYJ/zHAcX6Grd39+QjG
	aV8a5yMxpuiL9kvTHZBTXhfjo5Ps3LGVesmebisemGctxysgnAk4KvkQHS2o6cve9g4K+y/UtrG
	EH/5oZbqnDzCPGirecjoits3GFIwXq23P5hvGA26m+r+wA83EfE0lu9EL37VQ3NBV
X-Gm-Gg: ASbGncsko/GG+Qk6B28cuXyb4j+jjayWvBYUTYOHWy9lX4IENktP1n9Es/VTj7cO2lz
	zln16cBlIagtjulqtNOFiPYgXNCsTVEaoqT8E6ZBBK7YsXQGhagDKFL9aF1PXocdRGIK/cz0FOZ
	Y8ajbmcAHQQTTo3tmzmy2TFrnoWAvypY94CxOVPHkZpffSWUWoHOllT9CXUlIiMGWF6lBbHa0Hk
	i2LYHsdhs0YszmOtsZF48ruW6973Xc9M8Uel76AX9o0PDHr8UtT9m/AjwUR+1MG4Mk2sQSNNN3n
	horPhSiqI+2B9lakCRMRAX3FdJkDMBDjWnSycW5oOERGO925xLdglFm+ZgUXhWmPuON1W2E6Xzu
	Dfsk4/3aigGgJNn/z+b+NiZdinvA=
X-Received: by 2002:a05:620a:269a:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-883541153abmr646448185a.8.1760002875404;
        Thu, 09 Oct 2025 02:41:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9TW5+PphA9Jk49AdyjnYbWQHthAzam3yq3zLm797shLwnfsPjaDRo3Y89qy+Sz47r2yOFPA==
X-Received: by 2002:a05:620a:269a:b0:7e6:9e2b:6140 with SMTP id af79cd13be357-883541153abmr646445885a.8.1760002874779;
        Thu, 09 Oct 2025 02:41:14 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4865e7e8cdsm1867720966b.38.2025.10.09.02.41.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 02:41:14 -0700 (PDT)
Message-ID: <630bb2b0-0ab4-4083-96a2-9aa485041797@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 11:41:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 3/6] ASoC: soc: qcom: sc8280xp: add support for I2S
 clocks
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20251008-topic-sm8x50-next-hdk-i2s-v2-0-6b7d38d4ad5e@linaro.org>
 <20251008-topic-sm8x50-next-hdk-i2s-v2-3-6b7d38d4ad5e@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251008-topic-sm8x50-next-hdk-i2s-v2-3-6b7d38d4ad5e@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: ckv78Kir3YUcg0M495Gqr1dGxCmPsNoO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX0jgm87kuYbhW
 KNM0534O23hSvb4gZaZcGKJ/+035t1GaxhQ0BomU0wSlZmxi5dS73f/jwPa8A6bj1DibGS8NWlJ
 PbvssKJog+biYi4uZyCXdnGxQy+MpBfHQXhl1Sf6rbjZ9VZMXku15S7W57osu/W2h6gI9qR5xnE
 XFHj0LhFjEFpdAHmSDdhgYd1LGRLgyIwkCrAKsd3CgOXqo+vmVqmS9Cg+e7rQhXSQegSHiGEt7e
 yxrK+pvKuEwcx1t2bPLZV5Ex68WA8b4PXu64zP6pTTvLrJi+8o42E2PcJjDxOnJ7zjAi8m5vHRW
 6RCX8m1EQa8AFaeJTs2ZmxChika7tLlK0Yylp5bFCnZ3Ikf0nJbBXllhXSujGa1gSw9PZCxobJ0
 RmNN2LHAnaJxW8GOsDZ2zA3WqefpTg==
X-Authority-Analysis: v=2.4 cv=SfL6t/Ru c=1 sm=1 tr=0 ts=68e7833c cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=KKAkSRfTAAAA:8 a=hmOrbv2CecBtpEyMAQYA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: ckv78Kir3YUcg0M495Gqr1dGxCmPsNoO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 bulkscore=0 priorityscore=1501
 suspectscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On 10/8/25 8:56 PM, Neil Armstrong wrote:
> Add support for getting the I2S clocks used for the MI2S
> interfaces, and enable/disable the clocks on the PCM
> startup and shutdown card callbacks.
> 
> The rate can be easily calculated since the card forces 48Hz,
> 2 channels at 16bit slot size.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

[...]

> +static int sc8280xp_snd_i2s_index(struct snd_soc_dai *dai)
> +{
> +	switch (dai->id) {
> +	case PRIMARY_MI2S_RX...PRIMARY_MI2S_TX:

I have mixed feelings about the range syntax here.. it's only 2 entries
per and it's quite error-prone (no errors in this case, but it
encourages the thinking that things are always contiguous)..

[...]

>  	switch (cpu_dai->id) {
>  	case PRIMARY_MI2S_RX...QUATERNARY_MI2S_TX:
>  	case QUINARY_MI2S_RX...QUINARY_MI2S_TX:

whereas e.g. here we see that it's not really the case, but it's
tempting for someone trying to 'clean up' the code to change it to:

case PRIMARY_MI2S_RX...QUINARY_MI2S_TX 

and the reviewers may not catch it

Konrad

