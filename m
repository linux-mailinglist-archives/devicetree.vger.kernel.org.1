Return-Path: <devicetree+bounces-130369-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 06B339EF3B3
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:02:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DA1F017523D
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 16:45:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DE2C23FA01;
	Thu, 12 Dec 2024 16:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="i/ALE/zs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0C2923F9E4
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734021371; cv=none; b=WPl64da88kMpY1zYkOQLnJj5OLlVIkQEL4GxMlMsc6Amh/JEQuBbjdZG6OUWEitIm7tgLVHuoVn0rkGm6tWyl6xo/venaFufFRIMNXmL9hkrR0CPKD3UgiQ5/5AMOMst9xXvzTGL11iKUQQz0K6YAadZafR1G0wTfRdJlra1hnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734021371; c=relaxed/simple;
	bh=j0SxUnuDVYO2JZYCLop+naPFe4NlfD3BdegfyxmRTfQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=GXlnc0n0b2c22H8x23Zik0CCb/W4OSRDrR3ZKiXah9aNbTUPTSkemVII1PJK/boKWlnyCot1m586fEWeuAkdjCHBaR6MYcqqmMDjmPS7Urz6hBJcznbtn5C1nVx0ylo4+hKXF/5qPTW6BAhyEeN/DC0F5bPJTh3y6qlgW11TIjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=i/ALE/zs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCGZaub032190
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:36:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1YtoqDvIa9oxEwR79Z1UxYpdC9VmaaKCVP5CSY5CeXQ=; b=i/ALE/zsKE6LxvHh
	SiGpY1A+2QBQsbkKzGAKRDEIwOy6qINRrSN7FY1FtcE78WOGVory08FoSqB+jWJz
	qCCn90T5Efc2kIyQ3F6G37n1O03+KXIIDBWRiw962rlV9TthLvVT10wxu+undzkI
	UTmsTm090cr1NABGTqHrEV0AKYNQQ9fy7dC94X2Fs3LTvpj+NlCeSQKpXlQfxOUe
	yZKqpnZHQzbvamlteXRH6AldLAbwSWKLhfz6WgXCFlFdaNWOZASJeqhSrridr/IN
	zDJZeDwzcYMk7MfRvEHXKgRN6QgI2DQL4L8/dyXI+qotiwyz/D3ORzavhwMMHemV
	u9Y/mg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f6tfcu9d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:36:07 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4679ef4565aso1077531cf.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 08:36:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734021366; x=1734626166;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1YtoqDvIa9oxEwR79Z1UxYpdC9VmaaKCVP5CSY5CeXQ=;
        b=EAs6n6QS7iBOnAVa1f1wHf14zafkGU8WQjE1CqbOLgj8Ru9zOf2vOe1YPJtTzyA6Ze
         +p3Rp55zNpJXSrIsfAAQ7GN996gHkpoDKM+zjj51IXsO18KgeRKev49+fRyHhB73l6rG
         B7Sr0AHnWSUWSlIPpZf0GxLN407Z0BqV1LrJtU9EZlGqcJrcI8PwbmbpDSJhRjGE0bhr
         BgO5oS35VMI/QtyH/nl5//WP3ahDO0dZLBvDEVgB2Jz5oAGlMBJGf3mCqxxEf+M4h8n+
         kPxYQVCUqfDIvINc/VB5dUk17au+b/zZWo9qPDDCUNLsIecFSjAEf7eKFTU3nUdV+i6c
         3iPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVPXX+3djKhtPG8nSsA24TU7Dk3EA8PFVg073XQudr7iLTxBQdZ2DZNH7QVaI+XQQJavKSDZSo1ScPf@vger.kernel.org
X-Gm-Message-State: AOJu0Yz4cgFA8UpWqf76LamrY0A9cTp5vaRsFe8O7sGtEcbh28YjZdUh
	AnqIkvmrDytMsbCx2GKWgvAeKGg5o+0TSU4WdLV3SKQSfyiZSkAsauspWMAZ5fOXoyrR63OSCOB
	sh7e3sF8k5Nj5FntXINIfBxeJqiLDw1hwJX2OMNw4LNERkJcE7XudEM8zLcgH
X-Gm-Gg: ASbGncvOX0fh4wMDRm3pvnxVwjK2WnW/IgsvB3ZjgqQK4w6FSMLmeApum84ehKFatK+
	zbe0p8XFi8I5Wjwzd1HrOBLUDGqzdvLsi7nzNGUllJFjVNQfMxQrc6Ou3imeRU0gAtZDQH4GH1h
	SLFXRNhIv5gQojX6yqMcV0m7IAvqcT0YVeGI7DZ6e+FvXA0oC7CBci0CaVQmukpr1o11AtpgvVy
	UOvr5mxjwjCvmW5bUEswnj2MZVTEDbuTevFzbJZIoFEyODq06NNXcBhC/KYRpQ3RtzUa9jcouBw
	bUD0g4voE6zZ733Hnb6A9JfdrOVhUHRXjqQVXg==
X-Received: by 2002:a05:622a:110a:b0:466:92d8:737f with SMTP id d75a77b69052e-467a15ce4camr6862921cf.8.1734021366618;
        Thu, 12 Dec 2024 08:36:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEVd/vSE0n8cUZsCd5G+SQzCt7rdg82WYVr5UWrw6lLsq9BZLsKpztwlR6KttQvjAc1CxsH3Q==
X-Received: by 2002:a05:622a:110a:b0:466:92d8:737f with SMTP id d75a77b69052e-467a15ce4camr6862751cf.8.1734021366287;
        Thu, 12 Dec 2024 08:36:06 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa68bae18cfsm577641266b.115.2024.12.12.08.36.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 08:36:05 -0800 (PST)
Message-ID: <d48f3064-be74-468e-8b7f-203eed33d238@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 17:36:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 01/14] ASoC: dt-bindings: qcom: Add SM6115 LPASS
 rxmacro and vamacro codecs
To: Alexey Klimov <alexey.klimov@linaro.org>, broonie@kernel.org,
        konradybcio@kernel.org, konrad.dybcio@oss.qualcomm.com,
        andersson@kernel.org, srinivas.kandagatla@linaro.org
Cc: tiwai@suse.com, lgirdwood@gmail.com, perex@perex.cz, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, dmitry.baryshkov@linaro.org,
        linux-sound@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20241212004727.2903846-1-alexey.klimov@linaro.org>
 <20241212004727.2903846-2-alexey.klimov@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241212004727.2903846-2-alexey.klimov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: l8dLrRpCW8MKlY8ou1gycqFI0Lg2F8YV
X-Proofpoint-ORIG-GUID: l8dLrRpCW8MKlY8ou1gycqFI0Lg2F8YV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 mlxlogscore=934 malwarescore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120119

On 12.12.2024 1:47 AM, Alexey Klimov wrote:
> Document compatibles for Qualcomm SM6115 SoC macro digital codecs
> (RX and VA).
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---

[...]

> --- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
> +++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
> @@ -14,6 +14,7 @@ properties:
>      oneOf:
>        - enum:
>            - qcom,sc7280-lpass-va-macro
> +          - qcom,sm6115-lpass-va-macro
>            - qcom,sm8250-lpass-va-macro
>            - qcom,sm8450-lpass-va-macro
>            - qcom,sm8550-lpass-va-macro
> @@ -83,6 +84,22 @@ allOf:
>            items:
>              - const: mclk
>  
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: qcom,sm8250-lpass-va-macro

We all like pasta!

Konrad

