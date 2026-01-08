Return-Path: <devicetree+bounces-252607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BD46D01589
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 08:08:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3A3BD300B9B3
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 07:07:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56572329E5E;
	Thu,  8 Jan 2026 07:07:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BmGgNpOU";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hfSQwCYD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B87C62FF14F
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 07:07:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767856066; cv=none; b=dynEyAElZwYtLcT1KeEyE99ptzeFkIg1gCPPoc7E7IY3Bva1L6SYetNEDRYBdYXMzbn6RkZEcgrbfIHEUuN2T7gd0bYjSwJlS/x+VeDaYAmxs+oI2chjcX5CqfBzwcNNI2oBcpVDQGc5kha+DxW6mMbrEwOWzlIKD2Dc8KmcMw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767856066; c=relaxed/simple;
	bh=EW9ZJEx/Y4DrtxgKA1ui14J9T68gvpdN1tRau3pG9UA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QbohYcaZmBM1n8BWEsD3NrtIqa6hasJ7NIXQgHiOfukHCFkcik7O0E6F3U549N38cUkbo4vsjeslcoOMBx2BOmvwbZVkkXf2JwDeSaPn12Y+x+OI6NZfbuOcOmzeICdSYAmihD0NFpKMDOUkujl4UheVvf0cp1vD/pPKp4t4Qmc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BmGgNpOU; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hfSQwCYD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60872Taa1496630
	for <devicetree@vger.kernel.org>; Thu, 8 Jan 2026 07:07:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H291/GDYLdo15JZXgl9p7LmvmkDeNjcIbx8C1kz8ufo=; b=BmGgNpOUAyxTBare
	jOKALGcWGeOGt4H4LTXZgD1dRwnRCRdgko3d119xm0awMVpEbJvUqJ2ArFcVwhdf
	k8Q09bFU+uT4Jb4QHTb+QNQeDYeYLbA7QM56p9C9B26eKNsV9LQDVvMVDwzXtzlp
	6NGUtyDqS64grERh+tuXndzbpJrPiq4in/t0X93bbIb+t16sh4B76XztffFkcK/B
	LBvUlUzehjRJ9Y67RboJ0y6MaXOwBKGghG05TeWvthi8msYT3bgCc1kOsrUVj/rh
	UQj0sYLA0nFK15piu3vOy5M4ObqKH4fhFdYra2u89KaostRbtBd7XqaBNJPwAh43
	YeXfwQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bj7ua80ha-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 07:07:43 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29f25e494c2so20189555ad.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 23:07:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767856062; x=1768460862; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=H291/GDYLdo15JZXgl9p7LmvmkDeNjcIbx8C1kz8ufo=;
        b=hfSQwCYDJMVEu/ohG92ZwZ+tabH11MuLGBv4vx8qASME6LaSaIAhqLa/ESJ2m9Ln0G
         tBAAhgzvkMeFHl9eeM8vkTG2KOqQmno+9JXo0pvtvJNQW6BaX6ooY7xoz0WkixcRssbX
         X3NCUiQouVRFDBOaNt9PBjmF+TAppTwkE2a9hs77x8tHSnQbzaaooDDywGFfgvJy9CL3
         3uKVmZX5n5m7aIoIIXGSmCxQbGLe7vsodmZJHZVDM2PM5eqaGcYSU9ChjcFnGKHHBw5l
         lnfeilUaOXylqMvAEPhJk3Wviiw9BbQ2tfckgiIBlZPHcEglKueTSFh3qQxMPxr+hBGt
         z+Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767856062; x=1768460862;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=H291/GDYLdo15JZXgl9p7LmvmkDeNjcIbx8C1kz8ufo=;
        b=vRnNvJgjxNm6GVuoBvTnfKy6CAeimSKfCZ/eXwP83DvYeRy+6a5yhjKX//A7o4IkwS
         vWlRSrDkuVcn9i9eJXnrmjUJ8+EkVrG7Fell6tSiDPmLd+cROO4GnzDJ7+bhVJjazHQF
         Ab782OG6D6EIDRhzuYEfQAVV/3JaujV0rR/FbUh8NCurS5Q5NJbtt/Q7c775cYjG19zV
         GpjYvGRs91SUAOv9PznDXQr3YehKryeJvl4IkzlKGniqSObEACOChlcx26TyGN/9X29X
         d90aU2WqVHCz5S9lwuzo4j2CtMGhLs2W6YIgIXmeSbkF0tTOt9UJNEUZYaBxGQuBubmm
         YSiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkinTRK1Y7zLGLO/8GLx/p5A1845sIfqiwLQ2oSseLseRu4H0bjL3fX8kSU37iRzuH57REuFJ5hiVh@vger.kernel.org
X-Gm-Message-State: AOJu0YwcmtSK9nhAVRAgS86pnIwQ68oo1N+rSjaa/ZK0AF2IYsp4rJuO
	E2/DmkZiF6KYGyYzyClytUfd3WxhuYSGg3fvWtJqE3CofVKytIf4h1fPNmbVE+g1TAms6SBGlvB
	ngkkcxIUt2o8XHmsEE0vV8yt8LLEl4/GGnRFQSw6u44Z70yCRbXsScdY37TZDuap3
X-Gm-Gg: AY/fxX4gxLYd6NafybPaq9mQV2dJ3KCuK2zJDgG8ZMW/BG3KrAcPqD8v31bDToIfbWy
	VnG3Kax2UvXmx/zo79pm6/Tl5dn81GD/xVUAG0h9eR1NZcxxjHlGZMuzknKw5TE5pSFNfSDwWOy
	xDLQhEtmI+VCjhzv8tTIbW8loLogd7rLSSQYCsiONmA5/u0B96HUyx31a6g24JzGoS5Csw0V6A9
	/fnIyfu7zMBUDLPOgHsqvQR4GyOS0EXcrO5CIpSn8UeDfaYwAriEbOJ1bNH3j6EsiICVFMUYf7K
	BPmn5UaQwsrlUBgkhXb22tLmXoO/5sPN2rBVXLkqU7oIEUegfNCTb96ziMa7wdLhTOhOaj0JgWu
	pPBLsCxuesEbK7rWASHMH5JLjQ01Yfg4YfD3ZXqg=
X-Received: by 2002:a17:903:90d:b0:2a0:acdb:ce0c with SMTP id d9443c01a7336-2a3edbaeef5mr57580345ad.29.1767856062236;
        Wed, 07 Jan 2026 23:07:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQGy72i55Bln+OLLaW6HT8jBVTsf/2UpcbyKR6ZxubyT8/7OrZRDENs7bDh4FSn4TvSrc3ZQ==
X-Received: by 2002:a17:903:90d:b0:2a0:acdb:ce0c with SMTP id d9443c01a7336-2a3edbaeef5mr57579775ad.29.1767856061288;
        Wed, 07 Jan 2026 23:07:41 -0800 (PST)
Received: from [10.218.27.120] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a560sm68034105ad.21.2026.01.07.23.07.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 23:07:40 -0800 (PST)
Message-ID: <cb5430c8-12d6-4439-b1ae-c2f36f29a9f8@oss.qualcomm.com>
Date: Thu, 8 Jan 2026 12:37:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/8] remoteproc: qcom: probe all child devices
To: Bjorn Andersson <andersson@kernel.org>
Cc: mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rafael@kernel.org, daniel.lezcano@linaro.org,
        rui.zhang@intel.com, lukasz.luba@arm.com, konradybcio@kernel.org,
        amitk@kernel.org, mani@kernel.org, casey.connolly@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-3-gaurav.kohli@oss.qualcomm.com>
 <evb5tn2cht7wk76fuc2wpsyxepknigfw37633n6ypuapstbceh@tn5glmi65bdv>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <evb5tn2cht7wk76fuc2wpsyxepknigfw37633n6ypuapstbceh@tn5glmi65bdv>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA4MDA0NiBTYWx0ZWRfX1sqwHJUq/QgD
 1rs/NnWBfYqyLiQ8pVVFMC4ZICI0Gf2sk8SQVPx6XM8rVHhDY6WWwgLavnoyZ24dkRinWWl00IW
 8EwJb+GHg6tLk2NY3FPFU49WpfVswg7MFCNkDFvN5Z31x9bQpooqpNNMffo1eyq3byv8xojFBBD
 A0cDZ20Uqevw2l2w5g3Mq0b184HfU1OB/6bw8VlhXRk3Hr47PQCm1CcQphYmKdpGMKOYya+xXrd
 bp5Qr1WcXkz6aqxHDqciPzA9Imm6Vsp9DYuqokAogTHAPOS4WiRlJE4M4XEZHIeQK+aMWe/pI/5
 78dGV7dmfqa0P/M0M2k5uQxcaQFprLuLEpCJVcGhKhPqcz8MAzVkfk5/OS+H07Fn6MVfO6KBYT0
 z/yF4v+CETafo+ClcX34sHgjA4DoQVqLJV2ejigpAfkPmAXCYs0gG3J7A0qA4OM++eFspTqaQmB
 kP9cjGXG2Rws4WOxOFQ==
X-Proofpoint-GUID: x5k2hNOe6wHsrfHddd5Hd-A1TPsSNEUJ
X-Proofpoint-ORIG-GUID: x5k2hNOe6wHsrfHddd5Hd-A1TPsSNEUJ
X-Authority-Analysis: v=2.4 cv=XMM9iAhE c=1 sm=1 tr=0 ts=695f57bf cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=87LZ4QhyrNmesvD_9F8A:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-08_01,2026-01-07_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 lowpriorityscore=0
 suspectscore=0 bulkscore=0 phishscore=0 spamscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601080046


On 1/3/2026 8:26 PM, Bjorn Andersson wrote:
> On Tue, Dec 23, 2025 at 06:02:21PM +0530, Gaurav Kohli wrote:
>> From: Casey Connolly <casey.connolly@linaro.org>
>>
>> Generalise the qcom,bam-dmux child node support by probing all
>> remoteproc children with of_platform_populate(). This will be used to
>> enable support for devices which are best represented as subnodes of the
>> remoteproc, such as those representing QMI clients.
> Please flip this around, start with the description of the problem
> you're trying to solve.
>
>> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> This must have your signed-off-by, where you certifies the origin of
> this patch.
>
>> ---
>>   drivers/remoteproc/qcom_q6v5.c     | 4 ++++
>>   drivers/remoteproc/qcom_q6v5_mss.c | 8 --------
>>   2 files changed, 4 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/remoteproc/qcom_q6v5.c b/drivers/remoteproc/qcom_q6v5.c
>> index 58d5b85e58cd..a02839c7ed8c 100644
>> --- a/drivers/remoteproc/qcom_q6v5.c
>> +++ b/drivers/remoteproc/qcom_q6v5.c
>> @@ -6,6 +6,7 @@
>>    * Copyright (C) 2014 Sony Mobile Communications AB
>>    * Copyright (c) 2012-2013, The Linux Foundation. All rights reserved.
>>    */
>> +#include <linux/of_platform.h>
>>   #include <linux/kernel.h>
>>   #include <linux/platform_device.h>
>>   #include <linux/interconnect.h>
>> @@ -351,6 +352,8 @@ int qcom_q6v5_init(struct qcom_q6v5 *q6v5, struct platform_device *pdev,
>>   		return dev_err_probe(&pdev->dev, PTR_ERR(q6v5->path),
>>   				     "failed to acquire interconnect path\n");
>>   
>> +	of_platform_populate(q6v5->dev->of_node, NULL, NULL, q6v5->dev);
> There are other child nodes here, in particular the GLINK and SMD edges.
> Do we really want platform_devices registered for them?
>
> Regards,
> Bjorn


thanks for pointing this, can you please suggest the right approach.

This should not impact glink, as that is registering as rproc sub node, 
And we need rproc cooling as child node

of remote proc subsytem to create probe dependency only.


Can we do platform populate for specific child, would that be right 
approach. or we should create rproc cooling as independent of parent ?


>> +
>>   	return 0;
>>   }
>>   EXPORT_SYMBOL_GPL(qcom_q6v5_init);
>> @@ -361,6 +364,7 @@ EXPORT_SYMBOL_GPL(qcom_q6v5_init);
>>    */
>>   void qcom_q6v5_deinit(struct qcom_q6v5 *q6v5)
>>   {
>> +	of_platform_depopulate(q6v5->dev);
>>   	qmp_put(q6v5->qmp);
>>   }
>>   EXPORT_SYMBOL_GPL(qcom_q6v5_deinit);
>> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c b/drivers/remoteproc/qcom_q6v5_mss.c
>> index 91940977ca89..d40565c1cc62 100644
>> --- a/drivers/remoteproc/qcom_q6v5_mss.c
>> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
>> @@ -238,7 +238,6 @@ struct q6v5 {
>>   	struct qcom_rproc_pdm pdm_subdev;
>>   	struct qcom_rproc_ssr ssr_subdev;
>>   	struct qcom_sysmon *sysmon;
>> -	struct platform_device *bam_dmux;
>>   	bool need_mem_protection;
>>   	bool has_alt_reset;
>>   	bool has_mba_logs;
>> @@ -2029,7 +2028,6 @@ static int q6v5_alloc_memory_region(struct q6v5 *qproc)
>>   static int q6v5_probe(struct platform_device *pdev)
>>   {
>>   	const struct rproc_hexagon_res *desc;
>> -	struct device_node *node;
>>   	struct q6v5 *qproc;
>>   	struct rproc *rproc;
>>   	const char *mba_image;
>> @@ -2163,10 +2161,6 @@ static int q6v5_probe(struct platform_device *pdev)
>>   	if (ret)
>>   		goto remove_sysmon_subdev;
>>   
>> -	node = of_get_compatible_child(pdev->dev.of_node, "qcom,bam-dmux");
>> -	qproc->bam_dmux = of_platform_device_create(node, NULL, &pdev->dev);
>> -	of_node_put(node);
>> -
>>   	return 0;
>>   
>>   remove_sysmon_subdev:
>> @@ -2186,8 +2180,6 @@ static void q6v5_remove(struct platform_device *pdev)
>>   	struct q6v5 *qproc = platform_get_drvdata(pdev);
>>   	struct rproc *rproc = qproc->rproc;
>>   
>> -	if (qproc->bam_dmux)
>> -		of_platform_device_destroy(&qproc->bam_dmux->dev, NULL);
>>   	rproc_del(rproc);
>>   
>>   	qcom_q6v5_deinit(&qproc->q6v5);
>> -- 
>> 2.34.1
>>

