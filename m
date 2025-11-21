Return-Path: <devicetree+bounces-240943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C173C77E9D
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 09:30:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 825D64E8DF2
	for <lists+devicetree@lfdr.de>; Fri, 21 Nov 2025 08:26:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9AAA8280327;
	Fri, 21 Nov 2025 08:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KD9bAmfj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="SRrW42jz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D8D1F09AD
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763713593; cv=none; b=l4DTqwc1N/4ErW08GbVpmkWb52Ed/ZryjhGHQbhRk02nS1/ENX5NoVnsjQhlKTB8KhUegBUOWXv8VmqHbwO8+ezM7F/ypyvcYSNhaq4F0nv3e/yuSPQ1ruOugPjX5AnY1fAM/ijsHD55J2kdtRoaUr3k1Br/faCvD27HjT3BZaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763713593; c=relaxed/simple;
	bh=dwZ/HBx5N/4Tsdj3qtzdhXxY5baXzcYF7+7VZ/HQx8k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=axeqCRj8npQxhRRULSxnQEERSXF0XFX50EfU3Gw2SR/NGZtGsfq2wiXgxozKE3Xclg7QEJSBPr0wuWnLvUtFJ8rUbxIwB1hDIj5EV86QZIQRtSDBvKV0fjvll1a9pIig3cSWaLazKytx6fnyeOacBaLzVwakCp6Qz5nutaBz8Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KD9bAmfj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=SRrW42jz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AL5S00S2756817
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:26:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QNVKTVtjst6ZEFVtH1YafY4MP3OGJGY5T4qdhFTV6yg=; b=KD9bAmfjVeSQMNhz
	aKM2odgIQjyQsIsAj9obGtypuV/E0VdiLaiXvcX1z7A/5plLM0IS0Fso5q1eUGQX
	SQZOq2EwTbFRXO0j6kqWdiMSl5m6GlKslrd3PT8QtmgGzDM1Xm9nj367Bl364bmi
	tvGuMBHuGpJLNNnffaqyXr43TrkKdLu+cFmwxlS/syJ00Tq6xp44ZnDMw10jDsxq
	OnceEVs3voR3Uzs0WxiaxgvgFVYHXFRAyAJAwF9TGq34LuPD43Guz4/pdIAfVNKn
	7FHZwy7x6JXtqYZMCLLoCefWM9jDSPWHykOVnHnRv2Lni9TDSTWBLqsqdbxm/URP
	+ZNGwg==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ajhy60fs7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 08:26:31 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34566e62f16so2175919a91.1
        for <devicetree@vger.kernel.org>; Fri, 21 Nov 2025 00:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763713591; x=1764318391; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QNVKTVtjst6ZEFVtH1YafY4MP3OGJGY5T4qdhFTV6yg=;
        b=SRrW42jzeV2nBYw/qb7bPpqnrS/fp/du5k3fi5dC2/er7pQT+COYLt6g3HDnFuWE7u
         rAVu7ahbcmoQALXlqYTbnQh6Nn7XgjQWLZMmRQiqYMcGbbMUX/7kX7VAoDokfa83MswN
         dhhaAnNBeRXO9acCnFcgSKOWXrr+05nGoZJ0Ld1p8nX9cyHhqNKXhEzvn/RiI74nENl2
         pOE3KO4BaPuxynSVyJm0kgFE+hkYZwQ5KglzushyavUpeEkzTfAJ6M+7NVhDeJf5bdx/
         2axrdpHPAt/+AzlJiWEIAH5sBOGc7i6JclPTHGvXgY1IFYvjQHO/5YmJ9k8xRri9d/OC
         2fyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763713591; x=1764318391;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QNVKTVtjst6ZEFVtH1YafY4MP3OGJGY5T4qdhFTV6yg=;
        b=fyh7asaeLWj4DGm+yhFCrZ9lJhpva5jtf5H8EF2Dh0+SNbCguKYkt8FSR0EetI9A5/
         yobLZM/n9PYWG/wGPmdHH7m8xbshHfrqHqsChQGMctKUgXSpQjV5P1LIo0Tk/dHFvYvU
         7Y89iSXjnoBJbdghjEyEW+ouroY/6F3YyG/KnHJKfwSmGi1Bi/b53C1Idp1rWG5SJQ/C
         zwloohx78SE1fVUIVjBcXCEGJYrDfyi59Uvvy0tdeWiqoD9MV9Sb0OdEHl7qWjShWFMs
         gQs4WdVT61nu8GoutWRvLEniZoeo1aOFukyYVeYfmuTIUK1SDsjrKEC4lb1SqMQNL3pM
         GPXw==
X-Forwarded-Encrypted: i=1; AJvYcCVh5TASkuLWLP8ztK2DUgXYZsZ+GLkVAQSg2vGbWWi7Jn7wtcWNdAYobVqDF6RqgRGPgKyKMbYdFKnp@vger.kernel.org
X-Gm-Message-State: AOJu0YzeU6rBDy/JajX/0ccCJ3xU54zYnopQ7sbOLywbrmOKHC6CxGKq
	dZunk6iKllTUcoN2hq0jR1QK87pl5U+/i5SMwwNS9b5YL94lk7SsUvqJpd3QK1IsRpyxm4flwRB
	l2dIAu8FgGOidCo+GrroKogQq+7BWDeZNOCCU0LufMqUUH8piuuRjJQTtSHURi3XK
X-Gm-Gg: ASbGncsUZpACscV0kIETiQlCtDIjI339jvrML7vNXsFBBX/b5Xr5HCXGDN0gD85j/CX
	ONkvkd2y1tGvqxeIp/YEBB2VIjTwkAOaHV9m7zuBXOybTs7Ct1c3ns6KiNqM+KVxl4doUFXbekL
	FskUmM81dWOzEeqnav/vosKoIfbdXbZE6VOTNLXU89LUD7scfTlfDLfiQ6g51mJK5N4mqC1qt8H
	EIVuUWYvMfUBHeiTvmu74CEY6Gk+pdYyYAHtjO9DvaifAF2M52uiEKD111q5q25VwjqjpqbxYLL
	16Lev+4a8FtOp7ZcAkQ+cid0G7Xg9XRFlGLICBy4XeOD0B1bfiKPivWSr8BTicSQWy7O4Xrry2H
	QCP8BbBEzembhNaJrZQntT1KB1DUTJRup0cf9d0X7huqgQjgHc6BQveLCoPNzDoVlJw5UWpywWO
	8=
X-Received: by 2002:a17:90b:37cf:b0:32e:7c34:70cf with SMTP id 98e67ed59e1d1-34733f5d324mr1632122a91.36.1763713590490;
        Fri, 21 Nov 2025 00:26:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuBevw2FKEQYH+fjg0nmPWQ/BlIg2gNnWEfuCXeEFv6Sbqr8G7K9lkWtJ/3LY7h7/iY/0Zkg==
X-Received: by 2002:a17:90b:37cf:b0:32e:7c34:70cf with SMTP id 98e67ed59e1d1-34733f5d324mr1632092a91.36.1763713589931;
        Fri, 21 Nov 2025 00:26:29 -0800 (PST)
Received: from [10.133.33.178] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3472693c35bsm4878413a91.14.2025.11.21.00.26.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Nov 2025 00:26:29 -0800 (PST)
Message-ID: <024539e5-1fcf-4ad8-8d7d-af87fd02a1b7@oss.qualcomm.com>
Date: Fri, 21 Nov 2025 16:26:21 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: add CTCU device for monaco
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
References: <20251103-enable-ctcu-for-monaco-v4-0-92ff83201584@oss.qualcomm.com>
 <20251103-enable-ctcu-for-monaco-v4-1-92ff83201584@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251103-enable-ctcu-for-monaco-v4-1-92ff83201584@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Lb0xKzfi c=1 sm=1 tr=0 ts=69202237 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=51A4gIhVuH9znBGuUk4A:9 a=QEXdDO2ut3YA:10
 a=rl5im9kqc5Lf4LNbBjHf:22 a=cvBusfyB2V15izCimMoJ:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: kJdn9Et4g0u0QQCLvIEm74tVS9yXFtqs
X-Proofpoint-GUID: kJdn9Et4g0u0QQCLvIEm74tVS9yXFtqs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIxMDA2NCBTYWx0ZWRfX7JfDj2vjBVpp
 2YRTd74AiYAR0Eu9R7DmsLWg6kaey3Eh3/MEGBy9++U9zkWAEhPg8g4adlJVCOUKbWNhtJ07k03
 LQ6SC+ZIKXEkx/G98ypKU6/797XW3KEGqHPFmswMEh2zozRM8yvAVW7EijDsvZfqrh6EMTKXx48
 M/+7pml9BFhqJ0R2gv8eoD06eU+kjAvQO0FVlqyiCxi4H5mnbkhSgHgIklWnxunb6z1oWRPhVoZ
 O+AldQUZsVtblmvxp+rigVSIIsLXzbvvjUcMlM05Vjd/jDmDq7dIIyKj0m1AiIfpQzPWD+v2Et4
 VK24/eqEk7OiQ3utp24CZgZHDhvB5Og+q+Y8CLJUOBqP6+exfNy1t0pPLnQaCmZ7IRYVr9Eiisg
 HVLipddtSNHwnhiWeWt6UHMvTdB6wQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-21_02,2025-11-20_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 suspectscore=0 adultscore=0 bulkscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511210064



On 11/3/2025 3:06 PM, Jie Gan wrote:
> The CTCU device for monaco shares the same configurations as SA8775p. Add
> a fallback to enable the CTCU for monaco to utilize the compitable of the
> SA8775p.

Hi Maintainers,

Greeting for the Friday!

Do we have a chance to apply this patch for 6.19?

Thanks for checking!

Jie

> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
> Reviewed-by: Bjorn Andersson <andersson@kernel.org>
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
>   Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 9 +++++++--
>   1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> index c969c16c21ef..460f38ddbd73 100644
> --- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
> @@ -26,8 +26,13 @@ description: |
>   
>   properties:
>     compatible:
> -    enum:
> -      - qcom,sa8775p-ctcu
> +    oneOf:
> +      - items:
> +          - enum:
> +              - qcom,qcs8300-ctcu
> +          - const: qcom,sa8775p-ctcu
> +      - enum:
> +          - qcom,sa8775p-ctcu
>   
>     reg:
>       maxItems: 1
> 


