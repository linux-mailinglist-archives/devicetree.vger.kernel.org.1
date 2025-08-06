Return-Path: <devicetree+bounces-202133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CECBB1C231
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 10:32:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 32F783AE704
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 08:32:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC83A28643C;
	Wed,  6 Aug 2025 08:32:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iEjhkFMU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32B79286410
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 08:32:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754469139; cv=none; b=soAc2Y+iJEpinpM9yZFBhB4ZrUGIvK3YT8Bpj/xtsAXcZBuVKvuyzlSWONKzmgDeBFpBPolupuU22PcHswrhnH/YuuyPjUJjgsPTn0vrr5Sc+c0mBQpZw7pcjj6Ha4SnyWj1pUI5FUUxfM8oRQARLDCbeAda5jeilNXCHxuDGAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754469139; c=relaxed/simple;
	bh=Gx9xYOEF6Hf8A4r6Jo6DWJlA8lab2iYthQr2Pd1bih8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bXAF17+gHygztLPNmj2EpD9Ew9qyuIrCQryAma3OXeGCXyAY0rZ80aQ/p8/FY5G5dfAPewKrJF5XnUBmD+CfI/lR4u5bndpW+cfef98hPmEruxRNJLB78I5c97esOEs/Yh6WYp5g3ROLLAL3UHaS1Gq0VaNY5OqyAcnvulL1TIg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iEjhkFMU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5766LPPh010363
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 08:32:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gVl7KxhpUlQVfwGSCI7uwJIxFW0XwW0xZf2nUDVHT9c=; b=iEjhkFMUTvcNo9ab
	GOcPwI87/CjUigO4zD+nwaSU3vs3ZnMjZKoct81/nobk5IjdSWYZMHGegA1zr9Xp
	Lnw+xq1wj/kyL7YsE0CV6nqYE1UUpQoglz7N1EjgCAOv8ckeGtOj+R8HKaymqXhV
	CIV7FYDSWg/iLq4NI5wgsSFABUwg5NF0m3RRilELVin+mXRU21CgkQeQGWz3owbV
	DEwI1Z90KmzvqVtb/KKCLM/0gXfsPs6zmzUHjuT0oLuxEdN7lF6NG++lwFM//S8i
	AicbCtS37zT9JNFeyMBMlb0HDP+DwNi42iMjtM2XK+5DcjBNrUCcDCmg6Cjj39+f
	2uk3Jw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy7t0r3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 08:32:17 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-242aa2e4887so1518115ad.3
        for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 01:32:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754469136; x=1755073936;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gVl7KxhpUlQVfwGSCI7uwJIxFW0XwW0xZf2nUDVHT9c=;
        b=O05E6yRaMOwN2p+RQ3TLp/AvJcWq+D7oaQipiId7uCqcoOzjHL2j9rxgcRO4fDWStD
         a9/KkMVdUx6Y02uvv2rzF+HK9/r5QIObNnV223aoxIXMlER3S/E6AYtz3emOk2DqfOOg
         dQdj9l/pO2vs0G6Qx2nHfBd5D6ABSbNtv7kPw/en2BBZ3Op8gTnEVmX5CumXvvCmxCj6
         KsQNXtlsfGsXYvRqNtV9KkNG/s0wE4JAxj2Tf/ThlNqlID7g8Td8y5xVNf1z5hohuki7
         xz5I3A1GbXe2ncZiMke9pX/pQ8L+si3EWfR0s14WCzt+tX917bdcP1RWEy1Tvy+z78Ks
         GYfg==
X-Forwarded-Encrypted: i=1; AJvYcCW2na6b2IjHxcGly+YemQ7z9mb49VVTQ/DUERmHZ0XaAWaBr1SWmaX1y4gWz2346YF8QICeqqVncxDp@vger.kernel.org
X-Gm-Message-State: AOJu0Ywwp6kCoB1FwSHmrOZsBi6rcD5pXdKC2spRmkH424oF7JerMLQt
	xiYnHgQNBmIX47em7TUng9pMhJxkiGi+7jfy4YCfAF/4lWOOOe3GpIE2wDrGm6oq2WajzhWBhcQ
	8D8C1BlunFJmBgjxcqtGr4L/f1H1n9DUYFyRebk5b5MrG66EwjdLKPXEWMjppFsSM
X-Gm-Gg: ASbGnctK0tK4xAKEDmbnU6xMwfqXNuWZDZmkF5RGZvWjd38Q7T+vBgWfrNxB2cV1c7E
	7aZMEJiZKMtFeuynVYjAczEhTnQKpqWS8hSluXT+teoSOecflwYzys0ogX83wSTmxNOp/8ExhrL
	80OV7EooTsARzRQSdgqPfZIeqjTuP1Mcn+zqX4rRe5nx75YdEcPTGhRF5cQbhkGcjTTrypYsXUH
	Cj4jCFI3AgrR1wLQn3gER/bivjEPgS6jqDFnV0fBb+faaA324CaKYndvP7Z05Nf76Sxpd3iyQVX
	ODAtEabq/MHoTItGhZUgbDKJmgjzTDKPxiUa3AFXm1w70bU6Mb44egFkDw6aUWKttXagpg28y+k
	AyhcqmD4C2nZAU55NXUtcUIjk
X-Received: by 2002:a17:902:cf0e:b0:23f:c760:fdf0 with SMTP id d9443c01a7336-242a0b8c6dfmr24782615ad.45.1754469136384;
        Wed, 06 Aug 2025 01:32:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6aanRzxuxOdDFDL6IEoz3tFt0aU9YroEKfjh1dTfuTkVQmyF6r8Xa1vDHzKckrxBfjAPC+A==
X-Received: by 2002:a17:902:cf0e:b0:23f:c760:fdf0 with SMTP id d9443c01a7336-242a0b8c6dfmr24782245ad.45.1754469135862;
        Wed, 06 Aug 2025 01:32:15 -0700 (PDT)
Received: from [10.133.33.195] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899b5e5sm150607895ad.124.2025.08.06.01.32.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Aug 2025 01:32:15 -0700 (PDT)
Message-ID: <33b6aa57-9675-4b4e-9ecd-f82ed7f6c380@oss.qualcomm.com>
Date: Wed, 6 Aug 2025 16:32:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 08/10] coresight: add a new function in helper_ops
To: Jie Gan <jie.gan@oss.qualcomm.com>, Mike Leach <mike.leach@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20250725100806.1157-1-jie.gan@oss.qualcomm.com>
 <20250725100806.1157-9-jie.gan@oss.qualcomm.com>
 <CAJ9a7Vi8qpHH2SjmKNjgeY4gdRXY9wnQXhkjN71EcbYSKqayuw@mail.gmail.com>
 <40c8c2d0-1ac3-4944-b509-d23f21687476@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <40c8c2d0-1ac3-4944-b509-d23f21687476@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Mftsu4/f c=1 sm=1 tr=0 ts=68931311 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=y1r4oU-oRDH_k5QpEX0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: 20QqUVQwURZr3TCV7wDm6PDX8UORRwGS
X-Proofpoint-GUID: 20QqUVQwURZr3TCV7wDm6PDX8UORRwGS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX72MDO83KqwA0
 uz9EUAjhRS7y7yy3Ds8u/VMlOlm953mg7/2LY5Iah5c6mZ3BB+YtCqHEBIYL5kXH1VBMSJ96JkU
 ArlBmQo8DH0VwYYnEialFW+zGFhnvVzhNy948SC8bsin6DqyG2WmoA/3ns5a3HVdwAK0mv3DzCn
 /qaYRrnxex6mdDHcduesFgL7OC+fp8f9aXsKZ6XAamefS4/czuADwZZUDiyhH00/PgPdg3i0H58
 QkO98OICMomum2ZUVp8oxB6D4yvyOYB4ZxHVxdfeIFhn1EvbBNYliL9EqZlSNMZOStU4T9RWtsZ
 Ze7P11IRKgQfhWYj4j0Uwwpa3lzsXUcrSu/R067rORbII5f0Ce2Jq//TCZos3yItyVRqGdcnaoa
 j1tuVBqA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-06_02,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 priorityscore=1501 phishscore=0 bulkscore=0
 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009



On 8/6/2025 8:35 AM, Jie Gan wrote:
> 
> 
> On 8/5/2025 8:30 PM, Mike Leach wrote:
>> Hi,
>>
>> On Fri, 25 Jul 2025 at 11:08, Jie Gan <jie.gan@oss.qualcomm.com> wrote:
>>>
>>> Add a new function to identifiy whether the byte-cntr function is
>>> enabled or not in helper_ops.
>>>
>>> The byte-cntr's read_ops is expected if the byte-cntr is enabled when
>>> the user try to read trace data via sysfs node.
>>>
>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>> ---
>>>   .../hwtracing/coresight/coresight-ctcu-core.c | 35 +++++++++++++++++++
>>>   include/linux/coresight.h                     |  3 ++
>>>   2 files changed, 38 insertions(+)
>>>
>>> diff --git a/drivers/hwtracing/coresight/coresight-ctcu-core.c b/ 
>>> drivers/hwtracing/coresight/coresight-ctcu-core.c
>>> index 8fc08e42187e..dec911980939 100644
>>> --- a/drivers/hwtracing/coresight/coresight-ctcu-core.c
>>> +++ b/drivers/hwtracing/coresight/coresight-ctcu-core.c
>>> @@ -234,9 +234,44 @@ static int ctcu_disable(struct coresight_device 
>>> *csdev, void *data)
>>>          return ctcu_set_etr_traceid(csdev, path, false);
>>>   }
>>>
>>> +static bool ctcu_qcom_byte_cntr_in_use(struct coresight_device *csdev,
>>> +                                      void **data)
>>> +{
>>> +       struct ctcu_byte_cntr *byte_cntr_data;
>>> +       struct coresight_device *helper;
>>> +       struct ctcu_drvdata *drvdata;
>>> +       int port;
>>> +
>>> +       if (!csdev)
>>> +               return false;
>>> +
>>> +       helper = coresight_get_helper(csdev, 
>>> CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
>>> +       if (!helper)
>>> +               return false;
>>> +
>>> +       port = coresight_get_in_port_dest(csdev, helper);
>>> +       if (port < 0)
>>> +               return false;
>>> +
>>> +       drvdata = dev_get_drvdata(helper->dev.parent);
>>> +       /* Something wrong when initialize byte_cntr_read_ops */
>>> +       if (!drvdata->byte_cntr_read_ops)
>>> +               return false;
>>> +
>>> +       byte_cntr_data = &drvdata->byte_cntr_data[port];
>>> +       /* Return the pointer of the ctcu_drvdata if byte-cntr has 
>>> enabled */
>>> +       if (byte_cntr_data && byte_cntr_data->thresh_val) {
>>> +               *data = (void *)drvdata->byte_cntr_read_ops;
>>> +               return true;
>>> +       }
>>> +
>>> +       return false;
>>> +}
>>> +
>>>   static const struct coresight_ops_helper ctcu_helper_ops = {
>>>          .enable = ctcu_enable,
>>>          .disable = ctcu_disable,
>>> +       .qcom_byte_cntr_in_use = ctcu_qcom_byte_cntr_in_use,
>>
>> These ops structures are for generic functions used throughout the
>> devices. Do not put this function here.
>>
>> This is a specific ctcu helper. Make it external to the file and
>> declare it in coresight-ctcu.h
> 
> Will address the comment in next version.

Hi Mike
Cant add an external function in ctcu-core.c and called in tmc-core.c 
because there is a cycle dependency error:
depmod: ERROR: Cycle detected: coresight_tmc -> coresight_ctcu -> 
coresight_tmc
depmod: ERROR: Found 2 modules in dependency cycles!

How about I add a function in tmc-core.c to directly retrieving the 
sysfs_read_ops of the byte-cntr?

like below:
/* Return the byte-cntr's sysfs_read_ops if in use */
static const struct sysfs_read_ops *tmc_qcom_byte_cntr_in_use(struct 
tmc_drvdata *drvdata)
{
         struct ctcu_byte_cntr *byte_cntr_data;
         struct ctcu_drvdata *ctcu_drvdata;
         struct coresight_device *helper;
         int port;

         helper = coresight_get_helper(drvdata->csdev, 
CORESIGHT_DEV_SUBTYPE_HELPER_CTCU);
         if (!helper)
                 return NULL;

         port = coresight_get_in_port_dest(drvdata->csdev, helper);
         if (port < 0)
                 return NULL;

         ctcu_drvdata = dev_get_drvdata(helper->dev.parent);
         byte_cntr_data = &ctcu_drvdata->byte_cntr_data[port];
         if (byte_cntr_data && byte_cntr_data->thresh_val)
                 return ctcu_drvdata->byte_cntr_sysfs_read_ops;

         return NULL;
}

Thanks,
Jie

> 
> Thanks,
> Jie
> 
>>
>> Mike
>>
>>>   };
>>>
>>>   static const struct coresight_ops ctcu_ops = {
>>> diff --git a/include/linux/coresight.h b/include/linux/coresight.h
>>> index 4ac65c68bbf4..b5f052854b08 100644
>>> --- a/include/linux/coresight.h
>>> +++ b/include/linux/coresight.h
>>> @@ -419,11 +419,14 @@ struct coresight_ops_source {
>>>    *
>>>    * @enable     : Enable the device
>>>    * @disable    : Disable the device
>>> + * @qcom_byte_cntr_in_use:     check whether the byte-cntr is enabled.
>>>    */
>>>   struct coresight_ops_helper {
>>>          int (*enable)(struct coresight_device *csdev, enum cs_mode 
>>> mode,
>>>                        void *data);
>>>          int (*disable)(struct coresight_device *csdev, void *data);
>>> +       bool (*qcom_byte_cntr_in_use)(struct coresight_device *csdev,
>>> +                                     void **data);
>>>   };
>>>
>>>
>>> -- 
>>> 2.34.1
>>>
>>
>>
> 


