Return-Path: <devicetree+bounces-271657-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WCIvMxa9qWnNDQEAu9opvQ
	(envelope-from <devicetree+bounces-271657-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:27:50 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 7179C2162F4
	for <lists+devicetree@lfdr.de>; Thu, 05 Mar 2026 18:27:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2CA743006B7D
	for <lists+devicetree@lfdr.de>; Thu,  5 Mar 2026 17:26:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 997BD3E3DBA;
	Thu,  5 Mar 2026 17:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MKbC6gIm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ObE9jYNB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415EC3A0E98
	for <devicetree@vger.kernel.org>; Thu,  5 Mar 2026 17:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772731613; cv=none; b=XfuMdCW6hu3U3ADtBHFkoIgNPDmAEzl47rbk9ERKTL5bBHDMiQJ1Mq3yTlHnzzKBgd5AJY1NzUiVe3LwqgUurMMBQ3Pu9KS59w92nwZ68rgTgEgKvSJQx+UCvSZV/6aNhS+/lGYi+NzwBjKHjd+SMpa+EEyOUdTu6+22A2g/+Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772731613; c=relaxed/simple;
	bh=i51oMRM39b4zkPD5v1JZCUBphGiNCQBhDYu8AT0JFFU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bwilJu+wLZdHlwr87eLibKeiUGGuR2QII7VYmsJqoNFduprZ4NKxz4o7dektbRGHl4bfJ+y1iXsYpmOrGw7C6/HDHLUclOFIoNf5Y5uVG2vnsHnLDQ8U4BiW3dp8veav2eaJdeYzqaH01kaGs5odF75no1tUkf58xnkdXWc4vu0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MKbC6gIm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ObE9jYNB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 625AFbZ42922186
	for <devicetree@vger.kernel.org>; Thu, 5 Mar 2026 17:26:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tk4/hiWtP/NVhogneiRF45j/bTrlav0gUX1qihLjIkU=; b=MKbC6gImGeSGJy8a
	LGzOMcp5qxkuydwP19LM4Zpfip9t9Vbz6bn1UOtpH5mDsWbwPNyXxFK+KCparumq
	gk+w6ktG5uCZzF+y5MMAD5MQJ0EUHpT08mcutJ1YhihJjy2w5niS1kHlyOJaLCwc
	gas9+uODdBgQb2piFSiYqIzGG14B5zXKH8FHB3pkFCrnygrgkawe+JrXX9/HW+n/
	qIk8YzkTe8GNmB20kYlGeDcqDkkc9nQYHLfX+xZ2So3Tt2KEu5+drAfsi51mFJIh
	NgaPb1FVBI6VankCKKeFJmNQUd3YkGRKIJgeRnQcfrsRamuaYy5d0E6wFtKoZ/IA
	hgdXsA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cq2q82jgs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 17:26:51 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2ae42659a39so330827535ad.1
        for <devicetree@vger.kernel.org>; Thu, 05 Mar 2026 09:26:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772731611; x=1773336411; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tk4/hiWtP/NVhogneiRF45j/bTrlav0gUX1qihLjIkU=;
        b=ObE9jYNB9EeS804Fz7aDMfUmOTu6dMnW8qeg+z31ns11jhrCdZTW6dcIHlZx+Bm1Mt
         ah03QVqTLXWQ2qSh6Ux/6Bd7ZXA5SZQ/BHzxAl6T/cD4NdYrw4b0kFcKoBTx5kMHAqmd
         sFBtLoNyZ2faoxri6P01AeNoKVYrG5mq8LSSLfDxv7UG21i7byefcaaE/R85MdjYFUZa
         /aiW7wnkVIA/C+qeEmkhYEqnXFBieXvt6tYsJZGs2c1iFovnjSKQW2Zq2LG8n6WkAQ2t
         h3BprQT+pplElxCpyWJI7p9uLJfiVFzdg/uZY9jc5lUCECLB+DLS1teZD1bGc7cylvU+
         1Zmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772731611; x=1773336411;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tk4/hiWtP/NVhogneiRF45j/bTrlav0gUX1qihLjIkU=;
        b=iMhTKaTiAVYUQi+n4GhvyJlN/E9PL/SGF5awd8dtf9NlMgKaYLhAfjWNbvuztMcs2u
         mcI/x85rW5dESxUdZ3OSIVB/xCXORexBI7d8pbUEEnnhr++AUseSqO9IUtr9AvrSPQ69
         aeQNjpz5a9UDuwKC35NbMoqD8dNq6oKPfyDkJ8hFsRY7jRXW1qmm74xXB3quQenxj+9v
         5ghUgGqYqB/UzrwUccpgQZsPrQdx5H44V1VpLs5fobR6Fnymabqxl3YkI0sMpOwdzEKj
         G4plI7NK2GugwPULtQTq4dYndICUGVaj7qdFlb4aittkSnaN6ZoySttrcphvGYKIWdxU
         g/zg==
X-Forwarded-Encrypted: i=1; AJvYcCXU7cxF+y0YRk3+aF8IlAOQRJ+Jg3qlbqe5M3qObMf35l8Mvuek20PACJpeM7lHzXyvbKAI25O+oe6G@vger.kernel.org
X-Gm-Message-State: AOJu0YxSgCSJxtbWRWl/Uo+dBo5+aPuRDnvmyfer2ir/b1Uxggkukix0
	Blh6hdNeOp8bKyFKjAtadGNE64GviGqWHdNF5owOP52yrp/dzvxIo62HD9f02ghsZNmshW/t4Ak
	+nsBOxZmbOJuUKFxqgrkMdR1r7XdqYOKs7wJwyHVsXZvCWhYLjEG+sqgYTYVVUs1Q
X-Gm-Gg: ATEYQzwDvkpPE5QGuTvdaT+nMsQ80G1Rkjhgg9gJPBzqVxAGkPDEXHztTplCzmw/wUo
	BdH0kFfQ8HOTr6HVnR1Kk8GL8Bq47CUNepHeNr/KCSMYjoI/IyJuVREfsknDGGgo47oEw0C8TWO
	P0o00krjmpDkCpwZdOJHXloir75Q0EcS2LhIR/uMEmBErpK412K2nFEwYYBYcKJHlHeIYqsDln4
	X2N1+eWJ+fsMXsBdyDpVt9J0oNjDjmSLr26OseilP7YScZb9RaBdo22KIINh3n8B84qHenmRs1J
	dauvlj8MayuqcZl85IUcv4sPE1ZibgOy/vSt1MLq0NRJm2jPI7J7LhTmiLZFv8Uk7EWqWeQ8H+i
	nc4C8xcD+Jm6YilQiFw1u3llQUEBaywGQAhznviIwyf4+pFFxCKcuFIU=
X-Received: by 2002:a17:902:f60e:b0:2ae:4732:2859 with SMTP id d9443c01a7336-2ae6a9ed194mr65585985ad.3.1772731610591;
        Thu, 05 Mar 2026 09:26:50 -0800 (PST)
X-Received: by 2002:a17:902:f60e:b0:2ae:4732:2859 with SMTP id d9443c01a7336-2ae6a9ed194mr65585505ad.3.1772731609912;
        Thu, 05 Mar 2026 09:26:49 -0800 (PST)
Received: from [192.168.0.172] ([49.205.248.49])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ae46500068sm148080625ad.52.2026.03.05.09.26.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Mar 2026 09:26:49 -0800 (PST)
Message-ID: <1d2b55d9-42e3-4459-971b-e276a87fb843@oss.qualcomm.com>
Date: Thu, 5 Mar 2026 22:56:40 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/7] media: iris: add context bank devices using
 iommu-map
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Saravana Kannan <saravanak@kernel.org>, Joerg Roedel <joro@8bytes.org>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Stefan Schmidt <stefan.schmidt@linaro.org>,
        Hans Verkuil <hverkuil@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Hans Verkuil <hverkuil+cisco@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        iommu@lists.linux.dev, Bryan O'Donoghue <bryan.odonoghue@linaro.org>
References: <20260227-kaanapali-iris-v2-0-850043ac3933@oss.qualcomm.com>
 <20260227-kaanapali-iris-v2-4-850043ac3933@oss.qualcomm.com>
 <rzi7qmzsofocwcqxhsqz3f3tl4ahqnwn34of6qcc54odpben5d@7okuqabxgdqh>
 <e12da06d-cad5-4967-af07-64c7c6e540f4@oss.qualcomm.com>
 <vi5v5bczg2wx2adfpr6ppqcad76oecitoyc7zd2i4lahla4buw@mqnppboxcyrs>
 <6553cfcb-9399-4d17-a529-b07b421ed7e8@oss.qualcomm.com>
 <mqyg7cebyahkrngvnxcrenkdd3dybpnkecago4lqonfwqzize7@yawbtcsli3vi>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <mqyg7cebyahkrngvnxcrenkdd3dybpnkecago4lqonfwqzize7@yawbtcsli3vi>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: l3FBh1E4w3SNXyj4nWDcvWNsTPGDWwjR
X-Proofpoint-ORIG-GUID: l3FBh1E4w3SNXyj4nWDcvWNsTPGDWwjR
X-Authority-Analysis: v=2.4 cv=GecaXAXL c=1 sm=1 tr=0 ts=69a9bcdb cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=KPiuay1jFzAquJblYynD6w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=aqFQw3FEyG5UwdlagGoA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA1MDE0MiBTYWx0ZWRfXwqMbfnEf3wjR
 0dr9bqvwbl4JeQpqKz0VXBoCr6XFcMXg4mprfUT7gdY1ngwudkRlwAgul0bTpRoks0ut9sI1F9E
 J2y91+7A3o+E7krsVRteE1IxbxE4Z5REdzYlwSf6VseRJIJe8Av+M9+aNxu61lxMflpBjCkLveW
 Y/oDXnX53hpoCAeYb8WcjyGFrmSsip6MaGp49/Pd1Sj/Dl9a5GG6DQGSvWiZ5HYeVHu7tecjTvp
 kngFEsy/pg76HN4xoQk9/aLNj6+Qd29VIQfjSOj+vPtL+ZDMpEJdfQOhsKb+bMEgMvDS5KONvsk
 ituQFyAnrA1a+k7MLwJhi2YspidK9+ZMWhqoaMDR1aYtY6C64uDuP5tugXKafEoFXCcFKAIIobm
 nUWxPl8ye0xGNq6TLgETUHkrq4qZQ0WsmjFxL6fBXGkGHmKMc3yTq71H6604YVO/kNI5dzXp/Nc
 59mcDw/qA13kfLxahRA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-05_05,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 impostorscore=0 spamscore=0 suspectscore=0
 clxscore=1015 lowpriorityscore=0 adultscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603050142
X-Rspamd-Queue-Id: 7179C2162F4
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271657-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[23];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 3/5/2026 7:51 PM, Dmitry Baryshkov wrote:
> On Thu, Mar 05, 2026 at 06:19:52PM +0530, Vikash Garodia wrote:
>>
>> On 3/4/2026 3:55 AM, Dmitry Baryshkov wrote:
>>> On Wed, Mar 04, 2026 at 12:16:50AM +0530, Vikash Garodia wrote:
>>>>
>>>> On 2/28/2026 1:50 AM, Dmitry Baryshkov wrote:
>>>>> On Fri, Feb 27, 2026 at 07:41:20PM +0530, Vikash Garodia wrote:
>>>>>> Introduce different context banks(CB) and the associated buffer region.
>>>>>> Different stream IDs from VPU would be associated to one of these CB.
>>>>>> Multiple CBs are needed to increase the IOVA for the video usecases like
>>>>>> higher concurrent sessions.
>>>>>>
>>>>>> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>>>>>> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>>>>>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>>>>>> ---
>>>>>>     .../platform/qcom/iris/iris_platform_common.h      | 18 +++++++
>>>>>>     drivers/media/platform/qcom/iris/iris_probe.c      | 60 ++++++++++++++++++++--
>>>>>>     drivers/media/platform/qcom/iris/iris_resources.c  | 36 +++++++++++++
>>>>>>     drivers/media/platform/qcom/iris/iris_resources.h  |  1 +
>>>>>>     4 files changed, 111 insertions(+), 4 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
>>>>>> index 5a489917580eb10022fdcb52f7321a915e8b239d..03c50d6e54853fca34d7d32f65d09eb80945fcdd 100644
>>>>>> --- a/drivers/media/platform/qcom/iris/iris_platform_common.h
>>>>>> +++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
>>>>>> @@ -204,6 +204,22 @@ struct icc_vote_data {
>>>>>>     	u32 fps;
>>>>>>     };
>>>>>> +enum iris_buffer_region {
>>>>>> +	IRIS_BITSTREAM_REGION		= BIT(0),
>>>>>> +	IRIS_NON_PIXEL_REGION		= BIT(1),
>>>>>> +	IRIS_PIXEL_REGION		= BIT(2),
>>>>>> +	IRIS_SECURE_BITSTREAM_REGION	= BIT(3),
>>>>>> +	IRIS_SECURE_NON_PIXEL_REGION	= BIT(4),
>>>>>> +	IRIS_SECURE_PIXEL_REGION	= BIT(5),
>>>>>
>>>>> Can a context bank belong to multiple regions at the same time?
>>>>
>>>> yes, they would.
>>>
>>> How? Each set of CBs is defined by a separate function in the DT. How
>>> can CB belong to multiple regions? Could you please provide an example?
>>
>> SM8550 would have same stream id for VPU hardwares (tensilica and vcodec)
>> accessing bitstream and non pixel regions. Thereby non_pixel and bitstream
>> regions would map to one CB.
> 
> In my opinion it means only one thing: you will have two CBs (one for
> non_pixel and one for bitstream) having the same SIDs. An alternative
> would be to define fallback rules (if CB foo doesn't exist, use CB bar).
> 
>> While kaanapali would have different stream id for tensilica accessing non
>> pixel region and vcodec accessing bitstream region, thereby having different
>> CB.
>>
>>>
>>>>
>>>>>
>>>>>> +};
>>>>>> +
>>>>>> +struct iris_context_bank {
>>>>>> +	struct device *dev;
>>>>>
>>>>> Separate data and the actual device. Define a wrapper around struct
>>>>> device for the actual runtime usage.
>>>>
>>>> we still have to store the list of dynamically created device. Name can be
>>>> used to fetch the device from the list, i think the existing approach is
>>>> simpler ?
>>>
>>> You don't need a list. You have an array of the size, which is known and
>>> fixed. You have at most 9 functions, which means less than 9 devices.
>>>
>>
>> as mentioned above, its not the same for all platforms to have one to one
>> mapping between CBs and buffer region. Thereby indexing based on array would
>> be an issue here
>> It would end up something like this, considering [dev region] array,
>>
>> SM8550
>> non_pixel_device  non_pixel_region
>> non_pixel_device  bitstream_region
>> pixel_device      pixel_region
>>
>> kaanapali
>> non_pixel_device  non_pixel_region
>> bitstream_device  bitstream_region
>> pixel_device      pixel_region
> 
> I'm sorry, I'm not sure I follow here. Could you please explain? Maybe
> by explititly mapping DT function values to iris_buffer_region values?
> 

Kaanapali
IRIS_BITSTREAM IRIS_BITSTREAM_REGION
IRIS_NON_PIXEL IRIS_NON_PIXEL_REGION	
IRIS_PIXEL     IRIS_PIXEL_REGION

SM8550
IRIS_NON_PIXEL IRIS_NON_PIXEL_REGION | IRIS_BITSTREAM_REGION
IRIS_PIXEL     IRIS_PIXEL_REGION

>>
>>
>>>>
>>>>>
>>>>>> +	const char *name;
>>>>>> +	const u32 f_id;
>>>>>> +	const enum iris_buffer_region region;
>>>>>> +};
>>>>>> +
>>>>>>     enum platform_pm_domain_type {
>>>>>>     	IRIS_CTRL_POWER_DOMAIN,
>>>>>>     	IRIS_HW_POWER_DOMAIN,
>>>>>> @@ -246,6 +262,8 @@ struct iris_platform_data {
>>>>>>     	u32 inst_fw_caps_enc_size;
>>>>>>     	const struct tz_cp_config *tz_cp_config_data;
>>>>>>     	u32 tz_cp_config_data_size;
>>>>>> +	struct iris_context_bank *cb_data;
>>>>>> +	u32 cb_data_size;
>>>>>
>>>>> Do they differ from platform to platform?
>>>> Yes
>>>>
>>>>> Mark them as const, it should be data only.
>>>>
>>>> cb_data_size can be marked as const
>>>
>>> Why is cb_data non-const?
>>
>> dev is being updated once created dynamically.
> 
> That's a bad idea. Please make the platform description constant.
> 

I can give it a try to move CBs in core struct out of platform data and 
have a buffer region based lookup array to fetch the device.

Regards,
Vikash

