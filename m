Return-Path: <devicetree+bounces-261127-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2LeLAkt2fGmWNAIAu9opvQ
	(envelope-from <devicetree+bounces-261127-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:13:47 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4BCB8C74
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 10:13:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8F45C3013A64
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 09:13:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 472872D948A;
	Fri, 30 Jan 2026 09:13:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ko3fo1Ej";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="gLptABWJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 961F434F48C
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769764395; cv=none; b=U3a0H08vFsq3LQ11/i87WJZFwJXMSi9H1c4ecdx6+Hy5Zu9cDgndjEpYScw9MP3RJJFz/vDrCa1Px3OWk1gdW2gP6tYMqgZIHrB+c0ia3B8x6y9coMKjLOARKnyId5sx7PT26fodnwn1pGn7rUBeCUpDdV3FBu1jrclOUJdmK00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769764395; c=relaxed/simple;
	bh=cybiddfexAMODy+RV/4e1gDVrXJymUA0ZsRQi1o3S6w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bWfxfFf0BVekWxP8MjgHtKaOI1U4yxlMDSQj8+rY/f6M18AtdYkae7IeVd8mKsOcbpwHrEv5hbuDJt2Unfwo+UmWChxtCYamEafxINiWKXQjey7H7IksiIZ2u1m0gz2j4q3Q/JR+M0bexpa/nK7VuFvVWwZfvgWYOEvcWQdoqKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ko3fo1Ej; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=gLptABWJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60U3W2uP1902438
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:13:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fgHGfl8ahEmJiGrnzyZY0E//HZAOMDJ3Jpbm0XXwVyc=; b=Ko3fo1EjJ96BMnDC
	PC8X3BaThKsdZ1hdMhE+WMIg43FfAwL+yMO2bJOUcU0MYXquXd+Y+XZPvKebL4I7
	H9ra7U58rAomEW/2ViLOv0znvVbx4YpVdbLW7FhWgpIc5jImuQy6F6ZIrSmsmXNy
	xNR+mwHKpSw3KoXT6fWIGx7E5Jpnas017NWoiuONu4iryoAqMSnz5SMJ3yLAMQ3m
	y8pxkMpTEm4CNGFoT7ciwFtaEwIbEV9AXHNKSnSIhaWAYSNV2DpTJBpqryA8Nb7Q
	z6gtU8PdoGHk/LttdagE/ywYnQYcWlCIu3qYAibnFfplOZlHPhINEDZ6RN8tLKGt
	xgDD3g==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c05sebwpr-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 09:13:12 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88882c9b4d0so1271646d6.0
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 01:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769764392; x=1770369192; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fgHGfl8ahEmJiGrnzyZY0E//HZAOMDJ3Jpbm0XXwVyc=;
        b=gLptABWJ6H2Xrdu6GFB+cCLYezkMayQLRUcf3tasFuFvKbMmeMQTute02V9O/imEpw
         W1EYxcfvo03sUPFa15eHnudSiLcX9/AxQ0uF6LC21KdS0EcOcIQKc2qC77Pxba0qnIuZ
         bL7nR9EQfstTL9YKOxudqaxwlnBgfJuTBZfW1L9p5Szc9od24UlJKZuXZXSRQ6deAK8b
         ekDLE4KCzkq1OnOtCVl7lRMLPtqhJYwxaR0uju/k5F+bL+rI3WUbcfp8RnS0BcT89hIl
         ifNEcBGxP62g8vlB8OIcco8r6S294z8mv4/BGas9gmaREh7UhQjEOciirWstAbGo8j0l
         lLEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769764392; x=1770369192;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fgHGfl8ahEmJiGrnzyZY0E//HZAOMDJ3Jpbm0XXwVyc=;
        b=KX8+t8GpLusU9J1ZNMhqJrZClTwDCG4KbQQ7oiyOu702BB/gpiFtukbgsmcpL+kTDN
         E30Au/Jyj6D8jrhCQKW15DYYaWyRtXIxT1DKYIucXiyW9Z09zw7IXbCmXmdgm7F3BhD+
         mJ6dSxX+WLbAYYziaK90SR/wPSJme7bjtORQ1l0W5ZJXanETl1tWTMOELvJseW3gn82S
         7c+fYrdvtBNRex7MWb2mmv1umcFLWI8hLvNeB8a51O+/zpHj0G1Mz6bmhQi/e8Ee8mGn
         4OJUoGZ91kvTjg00vEBOBAV6BIgo7TY5iqZh4qVMZLQYG8ZtWxH6nzbMQNChPLs76AOq
         bkRw==
X-Forwarded-Encrypted: i=1; AJvYcCUAPXaxccHjC7szMCoxijcwdXT2LxWP+n/bPx4MmKWm2N+8wBdXEADrmydv3f7C0tm+UgGyXGEf0ij/@vger.kernel.org
X-Gm-Message-State: AOJu0YzJe534ByTMAI81AijKOLYCfQ1wE5sbjiCdP7o0DHhbJaz47evY
	3rPnJU+kV6K+6LGTb4hwzvgT6aIs7OEGul+IY/UHOUgCeFo0jkqqNwzvueJ2K4SiWaqnAQ5wAHo
	zAcj2NcdttukN2X/cm2ap5TtXnyNetLJ/jtWUmq2322EkSuVHLth83mz2lAYW5hKD
X-Gm-Gg: AZuq6aJh7Htb6YpeF5MQfiTGbAin0tP3KUNEJ5KW7Snz2qa1LndWBc9cSO1lX466UeT
	cwVOY1tuNfz+Knueaj6R/AkjlqJzME22Vd8eDTQ7YPNpVGnKTTcxkHrLpwM6jkA4FDDIA3nKyWU
	ygbDw0ERiNrPvfLxn8QBten2uDphKOx7scgv87EzJ7dwSmh7DGIdSDOxpYy5QbkLBP4Yu0DnDTv
	u+imLdKvQ1IDZ8y0w9/niiLunJ4MJVpU6i3OGYWqScX6wvBZYNYfOfCD7lCAeYhw2EVNspGLox7
	cV1MPABfVp3OafRL/7zaywtrxBGbM4HnWob9n2aMObSOW79uuSc8xacoVo2CQv2Ayq+8RiVCSTJ
	b3qcXOjHkdyKS1XAr2CO4bQEnolm6ZDRaTfD9NS8/Mtd9QoCVHhxg5u/E9jP3yyIcqL8=
X-Received: by 2002:a05:6214:3316:b0:882:63cf:3970 with SMTP id 6a1803df08f44-894e9f3155fmr23295756d6.1.1769764391737;
        Fri, 30 Jan 2026 01:13:11 -0800 (PST)
X-Received: by 2002:a05:6214:3316:b0:882:63cf:3970 with SMTP id 6a1803df08f44-894e9f3155fmr23295576d6.1.1769764391276;
        Fri, 30 Jan 2026 01:13:11 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b46abea5sm3874864a12.31.2026.01.30.01.13.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 01:13:09 -0800 (PST)
Message-ID: <f461ca33-0892-4a58-a40b-6da2a32d1430@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 10:13:06 +0100
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
 <98397a59-8ef2-4202-ae41-015c895d6bce@oss.qualcomm.com>
 <c5ace95c-6ba1-4ce9-b461-82225a9fc576@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <c5ace95c-6ba1-4ce9-b461-82225a9fc576@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: do0w5xFx7bPSjNiiJGp7-8q1iuEq1wZI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDA3MyBTYWx0ZWRfX+DoaalcUoC2Q
 WUb7QSAR8nXeUcMbYNnDCy2EvX+KRWSkcEukGEpn7pFErftJSQWjX8kbqhTSU6Dua35thmPEAPR
 e+MVtNvZiY/zMqnSxOgAzmsaxaDfOVle5pZd/Z/bP2Ul1LbCZHFeiRxaSo3SHW7VuSWF+O1n+9J
 ZWPF0jeUpVOXi6QBEFCBC258CTClxbjaxvJrvavWVMGu4d3F27G1O3eLTACYYup27sf+4doaebw
 2l7rvFabG5lZYxCS9oMb2LGM1vLV+bkFLhkPTOEblMvPJZjWjzQ876OTSchN6EOv2htz76g5d4c
 mSbpO3WRxGKX6pjDK6DffCI/yNVuT0iD0HDJ+060Tv92f+dy9Otlg37HJfMtinkIsQ9DZUom1rH
 tAE8IBzkHlaUQUcorHUCJyOSiRlWajlcN7DyQBuzfRhkGRna2xG0/oIhBfMae9sHvhKnWUI9gbG
 vfWKe4O4HBWwCYbXiuQ==
X-Authority-Analysis: v=2.4 cv=RIu+3oi+ c=1 sm=1 tr=0 ts=697c7628 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=gv82KYJJj_s6uarY3okA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: do0w5xFx7bPSjNiiJGp7-8q1iuEq1wZI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_03,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 malwarescore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300073
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[19];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261127-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,linaro.org:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7F4BCB8C74
X-Rspamd-Action: no action

On 1/30/26 8:03 AM, Gaurav Kohli wrote:
> 
> On 1/28/2026 3:15 PM, Konrad Dybcio wrote:
>> On 1/28/26 10:39 AM, Gaurav Kohli wrote:
>>> On 1/27/2026 10:11 PM, Dmitry Baryshkov wrote:
>>>> On Tue, Jan 27, 2026 at 09:42:10PM +0530, Gaurav Kohli wrote:
>>>>> On 1/24/2026 12:33 AM, Dmitry Baryshkov wrote:
>>>>>> On Fri, Jan 23, 2026 at 07:23:39PM +0530, Gaurav Kohli wrote:
>>>>>>> On 1/8/2026 12:37 PM, Gaurav Kohli wrote:
>>>>>>>> On 1/3/2026 8:26 PM, Bjorn Andersson wrote:
>>>>>>>>> On Tue, Dec 23, 2025 at 06:02:21PM +0530, Gaurav Kohli wrote:
>>>>>>>>>> From: Casey Connolly <casey.connolly@linaro.org>
>>>>>>>>>>
>>>>>>>>>> Generalise the qcom,bam-dmux child node support by probing all
>>>>>>>>>> remoteproc children with of_platform_populate(). This will be used to
>>>>>>>>>> enable support for devices which are best represented as
>>>>>>>>>> subnodes of the
>>>>>>>>>> remoteproc, such as those representing QMI clients.
>>>>>>>>> Please flip this around, start with the description of the problem
>>>>>>>>> you're trying to solve.
>>>>>>>>>
>>>>>>>>>> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
>>>>>>>>> This must have your signed-off-by, where you certifies the origin of
>>>>>>>>> this patch.
>>>>>>>>>
>>>>>>>>>> ---
>>>>>>>>>>      drivers/remoteproc/qcom_q6v5.c     | 4 ++++
>>>>>>>>>>      drivers/remoteproc/qcom_q6v5_mss.c | 8 --------
>>>>>>>>>>      2 files changed, 4 insertions(+), 8 deletions(-)
>>>>>>>>>>
>>>>>>>>>> diff --git a/drivers/remoteproc/qcom_q6v5.c
>>>>>>>>>> b/drivers/remoteproc/qcom_q6v5.c
>>>>>>>>>> index 58d5b85e58cd..a02839c7ed8c 100644
>>>>>>>>>> --- a/drivers/remoteproc/qcom_q6v5.c
>>>>>>>>>> +++ b/drivers/remoteproc/qcom_q6v5.c
>>>>>>>>>> @@ -6,6 +6,7 @@
>>>>>>>>>>       * Copyright (C) 2014 Sony Mobile Communications AB
>>>>>>>>>>       * Copyright (c) 2012-2013, The Linux Foundation. All rights
>>>>>>>>>> reserved.
>>>>>>>>>>       */
>>>>>>>>>> +#include <linux/of_platform.h>
>>>>>>>>>>      #include <linux/kernel.h>
>>>>>>>>>>      #include <linux/platform_device.h>
>>>>>>>>>>      #include <linux/interconnect.h>
>>>>>>>>>> @@ -351,6 +352,8 @@ int qcom_q6v5_init(struct qcom_q6v5 *q6v5,
>>>>>>>>>> struct platform_device *pdev,
>>>>>>>>>>              return dev_err_probe(&pdev->dev, PTR_ERR(q6v5->path),
>>>>>>>>>>                           "failed to acquire interconnect path\n");
>>>>>>>>>>      +    of_platform_populate(q6v5->dev->of_node, NULL, NULL, q6v5->dev);
>>>>>>>>> There are other child nodes here, in particular the GLINK and SMD edges.
>>>>>>>>> Do we really want platform_devices registered for them?
>>>>>>>>>
>>>>>>>>> Regards,
>>>>>>>>> Bjorn
>>>>>>>> thanks for pointing this, can you please suggest the right approach.
>>>>>>>>
>>>>>>>> This should not impact glink, as that is registering as rproc sub node,
>>>>>>>> And we need rproc cooling as child node
>>>>>>>>
>>>>>>>> of remote proc subsytem to create probe dependency only.
>>>>>>>>
>>>>>>>>
>>>>>>>> Can we do platform populate for specific child, would that be right
>>>>>>>> approach. or we should create rproc cooling as independent of parent ?
>>>>>>>>
>>>>>>> HI Bjorn,
>>>>>>>
>>>>>>> I’d like to highlight the impact and details of placement of remoteproc
>>>>>>> cooling dt node:
>>>>>>>
>>>>>>>
>>>>>>> ->As a child of the remote proc subsystem node:
>>>>>>>        In this configuration, the cooling device will only be probed once the
>>>>>>> corresponding remote proc subsystem itself is probed.
>>>>>>>
>>>>>>> ->Outside the remote proc subsystem, may be part of soc node:
>>>>>>>        In this setup, the cooling device will be probed independently. It will
>>>>>>> wait until the remoteproc subsystem is brought up
>>>>>>>        before completing cooling registration.
>>>>>>>        The drawback here is that if the parent remoteproc subsystem is
>>>>>>> disabled, the cooling device will still undergo an
>>>>>>>        unnecessary probe, even though it cannot be registered.
>>>>>> Bjorns question was different. It wasn't about pushing cooling device
>>>>>> outside of the remoteproc node. It is about not registering the devices.
>>>>>>
>>>>>> Can we follow the approach outlined by qcom_add_smd_subdev() /
>>>>>> qcom_add_glink_subdev()?
>>>>> Hi Dmitry,
>>>>>
>>>>> Thanks for the review. Since the remoteproc cooling is a QMI-based driver,
>>>>> it will receive the
>>>>> subsystem up notification directly. Therefore, there’s no need to make it a
>>>>> subdev node or
>>>>> tie it into the init/reset sequence of remoteproc subsytem.
>>>> But you've added a subnode for it (and we are discussing exactly
>>>> of_platform_populate()) call. So, you are tying it to the remoteproc
>>>> device lifecycle instead of the remoteproc subsys, which seems strange
>>>> to me. There is no cooling device if the DSP is not running.
>>>
>>> For the cooling feature, we don’t need to define it as a subnode. The cooling subsystem becomes relevant only
>>> after the remote subsystem is up, at which point it will receive add/delete notifications from the QMI server.
>>>
>>>
>>> If child nodes must be modeled as subnodes for rproc, we can move the CDSP TMD out of the remoteproc and add in soc.
>>> Is there currently a way for the remoteproc core layer to call of_platform_populate() without requiring a subnode?
>> I think the question is "why can't you register the remoteproc device
>> as a cooling_device, with perhaps #cooling-cells = <1>; instead of
>> any form of children?"
>>
>> Konrad
> 
> 
> thanks Konrad, for the review.
> 
> As each subsystem can expose multiple thermal mitigation devices via the remoteproc TMD service, so need to define child node.

I think you're stuck in an XY problem - you keep insisting that adding
a subnode is your end goal, while you really want to achieve being able
to register multiple cooling devices. Or at least that's how I read your
messages since you happen not to give any explanation as to why it's
actually necessary.

In my previous message, I forgot that cells for cooling devices actually
represent the minimum and maximum cooling state allowed. But since the
API is just part of the kernel, there's nothing preventing us from
evolving it.

Currently, we have:

Documentation/devicetree/bindings/thermal/thermal-cooling-devices.yaml

properties:
  "#cooling-cells":
    description:
      Must be 2, in order to specify minimum and maximum cooling state used in
      the cooling-maps reference. The first cell is the minimum cooling state
      and the second cell is the maximum cooling state requested.
    const: 2

But I think it would be perfectly fine to suggest a change such that
if cells > 2, the last two cells keep the current behavior and the former
ones let you index into a cooling device exposed through a single OF node

e.g.

rproc_xyz: remoteproc {
	compatible = "qcom,rproc-xyz";

	...

	#cooling-device-cells = <3>;
};

...

thermal-zones {
	super-rproc-therm-a {
		thermal-sensors = <&rproc_xyz RPROC_XYZ_COOLING_A
				   THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;

		trips { ... } ;
	};

	super-rproc-therm-b {
		thermal-sensors = <&rproc_xyz RPROC_XYZ_COOLING_B
				   THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;

		trips { ... } ;
	};
};

This would be resolved by allowing drivers to register an .of_xlate-type
function which would take the RPROC_XYZ_COOLING_n argument and e.g. use
it as an index into struct thermal_cooling_device cdev[]; within the
driver struct.

Konrad

