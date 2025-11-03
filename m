Return-Path: <devicetree+bounces-234301-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B99BC2B149
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 11:35:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A72F83B42EA
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 10:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0CC02FD7B9;
	Mon,  3 Nov 2025 10:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hUEkTrmw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jpJeNCdq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EFBB23AE87
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 10:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762166033; cv=none; b=pR0cDtkk95e287TLA04nyMNl9jFAVxr3l32Cuqj432Lb7wg78fK/FqZJqX6xRwMGK7zs8h8A78r4QbxS/+CDdIcTomiGWUYzMoAOCn6zztWekdyAHsd848ex7BDetKd0UTPJ4ktk3XO9zYMtVT5F4vEb3J6Kpz6dS+b0BXjw/M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762166033; c=relaxed/simple;
	bh=Hld3A20ypq7EfrSD1xxAy8u3Il974vGYXEhaVccKVbE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LocXyedSRVQqNplUd3D4MoaoEXJq+7ubC47VxdaZLIvLm0/yBzn1yzT7EeKQVoQ4/yiIhyuRCwo1u5cXxgA4xF0njIi9k7UfzFZifWlS7abIW8sXR0rug1p00n4G4DY9gGpzyuq4zCPj68634uM0A6nb8xSvrpjlO1dmvj4QUGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hUEkTrmw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jpJeNCdq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A38r4Vq1354754
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 10:33:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rn1LUOBG2CbQbe/cqiBEL/Tz9s8YyLm1nNaeiZPfffg=; b=hUEkTrmwENBVDoHQ
	pO0Coo5l/1RMKfRpy1fMRc8Ms6HswuFzIXv/MOAIeR4GFj5p+YpQYGm8lI7iRWjd
	Ngdw14JMh5TpMWMClvp6flnUxdD0RsCa4/KiabBdgPHPjJgssLTCxMZ/jurDWrHE
	jRVO4aXIzaRuKalV1BNl//l/iMax683Y4aHdC9ZkIcfvqwHQCF7mhMVclmNW8tq+
	ijQ4lg7+P78Jg/RsdaiLpSbpFAN0kcVnRZQyt+V20amvEBgwBgnzGSkEl8qtjYLD
	zl7/wbIO2TE1Ymrd76Cw6ceJhVlAL7LsZ4jXaE6GYJiDYXAcsE4J4NqwOM9ghPrH
	C8a2bQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a5bcm47wn-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 10:33:51 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2958a134514so13780225ad.2
        for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 02:33:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762166031; x=1762770831; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rn1LUOBG2CbQbe/cqiBEL/Tz9s8YyLm1nNaeiZPfffg=;
        b=jpJeNCdqnaOIgeca2Se4ubNFY0s1hFVXvg3r/aSGPzEgS7hwEnWgI8qMq8F1jP3Wru
         2LJABikgfghCDEOrwn0tjetruKUiNIX1VOnnEs0lzI3IWvBmm/3EZlOZ3oX0rTYynsD0
         FMbL/Mk8/1wRL/5qmrbNOvhckRWG7aT8YUiYSKHpUJfVCC69GoVJFgdkcBU1pnIVHPxZ
         Ll+TBPNihiR21+kBV1h3zpndnvnWs1mcrZG4Yy5x+qVMWO41NCEzkIIjZCbnu4tb9KSE
         5BREKxSe3w1zXz8CxSqqeswrgnHGknO4cTiAumykImFRZv0KoRn5soiZTGVkE/DOfQDU
         9qnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762166031; x=1762770831;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rn1LUOBG2CbQbe/cqiBEL/Tz9s8YyLm1nNaeiZPfffg=;
        b=r5Kozz9cPUrWXDjT67+90uGFoFkW0YEBqc7I9gXC+sbDXul3zQYrFqcNlQ4/8KikkT
         SslHYZ1IABxDg5W2KySv2svGb2Ax6VcrYI3Yk+bGgch+b8/uFxv6k7Rlgiw0+9h2yPXG
         a7YzEhcK1KGcYyiHoUy59DBoQFrTn7nx6c5MO4T8tjAbrpd3aPVoMMJ71M2ra6K80qv3
         4h3SFUlaw+XIn7GxMHm8yjB5Rg+XhDsTMtTaIu+Jvudi7vQT/ulF2FFTxgGgAp5cq2JD
         u6qC6N4rj6rhbdZYupizLrM69B3CfjxrZjT+PoWIPAoeVLXwlIHbPTYBIKIXrWsm2zUv
         M0gQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOQoaFVZ28TkmyeFPIZXM/4s6D8sa4mcE4j/jveE7MVdMUUdOof0OdTY2aurv//LACWlf0sCfbqd5O@vger.kernel.org
X-Gm-Message-State: AOJu0Yw8Trtl9afzrPQtjmmD8MUpIHD3Y1cZe35JAwulvz++zuqmAzVF
	M2Y4qxr3I/SL5381QsuYlAlVmTrigaiXZC5xRsyBsk20Bar2hppQ9gpY4rYhiUKHXRyZZUzOpA5
	8Ny0D1nkWCM7601iB6K/W6nl7DHxJwkWxyuumNKyJTWSm54IL7LIxKt8uJZ3RFuZi
X-Gm-Gg: ASbGncvd/NgSqwTcbaaQS31hRFwsD78VLiqE9V0MDSca42BNBdut1+JOBcH0W0+MeBU
	9ADyRhhmLq61UCWblmaWz1t7ye4FtiuI4mX2lRdS2QeHjwRa1njU4YTSWkj4IO085flk5swMgBe
	QBCUsyEAJiqUh47APFd5Pk8UZHWdvfYaAfsScWmkBLaOpuxIyirX7ZhjTVJUNAaC2sP9IEujiHY
	umPyUvwlpKCQrcwxe2Gseueg5E4rXH8Xl/Jjmn1rXMj2YtEuZI/KSUUx7hV7KmcaN6q9o/wpwJJ
	E3uyVQptoUQdX8Do7hfP8R4zF8d+wUF4ZhCl0YkUopM7LzGQ1JQfnGjsHDKOvt3xksQT/icVr8u
	pVGM3DeYRPrIRz2lfFHsvPYj3pjSGmHg+xWba2Fu5s7uHxrdUw/ToqBb6EQgwjk5onahYdjxIg8
	/MR6k5VpJJP5/ijsv31X/B+w==
X-Received: by 2002:a17:902:ec86:b0:295:b46f:a6c2 with SMTP id d9443c01a7336-295b46fa745mr32601095ad.37.1762166030469;
        Mon, 03 Nov 2025 02:33:50 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGuzMJXftYovpjYt4udUUg3xGT7FWWThDT/vHq5zHRYdVP1AK/845Nocr0Dh94zZj1rYIPw4w==
X-Received: by 2002:a17:902:ec86:b0:295:b46f:a6c2 with SMTP id d9443c01a7336-295b46fa745mr32600815ad.37.1762166029930;
        Mon, 03 Nov 2025 02:33:49 -0800 (PST)
Received: from [10.190.211.199] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341599676d6sm589527a91.9.2025.11.03.02.33.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Nov 2025 02:33:49 -0800 (PST)
Message-ID: <40a6395e-26f6-4bad-88af-d89479b6fc28@oss.qualcomm.com>
Date: Mon, 3 Nov 2025 16:03:44 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/2] soc: qcom: smem: Register gunyah watchdog device
To: Bjorn Andersson <andersson@kernel.org>
Cc: Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Pavan Kondeti
 <pavan.kondeti@oss.qualcomm.com>,
        Neil Armstrong
 <neil.armstrong@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20251031-gunyah_watchdog-v4-0-7abb1ee11315@oss.qualcomm.com>
 <20251031-gunyah_watchdog-v4-1-7abb1ee11315@oss.qualcomm.com>
 <nnq34bfbbi3satxiqzaouy5pgi3obyqp76avh2ipyqxx6w67td@e7eqehjq7iww>
Content-Language: en-US
From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
In-Reply-To: <nnq34bfbbi3satxiqzaouy5pgi3obyqp76avh2ipyqxx6w67td@e7eqehjq7iww>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA5NiBTYWx0ZWRfX7Y7vEaIUMH1C
 Ow2g9cOF3+2pCwvIEy5nk+LzjDcW0+JpPlJ/TER42y2B/w9Ib6aqR8qMpOwDq3sWiH0lJqvRAtA
 txjdvN82b5mlnt5eORCT7BDSwQ6aiUhPXTswHzi6i2eyECuIfpTLzScg35L/+ReBOMB4FYnX5en
 EyAvpm89Br4Xl9irgHLVgft5dubmWCGNjhhylt3XJjIY5awKrX5R+V5SBBoXlVuekMUGV8kCAox
 Y2Z0Nv8sV42XG+75delauwt16TuRleK+7eZsbe2tRA1hybrASDBYRO27wKtEjO3S5kIQbiPG6LC
 rShz7M44vsJABdzKE8Cb5qH56nF3iwLemWB3tvaMqD7zNz7yGBQRdxQJrgxQIBLd1/wZ3VJ/xPv
 YABfBlde8b2gfL/x4Q5VkPymbgtC2g==
X-Authority-Analysis: v=2.4 cv=EszfbCcA c=1 sm=1 tr=0 ts=6908850f cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Oglo4aDHNYH22b3EH6wA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 3FSKxGX1T2TT0yxS3_b2fbkHMKiaQ-Pa
X-Proofpoint-ORIG-GUID: 3FSKxGX1T2TT0yxS3_b2fbkHMKiaQ-Pa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-03_01,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0 phishscore=0
 malwarescore=0 lowpriorityscore=0 suspectscore=0 clxscore=1015
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030096


On 11/2/2025 12:15 AM, Bjorn Andersson wrote:
> On Fri, Oct 31, 2025 at 10:18:13AM +0000, Hrishabh Rajput via B4 Relay wrote:
>> From: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
>>
>> To restrict gunyah watchdog initialization to Qualcomm platforms,
>> register the watchdog device in the SMEM driver.
>>
>> When Gunyah is not present or Gunyah emulates MMIO-based
>> watchdog, we expect Qualcomm watchdog or ARM SBSA watchdog device to be
>> present in the devicetree. If none of these device nodes are detected,
>> we register the SMC-based Gunyah watchdog device.
>>
>> Signed-off-by: Hrishabh Rajput <hrishabh.rajput@oss.qualcomm.com>
>> ---
>>   drivers/soc/qcom/smem.c | 37 +++++++++++++++++++++++++++++++++++++
>>   1 file changed, 37 insertions(+)
>>
>> diff --git a/drivers/soc/qcom/smem.c b/drivers/soc/qcom/smem.c
>> index cf425930539e..40e4749fab02 100644
>> --- a/drivers/soc/qcom/smem.c
>> +++ b/drivers/soc/qcom/smem.c
>> @@ -1118,6 +1118,34 @@ static int qcom_smem_resolve_mem(struct qcom_smem *smem, const char *name,
>>   	return 0;
>>   }
>>   
>> +static int register_gunyah_wdt_device(void)
>> +{
>> +	struct platform_device *gunyah_wdt_dev;
>> +	struct device_node *np;
>> +
>> +	/*
>> +	 * When Gunyah is not present or Gunyah is emulating a memory-mapped
>> +	 * watchdog, either of Qualcomm watchdog or ARM SBSA watchdog will be
>> +	 * present. Skip initialization of SMC-based Gunyah watchdog if that is
>> +	 * the case.
> E.g. qcom-apq8064.dtsi doesn't define either qcom,kpss-wdt, nor
> arm,sbsa-gwdt, does that imply that it implements the Gunyah watchdog?


It doesn't implement Gunyah watchdog. For platforms like these we've 
kept a STATUS SMC call in the gunyah_wdt_probe().

The SMC Call is expected to fail on platforms which do not have support 
for SMC based Gunyah watchdog, which in turn will fail the probe.

Let us know if there's a better way to handle this.

>> +	 */
>> +	np = of_find_compatible_node(NULL, NULL, "qcom,kpss-wdt");
>> +	if (np) {
>> +		of_node_put(np);
>> +		return 0;
>> +	}
>> +
>> +	np = of_find_compatible_node(NULL, NULL, "arm,sbsa-gwdt");
>> +	if (np) {
>> +		of_node_put(np);
>> +		return 0;
>> +	}
>> +
>> +	gunyah_wdt_dev = platform_device_register_simple("gunyah-wdt", -1,
>> +							 NULL, 0);
>> +	return PTR_ERR_OR_ZERO(gunyah_wdt_dev);
>> +}
>> +
>>   static int qcom_smem_probe(struct platform_device *pdev)
>>   {
>>   	struct smem_header *header;
>> @@ -1236,11 +1264,20 @@ static int qcom_smem_probe(struct platform_device *pdev)
>>   	if (IS_ERR(smem->socinfo))
>>   		dev_dbg(&pdev->dev, "failed to register socinfo device\n");
>>   
>> +	ret = register_gunyah_wdt_device();
>> +	if (ret)
>> +		dev_dbg(&pdev->dev, "failed to register watchdog device\n");
>> +
>>   	return 0;
>>   }
>>   
>>   static void qcom_smem_remove(struct platform_device *pdev)
>>   {
>> +	/*
>> +	 * Gunyah watchdog is intended to be a persistent module. Hence, the
>> +	 * watchdog device is not unregistered.
>> +	 */
> Why? I don't see why the code needs to encode such policy, please
> explain.


You're right, there is no such need. We're at wrong here. We had an 
incorrect understanding of watchdog drivers being persistent. We will be 
implementing the module_exit() for the Gunyah watchdog making it not 
persistent.


Thanks,

Hrishabh


