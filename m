Return-Path: <devicetree+bounces-260279-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2D7oIxHbeWkg0QEAu9opvQ
	(envelope-from <devicetree+bounces-260279-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:46:57 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CC59EFDC
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 10:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CC6EC3006153
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:45:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A944E34CFD1;
	Wed, 28 Jan 2026 09:45:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OVFaonOH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dYllvsff"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DC82857EA
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:45:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769593549; cv=none; b=BxMWNY8263astTdmbBg6suO/3hAV1yA/9lnAVdHek5wEzcTf1kcwSyWVNWGK4xDDMZMg7GGN4tzBN1acq9qjVTEuDJp+F6nBzvyixURc15hOI0vajjyMaDfRLvmcb34XNsT+R9PdSr/RGykFVHxz9Dm4U84YsWaxRA+n/VanY1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769593549; c=relaxed/simple;
	bh=QnGDz/E5viip/7CHf2oehKFgbjBcJvjeICm9qPBUzJk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=baPwvBcRu3fIBkdUlGPSQ+nScKjo8Jy5ooqC+z9b7FdyPTO8ZVyL0LR55Dm8XKD6bvKhcdWkByCQu9IiZl/wRcZs+AyUzY/OVDUlaqnC/ofucCUQo8EGjzH01IPyXlOpGFR5AsHmB2PxoyED1/IKoqhQ+nT/O9J0mKwcllJCITY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OVFaonOH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dYllvsff; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S92965320363
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:45:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Aqf0hprgBFDDa2Buyyt0F0yoiDV5iMmIOZoHRFYFO+g=; b=OVFaonOHbkxaBkVh
	El9NZNkKsGsttzRJYJ5rktcQqx1O0IIfB9f3Nnv2CETfbe0wllqJJQfX8kNrNe2I
	YJp2Xda3c/mZzRSEGu4xA/wVaySRX/J8Zpe5nMxWtz9VPP6zbripvjqaS8A3/iqm
	+HUhhkHJud5m0/LfCuIhWRnF7KPR5wkh16L/B/rFnxBhzprvmXO+aYmHzLITH/Kb
	W1kD+LUrSeW4sjq44FWc1cKlGAK0w26QOYC6Aoqipbmqldah7M/2XBrT42W2hfwj
	MdGT7H3Iqkmk97lV5M1u5kmI4kGbi6U+FEOD8FsK4HeM622p6wGjTcl5J6CYCXmT
	75Px8w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by4sjt5p7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 09:45:47 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8c536c9d2f7so218573485a.1
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 01:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769593546; x=1770198346; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Aqf0hprgBFDDa2Buyyt0F0yoiDV5iMmIOZoHRFYFO+g=;
        b=dYllvsffuJ+agELLcCgr6sExLqafJa9/J+1gWh0znXmBFpQp5HA+fwvdA8xS8sr2a4
         p13jMzInhesoE3nNlSuodeFZN9Uv+bfqYVsRHabEzaKIspELmTiarmQCjx/1JJGzEQai
         Xb9a9KIN3/vdsdCPw62C//QxSgUppLxK3BRS65+QQhjysgY45TieF9AmTK73akGRWzXM
         o4AmCXo1ywQ4kCJVvepEGL01U6FhMZzTLoKpmxghghHd6cpRAbevw2bXxCEB+ZXnYv1u
         9McKsfkOI8ZSAFmb1MT2y5/OPlOhsFsUsszCwcIxNlIbOfO/G9MYzyVCjOPT6+gzz/BI
         qUvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769593546; x=1770198346;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Aqf0hprgBFDDa2Buyyt0F0yoiDV5iMmIOZoHRFYFO+g=;
        b=ThtPeWyEj8MBaEhouX2DWC5mDF3znCrzo81RaBrwrO/h5lHGBjG5nDdByEkBO1R9IF
         9DmkB9jtkIxUfSZy3oDApYsFm+J8Sc2u1z/RtWgKfauIUiZg9mD/Frcx8z6hmQodvai9
         pnpIPcetUHi+4wQOI7DuEdVt7Ms6iMA57R7REzAx+8tRr9r1MxQjBJKL4Xx5vgxTyAxH
         GGD/7K/osbZOD6Q7X5GiWNQwjZoMOaO71V4ndmUyzfiwKeKsG1Hh4amlo0siHPXwvDeo
         veVWUTl1S1b/zQKHxBFB0XYPV3EfZQ32G4IktfqM9vuX3vMP62zGGDtcb3vDUFHOpKwo
         f3MA==
X-Forwarded-Encrypted: i=1; AJvYcCWWAksb8b4cxlo7FIct6ecHqQap4WZHxTZQE5PGrQse5wMpOQ79pS+K0b7AMg0tP6EQAwmQHqV0vPDv@vger.kernel.org
X-Gm-Message-State: AOJu0YyeWiLL520N+biOU15W4V5eC594/fv90iN/3GzrwAtH1xflICBc
	qFn6qJDxArH49wsfPywGHic2CjHQZcP9H2yyp589JyJKcEiT0eYjycNxoxcqam26N1aRoelI1cW
	QRue+gjGE0g2Kr6smHkjlIxJow9ZGknezVW92G7vLY6lMhgNLmwKx4RanzHuHcIPs
X-Gm-Gg: AZuq6aIlqBtMD1VOXuYBcWWIC9yoNuln2O4pAYe5Pv6qKlWkyy+y9UpWrXTXqir7q+J
	xHcbBqX32oCBhUKR/F/M4DfsCKcvbPYs6lsuIbTx30esYU9rqs63NDudj1+Zjq/Kr30Mbs0cIgj
	6EOi40TGmNC3agNIpnx6KAJQMyu/RdPk+/yjiBdTfCXIfJF0D1Aa2GFJ2rn6xF4+d22oxLenKeo
	1Z4+tgwsGZbW2mH1sJTSO0kv6Zziv7XOVr4eNblYk9qo75QkUiD0svQEEC9/p1Z/be/60sIF5XV
	05R+hGUEx3CtdP3WIPLC2VvFeOrkELFNyvtfNg207v9oGYpLj8U28Qh4CXrJPY95NNWdTgDLAeB
	ZhwSjEiMdDe69W4cejvKPp8eABPa+Ulicp9MIHAraoWjT/yXyJc2DYKNhKUZcszCMyHw=
X-Received: by 2002:a05:620a:4109:b0:8c7:111e:9db6 with SMTP id af79cd13be357-8c714c00500mr104165785a.9.1769593546334;
        Wed, 28 Jan 2026 01:45:46 -0800 (PST)
X-Received: by 2002:a05:620a:4109:b0:8c7:111e:9db6 with SMTP id af79cd13be357-8c714c00500mr104163285a.9.1769593545847;
        Wed, 28 Jan 2026 01:45:45 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8dbef86957sm110464166b.5.2026.01.28.01.45.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jan 2026 01:45:45 -0800 (PST)
Message-ID: <98397a59-8ef2-4202-ae41-015c895d6bce@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 10:45:42 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/8] remoteproc: qcom: probe all child devices
To: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
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
 <5db5dafd-3c1f-4844-b822-bbfe86b3eb4d@oss.qualcomm.com>
 <ctrpymbvjlchp3djnsqq4bghkq2zvqnf5bebszi74f3d36l5dv@icvnkdwgdxmi>
 <ef1911f5-2d96-428c-93f1-3d1815710894@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ef1911f5-2d96-428c-93f1-3d1815710894@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA3OSBTYWx0ZWRfX+yrsZr5O5O0m
 qhIhNtKc+fsXmklFfYNQZhfSn9MKyAQAXkdAWVi1tQgSG3i7SheQiEqjIW8yzMCZkTZF2hhljsR
 nRd3XA8C/rqbA/8t9Y4ZhJAvbuNrZt+Sf2GA0e39giZO3LFXl6+sJulDsHpar1On9+LtRN2WaiR
 9zWIdxtm4usaVSb8O9uIaEzy0kaScQC1xkgUUu0beLYFzlRVp6ph7IFebf8YBvHkriPtCQj9yrN
 Qthbn2dag0YOdE5SaMVN50DENeNmA/vbvBKY4k0g06/lO9h8UgH0TXeZ0NbVtboNN2rVhEz+1aq
 9gey3+Zdl0FMJEuhIAOPIYyAlWtlqyuthKYaqjQBagxXubFKjvSR4llLjBDBl21P6gi+DmJ4zDd
 jslFuK0mdjSZ1ibH4wxQpP9fYHt0ylfwnydTDpeo48gE+8UDYdO2M6l4erKAoBJOKpWa5rUSoxt
 mCJdRzRqW7GAD3egZZA==
X-Proofpoint-ORIG-GUID: UHWv56L7DKdWHhadodWgojenSVesQM3q
X-Authority-Analysis: v=2.4 cv=KezfcAYD c=1 sm=1 tr=0 ts=6979dacb cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=c06_8Dn6AeKgcUQ8PTcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: UHWv56L7DKdWHhadodWgojenSVesQM3q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_02,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 spamscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280079
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260279-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: C3CC59EFDC
X-Rspamd-Action: no action

On 1/28/26 10:39 AM, Gaurav Kohli wrote:
> 
> On 1/27/2026 10:11 PM, Dmitry Baryshkov wrote:
>> On Tue, Jan 27, 2026 at 09:42:10PM +0530, Gaurav Kohli wrote:
>>> On 1/24/2026 12:33 AM, Dmitry Baryshkov wrote:
>>>> On Fri, Jan 23, 2026 at 07:23:39PM +0530, Gaurav Kohli wrote:
>>>>> On 1/8/2026 12:37 PM, Gaurav Kohli wrote:
>>>>>> On 1/3/2026 8:26 PM, Bjorn Andersson wrote:
>>>>>>> On Tue, Dec 23, 2025 at 06:02:21PM +0530, Gaurav Kohli wrote:
>>>>>>>> From: Casey Connolly <casey.connolly@linaro.org>
>>>>>>>>
>>>>>>>> Generalise the qcom,bam-dmux child node support by probing all
>>>>>>>> remoteproc children with of_platform_populate(). This will be used to
>>>>>>>> enable support for devices which are best represented as
>>>>>>>> subnodes of the
>>>>>>>> remoteproc, such as those representing QMI clients.
>>>>>>> Please flip this around, start with the description of the problem
>>>>>>> you're trying to solve.
>>>>>>>
>>>>>>>> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
>>>>>>> This must have your signed-off-by, where you certifies the origin of
>>>>>>> this patch.
>>>>>>>
>>>>>>>> ---
>>>>>>>>     drivers/remoteproc/qcom_q6v5.c     | 4 ++++
>>>>>>>>     drivers/remoteproc/qcom_q6v5_mss.c | 8 --------
>>>>>>>>     2 files changed, 4 insertions(+), 8 deletions(-)
>>>>>>>>
>>>>>>>> diff --git a/drivers/remoteproc/qcom_q6v5.c
>>>>>>>> b/drivers/remoteproc/qcom_q6v5.c
>>>>>>>> index 58d5b85e58cd..a02839c7ed8c 100644
>>>>>>>> --- a/drivers/remoteproc/qcom_q6v5.c
>>>>>>>> +++ b/drivers/remoteproc/qcom_q6v5.c
>>>>>>>> @@ -6,6 +6,7 @@
>>>>>>>>      * Copyright (C) 2014 Sony Mobile Communications AB
>>>>>>>>      * Copyright (c) 2012-2013, The Linux Foundation. All rights
>>>>>>>> reserved.
>>>>>>>>      */
>>>>>>>> +#include <linux/of_platform.h>
>>>>>>>>     #include <linux/kernel.h>
>>>>>>>>     #include <linux/platform_device.h>
>>>>>>>>     #include <linux/interconnect.h>
>>>>>>>> @@ -351,6 +352,8 @@ int qcom_q6v5_init(struct qcom_q6v5 *q6v5,
>>>>>>>> struct platform_device *pdev,
>>>>>>>>             return dev_err_probe(&pdev->dev, PTR_ERR(q6v5->path),
>>>>>>>>                          "failed to acquire interconnect path\n");
>>>>>>>>     +    of_platform_populate(q6v5->dev->of_node, NULL, NULL, q6v5->dev);
>>>>>>> There are other child nodes here, in particular the GLINK and SMD edges.
>>>>>>> Do we really want platform_devices registered for them?
>>>>>>>
>>>>>>> Regards,
>>>>>>> Bjorn
>>>>>> thanks for pointing this, can you please suggest the right approach.
>>>>>>
>>>>>> This should not impact glink, as that is registering as rproc sub node,
>>>>>> And we need rproc cooling as child node
>>>>>>
>>>>>> of remote proc subsytem to create probe dependency only.
>>>>>>
>>>>>>
>>>>>> Can we do platform populate for specific child, would that be right
>>>>>> approach. or we should create rproc cooling as independent of parent ?
>>>>>>
>>>>> HI Bjorn,
>>>>>
>>>>> I’d like to highlight the impact and details of placement of remoteproc
>>>>> cooling dt node:
>>>>>
>>>>>
>>>>> ->As a child of the remote proc subsystem node:
>>>>>       In this configuration, the cooling device will only be probed once the
>>>>> corresponding remote proc subsystem itself is probed.
>>>>>
>>>>> ->Outside the remote proc subsystem, may be part of soc node:
>>>>>       In this setup, the cooling device will be probed independently. It will
>>>>> wait until the remoteproc subsystem is brought up
>>>>>       before completing cooling registration.
>>>>>       The drawback here is that if the parent remoteproc subsystem is
>>>>> disabled, the cooling device will still undergo an
>>>>>       unnecessary probe, even though it cannot be registered.
>>>> Bjorns question was different. It wasn't about pushing cooling device
>>>> outside of the remoteproc node. It is about not registering the devices.
>>>>
>>>> Can we follow the approach outlined by qcom_add_smd_subdev() /
>>>> qcom_add_glink_subdev()?
>>>
>>> Hi Dmitry,
>>>
>>> Thanks for the review. Since the remoteproc cooling is a QMI-based driver,
>>> it will receive the
>>> subsystem up notification directly. Therefore, there’s no need to make it a
>>> subdev node or
>>> tie it into the init/reset sequence of remoteproc subsytem.
>> But you've added a subnode for it (and we are discussing exactly
>> of_platform_populate()) call. So, you are tying it to the remoteproc
>> device lifecycle instead of the remoteproc subsys, which seems strange
>> to me. There is no cooling device if the DSP is not running.
> 
> 
> For the cooling feature, we don’t need to define it as a subnode. The cooling subsystem becomes relevant only
> after the remote subsystem is up, at which point it will receive add/delete notifications from the QMI server.
> 
> 
> If child nodes must be modeled as subnodes for rproc, we can move the CDSP TMD out of the remoteproc and add in soc.
> Is there currently a way for the remoteproc core layer to call of_platform_populate() without requiring a subnode?

I think the question is "why can't you register the remoteproc device
as a cooling_device, with perhaps #cooling-cells = <1>; instead of
any form of children?"

Konrad

