Return-Path: <devicetree+bounces-258658-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IGHOLdLPcmnKpgAAu9opvQ
	(envelope-from <devicetree+bounces-258658-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:33:06 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 674EA6F1E0
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 02:33:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id CF70A30071ED
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 01:33:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5694433D6E7;
	Fri, 23 Jan 2026 01:33:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IhEKpvZR";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="j+A6feMS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A123358D2
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 01:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769131983; cv=none; b=culN14b1xUYioKrpg1ey9bNG3h7h9QYyJRlYkuW/vzN6+tim0BLsj4F0dVLm5nhrTRGNz6fRdddNDjhxa++BVycgG7ECt7WcpmijU9CmXaEizWc78ZLA/Txbx9aozFhLsXIvx0t8iVYOqpZuNw+5iV1DUfORdh6goq5fjHCuGPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769131983; c=relaxed/simple;
	bh=Fm5jgkwY9e0jxqp+BuT8UHuaeaRuMCFAfam7FZkXC78=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pYquiXkUSn984W0SHzZ7AUEu4Cms8zIRAdZOjirOjXAS4ELEqh4PcMf4XtAByh/K454P6HkGT3Z8qCMfrqMNfMvgwuyb3SHegd8zNm7DVKFH16iBH1JFtmWpbbbPFbUabnRveXC/GpBl8tc2XMfCovrIBdBk2FeE7aAERfpjEWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IhEKpvZR; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=j+A6feMS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60MK83w54138687
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 01:32:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+uuLZHwmvu91uXKQ5s1MOyzkT50vhUhhXbA5LIukjvA=; b=IhEKpvZRJx7ithfI
	cdKDNV28wmrVX2HOrkAN4YF+arGTCwgfvPGLEU83FOEl2iCrxBbyDYGjUC7dOffO
	sVCSXxM70BmOar7adko44s9AJ+/4ERjQ8vr00UhkeyoD/OI0Oc64J+dM1nxNyzHJ
	lDg3SUSDrw5yEB6fMRjQqiK8sJ4aDJ0w3ceSqDxBzdeP7VRXOm9Eu48rf59gcADY
	GVfC7Kd35oWxds5SmgZzLK1dv2qtcpr1bEteqqihk4bksMSGKDc4RB2iuKcLqFgE
	Nvnxd4tJypcVSPVJsLpX7QVMEzcrKESgG5khLUmBZofu6nhFZaV4Oe0eVXQo6BwH
	thCoVA==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bujf2jmwj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 01:32:34 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c56848e6f53so911521a12.0
        for <devicetree@vger.kernel.org>; Thu, 22 Jan 2026 17:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769131952; x=1769736752; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+uuLZHwmvu91uXKQ5s1MOyzkT50vhUhhXbA5LIukjvA=;
        b=j+A6feMSVPUdDOdpongcuF8n8NMVL13nooxhumJe3fpA+jcqU6rmmGWsH6wo899soh
         3LdfZJgv81dHEwDnkuca/jM8Rs1Geg1XwT1CRGqrqpUUPC2G/w5V7rTgepZQY03+pB0W
         +x0obAo0QqJCKhsNx8nZ47jiwvPZoWKUOeI9R7N7TSD2A/UOeP20TEj4XGuvLqpBecGr
         susUFe+Q114cDPC4YjribZuD6vVVlL0LTaReQ1Bo3c1801uCSlGZgbZWLP2nSsvopnNr
         ksNlDT74m8tju+lk1aX1f5Fmh33Tai6bK+JqniHQnhWqLEVLHRkoKe/3PPLOIhCxAbQd
         zKKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769131952; x=1769736752;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+uuLZHwmvu91uXKQ5s1MOyzkT50vhUhhXbA5LIukjvA=;
        b=wbs+N+btvQpZWlfGSD5Pz4xQUFbtiqwDXMOxKlwkiUTWkya5Po+Z/9YZ4mIFCm8MIw
         2/aHE2wenz/UWzRx+G7hejuTSCs+r4U5EvUUPvUb000wytK3e34JAfxXSECq6T+0dyQp
         UqgAqt99iGXhR7PryGnrC3vGqR2f2h/CXIQ+n2vqEO+EEHmxj0OQXj7tCSpHKgXM71ap
         8CB/7odbqEoHghCzA/YzlOJIORhK6WzQJo2dy4EAqLnA6m9qhgCiK1adkEktq3ai+Ca6
         Z1IYWX/RatR3fJgTUj+gRFg3UH6cdV5cUbrAtlI33HYZOSCRQDAxT7ZZTHQGF3aKvqHd
         8fQg==
X-Forwarded-Encrypted: i=1; AJvYcCUGXFEQnwWCxYwk4keWaj9C4rSLLD79Gyr6mzX9K5DXX4IgypwJRAXYf42iL/VgKhM5fa9l3fARo0wH@vger.kernel.org
X-Gm-Message-State: AOJu0YzXKhsMFye6qLd7Dx95G9IegflUWFzFdfKGlywD3goHi/VhEu9g
	5i8G/+UH8/FadBZX3Zhg9tUuCBdWNoSvsANcLYt+aoQEsSMKLko1bib0qyKfkzTtD6gV6TaUm0u
	3Nx8l9jGDlYDIlyWr/ddyt57B5vIPfwJr+zoxsmJNs5ZJx9I3gR2sXKmMlZ/XqlWq
X-Gm-Gg: AZuq6aIU1Em7gjqQXmyKJ8lshZzHR1DFY/nkey7p8lTvKBQLXi4VmStNSJ8rQ81v7Z9
	H8ysO87qFBBu6eUeXrTEOSD95iEpfIGkkJn6qPqk4v/fjMuBMl3K2zolcLKebvTVp/r+w76gE24
	XtfgOexeaUQFjmTa11HEOz52JP8IUuecIb7b99Gw0CaN7oVWqp+1J9jVx/GnoXf2++Fk7B1B4s4
	REwDSD6mU094OkLIthhiJ++i5tr+y6I6o8QyRSA+HJjnJlJy0IP0binNZs1VrnKKnQg1aTW8JAU
	laZ/TsoAM/k61TKA8Eg+RdgtT8JYviM5d6urFwdOCjqjYqZdr1+Qg39Ez5rMdws2q5BaPw8Rpmp
	24gkMAwzmRGHjS21qcfj1wsvX6qjkcVmhtC/Upfn5wMqbdGsjK+sgIoAjHOSNRM0GdeA3Ixxn74
	c=
X-Received: by 2002:a05:6a21:700e:b0:35d:5d40:6d78 with SMTP id adf61e73a8af0-38e6f7d68d3mr1297870637.46.1769131952249;
        Thu, 22 Jan 2026 17:32:32 -0800 (PST)
X-Received: by 2002:a05:6a21:700e:b0:35d:5d40:6d78 with SMTP id adf61e73a8af0-38e6f7d68d3mr1297830637.46.1769131951588;
        Thu, 22 Jan 2026 17:32:31 -0800 (PST)
Received: from [10.133.33.105] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c635a43fc46sm522690a12.36.2026.01.22.17.32.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jan 2026 17:32:31 -0800 (PST)
Message-ID: <2c440398-fc03-4e26-a471-2c1a742b95c0@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 09:32:26 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 3/8] coresight: tmc: Introduce sysfs_read_ops to wrap
 sysfs read operations
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
References: <20260122-enable-byte-cntr-for-ctcu-v10-0-22978e3c169f@oss.qualcomm.com>
 <20260122-enable-byte-cntr-for-ctcu-v10-3-22978e3c169f@oss.qualcomm.com>
 <f78f72ec-9b57-4373-a7f0-a9295326832b@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <f78f72ec-9b57-4373-a7f0-a9295326832b@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 8SrA1LM-aWP3d-vzbExavQqAPaLtmedj
X-Authority-Analysis: v=2.4 cv=fdCgCkQF c=1 sm=1 tr=0 ts=6972cfb2 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=VFazKpM1ZUkYcEefXmEA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDAwOCBTYWx0ZWRfX0+f0efI1MQln
 A0eopi+zCZiqc0giFe4EweQiXhMj6HRGVPON4AeUaLIIgoM4W/LQ1kZDqB1thitj2HKl9y0UA06
 N4o8mQjlVwxFmIutKXQQUi+H5HJS4AZ5TQXNO4Edk71r2lnu+7ML3ZrvfsEAIZe/PqWmsfHERfM
 n9ULNDiazIAzj/TE5IGUB03exD/Yf5K+47zxsQ2Hu4SWiXRk/zkWCiSQE4y9Nyh2dIIG23eH8ce
 kRFC4rJzXdSYLIcRT3mD42KV/AI9rNU8ygTNuZMbuflGXxsYjttVtKLdbvsl6s2UudRy9q5navN
 yRZRDXuieZ3gxy3B0VLT1+Xag6l8Iy9yZmFMRBPyc0rA8Egq65V5cvRwL4gTU4BKIsH5GkF/Nai
 5N6vPku3QEfjZWaamBafBx8VtEfGE5rzKIL14nMCEPKQ93gKYHYSr2LIIftNtCR6fXDsKTnOGSG
 2vjKkCLFTP9VMAtAO7A==
X-Proofpoint-GUID: 8SrA1LM-aWP3d-vzbExavQqAPaLtmedj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-22_06,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 priorityscore=1501 bulkscore=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 adultscore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601230008
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258658-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,desc.name:url,qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jie.gan@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 674EA6F1E0
X-Rspamd-Action: no action



On 1/22/2026 6:07 PM, Suzuki K Poulose wrote:
> On 22/01/2026 02:08, Jie Gan wrote:
>> Introduce sysfs_read_ops as a wrapper, wrap sysfs read operations, for 
>> reading
>> trace data from the TMC buffer.
>>
>> Reviewed-by: Mike Leach <mike.leach@linaro.org>
>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>> ---
>>   drivers/hwtracing/coresight/coresight-tmc-core.c | 50 ++++++++++ 
>> +-------------
>>   drivers/hwtracing/coresight/coresight-tmc.h      | 17 ++++++++
>>   2 files changed, 40 insertions(+), 27 deletions(-)
>>
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc-core.c b/ 
>> drivers/hwtracing/coresight/coresight-tmc-core.c
>> index 1ea255ffa67c..8b0397a77e57 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc-core.c
>> +++ b/drivers/hwtracing/coresight/coresight-tmc-core.c
>> @@ -232,17 +232,10 @@ static int tmc_read_prepare(struct tmc_drvdata 
>> *drvdata)
>>   {
>>       int ret = 0;
>> -    switch (drvdata->config_type) {
>> -    case TMC_CONFIG_TYPE_ETB:
>> -    case TMC_CONFIG_TYPE_ETF:
>> -        ret = tmc_read_prepare_etb(drvdata);
>> -        break;
>> -    case TMC_CONFIG_TYPE_ETR:
>> -        ret = tmc_read_prepare_etr(drvdata);
>> -        break;
>> -    default:
>> +    if (drvdata->sysfs_ops)
>> +        ret = drvdata->sysfs_ops->read_prepare(drvdata);
>> +    else
>>           ret = -EINVAL;
>> -    }
>>       if (!ret)
>>           dev_dbg(&drvdata->csdev->dev, "TMC read start\n");
>> @@ -254,17 +247,10 @@ static int tmc_read_unprepare(struct tmc_drvdata 
>> *drvdata)
>>   {
>>       int ret = 0;
>> -    switch (drvdata->config_type) {
>> -    case TMC_CONFIG_TYPE_ETB:
>> -    case TMC_CONFIG_TYPE_ETF:
>> -        ret = tmc_read_unprepare_etb(drvdata);
>> -        break;
>> -    case TMC_CONFIG_TYPE_ETR:
>> -        ret = tmc_read_unprepare_etr(drvdata);
>> -        break;
>> -    default:
>> +    if (drvdata->sysfs_ops)
>> +        ret = drvdata->sysfs_ops->read_unprepare(drvdata);
>> +    else
>>           ret = -EINVAL;
>> -    }
>>       if (!ret)
>>           dev_dbg(&drvdata->csdev->dev, "TMC read end\n");
>> @@ -291,13 +277,8 @@ static int tmc_open(struct inode *inode, struct 
>> file *file)
>>   static ssize_t tmc_get_sysfs_trace(struct tmc_drvdata *drvdata, 
>> loff_t pos, size_t len,
>>                      char **bufpp)
>>   {
>> -    switch (drvdata->config_type) {
>> -    case TMC_CONFIG_TYPE_ETB:
>> -    case TMC_CONFIG_TYPE_ETF:
>> -        return tmc_etb_get_sysfs_trace(drvdata, pos, len, bufpp);
>> -    case TMC_CONFIG_TYPE_ETR:
>> -        return tmc_etr_get_sysfs_trace(drvdata, pos, len, bufpp);
>> -    }
>> +    if (drvdata->sysfs_ops)
>> +        return drvdata->sysfs_ops->get_trace_data(drvdata, pos, len, 
>> bufpp);
> 
> minor nit: Please could we bail out in tmc_open() if the drvdata- 
>  >sysfs_ops is not set. That way, we don't have to sprinkle it 
> everywhere. And also, we don't expect to see this case anyways.
> 

In tmc_open, we already have checked the validation of the 
drvdata->sysfs_ops, we dont need check it again here. I will fix it in 
next version.

>>       return -EINVAL;
>>   }
>> @@ -769,6 +750,18 @@ static void register_crash_dev_interface(struct 
>> tmc_drvdata *drvdata,
>>               "Valid crash tracedata found\n");
>>   }
>> +static const struct sysfs_read_ops tmc_etb_sysfs_read_ops = {
> 
> minor nit: please could we rename the struct type to :
> 
> struct tmc_sysfs_ops
> 
> and then use
> 
> etb_sysfs_ops = {}
> etr_sysfs_ops = {}
> 
> 
> Rest looks fine to me
> 

Well noted. Will fix it in next version.

Thanks,
Jie


> Suzuki
> 
>> +    .read_prepare    = tmc_read_prepare_etb,
>> +    .read_unprepare    = tmc_read_unprepare_etb,
>> +    .get_trace_data    = tmc_etb_get_sysfs_trace,
>> +};
>> +
>> +static const struct sysfs_read_ops tmc_etr_sysfs_read_ops = {
>> +    .read_prepare    = tmc_read_prepare_etr,
>> +    .read_unprepare    = tmc_read_unprepare_etr,
>> +    .get_trace_data    = tmc_etr_get_sysfs_trace,
>> +};
>> +
>>   static int __tmc_probe(struct device *dev, struct resource *res)
>>   {
>>       int ret = 0;
>> @@ -828,6 +821,7 @@ static int __tmc_probe(struct device *dev, struct 
>> resource *res)
>>           desc.subtype.sink_subtype = CORESIGHT_DEV_SUBTYPE_SINK_BUFFER;
>>           desc.ops = &tmc_etb_cs_ops;
>>           dev_list = &etb_devs;
>> +        drvdata->sysfs_ops = &tmc_etb_sysfs_read_ops;
>>           break;
>>       case TMC_CONFIG_TYPE_ETR:
>>           desc.groups = coresight_etr_groups;
>> @@ -841,6 +835,7 @@ static int __tmc_probe(struct device *dev, struct 
>> resource *res)
>>           mutex_init(&drvdata->idr_mutex);
>>           dev_list = &etr_devs;
>>           INIT_LIST_HEAD(&drvdata->etr_buf_list);
>> +        drvdata->sysfs_ops = &tmc_etr_sysfs_read_ops;
>>           break;
>>       case TMC_CONFIG_TYPE_ETF:
>>           desc.groups = coresight_etf_groups;
>> @@ -849,6 +844,7 @@ static int __tmc_probe(struct device *dev, struct 
>> resource *res)
>>           desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_FIFO;
>>           desc.ops = &tmc_etf_cs_ops;
>>           dev_list = &etf_devs;
>> +        drvdata->sysfs_ops = &tmc_etb_sysfs_read_ops;
>>           break;
>>       default:
>>           pr_err("%s: Unsupported TMC config\n", desc.name);
>> diff --git a/drivers/hwtracing/coresight/coresight-tmc.h b/drivers/ 
>> hwtracing/coresight/coresight-tmc.h
>> index 9b3c4e6f0a5e..c9a82ff6cd00 100644
>> --- a/drivers/hwtracing/coresight/coresight-tmc.h
>> +++ b/drivers/hwtracing/coresight/coresight-tmc.h
>> @@ -221,6 +221,8 @@ struct etr_buf_node {
>>       struct list_head    node;
>>   };
>> +struct sysfs_read_ops;
>> +
>>   /**
>>    * struct tmc_drvdata - specifics associated to an TMC component
>>    * @atclk:    optional clock for the core parts of the TMC.
>> @@ -258,6 +260,7 @@ struct etr_buf_node {
>>    *         Used by ETR/ETF.
>>    * @etr_buf_list: List that is used to manage allocated etr_buf.
>>    * @reading_node: Available buffer_node for byte-cntr reading.
>> + * @sysfs_ops:    Read operations for sysfs mode.
>>    */
>>   struct tmc_drvdata {
>>       struct clk        *atclk;
>> @@ -290,6 +293,20 @@ struct tmc_drvdata {
>>       struct tmc_resrv_buf    crash_mdata;
>>       struct list_head        etr_buf_list;
>>       struct etr_buf_node     *reading_node;
>> +    const struct sysfs_read_ops    *sysfs_ops;
>> +};
>> +
>> +/**
>> + * struct sysfs_read_ops - read operations for TMC and its helper 
>> devices
>> + * @read_prepare:    prepare operation.
>> + * @read_unprepare:    unprepare operation.
>> + * @get_trace_data:    read operation.
>> + */
>> +struct sysfs_read_ops {
>> +    int (*read_prepare)(struct tmc_drvdata *drvdata);
>> +    int (*read_unprepare)(struct tmc_drvdata *drvdata);
>> +    ssize_t (*get_trace_data)(struct tmc_drvdata *drvdata, loff_t pos,
>> +                  size_t len, char **bufpp);
>>   };
>>   struct etr_buf_operations {
>>
> 


