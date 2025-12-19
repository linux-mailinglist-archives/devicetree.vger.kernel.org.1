Return-Path: <devicetree+bounces-248144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5A9CCF1DA
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 10:24:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 96CD53015AE9
	for <lists+devicetree@lfdr.de>; Fri, 19 Dec 2025 09:24:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9415A2EFDBA;
	Fri, 19 Dec 2025 09:24:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aCDgLARS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NQmNVoFV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E02252C027B
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:24:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766136266; cv=none; b=dSPk5Df5BDpmsOgG0QYle7YTvAiK9+rhwCLNC879vN882trnkpq2O72b1sGrygPIIktFnvlcpF4IJsGXBWQyt46Gi02Cy73Dm8YoKGhx9Kuhr1AmlW4fyTw1kRwyp+KaqvY9M4tMeO7/hyYUVCgv6Jfw+C36wHhV1qSeT8BGR7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766136266; c=relaxed/simple;
	bh=LgbFen8QkJa57MlcXSSYnglkQbLSOclS8v20wXODME0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=oqNoyZVdBUG01jGGXwQUjv+k9zlP4zs7fkyouukPMWQoQoCG8ILszvRsOM7YDO7v1EWMFvwb0Ty/XCiIWxDxN34cqXrQVWMynK4JTC0VOf3s/7x4nSZPb6HQbzgZBy5/Sbggn7lbqgJHhP0Su4H7vWssfnKUzboPkPKGxvg3r7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aCDgLARS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NQmNVoFV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BJ4cXCt3700967
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:24:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DOfwEI0tIm3WYzjLDVlBlTv1S+vqhrY0X0rRzcUt1/4=; b=aCDgLARS3jQj54UJ
	L6gWb/8+Zn7EWzsA7zGPjFEF3ux+FijNYfSxC4l2oKnQwQxGYdvkbhvsQgEcshMA
	QkeCjd/Y4XPtQiWgTcNNXXZXNQ8wP5IU0H1BwcKpQOmDGWlAkxYlKrx20IyjwFe8
	osd94TAxaIuWEimju+EcXFw9676ozmgchZpJz9HYI2AAEQxFs69fKv0ns+tI8n4c
	FS9UPWhrNDBeHovozQtlVc2tKeiZWURJR/B5h2xyaboUe64N5kI1BfP7VQtMuDSm
	Dy6hSmq1+YNwYx8XjAUxdtp/GBtlI2zn1DNiCOJ6D1NInVSc3zaG2/13xxPlq4YR
	ww9Y4w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b4r2ej1ka-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 09:24:23 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c43f8ef9bso2496676a91.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 01:24:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766136263; x=1766741063; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=DOfwEI0tIm3WYzjLDVlBlTv1S+vqhrY0X0rRzcUt1/4=;
        b=NQmNVoFVKf+yCJaXTU1X/PdLg1cFs7j64GdJjalFY2jIP4LPXHQR7F2qwnErNyULz+
         Nm70ZEnFNqsGbEjU3JkjIWtJd7KysVxJso+iVj/Y+x7BfVoSmW9dY7x46evl2x3j/5j0
         sGSAUv3up15DvVRuW+souOal+oTPdWP4loqlGUgyYw9YK502qPDDUdSLN1O3xQIWEOrA
         wjHIVHiWGri0pPtlsrwpsfczKWFrr8t8vQmNwUFjRfFYdGVADcKu8Hfvm+lUUehgV9Dd
         46PcB2fluT6Lz8T1P4V0GgmGaDkMDJ3h3VATQCBEKSgqT05YA0p5q3BkjZdnwMK3mwzr
         wVbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766136263; x=1766741063;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DOfwEI0tIm3WYzjLDVlBlTv1S+vqhrY0X0rRzcUt1/4=;
        b=KogT/W5D9ySPzMpO2Ql5o+EdOLynregW5QZliYW9zADgRsKX69+JcXmmWc0xztpB4y
         tcTIhp5FIc19bcFysgdriX7XtIHQdIRaILlyb+ErzdEGmvzhGZ4bth+QyLzYrA6MXLPE
         wYpAuRZS+Zbl7KtnK6Qg39X5Hb3U5Sh7VqRuo8S2pqyde3jKgxgw4omhDEJ4yy/gnMc4
         vCdtHdimNEmVP/u5fkW3IjgjO6qViumZ9A+UUNxKdaiZ+DP5/dULCNbqLPJxBvdfTAaf
         +wXNZHKOVmEu3LoYNmMxZu9XhqXu7wHgoFAnYvhK+eO7a+4ma6/7FPozt+veZgxbzLPC
         8JTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCvkJwHUXm6dEGh7qkX3UyJlyplqOq3CCS4ipMoC+Qvt5IlReKASof/H9aodiw2WtYqIaXrWnTKE9o@vger.kernel.org
X-Gm-Message-State: AOJu0YyiLfNENHaSkM3J5hyQeKDFrY7Xu5z5bgAvUZcaNwguZWaoTZB3
	3mTkxYqj/jK4b1AwV3RwSVJfSCpylMBSz1+D9IJkK/ZqvkOdfh6CXPPMMxiBFUSEM2Xbbwq9Sub
	Qn3GJnKF/md+UhWHzRWi09KyMe1mPhcJluxNlSu+KnDyr7LreDHN/yejtZOh0ozNr
X-Gm-Gg: AY/fxX4IVS6oG0IVtyIA8GXfn6S6XUrcFzdMnYtsZewzcrVah1OUS0WdzCkIB3MskQs
	mVGV6CBRIEN2rz9y6Y/o9PEzL8UmZ1pr48bYcUMqaBrIqNr4XJFklNtOhDcbk0Fw2pTz/s4mct8
	YtiO8HRmfkCJaE9z3+R61KtzAZwb7rssQcH5VCDN7SiixU5TgXFq4F0SP5sb9FniNdjFC0OFBTj
	+7t6D417GQPpvrW3G777b73gB5YWknrwAikbkm+aY0vyFbWPcvU4zZDL7sa6xP+Y5jWXFlW9raD
	snAhP13Uxz3+lWDjEMJHvuFfzPMA0pFROyPV4PfmiF07pOXjAwr6ulYOObpGccRJZ/NDZR5srEs
	EEpC0UZszmKoXDMNEYIYVpL7sXKHSzUeELy7XAmuIBHqW2+D+SOEYlKVlfKPZMOWMrZLqWz2yEi
	8=
X-Received: by 2002:a17:90a:c106:b0:34c:2f40:c662 with SMTP id 98e67ed59e1d1-34e71e2955bmr5077766a91.14.1766136262591;
        Fri, 19 Dec 2025 01:24:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFaHhZUaMUo8PyEk/p7xL6WeDX8rPW0yBK8DGzdCz4GjR2TbHsdfsLYyys2Yz/uQfK3XDzmBw==
X-Received: by 2002:a17:90a:c106:b0:34c:2f40:c662 with SMTP id 98e67ed59e1d1-34e71e2955bmr5077738a91.14.1766136262041;
        Fri, 19 Dec 2025 01:24:22 -0800 (PST)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e70dbcb6esm4744373a91.9.2025.12.19.01.24.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 Dec 2025 01:24:21 -0800 (PST)
Message-ID: <ac1dcd53-87f9-4b6e-ac95-dfe5fc972a89@oss.qualcomm.com>
Date: Fri, 19 Dec 2025 17:24:15 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 2/8] coresight: core: add a new API to retrieve the
 helper device
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com>
 <20251211-enable-byte-cntr-for-ctcu-v8-2-3e12ff313191@oss.qualcomm.com>
 <dd043b78-d60c-4a79-85a8-9f352a4d89e1@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <dd043b78-d60c-4a79-85a8-9f352a4d89e1@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 0io1J8IoYumHgI3UDAkXS2BRRtjhEGVQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE5MDA3NiBTYWx0ZWRfX/pMZn+uwGLOn
 cjMNLcjVzKzz33hAHhWUxgd3XA8nLCb1DXsZgq9BXKoWKB4zo2ANHdJhZOBJITxvBW+RfLdJOzV
 em504XUDxh2Dq5rO11SdfFMzuVhRW5SJ2FMdb1ihclnPgY5TDSV2vPVkiWneY8JBydkKWzd9o9r
 nWgQkL7exgPyPDhIMhvtE2A/uftzgqS3Hp34/lyOV3r1k6r9k6BvWgKyOEj0XESwTxsh+MqBJkq
 /16KigSfkzzLqhGITq1ZVCcJqhct/e0bFdrg6DNxTqnNOZ2kCvDE02/BxO+n4p0BJNaaVX7XIel
 R9wLr4sAMvglZjfJVPB1ei3oVksNVhpRjOHXylyK3QsNc80xk8oB01ajBaXcyn0GxEfTw//sI1V
 s7h7AOGdUKbZ8of0x69BxGDNjW0IyUrNv7CLZRPbSFz/6iOI235uq0Kf2cQO1cMTbOKSgIaVxOy
 QLv9kzUkdf3Vv2/+Odg==
X-Proofpoint-ORIG-GUID: 0io1J8IoYumHgI3UDAkXS2BRRtjhEGVQ
X-Authority-Analysis: v=2.4 cv=EabFgfmC c=1 sm=1 tr=0 ts=694519c7 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=t5fKABB059AxcEZLcEgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-19_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 bulkscore=0 suspectscore=0 priorityscore=1501 adultscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512190076



On 12/19/2025 1:50 AM, Suzuki K Poulose wrote:
> On 11/12/2025 06:10, Jie Gan wrote:
>> Retrieving the helper device of the specific coresight device based on
>> its helper_subtype because a single coresight device may has multiple 
>> types
>> of the helper devices.
>>
>> Reviewed-by: Mike Leach <mike.leach@linaro.org>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   drivers/hwtracing/coresight/coresight-core.c | 35 ++++++++++++++++++ 
>> ++++++++++
>>   drivers/hwtracing/coresight/coresight-priv.h |  2 ++
>>   2 files changed, 37 insertions(+)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-core.c b/drivers/ 
>> hwtracing/coresight/coresight-core.c
>> index 0e8448784c62..667883ccb4b7 100644
>> --- a/drivers/hwtracing/coresight/coresight-core.c
>> +++ b/drivers/hwtracing/coresight/coresight-core.c
>> @@ -585,6 +585,41 @@ struct coresight_device 
>> *coresight_get_sink(struct coresight_path *path)
>>   }
>>   EXPORT_SYMBOL_GPL(coresight_get_sink);
>> +/**
>> + * coresight_get_helper: find the helper device of the assigned csdev.
>> + *
>> + * @csdev: The csdev the helper device is conntected to.
>> + * @type:  helper_subtype of the expected helper device.
>> + *
>> + * Retrieve the helper device for the specific csdev based on its
>> + * helper_subtype.
>> + *
>> + * Return: the helper's csdev upon success or NULL for fail.
>> + */
>> +struct coresight_device *coresight_get_helper(struct coresight_device 
>> *csdev,
>> +                          enum coresight_dev_subtype_helper subtype)
> 
> We have almost a similar function in coresight-core.c :
> 
> coresight_find_output_type(pdata, type, subtype).
> 
> Please could we reuse that, instead of adding similar funcitons ?
> 
> Please be careful about the mutex.
> 

Thanks for the suggestion. I reviewed coresight_find_output_type, and I 
believe we can reuse it to retrieve the CTCU device.

Thanks,
Jie

> Suzuki
> 
>> +{
>> +    int i;
>> +    struct coresight_device *helper;
>> +
>> +    /* protect the connections */
>> +    mutex_lock(&coresight_mutex);
>> +    for (i = 0; i < csdev->pdata->nr_outconns; ++i) {
>> +        helper = csdev->pdata->out_conns[i]->dest_dev;
>> +        if (!helper || !coresight_is_helper(helper))
>> +            continue;
>> +
>> +        if (helper->subtype.helper_subtype == subtype) {
>> +            mutex_unlock(&coresight_mutex);
>> +            return helper;
>> +        }
>> +    }
>> +    mutex_unlock(&coresight_mutex);
>> +
>> +    return NULL;
>> +}
>> +EXPORT_SYMBOL_GPL(coresight_get_helper);
>> +
>>   /**
>>    * coresight_get_in_port: Find the input port number at @csdev where 
>> a @remote
>>    * device is connected to.
>> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/ 
>> hwtracing/coresight/coresight-priv.h
>> index cbf80b83e5ce..8e39a4dc7256 100644
>> --- a/drivers/hwtracing/coresight/coresight-priv.h
>> +++ b/drivers/hwtracing/coresight/coresight-priv.h
>> @@ -157,6 +157,8 @@ void coresight_path_assign_trace_id(struct 
>> coresight_path *path,
>>                      enum cs_mode mode);
>>   int coresight_get_in_port(struct coresight_device *csdev,
>>                 struct coresight_device *remote);
>> +struct coresight_device *coresight_get_helper(struct coresight_device 
>> *csdev,
>> +                          enum coresight_dev_subtype_helper subtype);
>>   #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
>>   int etm_readl_cp14(u32 off, unsigned int *val);
>>
> 


