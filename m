Return-Path: <devicetree+bounces-264626-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sVpBOXckjGmwiAAAu9opvQ
	(envelope-from <devicetree+bounces-264626-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:40:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AA90121A58
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 07:40:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 8A2DD3006803
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 06:40:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3347A32E73D;
	Wed, 11 Feb 2026 06:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="H+Q876rV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ficDGRyd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD032D46DD
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:40:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770792053; cv=none; b=MVmW+4kMo7rdDoYdnXtUYlRskt7IRhUq1WU64TmRJs3ZdRg6BPCm3PwDSsqppGVA/nnEAtT3HzClW7CpydomNgX2nmm11ljSAg7APvW/JNpbi051yc99vqTdMJ1uNTpaF9chrBNB9CirnjXVZo5c3H1Zv/wuzegqgcXCRXw34qQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770792053; c=relaxed/simple;
	bh=YH3FuVlgLgd/E3WmPqJzg+c7wtZLF8F2U4xBPchRE6Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Vchbw9tnMXy8jidAqlLNvdmDMZ67Yq7e5z8aNEe1ifCIzWiL51RJktEicOF/y9ONyrf7g9vaNq/mCr6xMlQYZQfMGzDSKEduRKXAUUiyjwWZgG7tdSTNJ9Rcp6ricyh2o6QDALbFyD6Ne5TlnQ+Fu75mjKEs1Jeqtm3ThQV7PwA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=H+Q876rV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ficDGRyd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61B25BOd2943336
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:40:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bohvUBFi4Gh+pEokfjbsD5VJpip/y7EK4T8dlIQ7NvE=; b=H+Q876rVrojGIspY
	0gklgrrHdm1gHkkVbrpSWh546jcMGz2tgTP7N1StRgq2dHo46XVAUh4lOB2QARzM
	DHQHE20E1l+5O9kfh8CXAzzaTzYK5Yzr5I+Cr39oqx8HpFC54UMyUe1WdIRwkPAK
	/3tj41PMt1VtKlOzS68tMpb/qWgyAyWfoh3txTNlF3bpDyClhf9uAocTgya+OMVw
	cRYja4vHk8yn+ko4f4RKDjYsAh6kJ3GevwaM+EOJIFGF03lS7LOQFxJI1hfeuSMl
	GpdM60bAPCDsnZyIBre01K3wtn78kXgyhhY7npkIiYPzaI/3dId5DeNcxcaF4sMs
	ma3bmA==
Received: from mail-dy1-f198.google.com (mail-dy1-f198.google.com [74.125.82.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c88r72a7w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 06:40:51 +0000 (GMT)
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2b86381a107so27279276eec.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 22:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1770792051; x=1771396851; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bohvUBFi4Gh+pEokfjbsD5VJpip/y7EK4T8dlIQ7NvE=;
        b=ficDGRydozrGXmPTtvxh4VsZqczpDzKk35f/G3CUrX3t+7xGk57FrABnb3D8r4Pw5b
         FLMPV+3rt+ncCVFKtfCsl1sxChjqDNPzqCpYBo+SZUk3YLt8ObErnU0CAqLQ2/+JLQSy
         INWvF6Uo5j7Io4BVhqqSXJRiXQ+lf01JWBx/fulEBAY5Vl978c1qX9eFl3Q+xuT049pW
         lmcDyXKCzLJnUyvN6RbseRoWSEVPywxQnWTcFjzz2xMmgIToFyO58KObbn10VCSEfe2F
         djnEpyh4UdbQIK/fHB2lPEtUGkDg6QdCNnmdID+8o6Q//m3ZnH/xSfJDH/2evIvQjPc/
         wJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770792051; x=1771396851;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bohvUBFi4Gh+pEokfjbsD5VJpip/y7EK4T8dlIQ7NvE=;
        b=oF/x2Nbv/Kx/Jh8/+nPvbTrdLaA2P8Z+65oRu3byn0ROg3kN2W7cXvB73Ymd5pb0I3
         Qr2LiLOlvS2qEflMg4Eh96OBK/FAvCjls5Je8FnzU0ZajRAkpJoacxWL9sQv/dCpZgRr
         3/l0EqpHOc8VFeJJgnrRLOLMAIVUGl5ErXeIVOXGwiNJ6Wl6pQyjGKlUzlrP6NM+jc+x
         twh2buYger6/tXIY6pyV1RE9LJc4uop9fqAuhaemv3NQODihy85LnoU/Fx81wO5v786W
         +WG8GyyeRoh9PLYeFmgPp06mHa0o+Q7i+GvXsbHVV2UKa+vvf00CPebSUVc2Uv1+3UdH
         OvUQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4NLqMVZDhWOkcHe8+irUf5gV+lBT83cRYuy9ZyQ+APaK5QSbqpj/5vPXLbknyVu0rvpYZIyOfiMxz@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+MWSCBlCJh00kfdPviDTnisvrnCYuXhrsZf7mqRgRQghIvfMw
	+5DSPIVjUty7uQUCE3WnjOiAVBmH8mGPAHkQxueCQAFsy7fsbEslJwQ01cPj60mO6yYcm3iH/V0
	Ql1rJ0NZB3biGU2Zw85QA44a5yRw65T9voRIeAjnkHCr5addBPGFYVv8HZl+wvSoW
X-Gm-Gg: AZuq6aIF52etHD0vsVx1wNyelubRQmwclihPzsg5TQ8B1SpxARIv7xwghVYKg8LedrF
	TeBITBUSu3KExhRk9mJ/xQIwZvtJN7ouZisal48BfBuEUFMTIAKqn6xabJGqfW0to29ck9G6+hi
	RNlylB1w/Ao5z0M+RJ41GT8sIHZiYuDp123Pljgfw+Z2V//XiL7KgS475H2S2Qtk/NVRvkq6mcP
	6mftfh4xpzP/d1Hf3vZGdvd1r/4A6ql4MAzp1J6cEThf4TNqZc7tE8cwqLsvsIWZ2pjQHlt93mc
	7kLNIa2uOCZjTjTEwa+ZBL4AQb1EuBze4WdP4Y1KCNE6xUHjO8sZBjxm8JEhYc2/JvMhfHAFLjB
	v//DlpRIlxuFnO552TZYQvrzD92YhUK+xFj1EUBSg6Xb1rf/P
X-Received: by 2002:a05:7300:ad2d:b0:2b8:2910:dcae with SMTP id 5a478bee46e88-2ba9e05aa79mr393353eec.13.1770792050560;
        Tue, 10 Feb 2026 22:40:50 -0800 (PST)
X-Received: by 2002:a05:7300:ad2d:b0:2b8:2910:dcae with SMTP id 5a478bee46e88-2ba9e05aa79mr393331eec.13.1770792049996;
        Tue, 10 Feb 2026 22:40:49 -0800 (PST)
Received: from [10.218.16.122] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2ba9dba2aadsm686093eec.1.2026.02.10.22.40.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Feb 2026 22:40:49 -0800 (PST)
Message-ID: <a1597998-f996-41e7-b100-3fd20d1130c3@oss.qualcomm.com>
Date: Wed, 11 Feb 2026 12:10:41 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] Bluetooth: qca: add QCC2072 support
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bartosz Golaszewski <brgl@kernel.org>, quic_mohamull@quicinc.com,
        quic_hbandi@quicinc.com, linux-bluetooth@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring
 <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>
References: <20260209080613.217578-1-vivek.sahu@oss.qualcomm.com>
 <20260209080613.217578-3-vivek.sahu@oss.qualcomm.com>
 <CAMRc=MfT7ourMH+ShJpnBAjv_uOb_ds0rxJOYaz_HsoT45dJYA@mail.gmail.com>
 <cbc0b42d-fb5f-45b8-9074-d0bcc64a9de1@oss.qualcomm.com>
 <erc5u6hzofidlf54dsz7htta55o4xwgihgh4tu6mqkg2ijz3fo@6hd6q6iljrfq>
 <dada4a44-f464-4325-9082-50029d6a4555@oss.qualcomm.com>
 <CAO9ioeWhNO1vYVvN46wNfr2NFAjD-oERLhMKTXyRkRDLtJTMqA@mail.gmail.com>
Content-Language: en-US
From: Vivek Sahu <vivek.sahu@oss.qualcomm.com>
In-Reply-To: <CAO9ioeWhNO1vYVvN46wNfr2NFAjD-oERLhMKTXyRkRDLtJTMqA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: fRt1AIit7jDWa7Llj5L6xioEGbXWLvoL
X-Authority-Analysis: v=2.4 cv=YaywJgRf c=1 sm=1 tr=0 ts=698c2473 cx=c_pps
 a=wEP8DlPgTf/vqF+yE6f9lg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=EUspDBNiAAAA:8 a=xrSJ1D06K7msiDK0uVkA:9 a=QEXdDO2ut3YA:10
 a=bBxd6f-gb0O0v-kibOvt:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjExMDA1MyBTYWx0ZWRfX0VzIvmXe5vfj
 KO8Sw8em4rfCtMYsn4n08pDdNgCgsOOUG6GDmKHwA1uL1QOlzt/c+NKAV8KMNFWvOsKkshBYdPX
 jafpgK3QHf4r5tp4thtcRXCmI+X5G3sNUmk6/iRt9r2BfTpwx7ZWpsmms4it6guE6MXiLpfHuTe
 bLP9Zfi1PZfwrd9hYn3fKY+sjjgMS6lPQmltfwno0WMczB2fT+mrBPQYrxzLVbFL+7xBe/NIxwS
 Mp07eXNVnCAW25afmstxb0cAJKEXol7KoU9XvOR+dqs6z+h3GzOsfhTRNOjzN+2EUkMs2UaAN2z
 80n6+Xxn48M4vvumQSg5yOqtuhuGX6odsf2TRJPg3jRKMSbT9AZT7y5kUtZHJS+tdp0WvRjlZkn
 sIQvBshLXerZoSuPAKOhKcXESEvG2Y7YSxcEKXSHgHGDg3Fn9kFKPLFCDyi16TMv5mgF+SF7fj4
 xo+a8h11Q6kBnNdRUbg==
X-Proofpoint-GUID: fRt1AIit7jDWa7Llj5L6xioEGbXWLvoL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-10_03,2026-02-10_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0
 suspectscore=0 spamscore=0 malwarescore=0 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602110053
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-264626-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,quicinc.com,vger.kernel.org,holtmann.org,gmail.com];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,qualcomm.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vivek.sahu@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7AA90121A58
X-Rspamd-Action: no action



On 2/11/2026 7:18 AM, Dmitry Baryshkov wrote:
> On Tue, 10 Feb 2026 at 15:53, Vivek Sahu <vivek.sahu@oss.qualcomm.com> wrote:
>>
>>
>>
>> On 2/10/2026 5:46 PM, Dmitry Baryshkov wrote:
>>> On Tue, Feb 10, 2026 at 05:41:13PM +0530, Vivek Sahu wrote:
>>>>
>>>> On 2/9/2026 5:04 PM, Bartosz Golaszewski wrote:
>>>>> On Mon, 9 Feb 2026 09:06:13 +0100, Vivek Sahu
>>>>> <vivek.sahu@oss.qualcomm.com> said:
>>>>>> QCC2072 is a family of WiFi/BT connectivity chip.
>>>>>> It requires different firmware files and has different
>>>>>> configurations , so add it as a separate SoC type.
>>>>>>
>>>>>> Correct the sorting of other chipsets for better readability.
>>>>>>
>>>>>> The firmware for these chips has been recently added to the
>>>>>>        linux-firmware repository and will be a part of the upcoming
>>>>>>        release.
>>>>> Something is wrong with formatting here.
>>>>>
>>>>> I would personally split the sorting and support for the new model into two
>>>>> patches - without and with functional changes respectively - for easier review.
>>>>>
>>>>> Bartosz
>>>>
>>>> Yes, I'm now splitting this patch into 2 parts, one for sorting another one
>>>> for new model
>>>>
>>>> support. Please ignore this patch.
>>>
>>> Please stop adding extra empty lines between (or fix your email client).
>>>
>>>>
>>>> Sorting change has been raised with tittle "[PATCH v1] Bluetooth: qca:
>>>> Refactor code on
>>>>
>>>> the basis of chipset names". Please approve it at quickest so that we can
>>>> raise new model
>>>>
>>>> addition code changes on top of that.
>>>
>>>
>>> Why couldn't you send it as 2 patches in a single series?
>>>
>> this change includes driver change and yaml change. In recent
>> bluetooth-next branch there is a new style of documentation of bindings
>> comes as "Split to separate schema". I need to re-modify my patch again
>> and compile. Splitting patch seems more convenient for code submission
>> and addressing review comments.
> 
> It makes maintainer's life more complicated as they have to cope with
> dependencies between patch series.
> 
I understand, let me see if i could send the patches in single series.

