Return-Path: <devicetree+bounces-160175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5B0A6DB7A
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:30:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 43FB6188F5A1
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B27125F797;
	Mon, 24 Mar 2025 13:29:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FBQ0IH7L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D3A925EFB9
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:29:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742822975; cv=none; b=TVaUIx8abX5cRHZXsOjiXOjZ+661t3iM2vAKLSiD3D9Vfm7eOwrd7LOu8dstwyB6+QNOm3gcJC5Nm8urVIRl+TTdP75Fpos702972JhhD74t6XqVtmpfM95c5ijxPUkf64cvuefKCAye7GA4JtbeSeA1EnvRtZtfKKGpAqJaebc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742822975; c=relaxed/simple;
	bh=ToQFGwDDDePBcLj0Tl6e42Pcn77uyEQUZi/Zk7Ze/gY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=akf4hSHS7KXdm/5JtMheCzO8g0tQvuausrZmiT73hHA4yqov/BD6WpPHbnhQsXl3JeGD06RshqvRoi+xSh7DZ3o17pk7dydxIydDxjKG9h4zGkI4v1hQQwjLhEAbh4eGt91FG+H+f9xBmto3ZtCuzuJpoebkMqrVKKQDwLDEfE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FBQ0IH7L; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ac25520a289so791666066b.3
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742822972; x=1743427772; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wTTdxiEXTLI0RB3J4azgwISZcRhYfAuhdc+KevBi5vw=;
        b=FBQ0IH7Lil4t9nylwAriL9+AADyK4D7SWkKRjsG5xi2VT33mg92IGpF2cykNROCn8O
         lJ6+ME1dBfD8L3JFQlJAqqod+S0Jv3EegET70RAB8WqXIT0GKNzdQiAAcnFYZRY78khY
         Nav4G2mzWCl2GjoU64fyhBhGqRpn4svcfpH2CrFDXm/byrSDLnoNizxS6FS/ix0njbeI
         +BCrEqbckeqoybCo5eqE35sy9XNeIf22lEaoP/L3y4G1JNe9y628aD5cdgbkIfbEzST4
         MnwkxEuVcO46+zVaOgJdpNb8Rv7uDxFzM1AJpg/+9WzshEim0fjjkvEwLWB/PYgw54/O
         XgCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742822972; x=1743427772;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wTTdxiEXTLI0RB3J4azgwISZcRhYfAuhdc+KevBi5vw=;
        b=HTEL3FM6Jd/gapFgOBqDB5NuGgfIG4T3gs8ltwmCF6yUlNI1ZCte99dq/UGnJWWDqG
         qwBoZaDlnxDcp+Enk8aHvNv2qOGmF5FjZk8xIaEaYjpA7ABnu8pKAzfOwNvRhpQF3f3M
         iUfp15m8WxMH3CuzOwaTQSM8FD+wYOT6fuxOzFzGRXyn4HNY4sIL17GIEK+oM3V6Il3r
         /RYWVW8af0aLLAQmW7ilAOZnY5IdAwpp+S4rFb8Ds+PmP3Cm9mF7dJY2mJXpfkV6jjRq
         e9fZ0hrgrrl9cQoQbdj7SAxVU0Nh9Q4xc1UMPsK0bMLHRpvdilk7MTzOdEenFy7WmmrN
         Qe6g==
X-Forwarded-Encrypted: i=1; AJvYcCVWNXsssTpcNPb5uqtmz7vw+LxzaAsvUol/FMxcIprE54bxTXHOkb/EZ/Uc1PZ+bxTWxCW6PCJDEVK1@vger.kernel.org
X-Gm-Message-State: AOJu0YyIAJ/Dfo4fW3C8DvvpJcuVKbWPIq8VmIs3yW7Hk8owwzDp+k8g
	RBLvBwE939bDjVmakYBNVth5u1R9QlBuAgjQQ26BQaVX4KmHEGgqUZiDrU3ClkA=
X-Gm-Gg: ASbGncse/z0gtZMaoUVe7lQ26LgNCjUJPA6m+ULDYl3H1dDjmYrgn+C/fH3x+aLG8MF
	LtgczXtovcqN0u+/c6iVe+oUZx7/KJmD7bkSuiuH0QSiR5QuNWMJu+/J24PUg3yLRfAJIeGa86j
	KrAT0IsnAqSK+efWvRf9hBi2aAj83vGz/vtj6DbU9xo5FC04zh6Duvv/ViabDVSQndY6vsXITVC
	EZeiLbX/7x3r5F8Ar5Mx1t/4BFUOjzftVmFoE40/sHeyDf0TkyHWpqjPGSRIoBhEJwAy1I9e0ua
	/+iqEnkgJjbNiUaS7LbOyvAsB0k4yx0/xyL3h9nMRR4PZNHsP8ZoRriz4d1G090=
X-Google-Smtp-Source: AGHT+IH+XEdLXnQX6nhvXQgyxnwEG52GJc4c2uceRNSxMxazFeWfoa7SI9NnS80gXy0yOwDc7i3hHg==
X-Received: by 2002:a17:907:9482:b0:ac3:10e3:7fa5 with SMTP id a640c23a62f3a-ac3f20f51cbmr1074443466b.21.1742822971571;
        Mon, 24 Mar 2025 06:29:31 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id a640c23a62f3a-ac3efbdc78esm682685766b.134.2025.03.24.06.29.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 06:29:31 -0700 (PDT)
Message-ID: <90f2bcab-d89f-40c0-9851-7ff25f2c1eda@linaro.org>
Date: Mon, 24 Mar 2025 13:29:30 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] misc: fastrpc: add support for gpdsp remoteproc
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Ling Xu <quic_lxu5@quicinc.com>, andersson@kernel.org,
 konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, amahesh@qti.qualcomm.com, arnd@arndb.de,
 gregkh@linuxfoundation.org, quic_kuiw@quicinc.com,
 quic_ekangupt@quicinc.com, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org
References: <20250320091446.3647918-1-quic_lxu5@quicinc.com>
 <20250320091446.3647918-3-quic_lxu5@quicinc.com>
 <30bba296-8e6f-41ee-880e-2d5ecc8fe5a4@linaro.org>
 <5r72xrv5rtw6bemh5onygkroyasroviijlta4hvwgm5c5hzvax@3icylchlufu3>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <5r72xrv5rtw6bemh5onygkroyasroviijlta4hvwgm5c5hzvax@3icylchlufu3>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 21/03/2025 14:07, Dmitry Baryshkov wrote:
> On Thu, Mar 20, 2025 at 05:11:20PM +0000, Srinivas Kandagatla wrote:
>>
>>
>> On 20/03/2025 09:14, Ling Xu wrote:
>>> The fastrpc driver has support for 5 types of remoteprocs. There are
>>> some products which support GPDSP remoteprocs. Add changes to support
>>> GPDSP remoteprocs.
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
>>> ---
>>>    drivers/misc/fastrpc.c | 10 ++++++++--
>>>    1 file changed, 8 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
>>> index 7b7a22c91fe4..80aa554b3042 100644
>>> --- a/drivers/misc/fastrpc.c
>>> +++ b/drivers/misc/fastrpc.c
>>> @@ -28,7 +28,9 @@
>>>    #define SDSP_DOMAIN_ID (2)
>>>    #define CDSP_DOMAIN_ID (3)
>>>    #define CDSP1_DOMAIN_ID (4)
>>> -#define FASTRPC_DEV_MAX		5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
>>> +#define GDSP0_DOMAIN_ID (5)
>>> +#define GDSP1_DOMAIN_ID (6)
>>
>> We have already made the driver look silly here, Lets not add domain ids for
>> each instance, which is not a scalable.
>>
>> Domain ids are strictly for a domain not each instance.
>>
>>
>>> +#define FASTRPC_DEV_MAX		7 /* adsp, mdsp, slpi, cdsp, cdsp1, gdsp0, gdsp1 */
>>>    #define FASTRPC_MAX_SESSIONS	14
>>>    #define FASTRPC_MAX_VMIDS	16
>>>    #define FASTRPC_ALIGN		128
>>> @@ -107,7 +109,9 @@
>>>    #define miscdev_to_fdevice(d) container_of(d, struct fastrpc_device, miscdev)
>>>    static const char *domains[FASTRPC_DEV_MAX] = { "adsp", "mdsp",
>>> -						"sdsp", "cdsp", "cdsp1" };
>>> +						"sdsp", "cdsp",
>>> +						"cdsp1", "gdsp0",
>>> +						"gdsp1" };
>>>    struct fastrpc_phy_page {
>>>    	u64 addr;		/* physical address */
>>>    	u64 size;		/* size of contiguous region */
>>> @@ -2338,6 +2342,8 @@ static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>>>    		break;
>>>    	case CDSP_DOMAIN_ID:
>>>    	case CDSP1_DOMAIN_ID:
>>> +	case GDSP0_DOMAIN_ID:
>>> +	case GDSP1_DOMAIN_ID:
>>>    		data->unsigned_support = true;
>>>    		/* Create both device nodes so that we can allow both Signed and Unsigned PD */
>>>    		err = fastrpc_device_register(rdev, data, true, domains[domain_id]);
>>
>>
>> Can you try this patch: only compile tested.
>>
>> ---------------------------------->cut<---------------------------------------
>>  From 3f8607557162e16673b26fa253d11cafdc4444cf Mon Sep 17 00:00:00 2001
>> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> Date: Thu, 20 Mar 2025 17:07:05 +0000
>> Subject: [PATCH] misc: fastrpc: cleanup the domain names
>>
>> Currently the domain ids are added for each instance of domain, this is
>> totally not scalable approch.
>>
>> Clean this mess and create domain ids for only domains not its
>> instances.
>> This patch also moves the domain ids to uapi header as this is required
>> for FASTRPC_IOCTL_GET_DSP_INFO ioctl.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> ---
>>   drivers/misc/fastrpc.c      | 45 ++++++++++++++++++++-----------------
>>   include/uapi/misc/fastrpc.h |  7 ++++++
>>   2 files changed, 32 insertions(+), 20 deletions(-)
>>
> 
> 
>> diff --git a/include/uapi/misc/fastrpc.h b/include/uapi/misc/fastrpc.h
>> index f33d914d8f46..89516abd258f 100644
>> --- a/include/uapi/misc/fastrpc.h
>> +++ b/include/uapi/misc/fastrpc.h
>> @@ -133,6 +133,13 @@ struct fastrpc_mem_unmap {
>>   	__s32 reserved[5];
>>   };
>>
>> +#define ADSP_DOMAIN_ID (0)
>> +#define MDSP_DOMAIN_ID (1)
>> +#define SDSP_DOMAIN_ID (2)
>> +#define CDSP_DOMAIN_ID (3)
>> +#define GDSP_DOMAIN_ID (4)
> 
> Why are you adding these to uAPI? How are they going to be used by the
> userspace?
> 
>> +
>> +#define FASTRPC_DOMAIN_MAX	4
>>   struct fastrpc_ioctl_capability {
>>   	__u32 domain;

here, in domain value of fastrpc_ioctl_capability.



>>   	__u32 attribute_id;
>> -- 
>> 2.25.1
>>
>>
>> ---------------------------------->cut<---------------------------------------
> 

