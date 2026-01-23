Return-Path: <devicetree+bounces-258960-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GCfELnN9c2mGwwAAu9opvQ
	(envelope-from <devicetree+bounces-258960-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:53:55 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 149F8767FE
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 14:53:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BB6573019F08
	for <lists+devicetree@lfdr.de>; Fri, 23 Jan 2026 13:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E2692EB876;
	Fri, 23 Jan 2026 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AuRKHtxF";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eNqTXmGf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 640A428CF42
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769176432; cv=none; b=KUBfpdNFlY21TUnJyyd8FUUusCHZi+uAPs0u2qX4o7bFpfZSwktIjncn1aLH171HKV9LZAGDpkQma4JUEdh+G2hs3ZRb+iiK2ineRohMjNz/jU8n1twfuuocbyX2sT4896FbJ/rKCqfonsbrP2eyfopI1ZfoqBiGWdabjmGlvrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769176432; c=relaxed/simple;
	bh=ARsh7yVkaTjhfNXlQQNdqW8KzcgE7DBrjE6Oh4aiDDc=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=YZjL9pLUsgjsEP2HtiEE3gEoyvp80k4Yv8phtH+Ki/yEcO+CT7hnAf6eZkMrmQzUy1xLc7QB3ZZh6Dd9Gp6N6lrDAiQ/bkh5M2IWz5dEDM59ZnKkB90HigQ2NpZsjKcj3YTC8DU0iaDtAf+y6gjSgvy4JkQAIADm91gfxru3YFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AuRKHtxF; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eNqTXmGf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60N974L2722623
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:53:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xyk4VyTJvjXyVeGrau23wiL81EvwFDD9XQegtrqTgvc=; b=AuRKHtxFyw1rA19I
	a9dqHS41Gy6UonEBf5+cW03Z5w7f4/MstRkmP2YPrg3/cNFqCMY5W1QGsCg2HHGJ
	HwiYqeN/IExF2aO0y6eM8Hbo26EzXpAYavhv+xIUE5PHMEIMEt1Uc/sAV7aX9F8e
	qra1j/+qP0RYd1WBreCaiRrlH1vZRI+7YFqrFpxedrNE06PgmVbvVupjaboiSoTF
	zn4gjBQPnjNW15MY2B9+mvNCPUDmisCPFksd2TS0cHSxkMfEY4XZ6J0MV5KzZGyc
	wQ+SR2k8f4CdcFTZ8zQYtRMN2q5wtVTzqw8GgVUGSoGcgpF/Duy658rZ+DrNDQuH
	HLVtqg==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bv069jamj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 13:53:49 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-34c5d6193daso4279277a91.1
        for <devicetree@vger.kernel.org>; Fri, 23 Jan 2026 05:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769176428; x=1769781228; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=xyk4VyTJvjXyVeGrau23wiL81EvwFDD9XQegtrqTgvc=;
        b=eNqTXmGfSKMK4ITO4A8Hk5r52Me4+aQn/Sj2C23LhhgVTV+Kd87oCI8sct6rP9EDuF
         88yeQ2DwP6JxjaeeOhvKWr3uBAC0x/Se1td8gb2C7hLNaVyP+7GvaAcebpAxcF5J8uDx
         gUTIvpYYST09zhlOYOJeLGTNXrFH/CsTGuUJQ/3dqVzxaLCJ5SXL6j2oEvK8McabC1N5
         W0COL1WdjqHChVkXeJMo3X7Bb3YZ3ZIpRh70i9wi8OBF8XerMhu/l+W9dCPI9LkPr0x4
         CmzVPMgK+VHLuE+003XcJ79icWiK8jL/40N/DYls+ATrUKIN4X8ynXaYh7jGqqSE6Dak
         gNZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769176428; x=1769781228;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xyk4VyTJvjXyVeGrau23wiL81EvwFDD9XQegtrqTgvc=;
        b=N81iBjgG9VAJAKx2JYbMJMoNDa4lVwZfje+BfeKBukVr5VPDlmsB4T6GtsuyC7ciFZ
         AtgP7mmTaGf/fQJ/qH1591ZjMr0xi6d4pQwd6ODCvRqHur1zUsS+ibf+UONq82idLfEI
         AfB4M/5QTQDI0oYY9J+7nO/Pcv+yfb0/NX8RPuhSj18b8gUYFuiTV5Cx5yqUqLlTxE5G
         VPcOuODHn2SgewG/IcXy0SVkuEEPpt+E1MN5EAT6VY4AP/GFq9A+KAIFROT6/PyYw8Ho
         OczguMr5i1h+aMfhmR+/mtG3KITS3hBIXxJKYBzMyMgxpa1i46Bq2w9ogi01TVqaWPXs
         3K4g==
X-Forwarded-Encrypted: i=1; AJvYcCXWa/qdVDC8FPZfysDNJYWw7BgGurW8cSjw0XzfeEyYfRUjReOW8u+EUdzCjtfYX68DLX9VmzSGoNU6@vger.kernel.org
X-Gm-Message-State: AOJu0YxFG2/uwkDGO5NNtckRZsrpEmLTOnh7bhebKIyf/PyKQ5DZn2OQ
	HZdoiC1u9UVdp7Z50Bq3pwUWqznfTy+FOKClQwWfQwOT4jcgdvAfe2WkGjScxyrw0fO+md4Isiy
	QeH/PRnvRddXCcVCR/GEuVMg3MAMo7S3Qt98cHAuyopmd04UkG8f+T5u2QqtYty1a
X-Gm-Gg: AZuq6aLyqU/dW7gC5X5UH2qRexQi5DDynzzc/ikcV6Lc/sc8/D8i3uvhwTnKC0SVaws
	8LWMLL1Eq+2OlFEXM99VovIT8fCnd6SuRpnlNk5eLchb1iIDk8BtkHlrn/PGxcvUOS4vsrfDsnX
	KJU+6p/ayOaFOUL33eMZDi01tcgETQ8xLkiQJqEKmnvjAV5HKXREqpshOEQA3/txDKH6ds33QQh
	634XLcVJsevyDcDQqtH7ghSHSnX7wMKrNxKjvkxdMZyHDDOQoT6jMRKo9NkXkU92QTGOt8IKFNp
	hTIo+FJyyHm1vgoDUEpIakEqmGbZWRAT7JMRnhpt0hSRi+foR/Wnm+rmymEIGpNMoXfJTMYCsoe
	qYajAGIpzBSghk/TWGGu50dQnTrE55Q/INRf62Lrq
X-Received: by 2002:a17:90b:4d8b:b0:340:ca7d:936a with SMTP id 98e67ed59e1d1-353688574d3mr2598996a91.18.1769176428028;
        Fri, 23 Jan 2026 05:53:48 -0800 (PST)
X-Received: by 2002:a17:90b:4d8b:b0:340:ca7d:936a with SMTP id 98e67ed59e1d1-353688574d3mr2598963a91.18.1769176427551;
        Fri, 23 Jan 2026 05:53:47 -0800 (PST)
Received: from [192.168.1.22] ([106.222.229.24])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-353352160a2sm5222874a91.7.2026.01.23.05.53.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Jan 2026 05:53:46 -0800 (PST)
Message-ID: <57493aef-fb35-4377-8cf3-1df7f53470c9@oss.qualcomm.com>
Date: Fri, 23 Jan 2026 19:23:39 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 2/8] remoteproc: qcom: probe all child devices
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, rafael@kernel.org, daniel.lezcano@linaro.org,
        rui.zhang@intel.com, lukasz.luba@arm.com, konradybcio@kernel.org,
        amitk@kernel.org, mani@kernel.org, casey.connolly@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251223123227.1317244-1-gaurav.kohli@oss.qualcomm.com>
 <20251223123227.1317244-3-gaurav.kohli@oss.qualcomm.com>
 <evb5tn2cht7wk76fuc2wpsyxepknigfw37633n6ypuapstbceh@tn5glmi65bdv>
 <cb5430c8-12d6-4439-b1ae-c2f36f29a9f8@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <cb5430c8-12d6-4439-b1ae-c2f36f29a9f8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=eLUeTXp1 c=1 sm=1 tr=0 ts=69737d6d cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=EBd7WcfsMYPMwvoCMWz0vA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=32UuRXtoL6AckyYbW_AA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iS9zxrgQBfv6-_F4QbHw:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: vD19_emFuBkDTHP0a3Y8zR66zFb-EaSO
X-Proofpoint-ORIG-GUID: vD19_emFuBkDTHP0a3Y8zR66zFb-EaSO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTIzMDExMyBTYWx0ZWRfX4ahdQH1xK9pY
 5Ek/6Vdkp6uoYJZ8rbAINQR9iPw4/wFSn99yh2doHt+ZaAsYiPauMkykGnl4xVDDR43JjMdu4BX
 IpByjP1QPovTdubAcJwyJq/UkZZC4KXHNHUnIrWSziX6Hf3m/4d0Zj+ql7EoFkRZc4Qqs2h5qL8
 mw6QPGrsT7JnSVvrn5vIPut2xx29lDA9pmYL3PywLhERww8OvNfWWyOnPiViJW/M6N/B/K/ZNq3
 PmLL5RhGtH2UXH1/ZiJxSkD/3cZPJckdoV3h38mhaTUcY8DtznMP03zhCbmdO5hmEmqM0lbrXOT
 lJQJl9KNNr2RibbQQHPEwZBddby54GtZz1mqrtfFap3S1ujnYlHq4EduZTw2KwmJqMXqDiN0zBe
 LKe7L50Tk+CxkkcyohBZ1L7A8Gq266/iw+HVGcTnqGDvbI7bKBPjGTf60KVONHnauvq+7ebwm5K
 3zWnjmMN9svYEszqw0Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.20,FMLib:17.12.100.49
 definitions=2026-01-23_02,2026-01-22_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 adultscore=0 impostorscore=0 clxscore=1015
 phishscore=0 lowpriorityscore=0 suspectscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601230113
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
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-258960-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linaro.org:email,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 149F8767FE
X-Rspamd-Action: no action


On 1/8/2026 12:37 PM, Gaurav Kohli wrote:
>
> On 1/3/2026 8:26 PM, Bjorn Andersson wrote:
>> On Tue, Dec 23, 2025 at 06:02:21PM +0530, Gaurav Kohli wrote:
>>> From: Casey Connolly <casey.connolly@linaro.org>
>>>
>>> Generalise the qcom,bam-dmux child node support by probing all
>>> remoteproc children with of_platform_populate(). This will be used to
>>> enable support for devices which are best represented as subnodes of 
>>> the
>>> remoteproc, such as those representing QMI clients.
>> Please flip this around, start with the description of the problem
>> you're trying to solve.
>>
>>> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
>> This must have your signed-off-by, where you certifies the origin of
>> this patch.
>>
>>> ---
>>>   drivers/remoteproc/qcom_q6v5.c     | 4 ++++
>>>   drivers/remoteproc/qcom_q6v5_mss.c | 8 --------
>>>   2 files changed, 4 insertions(+), 8 deletions(-)
>>>
>>> diff --git a/drivers/remoteproc/qcom_q6v5.c 
>>> b/drivers/remoteproc/qcom_q6v5.c
>>> index 58d5b85e58cd..a02839c7ed8c 100644
>>> --- a/drivers/remoteproc/qcom_q6v5.c
>>> +++ b/drivers/remoteproc/qcom_q6v5.c
>>> @@ -6,6 +6,7 @@
>>>    * Copyright (C) 2014 Sony Mobile Communications AB
>>>    * Copyright (c) 2012-2013, The Linux Foundation. All rights 
>>> reserved.
>>>    */
>>> +#include <linux/of_platform.h>
>>>   #include <linux/kernel.h>
>>>   #include <linux/platform_device.h>
>>>   #include <linux/interconnect.h>
>>> @@ -351,6 +352,8 @@ int qcom_q6v5_init(struct qcom_q6v5 *q6v5, 
>>> struct platform_device *pdev,
>>>           return dev_err_probe(&pdev->dev, PTR_ERR(q6v5->path),
>>>                        "failed to acquire interconnect path\n");
>>>   +    of_platform_populate(q6v5->dev->of_node, NULL, NULL, q6v5->dev);
>> There are other child nodes here, in particular the GLINK and SMD edges.
>> Do we really want platform_devices registered for them?
>>
>> Regards,
>> Bjorn
>
>
> thanks for pointing this, can you please suggest the right approach.
>
> This should not impact glink, as that is registering as rproc sub 
> node, And we need rproc cooling as child node
>
> of remote proc subsytem to create probe dependency only.
>
>
> Can we do platform populate for specific child, would that be right 
> approach. or we should create rproc cooling as independent of parent ?
>

HI Bjorn,

I’d like to highlight the impact and details of placement of remoteproc 
cooling dt node:


->As a child of the remote proc subsystem node:
     In this configuration, the cooling device will only be probed once 
the corresponding remote proc subsystem itself is probed.

->Outside the remote proc subsystem, may be part of soc node:
     In this setup, the cooling device will be probed independently. It 
will wait until the remoteproc subsystem is brought up
     before completing cooling registration.
     The drawback here is that if the parent remoteproc subsystem is 
disabled, the cooling device will still undergo an
     unnecessary probe, even though it cannot be registered.

>
>>> +
>>>       return 0;
>>>   }
>>>   EXPORT_SYMBOL_GPL(qcom_q6v5_init);
>>> @@ -361,6 +364,7 @@ EXPORT_SYMBOL_GPL(qcom_q6v5_init);
>>>    */
>>>   void qcom_q6v5_deinit(struct qcom_q6v5 *q6v5)
>>>   {
>>> +    of_platform_depopulate(q6v5->dev);
>>>       qmp_put(q6v5->qmp);
>>>   }
>>>   EXPORT_SYMBOL_GPL(qcom_q6v5_deinit);
>>> diff --git a/drivers/remoteproc/qcom_q6v5_mss.c 
>>> b/drivers/remoteproc/qcom_q6v5_mss.c
>>> index 91940977ca89..d40565c1cc62 100644
>>> --- a/drivers/remoteproc/qcom_q6v5_mss.c
>>> +++ b/drivers/remoteproc/qcom_q6v5_mss.c
>>> @@ -238,7 +238,6 @@ struct q6v5 {
>>>       struct qcom_rproc_pdm pdm_subdev;
>>>       struct qcom_rproc_ssr ssr_subdev;
>>>       struct qcom_sysmon *sysmon;
>>> -    struct platform_device *bam_dmux;
>>>       bool need_mem_protection;
>>>       bool has_alt_reset;
>>>       bool has_mba_logs;
>>> @@ -2029,7 +2028,6 @@ static int q6v5_alloc_memory_region(struct 
>>> q6v5 *qproc)
>>>   static int q6v5_probe(struct platform_device *pdev)
>>>   {
>>>       const struct rproc_hexagon_res *desc;
>>> -    struct device_node *node;
>>>       struct q6v5 *qproc;
>>>       struct rproc *rproc;
>>>       const char *mba_image;
>>> @@ -2163,10 +2161,6 @@ static int q6v5_probe(struct platform_device 
>>> *pdev)
>>>       if (ret)
>>>           goto remove_sysmon_subdev;
>>>   -    node = of_get_compatible_child(pdev->dev.of_node, 
>>> "qcom,bam-dmux");
>>> -    qproc->bam_dmux = of_platform_device_create(node, NULL, 
>>> &pdev->dev);
>>> -    of_node_put(node);
>>> -
>>>       return 0;
>>>     remove_sysmon_subdev:
>>> @@ -2186,8 +2180,6 @@ static void q6v5_remove(struct platform_device 
>>> *pdev)
>>>       struct q6v5 *qproc = platform_get_drvdata(pdev);
>>>       struct rproc *rproc = qproc->rproc;
>>>   -    if (qproc->bam_dmux)
>>> - of_platform_device_destroy(&qproc->bam_dmux->dev, NULL);
>>>       rproc_del(rproc);
>>>         qcom_q6v5_deinit(&qproc->q6v5);
>>> -- 
>>> 2.34.1
>>>

