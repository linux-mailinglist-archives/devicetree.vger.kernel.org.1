Return-Path: <devicetree+bounces-244172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1BE1CA2324
	for <lists+devicetree@lfdr.de>; Thu, 04 Dec 2025 03:48:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 20B3330378B5
	for <lists+devicetree@lfdr.de>; Thu,  4 Dec 2025 02:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B1102FBE02;
	Thu,  4 Dec 2025 02:47:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Yc0OygAu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="B/csKuGQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD57E2FB0B1
	for <devicetree@vger.kernel.org>; Thu,  4 Dec 2025 02:47:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764816454; cv=none; b=SvjyxOD3nSXYqgoRt1GHFgeORzzwQO/KWydEwsZV578oMIotWu0DeebOxVJ1z9szZVftucw3hIQ4BOrGlTVsjmfhqDCsO376FubIuJM1ZGMmfQ+SlJOZWuV0fH0X3L4H/nvGHtjekwM88FXTTD+ybZBR7odJCZxciUxcvPzQnfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764816454; c=relaxed/simple;
	bh=3UJDKl2qeyw+9vxhC/e8XQoeAJQGqwQTJ6/xanb3I2o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FH7mCkjsnM9hqwTOcelST9+IPUF0avlt+gU3OIe4Dr+EyEjTDl6LbKGUB3mENFpr1QAIp93RcxCoF18Lva5pgP7xlmThgymOfIBpZNMTbNu2kS5JcXDOTAaUy2DVFupxOwmShIJa2LBZ2THOd6tvZA875iAssJCNkGA6eLcDsxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Yc0OygAu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=B/csKuGQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B42Lteo122717
	for <devicetree@vger.kernel.org>; Thu, 4 Dec 2025 02:47:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	unAlOHqnQvPypW08kj02As2TqLsKYsUW9rJ3R/A7yzw=; b=Yc0OygAuVfycr7zH
	qBoNIzFGOvpd34ZFEoS6VIOc2FWcUb5GFHQUWjEQAsvsScyszaiAn64fIfcIqrA1
	7T7rbv79IJNhoQZjkwNdFFdAGjPLaZFyolYF6Q46Kmyvv+6u51UZpREK2niLxo9z
	X8nBOgOAn1+UjN8ssqg1KCHwtfBsnQOxKpF9pHVGB+vQ/6t2r/NaVQQIKea3wMz6
	sNKWa7WMwbNuuIE0xgWjllacw2I7VMDH3Ix/HFIjKwuCPWnPUbt+xs5C4MlDa+a9
	WWpQ+FAKNa0UrPbipxRIcC2D2xXKJnRolBJu7b+cSfbafDb/LQgQtZ9A/DM7k+Bj
	Wz5Xdw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4au1f00234-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 02:47:23 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-29da1ea0b97so9690435ad.3
        for <devicetree@vger.kernel.org>; Wed, 03 Dec 2025 18:47:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764816442; x=1765421242; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=unAlOHqnQvPypW08kj02As2TqLsKYsUW9rJ3R/A7yzw=;
        b=B/csKuGQ74aMTGWMxaMwsCqUxIN+m/RpFiomWFfR78RIbOQWM6SqMY8+2+jGbWzpMM
         PnmjZle2eTI3Haa0Jquu2XDIarpyMcbCX3Yd1urdWEe2cfq2pMX3+WiN8eUKqs1LR3rO
         zRmqMImowOgKh4jV+RbzF7vfCfSAwxp29RmMbxikNWZNkkSTvSQkririrjRQDrQSCNLL
         tFfyFErnnEKlImQMnOt4k53P1Rx3UHgJkq2YDdTgz8t1i1esc2k35YodVXVErGNxAKjb
         oXmJ5/hNkfz2CuvUZcJYOqNOMSBYPMD5vqYLZ+OzW/KagpPwYWqXhNwg15D1wJocEfdx
         VDrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764816442; x=1765421242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=unAlOHqnQvPypW08kj02As2TqLsKYsUW9rJ3R/A7yzw=;
        b=oEVVgtN/l3I3yUR1a21IXVdDAwx1CZdKvO1ds4/9HRIw3tV21+LfKKf9w5SxJLhOwi
         yBh2V3VVoz/SlzT/ETOKWQaJEbFJwhD49caLihVIt2RBzpFrDwS9EXmIAPkIMqDXrJ/L
         C3cDdy8Caq/O2X2x0IXBY9W57rttAngGFXObqBnChQcKqN7yTQOWOntkhsDBkw09VHao
         vUccBItNGaLFnVPEAhYUKNMJQZ9ecPYUYv/teyCl0j4helWTvMXyaaFfyGOEB1XUmk8K
         FBp0Svqr6b+G/mgxwnBYov6CG0y8JnTFm1DMk3DtRM3OsNvXgqNpK7qF7aD6uJq0nhHc
         qh6A==
X-Forwarded-Encrypted: i=1; AJvYcCX5xQuhvCEVnrF2XiYfGa0ge0XigIKKPCm0DQj3Ikf+V3QXH4f6/ONORNgPwxfI+pdm9LPYmCgRM3+M@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+jydkmvKA3WA5rN2EnjFKKm8dpmxpZDzcoByycS/tKbygWhEP
	IxRwh6Hpb4LBZCBPmo/gfNm3JF6nxOYLyuTrVceiJ/6F5Z802rH7XRyD20H0WDH1k9Goe0aV4hl
	RZhqXNZPxAElxFktV16fFsYSOtN9vZ9ApSyUNf5YSqGPrvwxspBx1//GQCPkT6uep
X-Gm-Gg: ASbGncuQNiODk9l9egREnLxW1jv22i5BZOzqm6hQzKxn98LXNOLuv5cAi/PSqGKtks/
	ldp37l/U+6uwZnovo+pJbkS+ng41lLJri3YT9ZVGT4B8CyLcwyHEoAoW83eYolw8YQev358y4vH
	ZQ0QXc0YK7hfHzczvCIQxFYDNp34g1vRsbap01wMFBmAtwJKkJvOZJNcpVG+n1j9R4G4/vhxiXX
	aohd3MMKPNQGMTbJhEUuB8zHkPBwS8NpvZ3q1lB2CBaD8RJe03apKBhrs6b5wWeMZEv0yxX6sta
	V9h4SST8r9jPvhKwraIfcVUteNhsNL6BCS4BKQz+yXMcGx+zC8oexih8aw7/jeHelaV2lKb45bw
	FfRJ0Vm7GINpdb1+7FWa1XejFCIMJ9Prmo2leWTRaW2ZI0i31ARoE3S1xy+EN2ItI07HJgXmnjI
	0=
X-Received: by 2002:a17:903:fa5:b0:295:f1f:65f with SMTP id d9443c01a7336-29d6838d02cmr48784595ad.31.1764816442031;
        Wed, 03 Dec 2025 18:47:22 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHt9B9cBT8Dxz1xktUJJG9Xh+E/RA69io4sm0kf0sHRUQn5y+QS5EHh81B4YdAkwJm86a5ByQ==
X-Received: by 2002:a17:903:fa5:b0:295:f1f:65f with SMTP id d9443c01a7336-29d6838d02cmr48784255ad.31.1764816441484;
        Wed, 03 Dec 2025 18:47:21 -0800 (PST)
Received: from [10.133.33.165] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29daeaabfdcsm2450395ad.75.2025.12.03.18.47.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Dec 2025 18:47:21 -0800 (PST)
Message-ID: <d5f1dd06-1c53-4656-882b-dbf771e3a125@oss.qualcomm.com>
Date: Thu, 4 Dec 2025 10:47:15 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 2/9] coresight: core: add a new API to retrieve the
 helper device
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Jie Gan <jie.gan@oss.qualcomm.com>, Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Jinlong Mao <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com>
 <20250908-enable-byte-cntr-for-tmc-v6-2-1db9e621441a@oss.qualcomm.com>
 <d8c6111f-28ba-4046-bcd5-67233e8ed4ca@arm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <d8c6111f-28ba-4046-bcd5-67233e8ed4ca@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: LCp1GlCsSK3ffIXh8Qm-LSNpdhhIN5ra
X-Proofpoint-ORIG-GUID: LCp1GlCsSK3ffIXh8Qm-LSNpdhhIN5ra
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA0MDAyMCBTYWx0ZWRfX4SOqY9eV/Zye
 a5qaDiPKKSKrqjPpUSnX+V3BKQw4abyUfzmCSXnTZdOrw6oPtJ6yUDVS31+aLhwtKHXg1oheDEM
 VNeRHvOos2g64ar/YRhrpaVUXik+MsjhiAQ8fG9S3hyXcEwhNrQmQfQoZYpRwhdH0c97KHrg1rM
 qm4SRZkFsc1qLP8jlWDRczqN1nWmGp0XyU1s5c6Op/7pX3hsaLtoUOrHmC4vCPqxJhAPySR51Vr
 TADG6jP0CBjAPGovJmEcgN6sN2EC54PGc+iAJWN47w2ZoyUvfVH0KHHIFljGIdLqCUKGlMbhthl
 BT2BnTjfdGiH+8BPqYA+MclHX6OSl5CaDlANRnVotY5DhVFLvqmRUAFlIbN+emgpwezfUCyXmJo
 urFzz6Ise/WMkNWnFaTJJum3sNcBEw==
X-Authority-Analysis: v=2.4 cv=Scz6t/Ru c=1 sm=1 tr=0 ts=6930f63b cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=tbyorNNmht2swkRmfsMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-04_01,2025-12-03_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 clxscore=1015 impostorscore=0
 bulkscore=0 suspectscore=0 malwarescore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512040020



On 12/4/2025 12:15 AM, Suzuki K Poulose wrote:
> On 08/09/2025 03:01, Jie Gan wrote:
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
>> index 042c4fa39e55..018b1119c48a 100644
>> --- a/drivers/hwtracing/coresight/coresight-core.c
>> +++ b/drivers/hwtracing/coresight/coresight-core.c
>> @@ -580,6 +580,41 @@ struct coresight_device 
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
> 
>> +                          int type)
> 
> nit: enum coresight_dev_subtype_helper subtype
> 
> Otherwise looks good to me

Will update in next version.

Thanks,
Jie

> 
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
>> +        if (helper->subtype.helper_subtype == type) {
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
>>    * coresight_get_in_port_dest: get the in-port number of the dest 
>> device
>>    * that is connected to the src device.
>> diff --git a/drivers/hwtracing/coresight/coresight-priv.h b/drivers/ 
>> hwtracing/coresight/coresight-priv.h
>> index e51b22b8ebde..f80122827934 100644
>> --- a/drivers/hwtracing/coresight/coresight-priv.h
>> +++ b/drivers/hwtracing/coresight/coresight-priv.h
>> @@ -158,6 +158,8 @@ void coresight_path_assign_trace_id(struct 
>> coresight_path *path,
>>                      enum cs_mode mode);
>>   int coresight_get_in_port_dest(struct coresight_device *src,
>>                      struct coresight_device *dest);
>> +struct coresight_device *coresight_get_helper(struct coresight_device 
>> *csdev,
>> +                          int type);
>>   #if IS_ENABLED(CONFIG_CORESIGHT_SOURCE_ETM3X)
>>   int etm_readl_cp14(u32 off, unsigned int *val);
>>
> 
> 


