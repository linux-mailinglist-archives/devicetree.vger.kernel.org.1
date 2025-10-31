Return-Path: <devicetree+bounces-233621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A779C24130
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 10:17:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 290EE562A5C
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 09:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01D3632E158;
	Fri, 31 Oct 2025 09:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EFrxatGB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bEFZKWp2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66670325720
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761901682; cv=none; b=gTK0tmUGMc8jkslVcd28WHWT0Spi0SIW2FeHoZnscSwg4tbxXaYzuHKssDdlrYAtGVbLllSSF+gHqyQqOU70OxPzYub2EqD+HWPEwEcj8td38mhZQ9LEuyylk7zimhuRV4hLVtlM71OmZgBwURRKtG8JH6vN4eIBooRC1TUeJXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761901682; c=relaxed/simple;
	bh=Ewxd37XtG8WkzebUz8uPzzAoNQU9BhX4kJCqJjTT+t0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CBEGNtioPSYuvSkpltIZVcDwzne2R2j3h8mKRBfS1rul7tudLL4szobIbhVeT3/QdHnv/TDO2Y0SgsN5QSPjMenPDkcT/LgN8AeRU1aCAYFO7q4xewe6mGo4Tr43cR/e4W0TH2Ac2Gns54BXppRWfJyIX31xqgCrZZVYNc7z4dI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EFrxatGB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bEFZKWp2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59V8Ikgr832863
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:08:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5y9p+glX5jcR8CDJg6FMKuFGzTtIc7gtljd6iwbypU0=; b=EFrxatGBZ+RGDv89
	43lUxTbj665W4SCXjkGxIiZYZkwMsCfYsft2OxeL48Wz5oR5pluKwkCWXfOUyLcK
	cnuemXxGjoJYmCuYtquqLTEpgzbO98Z28Jtwd2fmlclgkwR8Vj4b6Ncw5whRQyBe
	kGYg8O5YYfKCJ6fdnyBcW0zn63DnA6Ld7mholFTGCeAgVgTTUVRwcnzcuYoRxhxm
	nUpmhOMNg0KuK7x5Wau2KRGFBsGbfe6QDom5x3KMrwoXHhzenc0oRAcQZQOQJNel
	1CfxHq39SR6WKsjswBgTtqfte62jGo6paqbu0jdASslIt5KlBX5VDasCIneM3RcO
	cT6VAg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4ffb1mda-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 09:08:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4e887bef16aso3866261cf.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 02:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761901680; x=1762506480; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5y9p+glX5jcR8CDJg6FMKuFGzTtIc7gtljd6iwbypU0=;
        b=bEFZKWp286kms+So17JwHXTTAKbIqu80DAj1p72L2ny6mPlHo91eWt2I5/iZJnp1Pg
         L7rRlYhLGWDJJEl7zoyR5VeAwjVh8hjEpNkf2FKiiOm78NH00rP6p+wM6EdI/uwoE1I0
         WPxrulELlnF+dXVBnf0JgiyLt77RDinJlU7V0I3mRXyqEfBsbP8IOslGy0/PwlKRFLOj
         j48yW3pw8fcwBi+7AwHWQWNluXVy/eeZ0YZhMVk3sa5iiu/Zch8HG1GfU/v3S7Td+4Vi
         HJfepyrTpxPvLn3amOO0NuNKAIGKZqtz3Q1gVktum4YUI6/Zo6egm4eyAwMpVun7GphU
         FtYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761901680; x=1762506480;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5y9p+glX5jcR8CDJg6FMKuFGzTtIc7gtljd6iwbypU0=;
        b=I9eiK2eHxQvUVOU7pa7kgglbN/mHswQfIK+XekqtDCfnyicK9QTE7jEKwaS8Kid6ae
         a8wSCK6LlTXtNs6ywTLi8bjLXhSc2b4XsWPrCQ7Kzs8AyRwNalcBgZTPBTOTgK2y2jVP
         X79N2E4f+oFgTTQA5tCf5wzpZ1fuO+BS4/k8YzHce5WVt6ujSaGnWVErcf8QH6pJGrZc
         L4AGPb2i5TCqYr7AMPJ5MHxtSd5VKlyoA8YL8Be7QIiF2a8PzBwILawqvKDZ2UxIFAB7
         9FX1vMfQzF3HnJn4+oM55Xkt4VXd6v1sKxSuMtZ63gJeSr3irm181jKWypD9Kb1XRA4m
         a9cg==
X-Forwarded-Encrypted: i=1; AJvYcCUPsPyU4XTrnVJizYdVlGslqncQoyrwPg5bCM2zj4E6SttDa4Q/cH16ghHxgtFBGR/ic6419ljz1K4B@vger.kernel.org
X-Gm-Message-State: AOJu0YwXuTttyUUXyKzQrSps856ux1mAscsTe8hnmCk55TlfP+YjHgfA
	MX/X1FO9zc7GYt3QgX3DbvcbG9pqBaZjX9fqUjpwmz58eY4jkU5FODTPTqUQibPXzyk0NKMwU0b
	UiZu3WkO1qU75k6zilt8fkUjUHDuLqMjfn8RUqlIweS87hX0Cz/n7CQ1UDAjGHQXk
X-Gm-Gg: ASbGncsCP3DBNiz7POvtdvwGj1V5XZHmjyXmy+ckVdIYbTlzWWdSnObVuL+oSZpZJNJ
	TC/XVRdtWhTr/CUJrbnWe/htUh3OKN28Hubh0r/j9oBvLzhLTbfd77+OwtbF00YBLhkY9DTi6lr
	db6UVUen0cJoBPdym33e+LFCymK+ulQnYzbi3E6N45IRdUGsBm4tLN0Z1Kx9wA1udZc41CwhIzw
	0GlTKEItXHSsHHHdSsQl/Y5P40OGavqz5yVzJkiVzgqqBiPm9VGkowLX/9Cok5+QLVs/fNjvQ9y
	1s3WtYDXjBi3Bxa1Sls8cnc9Bokm6Pv/s6s01rWf/qxpnfl21KQ7NG1p/wj+a16hZ49y3tPxQN7
	XhiMUEfCKxDVX/3dhS7WWTM65aUZWswS0LY+7d/HpB4lpchHxAEFuIaA5
X-Received: by 2002:a05:622a:1a9f:b0:4ed:154:1a70 with SMTP id d75a77b69052e-4ed30fbe3a1mr19533041cf.12.1761901679582;
        Fri, 31 Oct 2025 02:07:59 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEnHAzyEkRs64K2/BOqNhCBYrqcMKQ0l8gxEreNmH0fMCJjYKxJseuISAeoQ5NGaAYGYsRUbg==
X-Received: by 2002:a05:622a:1a9f:b0:4ed:154:1a70 with SMTP id d75a77b69052e-4ed30fbe3a1mr19532861cf.12.1761901679065;
        Fri, 31 Oct 2025 02:07:59 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b70779abc36sm125468766b.25.2025.10.31.02.07.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Oct 2025 02:07:58 -0700 (PDT)
Message-ID: <1398b513-0948-4775-a71d-dd06ee2296f9@oss.qualcomm.com>
Date: Fri, 31 Oct 2025 10:07:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: qcs6490-rb3gen2: Use 'edp_hot' function
 for hpd gpio
To: Amit Singh <quic_amitsi@quicinc.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, quic_riteshk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com
References: <20251031085739.440153-1-quic_amitsi@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251031085739.440153-1-quic_amitsi@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 5-ngo_D9Aw_KzE0hSPX9u4Vf1WxZr3Hj
X-Authority-Analysis: v=2.4 cv=fpjRpV4f c=1 sm=1 tr=0 ts=69047c70 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=COk6AnOGAAAA:8 a=7M366yyIwzBhkVEls5YA:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 5-ngo_D9Aw_KzE0hSPX9u4Vf1WxZr3Hj
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDA4MyBTYWx0ZWRfX5yH1I6sQycwl
 de/LDixX8Kn6Y9eKRPHs+BqUK8k4wyWY2y3W2WtAKLp6HeZtRuBdGLIgDkNV4TSG1f6YV5RcH35
 cEmLwhzi1/0Sw9PIj/TFQ7NHlsjazL59IcCftO1QDhwGtdD/k58vKGcULCa6uLeX6IyVNjPoS2i
 QZJ9u6sMInXurZcGid5HM+85Zfsfz+xM8nKEocWM/N+DMTuJvN5K+n7zSGILUWrfLcBBX6q7VZH
 4a5aWdnFkUMlaPlyPhtdDCI9LGZ3PZGpy+i+yD4+31QddeD1Y5kGpgmOt8C2Erp6n6OeymsGPio
 KdTeOrasZW84nJ6iFXRW/KZvZLjeJEIYIKP0Q44H2X0c5fwGAZ1FGtabjtPqfiFVN7kneHYFW32
 JJlv8qsUQsi8ZxsKwSJXWYmyQrgTHw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 impostorscore=0
 bulkscore=0 priorityscore=1501 phishscore=0 malwarescore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310083

On 10/31/25 9:57 AM, Amit Singh wrote:
> Currently, hpd gpio is configured as a general-purpose gpio, which does
> not support interrupt generation. This change removes the generic
> hpd-gpios property and assigns the edp_hot function to the pin,
> enabling proper irq support.
> 
> Fixes: 756efb7cb7293 ("arm64: dts: qcom: qcs6490-rb3gen2: Add DP output")
> Signed-off-by: Amit Singh <quic_amitsi@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts | 3 ---
>  1 file changed, 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> index c146161e4bb4..caa0b6784df3 100644
> --- a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts
> @@ -49,8 +49,6 @@ dp-connector {
>  		label = "DP";
>  		type = "mini";
>  
> -		hpd-gpios = <&tlmm 60 GPIO_ACTIVE_HIGH>;

I think this change will take away DRM_BRIDGE_OP_DETECT which is very
much desired to have.. (via display_connector_probe())

Konrad

> -
>  		port {
>  			dp_connector_in: endpoint {
>  				remote-endpoint = <&mdss_edp_out>;
> @@ -1420,7 +1418,6 @@ &wifi {
>  /* PINCTRL - ADDITIONS TO NODES IN PARENT DEVICE TREE FILES */
>  
>  &edp_hot_plug_det {
> -	function = "gpio";
>  	bias-disable;
>  };
>  

