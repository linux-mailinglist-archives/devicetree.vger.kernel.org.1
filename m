Return-Path: <devicetree+bounces-260033-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oCOvBWrseGkCuAEAu9opvQ
	(envelope-from <devicetree+bounces-260033-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:48:42 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D07497F1B
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 17:48:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id DF581304CE6D
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 16:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7024235EDA9;
	Tue, 27 Jan 2026 16:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GJAIbMUH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NhhxR+Ok"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC10A35B626
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:12:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769530342; cv=none; b=WYU4oQn/tfuMObNwt5yiB9kUe8jnympbNGsy/q3y67Y1JYQ+IYNEiNYgYYDGFyg6r2lQiKVH5ma7MQ2wUCiV1t54zrnBxIDPILdmquVXorXimBiowslyxLfzVLTXoy2JEhjNbmCjObcqwN0vd9cthLFXY46f/28v7AMb1yMbp0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769530342; c=relaxed/simple;
	bh=oqoBow5D3lG837WMPctNSJeeKyxHDiuyOmPTM74O8P4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gvk4n5pQ7kgnJLlNjiV7ZQyoxYHBA65TGy+JyxZth5+/KSpisv8414wyXz7bI05MqvQ5O6FS+tWApJ4kHjy5bUnqMEmiiQAKBgnXH3gCsTr1ftWFpfyWHbL/k9T/pzvpmg2P8TbKBmM9Vk62v2tARMmBIXQxTRj9Dk//cl3GWSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GJAIbMUH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NhhxR+Ok; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RA9MUU1268740
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:12:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+SEkQgEJt3XSj0HPB4DBICRq/bSP9m3nTqv1wEUO5dM=; b=GJAIbMUHFANji3ap
	dyADZWwk/CEa7ZGm9UCid41ymVZz4hGg4hfqBNB42fBmRdDjCIh5VNBUIb4ve0qs
	p3dTlTyDsZuys78RnhGekkxdY+8c6f6hoshS1MnaLtEUIZADDXbhvwluz6+8KCvO
	NmbA+mCHSWFpL6OThICAew5btI2UHhJxDTHWMre9fSdy6G2enoZGK7Q1/8OzIIV3
	HniesAz+JYlBTXi+Cvb5aFkzatkrlbOtNNPR9V9NDJU2tivTdy6XaeIgUYgZcvjo
	AZFUJXTvGVtX62C9uhnwqvbeFavPe+p9jA+f2gnH5ulAYXOaAwY2mXXPC+KqPhm+
	V/1vVw==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bxnyatd0j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 16:12:19 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-29f1f69eec6so55471305ad.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 08:12:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769530338; x=1770135138; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+SEkQgEJt3XSj0HPB4DBICRq/bSP9m3nTqv1wEUO5dM=;
        b=NhhxR+OkOrgzWu7z3y87J/LuwSmpA8A3Xkd3Pl+rSQhS/q1CTLpBATRqH1PX9Azpu3
         wF+TvmkxONkzbxjL4Vqq43q3+/yFOlFlrUWhBhjaD3gYWrwAJstMz+wPgY/40NPhW1PD
         lfzrlMhROQWU7o4DC9kZtBiQP4EzTSQDlIhP4UY+iQ+h0XDOkeP6C5AC/n/SjmkW2pQU
         FzqjbLN/cFWjO+WRqi1ZVlrggSx5AOlTL4vb5zDWtSX8DVe9V8oWr0izEF/DnwVSUUSg
         TbEjIUsBudoBUo8zm44c75eKiGFIQ4s+cfkhsKgPFrjUkshYZiFx7XznAU5jiiiWyF6r
         Eijw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769530338; x=1770135138;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+SEkQgEJt3XSj0HPB4DBICRq/bSP9m3nTqv1wEUO5dM=;
        b=IalZ8Gxcv/lb5psgKiyBYbU+MA93v9T6i5xaPbRaUyySilbSzZ1dLf6eFNfuePXoAH
         jPWffMKHpFmFBbiC+U4snj0W0MBrpH1Fyp4BgaHnBHJG2oaP1D2H+8w5N9aeRRMDNQI3
         XnF2u5wDaO0n58l4mU+WYg61FUvBo3mefw5jKyQ95EbzHIcrtMdQ0epo3Khz1yT2JKFc
         pTq3Pphnf0QRFiJ9rX2Ipk07qpVtAN/TB5II8iaGOVsZo0l07XUYZ8aLkqZYSWc84yHB
         hCBhVhevDUzxtI9vs+5nxBtJwWe/lYrFXPcE1AR12McOuDRfasCxDfMiOmM3pMI8Qlwd
         wOAw==
X-Forwarded-Encrypted: i=1; AJvYcCXylRyGE2idB9bDmUPSZimyYtVZ1Hebew4uh8WDkC7yvB4/wRLnKKlEeOBjk95FxZvoRJMieKQvsMQ+@vger.kernel.org
X-Gm-Message-State: AOJu0YwT0Uz4+7Wd7CXbf5CCop02J4TiUseOEBFviiiqLCtApirzNTPR
	hzsP8S9QGMx8wLJ6LY1KR7ddDYuMxB4wDn9mZHN4e5b8+X9ogcrAaJKhZYT9gX1LSVbfgJeFWmQ
	sm86lpL+EfyHXc+8eL8jKPzNwtD0wSESbG3UH80j3Hs65oOzBs74tWu6jbYt5hH+H
X-Gm-Gg: AZuq6aJWj6ZT240ocAiaKxHvGpzgD5Jq4NsrxOeZQL9kLkVyybzrogoA5JhRNiYXVHw
	VwfTxk86K4Bu5SXjf734JcK6/nIZBI5OXpxTZRMcsVH4Mzu9KlR8tjmjltdlHSLDSDVoKP0lqcI
	q16mnVpPiIOS+L/fO7bDbjcuOMMKJSuyRECIc2Ch62+079XMUIXdpnHbjUwQMDlrsqUFbf3LZCS
	wZxrw/ugMdb0TpJEx2VgYRcE/kw9wWd//Wg2r75brfspnxQzeF/DVVFSWgqtVcpWYO8iT1NpCsI
	kRtinjwc5/Cuxx8CciHxhy36WV0Ygr8oZus6kr3AqKWRjVs8Jcxg8B0VxcP8vOUMa8aJCSthAc+
	KdPTvQsMZsKNC6uUs74mErAz3O4Iyl3kQlwhDM3k=
X-Received: by 2002:a17:902:dac4:b0:2a0:c5b8:24b0 with SMTP id d9443c01a7336-2a870dd56edmr28281805ad.46.1769530338469;
        Tue, 27 Jan 2026 08:12:18 -0800 (PST)
X-Received: by 2002:a17:902:dac4:b0:2a0:c5b8:24b0 with SMTP id d9443c01a7336-2a870dd56edmr28281295ad.46.1769530337793;
        Tue, 27 Jan 2026 08:12:17 -0800 (PST)
Received: from [192.168.1.6] ([106.222.229.24])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a802f97f3asm123086095ad.59.2026.01.27.08.12.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 08:12:17 -0800 (PST)
Message-ID: <5db5dafd-3c1f-4844-b822-bbfe86b3eb4d@oss.qualcomm.com>
Date: Tue, 27 Jan 2026 21:42:10 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/8] remoteproc: qcom: probe all child devices
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, mathieu.poirier@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        rafael@kernel.org, daniel.lezcano@linaro.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, amitk@kernel.org,
        mani@kernel.org, casey.connolly@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-3-gaurav.kohli@oss.qualcomm.com>
 <evb5tn2cht7wk76fuc2wpsyxepknigfw37633n6ypuapstbceh@tn5glmi65bdv>
 <cb5430c8-12d6-4439-b1ae-c2f36f29a9f8@oss.qualcomm.com>
 <57493aef-fb35-4377-8cf3-1df7f53470c9@oss.qualcomm.com>
 <74h7r3vsig3csejax3eu3uk53mdiimg2hjx7ntmmfrwdai6s3j@eiztghclfcvt>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <74h7r3vsig3csejax3eu3uk53mdiimg2hjx7ntmmfrwdai6s3j@eiztghclfcvt>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: oQAJN1bj6UNx-oX6YqJ-kLOn2LyJ9Gzb
X-Authority-Analysis: v=2.4 cv=JZqxbEKV c=1 sm=1 tr=0 ts=6978e3e3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=EBd7WcfsMYPMwvoCMWz0vA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=2-K1YE3ZJe1EJHp8LXMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: oQAJN1bj6UNx-oX6YqJ-kLOn2LyJ9Gzb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDEzMiBTYWx0ZWRfX0/v0TTh0beRX
 +X/3ZWDw0z0aHvdYcm3euZpsKkIQNenUA+aY5uUyDAcykPxLEFpBtJ5ashsGBeBajv8M+ves9ca
 Q+ilYn4iQ2wGQDyh26NuPZvAgQK3KByM3mJBUKCW6TMNrN6OSPaWy4PavXcfaTNSYc8vtaDmvKi
 OQKqAz2cQauDgFTy7bSTmy7t9ab0Ovu7E+qd6HJf1xqQ0JIqBBWEQABiq/ihKsRvpDsYivAWs84
 KGsRPF2FbM1RLB9riEjSXag+xbEuokanw5s1aYrCQi8PS9nTOziRczr/NrMnFZeBXNI1ZbMPiAB
 hDEylyi7lO/U2kg9Is4t1PoutUnGLFomJnuXA1DC+A7zGU2Kyq1sacOPPKxIKUvilqAsZIOzqBI
 yv8+z8rlZ/oZb1axbNXP8ncyjOIH2TzPdrZPhVjZBN/OOi75jh0Xg/s9ooV31fU/y0uKrA+nE/l
 TWLc6or6GiUe+vYt4dQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_03,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 suspectscore=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 adultscore=0 clxscore=1015 phishscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601270132
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[18];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260033-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4D07497F1B
X-Rspamd-Action: no action


On 1/24/2026 12:33 AM, Dmitry Baryshkov wrote:
> On Fri, Jan 23, 2026 at 07:23:39PM +0530, Gaurav Kohli wrote:
>> On 1/8/2026 12:37 PM, Gaurav Kohli wrote:
>>> On 1/3/2026 8:26 PM, Bjorn Andersson wrote:
>>>> On Tue, Dec 23, 2025 at 06:02:21PM +0530, Gaurav Kohli wrote:
>>>>> From: Casey Connolly <casey.connolly@linaro.org>
>>>>>
>>>>> Generalise the qcom,bam-dmux child node support by probing all
>>>>> remoteproc children with of_platform_populate(). This will be used to
>>>>> enable support for devices which are best represented as
>>>>> subnodes of the
>>>>> remoteproc, such as those representing QMI clients.
>>>> Please flip this around, start with the description of the problem
>>>> you're trying to solve.
>>>>
>>>>> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
>>>> This must have your signed-off-by, where you certifies the origin of
>>>> this patch.
>>>>
>>>>> ---
>>>>>    drivers/remoteproc/qcom_q6v5.c     | 4 ++++
>>>>>    drivers/remoteproc/qcom_q6v5_mss.c | 8 --------
>>>>>    2 files changed, 4 insertions(+), 8 deletions(-)
>>>>>
>>>>> diff --git a/drivers/remoteproc/qcom_q6v5.c
>>>>> b/drivers/remoteproc/qcom_q6v5.c
>>>>> index 58d5b85e58cd..a02839c7ed8c 100644
>>>>> --- a/drivers/remoteproc/qcom_q6v5.c
>>>>> +++ b/drivers/remoteproc/qcom_q6v5.c
>>>>> @@ -6,6 +6,7 @@
>>>>>     * Copyright (C) 2014 Sony Mobile Communications AB
>>>>>     * Copyright (c) 2012-2013, The Linux Foundation. All rights
>>>>> reserved.
>>>>>     */
>>>>> +#include <linux/of_platform.h>
>>>>>    #include <linux/kernel.h>
>>>>>    #include <linux/platform_device.h>
>>>>>    #include <linux/interconnect.h>
>>>>> @@ -351,6 +352,8 @@ int qcom_q6v5_init(struct qcom_q6v5 *q6v5,
>>>>> struct platform_device *pdev,
>>>>>            return dev_err_probe(&pdev->dev, PTR_ERR(q6v5->path),
>>>>>                         "failed to acquire interconnect path\n");
>>>>>    +    of_platform_populate(q6v5->dev->of_node, NULL, NULL, q6v5->dev);
>>>> There are other child nodes here, in particular the GLINK and SMD edges.
>>>> Do we really want platform_devices registered for them?
>>>>
>>>> Regards,
>>>> Bjorn
>>>
>>> thanks for pointing this, can you please suggest the right approach.
>>>
>>> This should not impact glink, as that is registering as rproc sub node,
>>> And we need rproc cooling as child node
>>>
>>> of remote proc subsytem to create probe dependency only.
>>>
>>>
>>> Can we do platform populate for specific child, would that be right
>>> approach. or we should create rproc cooling as independent of parent ?
>>>
>> HI Bjorn,
>>
>> I’d like to highlight the impact and details of placement of remoteproc
>> cooling dt node:
>>
>>
>> ->As a child of the remote proc subsystem node:
>>      In this configuration, the cooling device will only be probed once the
>> corresponding remote proc subsystem itself is probed.
>>
>> ->Outside the remote proc subsystem, may be part of soc node:
>>      In this setup, the cooling device will be probed independently. It will
>> wait until the remoteproc subsystem is brought up
>>      before completing cooling registration.
>>      The drawback here is that if the parent remoteproc subsystem is
>> disabled, the cooling device will still undergo an
>>      unnecessary probe, even though it cannot be registered.
> Bjorns question was different. It wasn't about pushing cooling device
> outside of the remoteproc node. It is about not registering the devices.
>
> Can we follow the approach outlined by qcom_add_smd_subdev() /
> qcom_add_glink_subdev()?


Hi Dmitry,

Thanks for the review. Since the remoteproc cooling is a QMI-based 
driver, it will receive the

subsystem up notification directly. Therefore, there’s no need to make 
it a subdev node or

tie it into the init/reset sequence of remoteproc subsytem.


>

