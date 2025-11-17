Return-Path: <devicetree+bounces-239377-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D261DC64425
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 14:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A1F0B348DD5
	for <lists+devicetree@lfdr.de>; Mon, 17 Nov 2025 12:57:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 131FE32E6AD;
	Mon, 17 Nov 2025 12:53:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BjG/BDks";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M1dCxlvO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B52932C936
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763384017; cv=none; b=nAsvhTmix9OGGxJGDDh/AJflAE3uNKTr7p9l+kcGMUa/nz4mQWIMXcdhLMlntxCCMPNz5oRkm+WFNfKg4LLlMUGOi5/G97JzG7u4+rc/VSmCC9Ex+JDnt5XmXrmMc3+glM36D3tWyA+b9fbmN7P/683V4R6AokB6ZILwIv1iQwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763384017; c=relaxed/simple;
	bh=n0eh/NtDf/nYf0LwlhPqDDAQ+7UTxU/Qm/qJqghRnYI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fWhxwEC1fa4UHaYZJBZUJGPBE83nkq/EWTKYeOY8GY1uWTz/ZwBgmPbcKZyIesGP1IvcotFTzWAXvhjhaAAFKb9CCywggxn9MyiZlIaSoZhQ/d8O3ErvBUqUoFQGcjKxxxK1r6ynvjnLRC6btAK0AL8gNsFOZ3XvcSpu8KcwpW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BjG/BDks; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M1dCxlvO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AHAC2c43571507
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:53:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v7eCMvYSrDmmZnV36o1pJlusI4kswM1CDbztYSeOKW4=; b=BjG/BDksUtN+3j2t
	VRWtx96peGyQqvvacO3zhnieBK1y6dgRsPl/7LYwY/3Ww4DXZaPk8Mw7Fg7xQAyX
	ionLGFf+K+/WHIEE93lFnVxFbm5TCNd4RqvjS2jhQsX+vd6KnSK7KIowDpPI8s/a
	pWWZPE20R4pvYREXnn0ZwzDXoYLKk5kBHgEQZY5E7VS6HuSC6xTSlWu7Ikg2vsP2
	t1GOy/2ej1ZsaFJbZNHdsPvKI157hFywzPjvuVkyLcNpZNqRYP5xti+JhunA7JCZ
	Pj1++N1I7oDtC4MQLK36HAsciXQyxvN4y6l1PLL5Js6oRZLpbQdGvE0Wsnxl1XFE
	2FnTfQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag1rbrec8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 12:53:34 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee24e1559aso513701cf.3
        for <devicetree@vger.kernel.org>; Mon, 17 Nov 2025 04:53:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763384013; x=1763988813; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=v7eCMvYSrDmmZnV36o1pJlusI4kswM1CDbztYSeOKW4=;
        b=M1dCxlvOuV3wghjuo5SbDIPG0gZEef8Ey5BHOZrkktFentS7LBTEs9jbT4ZPOyvCTb
         fr71D3NwSB0rDYjqwRaIHsT7f54GdzBguQ8OG1Lluc8wFshuGKrQehJ6dcll8tsolXRU
         NghzOFUnCZAkOazUMpTtjVDIhSjOxrfCVIiEXBmxKAFwfELe+kFvZG8+JUr8kfJgFqNh
         FmMD4ffnwpFBk5j1x0uepTBI4krW7fltmMMhcBiLFU6TqH9+/SJiYZI8Q4TFfLnAe1B7
         0qOiYg+NuQaSe6S6DvfKQx3z+Dmtx8gu7j80hA/LHsWlGcNs4agnAC8GY81iLyUmNX1e
         cryA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763384013; x=1763988813;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v7eCMvYSrDmmZnV36o1pJlusI4kswM1CDbztYSeOKW4=;
        b=bSfTfLd4dBrB1k8giJnZUg7HtY+38KjFRWejh/0o+kXAKDWZu3l4Y2DN0+7sLwRRdr
         JnLtFvW+Up3u4uctxQEDXIZri+YJsPrgHQ5pwRi6hATrV4TohxilzfBybGlAAjU1Gpcq
         0+ya2geQ3b0NgMIgSm0vScZ9kowBt2fA8em8qLMOo4cpmMFleU5hc8kHRz/gQxM8Kagt
         emfydF+gdh9eYxe4lxnMsu2z/X84n34040/FP3Vqk2wgJfLBdsy6ViJK+BQlaLE2I1eI
         G7C7qehAJfAJeb47uxjLVW4JI/FUlDf2UPDjYJOVATi0WSKlmEqLa80OpCzCvyDW9yHo
         3VVA==
X-Forwarded-Encrypted: i=1; AJvYcCXhb6fm3GsluUXIhUkJOC73yXoUN+pR/qtumURGekS8fakRxXJLYohSYFsSbwlY/vyWe8xzoiZWmJ73@vger.kernel.org
X-Gm-Message-State: AOJu0YzSbxyDyPXbsrHf8eBTaHn6RaFCdW71pzZe22NlkUCalPFcqibY
	adEyU+xUElJUxGveYOQUyaaLaS6kzI8pHvyFT31Iy8D4f1vE9a41EuQMxQbuIFY0Qg3qb8PZi56
	aj3CU6tPDVPv25slAJFxotq0CWCU0i6salRXGTeq7PelJpSZXsnL6LbF2SDFc7oAK
X-Gm-Gg: ASbGncsid5SLawKO24kmqdKpReCznMA3oAfP/8ETrs19PKvbFmhdvJ7VRGA9rmhtHyc
	DlCIB7agirCFrM3gh3IU/8CA0ukepSg1asUFrFyMTfj7ftK8hmwihX5UlyStlzRfIvqIN0S+DvL
	5Ftt0JUgUO1xUIwh7gp77Mzm7fbhfj9StOAN6ThB8NI6rXKzusZYj6FLdnxdbS2cwcX6Vy/SyCY
	kTj45NAKQn6M/HRrilTOMoXzFQKcXp26GLIbPCK3aBZjPU6qZ2zXKLc87puUWpFbhscKOoApWvg
	hq2PR9y77gC1vORF+ACyI8EyE4bHGXSSPK6HlHAVqYE805tmtzIVasE+J6o+yBpmcjxJ8luzuvb
	9rVuM9J4zlVkNkWmQu+OWh7w3FixjYyUBjSS322d/r6+vNfyj+L71KRv5
X-Received: by 2002:ac8:5d49:0:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-4edf36e32acmr108017901cf.10.1763384013358;
        Mon, 17 Nov 2025 04:53:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFcT0L5Dx/YiL8NZATdQikVgImZJ8zfUUN40OB1IZPnLg8TY3yZ8A4iHR4J5qVSr+Dbqwsp4g==
X-Received: by 2002:ac8:5d49:0:b0:4ed:6862:cdd0 with SMTP id d75a77b69052e-4edf36e32acmr108017571cf.10.1763384012954;
        Mon, 17 Nov 2025 04:53:32 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6433a3f96e2sm10089790a12.16.2025.11.17.04.53.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Nov 2025 04:53:32 -0800 (PST)
Message-ID: <893b97ad-7d2b-4408-bab5-2cd63fdaa33b@oss.qualcomm.com>
Date: Mon, 17 Nov 2025 13:53:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/3] Add CAMSS support for SM6350
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bryan O'Donoghue <bod@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <3ph8XeidoxkUIsK7qiOH29pde94sdwa3ReWKVVrPabgS5enIAmwVAC5plyFnBMJGKQBnxFB6df6j69OMFIeavw==@protonmail.internalid>
 <20251114-sm6350-camss-v2-0-d1ff67da33b6@fairphone.com>
 <df4a6a77-9004-4dbe-9b11-7af2bea7e068@kernel.org>
 <DE8JJCQA0C4Q.35NEED7XG0K0V@fairphone.com>
 <17e7ebc9-3b88-4334-b87d-1bce6d5bb120@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <17e7ebc9-3b88-4334-b87d-1bce6d5bb120@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: QYYQuSpl6QxvJcphR9S9TtLzxtoSyn_N
X-Proofpoint-ORIG-GUID: QYYQuSpl6QxvJcphR9S9TtLzxtoSyn_N
X-Authority-Analysis: v=2.4 cv=FPAWBuos c=1 sm=1 tr=0 ts=691b1ace cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=NEAV23lmAAAA:8 a=Gbw9aFdXAAAA:8
 a=zgB8h5vYSv3AeE4VIxkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE3MDEwOSBTYWx0ZWRfX4bibXxCEgcoE
 SAAFaf66brW7pDk3hHi+OZ+vq4IO1+QHq0bBUyldUUmfdaTMR8K7U+c2Kgd3YYH0IJfXADW6koF
 2Dd8NzeY0TZzg8fDp+5yNydJAwxAgOQhfJ34IvlnFRw8vJI1LG8o1mJwAAJCEq/BIAheFAgUdvH
 nt76mo9MtDYkjXqg+Klfryl0dxm4R2gSCF7mQdWdkOcmiOFp2yehcoR1IdNSejj4ARrjN7WoXYN
 RStSG9m/mHSICFdNadknd/FXhfJShK/9TYLn9Ajh8OYETwWVjwfXRk9yRXAhHAx8g3aGw57ne2B
 Hl6ayf/PMo1jxFbswYnFwlG4pRaQfRiA1K5jLZ94uhd7jxeI4Ke078LcvD3+pknAN5fgY53aRUs
 rCsNnkvv/FRmdDnHC8zu4vt4LEL4lw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 impostorscore=0 suspectscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511170109

On 11/16/25 3:30 PM, Bryan O'Donoghue wrote:
> On 14/11/2025 15:59, Luca Weiss wrote:
>> On Fri Nov 14, 2025 at 4:51 PM CET, Bryan O'Donoghue wrote:
>>> On 14/11/2025 11:15, Luca Weiss wrote:
>>>> Add bindings, driver and dts to support the Camera Subsystem on the
>>>> SM6350 SoC.
>>>>
>>>> These patches were tested on a Fairphone 4 smartphone with WIP sensor
>>>> drivers (Sony IMX576 and IMX582), the camera pipeline works properly as
>>>> far as I can tell.
>>>>
>>>> Though when stopping the camera stream, the following clock warning
>>>> appears in dmesg. But it does not interfere with any functionality,
>>>> starting and stopping the stream works and debugcc is showing 426.4 MHz
>>>> while the clock is on, and 'off' while it's off.
>>>>
>>>> Any suggestion how to fix this, is appreciated.
>>>>
>>>> [ 5738.590980] ------------[ cut here ]------------
>>>> [ 5738.591009] gcc_camera_axi_clk status stuck at 'on'
>>>> [ 5738.591049] WARNING: CPU: 0 PID: 6918 at drivers/clk/qcom/clk-branch.c:87 clk_branch_toggle+0x170/0x190
>>>
>>> Do you have a full and complete kernel tree we could look at here ?
>>
>> Sure, this branch has everything in:
>>
>> https://github.com/sm6350-mainline/linux/tree/sm6350-6.17.y/
>>
>> For further refence, at least two other people have tested this branch
>> in postmarketOS, nothing particularly exciting to report from there,
>> apart from that the sdm-skin-thermal thermal zone (thermistor right next
>> to SoC) is currently configured with 55 degC as critical trip, which is
>> quickly achieved when starting a video recording, but that's not really
>> an issue with camss, but will need some tweaking regardless.
>>
>> https://gitlab.postmarketos.org/postmarketOS/pmaports/-/merge_requests/7281
> 
> diff --git a/drivers/clk/qcom/gcc-sm6350.c b/drivers/clk/qcom/gcc-sm6350.c
> index a4d6dff9d0f7f..229629ef82809 100644
> --- a/drivers/clk/qcom/gcc-sm6350.c
> +++ b/drivers/clk/qcom/gcc-sm6350.c
> @@ -908,9 +908,7 @@ static struct clk_branch gcc_camera_ahb_clk = {
> 
>  static struct clk_branch gcc_camera_axi_clk = {
>         .halt_reg = 0x17018,
> -       .halt_check = BRANCH_HALT,
> -       .hwcg_reg = 0x17018,
> -       .hwcg_bit = 1,

No reason to drop the hwcg description

> +       .halt_check = BRANCH_VOTED,

It'd be useful to explain why we should ignore the hw feedback in this case

>         .clkr = {
>                 .enable_reg = 0x17018,
>                 .enable_mask = BIT(0),

Konrad

