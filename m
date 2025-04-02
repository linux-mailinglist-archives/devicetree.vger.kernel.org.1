Return-Path: <devicetree+bounces-162516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9287DA78A35
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 10:42:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B27573A592E
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 08:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06BB523537B;
	Wed,  2 Apr 2025 08:42:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hTvHY+K7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31BDF231A4D
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 08:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743583345; cv=none; b=s0cKyAKklanvp2qxQo58hpBh+Sa8MHSmmjvjp8jxOxxrrLxu35t8xu1Y/uXjupKEvLfD+gOAD9zNh3GSFvVt8aWwoFICnmFCldemDXgeIbGx3WgkneckVacI3l4x/P8S9X49ePNTanS4TRKktGsmBc45HtD7NQtnN2hKkQGLPAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743583345; c=relaxed/simple;
	bh=K2bw+1KeHp81EuZFnQjbluDFd1uJMgLd3nwq4NNYKUo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=WQ4RM+Kwp/FiM0HY0/ApFovYY1e0P0qHk9w1+ELPYAsjo4Us5PpDjYOdnBxSZEmXXR9Aa3QGFte3qEU6ZYLkYmLIyPW2OglE3MWpc8321DAjEUub/Q3vIBAL9FJcWKmhKNW8rEdUUcIXqMLo7ABfQw63jTBTQQRrjtDnNLR064c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hTvHY+K7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5325v0U3026790
	for <devicetree@vger.kernel.org>; Wed, 2 Apr 2025 08:42:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jfO7/bGre+6kk4wzIfdSX7eLLfl7DhFr+sFCeDK2cj8=; b=hTvHY+K7d6pykXFm
	1mPPA03izIeGRhE7Ryb0ZFt0gnO6DLnQT0p5YmbX40/G8+wK+sCeMt/cfCBi3uxR
	RKqYqL1wSQr+EJTja4/1dtxXfFGZhIPlDYrV3dT24GCdZLLI8wn1vjQ/417/4+Ry
	iyAQHDlDf/mQ5xYTKC/cO4S3UBmsuOaT1/kKWkX/kgUPgkPmJZFMG/z6e5Y9zoaF
	579hrjSys7eA0cxZj1pnu0SwB0Jqwi//Ary0rP/FhG3FFQ3fgRpH3pNZAPGTgdjD
	2++GsvN/xY5+jDJvKVua7oP4SCWYBYyLUevp/YRCghI88+lUWdv3fKpkFBYZ44Pa
	7aDCGg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ryhfrfx3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 08:42:21 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5b9333642so733274685a.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 01:42:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743583341; x=1744188141;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jfO7/bGre+6kk4wzIfdSX7eLLfl7DhFr+sFCeDK2cj8=;
        b=YdswOKlbR856fpJo4/Lp+ggsn7ophU8CFFSF/cMpxD7jDkQLpBthWKb0S39ACi5Q6H
         WEGi+n9p/6KYDy+lg+Aer4fzt8zzWt68wyKp0gGQgT79jV4kUsBe3lurozvrTeb+eDBN
         DdIAhUKH+PMitQpYl3Lfa9mcgP2wvC/40LBqNDZNGYUAdZ/R+5MiPEiq0gWw39HmI/nH
         u1PjL8m21sV1zUJ9PniATie7MVC/nxO6HzqDiIs9NgjfoCKhFStTPsiinRqAakLWBeMh
         RTSPA9HdiPWYO4GeEy7CAfAA61n62eE6+2cTYhhHFlrnor2WoUq8wlgLXbyw0J4v6LAI
         BpXg==
X-Forwarded-Encrypted: i=1; AJvYcCVrQFjvaurmrI167u2HhyxduPzRLLR30OCNH56DFXvRifpHimPYb1E1R4JTx2gEnwegXBP9ZwQcrD4k@vger.kernel.org
X-Gm-Message-State: AOJu0YwYk9dLS4bMHvs47x4Gb/gkIokxQX/FaDF7+rTuSxSyNGj4g2cg
	OEMM+RMYNVz350cyVWhNzYjkL/rpeosZ0rdco0bsBy1mO2K0n67qSN4rZe8GR2qTXGS4MIdZETT
	XbnGOHW5y3LMzj6KhYaknCkLfBEJtYCgxf5srRJn/4mUwzYVzIajP3EidVcfA
X-Gm-Gg: ASbGncuO8rRR1Wl6BNyJ8ktMKKRlu3S5Bj9q9NOrOerVVjHmRT2lDBe1YrqZLkYcSS4
	t8OyTWxjQ9ERxy7gbe8EMu2p2SbLkcnx325XnPlvCIC+D5bVVyxhbFJ4T0iqog8VNjVu+wNr1uQ
	PedG58P/edasJkBb/d7dV33uMoy5N4frepI7wugU1qucvFK/5cNWkds/AfQmKpZ6sHYKp/pJdNo
	XmhyR8VUHuEMD5hl8b0x8ouVboNCZKYJgfv693f0bDAF6bMEhe4RgayZJJBJQ48/aZs8LK2ygM3
	9oA8/gHFXRnBOTW64SFdpHbQ2EMLj5EcJG8+XY/TWBq0bKY1hJFvtYX4+9TLWp0G3HnCAjlHOVm
	l8j8yajBwH38DN8eE3twDnIhiHEm6dbUJOAu525SbIy3Wm4EhDLqKzfzy3pmvETLdJw/lGiZp
X-Received: by 2002:a05:620a:4484:b0:7c5:5fa0:45f8 with SMTP id af79cd13be357-7c69071d9camr2031704085a.17.1743583340906;
        Wed, 02 Apr 2025 01:42:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE2MsXpi9YoQbrkM+I2ZTcI04QtJYTcA45hj7d6mFakfAdQJGJ6n7LSqt3GRBFrZGPDPSf6Vw==
X-Received: by 2002:a05:620a:4484:b0:7c5:5fa0:45f8 with SMTP id af79cd13be357-7c69071d9camr2031700585a.17.1743583340459;
        Wed, 02 Apr 2025 01:42:20 -0700 (PDT)
Received: from ?IPV6:2001:14bb:673:ef86:ad54:6866:66aa:2ae6? (2001-14bb-673-ef86-ad54-6866-66aa-2ae6.rev.dnainternet.fi. [2001:14bb:673:ef86:ad54:6866:66aa:2ae6])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b095a034esm1574317e87.216.2025.04.02.01.42.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Apr 2025 01:42:19 -0700 (PDT)
Message-ID: <c27a97ed-c765-421a-a48c-3abbae3bac93@oss.qualcomm.com>
Date: Wed, 2 Apr 2025 11:42:22 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] misc: fastrpc: add support for gpdsp remoteproc
To: Ekansh Gupta <ekansh.gupta@oss.qualcomm.com>,
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
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <412fe24e-ce70-4733-ace5-d3fbe43476c4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: 5mIcmu6hfkmlC1aX3hA5BkDhoatOyb2X
X-Authority-Analysis: v=2.4 cv=RrfFLDmK c=1 sm=1 tr=0 ts=67ecf86d cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=kzd5r9BBUjDB0T0qikoA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 5mIcmu6hfkmlC1aX3hA5BkDhoatOyb2X
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-02_03,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 malwarescore=0
 mlxscore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 phishscore=0 mlxlogscore=999 clxscore=1015
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504020054

On 02/04/2025 11:38, Ekansh Gupta wrote:
> 
> 
> On 3/21/2025 5:53 PM, Srinivas Kandagatla wrote:
>>
>>
>> On 20/03/2025 18:43, Dmitry Baryshkov wrote:
>>> On Thu, Mar 20, 2025 at 05:11:20PM +0000, Srinivas Kandagatla wrote:
>>>>
>>>>
>>>> On 20/03/2025 09:14, Ling Xu wrote:
>>>>> The fastrpc driver has support for 5 types of remoteprocs. There are
>>>>> some products which support GPDSP remoteprocs. Add changes to support
>>>>> GPDSP remoteprocs.
>>>>>
>>>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>>>> Signed-off-by: Ling Xu <quic_lxu5@quicinc.com>
>>>>> ---
>>>>>     drivers/misc/fastrpc.c | 10 ++++++++--
>>>>>     1 file changed, 8 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
>>>>> index 7b7a22c91fe4..80aa554b3042 100644
>>>>> --- a/drivers/misc/fastrpc.c
>>>>> +++ b/drivers/misc/fastrpc.c
>>>>> @@ -28,7 +28,9 @@
>>>>>     #define SDSP_DOMAIN_ID (2)
>>>>>     #define CDSP_DOMAIN_ID (3)
>>>>>     #define CDSP1_DOMAIN_ID (4)
>>>>> -#define FASTRPC_DEV_MAX        5 /* adsp, mdsp, slpi, cdsp, cdsp1 */
>>>>> +#define GDSP0_DOMAIN_ID (5)
>>>>> +#define GDSP1_DOMAIN_ID (6)
>>>>
>>>> We have already made the driver look silly here, Lets not add domain ids for
>>>> each instance, which is not a scalable.
>>>>
>>>> Domain ids are strictly for a domain not each instance.
>>>
>>> Then CDSP1 should also be gone, correct?
>> Its already gone as part of the patch that I shared in this discussion.
>>
>> I will send a proper patch to list once Ling/Ekansh has agree with it.
>>
> Thanks, Srini, for sharing this clean-up patch. It looks proper to
> me, but I was thinking if we could remove the domain_id dependency
> from the fastrpc driver. The addition of any new DSP will frequently
> require changes in the driver. Currently, its usage is for creating
> different types of device nodes and transferring memory ownership to
> SLPI when a memory region is added.
> 
> The actual intention behind different types of device nodes can be
> defined as follows:
> 
> fastrpc-xdsp-secure: Used for signed (privileged) PD offload and for daemons.
> fastrpc-xdsp: Should be used only for unsigned (less privileged) PD offload.
> 
> The reason for this constraint is to prevent any untrusted process
> from communicating with any privileged PD on DSP, which poses a security risk.
> The access to different device nodes can be provided/restricted based on UID/GID
> (still need to check more on this; on Android-like systems, this is controlled by
> SELinux).
> 
> There is already a qcom,non-secure-domain device tree property[1] which doesn't
> have a proper definition as of today. The actual way to differentiate between
> secure and non-secure DSP should be based on its ability to support unsigned PD.
> 
> One way to remove the domain_id dependency that I can think of is to use this
> property to create different types of device nodes. Essentially, if unsigned PD
> is supported (e.g., CDSP, GPDSP), we add this property to the DT node and create
> both types of device nodes based on this. Otherwise, only the secure device node
> is created.

This sounds like breaking backwards compatibility on the userspace side. 
You can not do that.

> 
> This raises the question of backward compatibility, but I see that on most older
> platform DTs, this property is already added, so both device nodes will be created
> there, and applications will work as expected. If any old DT DSP node lacks this
> property, we can add it there as well.
> 
> Going forward, the qcom-non-secure-property should be added only if unsigned PD
> is supported. This way, we can clean up the driver completely to remove the
> domain_id dependency.
> 
> If this sounds good, I can work on this design and send out a patch.
> 
> [1] https://web.git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/misc/qcom,fastrpc.yaml#n44
> 
> --Ekansh
> 
>> --srini
>>>
>>
> 


-- 
With best wishes
Dmitry

