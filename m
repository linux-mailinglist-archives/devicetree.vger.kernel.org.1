Return-Path: <devicetree+bounces-162734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id F353BA79AE3
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 06:44:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 499C91889C92
	for <lists+devicetree@lfdr.de>; Thu,  3 Apr 2025 04:44:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 299DE19ABBB;
	Thu,  3 Apr 2025 04:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XbkYFrlG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D98CB1448E3
	for <devicetree@vger.kernel.org>; Thu,  3 Apr 2025 04:44:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743655462; cv=none; b=OlUV2V7WUKXiy4OkJWItmzan2LoTbLRFrduqy93Fby9FR5kmsHGGrMmSebRIO/laaoG9VS9+m3Oe86UvW5Xmgdm8vF76ebOTeCIIbEG0CJOS1Sa6NeMiO3uQRIj16I7+XRtX1le6aSeYqh2nhhpz+SFjKUX2owkZwKLuFV/k4B0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743655462; c=relaxed/simple;
	bh=pX3TOEkMVOu9UUOiX4XaUtgFr246gpwx4sz1hPNE5/I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BAVQcBkDxn7mOfEaIc0x0dBnYf61C43zxrkZphX2T8OABvfzrkuT8sZtr/SGGrMQHPdaJqnLlnmIVdk0juHRQvoqOjsAdi2IAZO6R5nGuCmLd7kyV9LfaEh1zZ/re4MJuAddcqKsmR+iTZKkSkde3cdjASBDk2K/DQIR5c6UEPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XbkYFrlG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5333mkWv011579
	for <devicetree@vger.kernel.org>; Thu, 3 Apr 2025 04:44:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pX3TOEkMVOu9UUOiX4XaUtgFr246gpwx4sz1hPNE5/I=; b=XbkYFrlGKTw92IHN
	ZXV0YoBN9LqG+Scptjmk8o26+AVGTJgkwRgolAY8LreC21qiA+rnm62AM22Vwzcm
	XUqAS8lb/h+79odo7K9nCH6VWTeTyViQQ9sJ0q5Hm/lvu8ZH2UNSrIH8y92wDejt
	YJhd1AZKbsrIvO6saX1piAgF6jtsNyTXkU+8+by5SSLql0Ol28tY0cbVZeebmqDS
	MExppfpG+TXz9ZhVnIkpqFPTAeZ1znRe69aNRxD78SeK8md/MpAmEbtbjinCjm0j
	EONPZ/eAI0DGMDP5eD46rBs8vS6DbTZkmhPLPwgOm/PoblxkMqdtylKyyKKMt0x5
	xZcGhg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45sc2yrvfm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 03 Apr 2025 04:44:18 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-2ff854a2541so449912a91.0
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 21:44:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743655457; x=1744260257;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pX3TOEkMVOu9UUOiX4XaUtgFr246gpwx4sz1hPNE5/I=;
        b=lPQ/MHibwARMhFfvIXjMozGh1mdcb4hztnttNevbZ/3WnYUeJRLY8UwecMNmCBaIw0
         yHhqK+B2dI3YgNqPBeWH9VdKDg2gzfjA3bWK3apkTWQeS3tmW+tmvFXnpF1dZHdp4Uxe
         R4uiXBOEt2ezgCBSe9mLpQyHUhyBXYvIQnPbIHyt5vvbO1nu+SkNhtKFmNcgwSBIDgqP
         9kNI6GPrJsNiYF0TWrRM/2NOp4GrFZf8MdKKFvcQdzJ/g1TToSLJamwqDZCdk7/QJF5P
         ZfCZXR3dumJLFxUeQPy6pQURwi8u96y24LkOCH27ccQPDSu7/b0ndMB02Wk2pxTWshMW
         opfQ==
X-Forwarded-Encrypted: i=1; AJvYcCXczhqZUJa8h1G1Fz2+UyFMfdm0qAgpFsMJ8Gdb1gMFNw+yHX2DQJ3oEumVTUvjQa9hlb4Ns1v1PUkX@vger.kernel.org
X-Gm-Message-State: AOJu0Yzp9vbZuUdNlzwtbBdtwWix+neHXv7vo73ru+PsInNZBuWKvn9j
	ItmOzmh2th8KGLyWPwEbT3L6K1QEgQr7a+7aa0Gp+HTki7pH9GIizQCUVb5k8OBukyS0CXWZksZ
	JkvWqTWm4+FOndfpGD05P+OwH5KB6ar82RSa3OMKilYY1utG3S7ERkymAZGip
X-Gm-Gg: ASbGncvuHuWVNZMLkk4akXLEACi1x5s0KS3OZsMmhoflgXJHtxvVktlep8QI4iRluUN
	EU/+GVr2YjHOCvyGAWN+2W6B5BzHRq96LdxHy3DdrTS70DOpNLo53y0Sf+NtNRXKecJlkCMG2TT
	x933Py9td/aq9cr5HoYuE56mZYDnX3Hp5cX5CiPqnBGRqHkefWfRdIkJPtCcCGTILVjQnEXv2ar
	F8L812hHtnNlBHRnFenJOSdYhLdSPwNDWSQLTZNeO1F7KI9sL6lET7fuublvUCa5o/D5KwW4MS6
	kE0uS4bY8g+DAj0J4N9nIDG72cGXFZhi4DYVnKj6
X-Received: by 2002:a17:90b:50cf:b0:2fe:ba7f:8032 with SMTP id 98e67ed59e1d1-3057cbf6453mr2168297a91.9.1743655457081;
        Wed, 02 Apr 2025 21:44:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFURruLAolWkOQKsQ1bALqNS/8BOoY/s1w8nLZO+Mu5Q1KYq91vpBymSAhfkYOYqUKT2i9PoQ==
X-Received: by 2002:a17:90b:50cf:b0:2fe:ba7f:8032 with SMTP id 98e67ed59e1d1-3057cbf6453mr2168270a91.9.1743655456662;
        Wed, 02 Apr 2025 21:44:16 -0700 (PDT)
Received: from [10.204.65.49] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2297866e2b6sm4731025ad.191.2025.04.02.21.44.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Apr 2025 21:44:16 -0700 (PDT)
Message-ID: <bfa29a76-f89a-4398-b6b3-1be7ae6cf8b3@oss.qualcomm.com>
Date: Thu, 3 Apr 2025 10:14:11 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] misc: fastrpc: add support for gpdsp remoteproc
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
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
 <qhriqbm6fcy5vcclfounaaepxcvnck2lb7k2gcpbtrojqzehua@khv5lwdgbysc>
 <9962c517-5c0e-4d46-ac0c-2a7bab550156@linaro.org>
 <412fe24e-ce70-4733-ace5-d3fbe43476c4@oss.qualcomm.com>
 <c27a97ed-c765-421a-a48c-3abbae3bac93@oss.qualcomm.com>
Content-Language: en-US
From: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>
In-Reply-To: <c27a97ed-c765-421a-a48c-3abbae3bac93@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=AMoviu7M c=1 sm=1 tr=0 ts=67ee1222 cx=c_pps a=RP+M6JBNLl+fLTcSJhASfg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=LwNrBaKUNq3Cb3izIMUA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: s91RsZn0ewxVbnJ8uw0TBUs5afq6kxgD
X-Proofpoint-ORIG-GUID: s91RsZn0ewxVbnJ8uw0TBUs5afq6kxgD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-03_01,2025-04-02_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 bulkscore=0 priorityscore=1501 malwarescore=0 mlxscore=0 impostorscore=0
 clxscore=1015 spamscore=0 phishscore=0 mlxlogscore=999 adultscore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504030023



On 4/2/2025 2:12 PM, Dmitry Baryshkov wrote:
> On 02/04/2025 11:38, Ekansh Gupta wrote:
>>
>>
>> On 3/21/2025 5:53 PM, Srinivas Kandagatla wrote:
>>>
>>>
>>> On 20/03/2025 18:43, Dmitry Baryshkov wrote:
>>>> On Thu, Mar 20, 2025 at 05:11:20PM +0000, Srinivas Kandagatla wrote:
>>>>>
>>>>>
>>>>> On 20/03/2025 09:14, Ling Xu wrote:
>>>>>> The fastrpc driver has support for 5 types of remoteprocs. There are
>>>>>> some products which support GPDSP remoteprocs. Add changes to support
>>>>>> GPDSP remoteprocs.
>>>>>>
>>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>>>> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
>>>>>> ---
>>>>>>     drivers/misc/fastrpc.c | 10 ++++++++--
>>>>>>     1 file changed, 8 insertions(+), 2 deletions(-)
>>>>>>
>>>>>> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
>>>>>> index 7b7a22c91fe4..80aa554b3042 100644
>>>>>> --- a/drivers/misc/fastrpc.c
>>>>>> +++ b/drivers/misc/fastrpc.c
>>>>>> @@ -28,7 +28,9 @@
>>>>>>     #define SDSP_DOMAIN_ID (2)
>>>>>>     #define CDSP_DOMAIN_ID (3)
>>>>>>     #define CDSP1_DOMAIN_ID (4)
>>>>>> -#define FASTRPC_DEV_MAX        5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
>>>>>> +#define GDSP0_DOMAIN_ID (5)
>>>>>> +#define GDSP1_DOMAIN_ID (6)
>>>>>
>>>>> We have already made the driver look silly here, Lets not add domain ids for
>>>>> each instance, which is not a scalable.
>>>>>
>>>>> Domain ids are strictly for a domain not each instance.
>>>>
>>>> Then CDSP1 should also be gone, correct?
>>> Its already gone as part of the patch that I shared in this discussion.
>>>
>>> I will send a proper patch to list once Ling/Ekansh has agree with it.
>>>
>> Thanks, Srini, for sharing this clean-up patch. It looks proper to
>> me, but I was thinking if we could remove the domain_id dependency
>> from the fastrpc driver. The addition of any new DSP will frequently
>> require changes in the driver. Currently, its usage is for creating
>> different types of device nodes and transferring memory ownership to
>> SLPI when a memory region is added.
>>
>> The actual intention behind different types of device nodes can be
>> defined as follows:
>>
>> fastrpc-xdsp-secure: Used for signed (privileged) PD offload and for daemons.
>> fastrpc-xdsp: Should be used only for unsigned (less privileged) PD offload.
>>
>> The reason for this constraint is to prevent any untrusted process
>> from communicating with any privileged PD on DSP, which poses a security risk.
>> The access to different device nodes can be provided/restricted based on UID/GID
>> (still need to check more on this; on Android-like systems, this is controlled by
>> SELinux).
>>
>> There is already a qcom,non-secure-domain device tree property[1] which doesn't
>> have a proper definition as of today. The actual way to differentiate between
>> secure and non-secure DSP should be based on its ability to support unsigned PD.
>>
>> One way to remove the domain_id dependency that I can think of is to use this
>> property to create different types of device nodes. Essentially, if unsigned PD
>> is supported (e.g., CDSP, GPDSP), we add this property to the DT node and create
>> both types of device nodes based on this. Otherwise, only the secure device node
>> is created.
>
> This sounds like breaking backwards compatibility on the userspace side. You can not do that.
Okay, I thought if the property is added for all older platforms, that will ensure backward
compatibility is maintained for old built applications.

From userspace, the expected device open sequence is to try with the secure device node and
fallback to the default/non-secure node if the secure node is not available/accessible.
I understand the ABI cannot be broken, and this expectation should be added for new
applications/platforms.

This is still a security issue that needs to be fixed in some way. I'll try to find out if any other
approach can address this.

That being said, I'm fine with Srini's change for domain name clean-up.

I would request Ling to test the patch.

--Ekansh

>
>>
>> This raises the question of backward compatibility, but I see that on most older
>> platform DTs, this property is already added, so both device nodes will be created
>> there, and applications will work as expected. If any old DT DSP node lacks this
>> property, we can add it there as well.
>>
>> Going forward, the qcom-non-secure-property should be added only if unsigned PD
>> is supported. This way, we can clean up the driver completely to remove the
>> domain_id dependency.
>>
>> If this sounds good, I can work on this design and send out a patch.
>>
>> [1] https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml#n44
>>
>> --Ekansh
>>
>>> --srini
>>>>
>>>
>>
>
>


