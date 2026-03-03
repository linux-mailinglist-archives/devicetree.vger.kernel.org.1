Return-Path: <devicetree+bounces-270729-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id SAhrOpE0p2k9fwAAu9opvQ
	(envelope-from <devicetree+bounces-270729-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:20:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E8E071F5E5C
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:20:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9899D304BB0B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:17:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C994396589;
	Tue,  3 Mar 2026 19:16:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jMV6qzmv";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="X8oWBThu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FB6339657E
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 19:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772565400; cv=none; b=koAyNf0otMyHNjJdHx9YMgNegHRWRE26QiQlMEA7krYUvCoio3VRMYOHoJ6o/CKjbnGqY9Yu2aucHPYur/Cd2e7r/62CipmRS0gIJm9/hPI877hlKC/uAZDMCaTfv3gZ2kQYh7sUR4sTasyrDXazbynb+3MR+TNy1Ot/4/z+ZMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772565400; c=relaxed/simple;
	bh=UBT35nY6GKDuTiVu0BhklVZrCznrQJ6RhL3ZL2qeeC0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BgRmUfXZJ2WupS63UKiFwszWfQcgiP0jlK1Cly9mgoQM7HDgWgXcL5hl5g76eGRmIyJMd3ji1uETWTHdoQ2cdx/lnKxDfvzVRLxJB65tfa133dR+awcK7JlBHBdyMMDlQcuVyjfpCmrTSRSXmVfIjfY2wo149h/U4HsdpPoudNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jMV6qzmv; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=X8oWBThu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H1GRO728325
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 19:16:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	x7nDgycG81om+0Zg7sH3cMCeC5SiOTz3dDIdtVP2WdE=; b=jMV6qzmv88L4Gclk
	Z0mXv+HV8iC6NeCTEmk8swqIFfwdsbXZsolgxP30irqEM7mMgTPJDC6RMPQiv1jX
	YJJ3cTfKBc1gMXic8P17HCmv0sjUs0V0Nr+Scejq4sOWxo8ggZwZe8GLkiIT+F6H
	4BcgdH4ngc8Uv5ONrcj9w7h5FDtnb89Ng/2r5yLZ45Eaa3mO2ArTnEZPGCGn+kup
	+CnxnQXLRzM0PGN1z3QF7v3MrPpt4cXNQuiv1DLrC8Z2aJXh/GXqitmaSpYG2qhh
	H9rH8g4TkAbpvDap0aSDaesc5tYeDVk59bSJ/RxaRbcCe8YVOIUdkK4VvwmLGQFk
	X+IHfQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cns5ftu8k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 19:16:38 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-8273e7824e4so4491305b3a.1
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 11:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772565397; x=1773170197; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=x7nDgycG81om+0Zg7sH3cMCeC5SiOTz3dDIdtVP2WdE=;
        b=X8oWBThuDvdYeOIwwRWkC6M0NLkcZqdEmK6rf6Bi7lkuJBP81zt7pqlLBQiNNCM27w
         rXqDn+6lKku7TzmWO2uhx+KpkT0q1PeMzPxFzq4ooPCtUwr9Tp3j1fhv3I1ruKboKpIP
         F5CuQoae0OMMpR6Me782/V29i1HUeVPQKNBcYD+cb1oli9S9LFHGfP9FHVRnQFboMv6G
         XmuHllto6pYJHawNIu4yzyyDdO/Rr/Pqnhe6OVO2h7wL5ATRVEizAQj1GnZjmlNucgIv
         /IDjn3XTRnH8r/RGroJDYcY+HQ6IYsfUXbrwfai/ZmZp6UQJHud5xakT2KZbk6TAyxCk
         /ClQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772565397; x=1773170197;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x7nDgycG81om+0Zg7sH3cMCeC5SiOTz3dDIdtVP2WdE=;
        b=OPoJN+IthCIhGbNn3Bi7itVM1EIKi+Adu0xA1RaMjUK3J6SsdFkNn0xlCkrAv/aavR
         NP9a8cl9CSP5F6sfIxip9W/vwCGoXdIZ6ZczAH8j44+3q1DuD1u51DQ+aSF4POK6K4pg
         Tk2Xa9djxwt0CT+wErq2IYo/0FtWHhOh8dx2tB/Ks2y8IKZme6PyEE8Ozp41CSK989wy
         tLwx4I0XGq6qo5ji7fTRrouYfUf4r7VQSP6NQSUcFFq2sFhGLJze1fhyKHdjIRh1DDtk
         Mza6BNDmZnBKw0m6ibugODBdMtkbJ9PtB689kEnmukIoqJ1mwuUqPj8sGm6H/VLio1AN
         UBeg==
X-Forwarded-Encrypted: i=1; AJvYcCVBS/XfrWzsL5/sNN9DZB5QTJ5p+6DGg6AaqI6rg8ds2pdZKE91GvPhj5U60Hyk4I5sD834rNKsJ5Yc@vger.kernel.org
X-Gm-Message-State: AOJu0Yw78t35dWjY5Go2c8jUB6a7Pj4RlB6XOVZxwEczSY3zI0wIOG6T
	qKZJHTd8R/diWMSoGfxrKsp/zOMHU16+wG4wa+SBKJNlSOqdbbwOKmKb04CfCEtlmEEdwMu1Dn+
	CJFf+2bXruLAaOiOJzuIm1OqoggmMZvix1sDXEY3ypJjyH25IuwDDo4EayAILDwNQrfue0VxN
X-Gm-Gg: ATEYQzwuqKUHRO3L6ebeO+R8NEB5Md1J8Ie+gKPhEW0vZ7yH/L7m21XFV6ei+SsMnVC
	hGX7SZw8eMWQqeUF1hBV4nwiOXbJFuAkqVR/zbQtaFVYogX7LNkjWdBZC9D8Pk6HdrArxk/xhRG
	cDi/sXoqd+fky9zkYPx7yx2p8OC1Fv3hE7TiBSmdARrMA6WGBaIcCZVJQzbdVMyPAQR+h+7I1bX
	taZyYgMjlW9QfiaKXkLapJ3y7yOGn+9bH23Usvp+CskdBs02C2DmbhsjxT76Jd5hHX79d3pm5sL
	SPAu9JMpRypjA4nvSiY7XWC3lavoO22ulhQgwnsD/SjyjMymiT8CyOWoSBbTy1Qr/3vG2UAXxPB
	5KuTuDfc08PxzFluDSkTO4Bpx7+cbvXc0IcCOXRq6BiCW+1xx/HP9Ggg=
X-Received: by 2002:a05:6a00:4214:b0:81f:4675:c2a6 with SMTP id d2e1a72fcca58-8274d93b0a7mr15489765b3a.2.1772565397221;
        Tue, 03 Mar 2026 11:16:37 -0800 (PST)
X-Received: by 2002:a05:6a00:4214:b0:81f:4675:c2a6 with SMTP id d2e1a72fcca58-8274d93b0a7mr15489736b3a.2.1772565396593;
        Tue, 03 Mar 2026 11:16:36 -0800 (PST)
Received: from [192.168.0.172] ([49.205.248.49])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8273a01aa09sm19638827b3a.48.2026.03.03.11.16.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 11:16:36 -0800 (PST)
Message-ID: <1dc86b00-9a18-482c-94b1-96692c1dd530@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 00:46:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/7] media: iris: add helper to select context bank
 device
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
 <20260227-kaanapali-iris-v2-5-850043ac3933@oss.qualcomm.com>
 <bi3i37ho3ppzlgdx264ohxpcem3nwumjelzckf4x5uzdj5rt7a@2y2jrilmfimj>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <bi3i37ho3ppzlgdx264ohxpcem3nwumjelzckf4x5uzdj5rt7a@2y2jrilmfimj>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Pv2ergM3 c=1 sm=1 tr=0 ts=69a73396 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=KPiuay1jFzAquJblYynD6w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22
 a=EUspDBNiAAAA:8 a=zVNvaYjD9Rq9sQCc3cMA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-ORIG-GUID: tEcXT8LbgGB73DoUMrS08RfSFnPnTEjc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE1NiBTYWx0ZWRfX0kX3PhX6CCIm
 MmuuHoAOjst6GHxkh/yWrTCCRRsfAtWQ0Pv3ddaYdrdkoUMxxU5gUzpKnegPIeLVznr9mZ9CwRm
 Mi4CZjPSuK/caxuv9dpZw5uJCkkIBjAX4/TMKKED1EVira/gZp/yyK6uj6PUwQlRU0zcRqiXKmi
 xAyOVW30v2/AVWctQCXTn+U+nj9RUym1RGCO+QJtSHlq6+lw6O8f+ka+uoSmRzLm4qoByQ/BvXX
 eZrOXOdpo5sBImHws5MnXZLV/P5CEVHQ0UmRqZ1nBlAyVKGixONhjqVyGYt5bLvMNPrYqSZeQER
 U/HBNssxfKsERhLuhB5nIR6+n90i/LdOiuBnKKHtW8HNJrpyvoSqdvC2ZJicoWL9fojw6T7sCcm
 OtaVBNAF+L6kpyeyirHL0XCM5YNga2BiDCyQqKmOxfjNOwqVcYdaf3p+A4B8Swp9uUgkyFdzMiN
 SNHvMyFE60ZyB9AixaQ==
X-Proofpoint-GUID: tEcXT8LbgGB73DoUMrS08RfSFnPnTEjc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 impostorscore=0 malwarescore=0 spamscore=0
 suspectscore=0 adultscore=0 priorityscore=1501 phishscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2603030156
X-Rspamd-Queue-Id: E8E071F5E5C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270729-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action



On 2/28/2026 1:57 AM, Dmitry Baryshkov wrote:
> On Fri, Feb 27, 2026 at 07:41:21PM +0530, Vikash Garodia wrote:
>> Depending on the buffer type (input, output, internal and interface
>> queues), associated context bank is selected, if available. Fallback to
>> parent device for backward compatibility.
>>
>> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>> ---
>>   drivers/media/platform/qcom/iris/iris_buffer.c    |  7 +--
>>   drivers/media/platform/qcom/iris/iris_buffer.h    |  2 +
>>   drivers/media/platform/qcom/iris/iris_hfi_queue.c | 16 +++---
>>   drivers/media/platform/qcom/iris/iris_resources.c | 60 +++++++++++++++++++++++
>>   drivers/media/platform/qcom/iris/iris_resources.h |  2 +
>>   drivers/media/platform/qcom/iris/iris_vidc.c      |  4 +-
>>   6 files changed, 79 insertions(+), 12 deletions(-)
>>
>> diff --git a/drivers/media/platform/qcom/iris/iris_buffer.c b/drivers/media/platform/qcom/iris/iris_buffer.c
>> index 9151f43bc6b9c2c34c803de4231d1e6de0bec6c4..95962c19c334f08a74c5b7e8ba978ab631a65e9c 100644
>> --- a/drivers/media/platform/qcom/iris/iris_buffer.c
>> +++ b/drivers/media/platform/qcom/iris/iris_buffer.c
>> @@ -335,8 +335,8 @@ void iris_get_internal_buffers(struct iris_inst *inst, u32 plane)
>>   static int iris_create_internal_buffer(struct iris_inst *inst,
>>   				       enum iris_buffer_type buffer_type, u32 index)
>>   {
>> +	struct device *dev = iris_get_cb_dev(inst->core, inst, buffer_type);
>>   	struct iris_buffers *buffers = &inst->buffers[buffer_type];
>> -	struct iris_core *core = inst->core;
>>   	struct iris_buffer *buffer;
>>   
>>   	if (!buffers->size)
>> @@ -352,7 +352,7 @@ static int iris_create_internal_buffer(struct iris_inst *inst,
>>   	buffer->buffer_size = buffers->size;
>>   	buffer->dma_attrs = DMA_ATTR_WRITE_COMBINE | DMA_ATTR_NO_KERNEL_MAPPING;
>>   
>> -	buffer->kvaddr = dma_alloc_attrs(core->dev, buffer->buffer_size,
>> +	buffer->kvaddr = dma_alloc_attrs(dev, buffer->buffer_size,
>>   					 &buffer->device_addr, GFP_KERNEL, buffer->dma_attrs);
>>   	if (!buffer->kvaddr) {
>>   		kfree(buffer);
>> @@ -490,9 +490,10 @@ int iris_queue_internal_buffers(struct iris_inst *inst, u32 plane)
>>   int iris_destroy_internal_buffer(struct iris_inst *inst, struct iris_buffer *buffer)
>>   {
>>   	struct iris_core *core = inst->core;
>> +	struct device *dev = iris_get_cb_dev(core, inst, buffer->type);
>>   
>>   	list_del(&buffer->list);
>> -	dma_free_attrs(core->dev, buffer->buffer_size, buffer->kvaddr,
>> +	dma_free_attrs(dev, buffer->buffer_size, buffer->kvaddr,
>>   		       buffer->device_addr, buffer->dma_attrs);
>>   	kfree(buffer);
>>   
>> diff --git a/drivers/media/platform/qcom/iris/iris_buffer.h b/drivers/media/platform/qcom/iris/iris_buffer.h
>> index 75bb767761824c4c02e0df9b765896cc093be333..9520aa290b44f06ed2004ad89940c19d1c08a3d2 100644
>> --- a/drivers/media/platform/qcom/iris/iris_buffer.h
>> +++ b/drivers/media/platform/qcom/iris/iris_buffer.h
>> @@ -28,6 +28,7 @@ struct iris_inst;
>>    * @BUF_SCRATCH_2: buffer to store encoding context data for HW
>>    * @BUF_VPSS: buffer to store VPSS context data for HW
>>    * @BUF_PARTIAL: buffer for AV1 IBC data
>> + * @BUF_HFI_QUEUE: buffer for hardware firmware interface queue
> 
> Separate commit?

sure, introducing the HFI_QUEUE buffer type can be made into a separate 
patch.

> 
>>    * @BUF_TYPE_MAX: max buffer types
>>    */
>>   enum iris_buffer_type {
>> @@ -44,6 +45,7 @@ enum iris_buffer_type {
>>   	BUF_SCRATCH_2,
>>   	BUF_VPSS,
>>   	BUF_PARTIAL,
>> +	BUF_HFI_QUEUE,
>>   	BUF_TYPE_MAX,
>>   };
>>   
>> diff --git a/drivers/media/platform/qcom/iris/iris_hfi_queue.c b/drivers/media/platform/qcom/iris/iris_hfi_queue.c
>> index b3ed06297953b902d5ea6c452385a88d5431ac66..c1241fb8dc6519020a063cbba87aed665701d7ae 100644
>> --- a/drivers/media/platform/qcom/iris/iris_hfi_queue.c
>> +++ b/drivers/media/platform/qcom/iris/iris_hfi_queue.c
>> @@ -245,25 +245,26 @@ static void iris_hfi_queue_deinit(struct iris_iface_q_info *iface_q)
>>   
>>   int iris_hfi_queues_init(struct iris_core *core)
>>   {
>> +	struct device *dev = iris_get_cb_dev(core, NULL, BUF_HFI_QUEUE);
>>   	struct iris_hfi_queue_table_header *q_tbl_hdr;
>>   	u32 queue_size;
>>   
>>   	/* Iris hardware requires 4K queue alignment */
>>   	queue_size = ALIGN((sizeof(*q_tbl_hdr) + (IFACEQ_QUEUE_SIZE * IFACEQ_NUMQ)), SZ_4K);
>> -	core->iface_q_table_vaddr = dma_alloc_attrs(core->dev, queue_size,
>> +	core->iface_q_table_vaddr = dma_alloc_attrs(dev, queue_size,
>>   						    &core->iface_q_table_daddr,
>>   						    GFP_KERNEL, DMA_ATTR_WRITE_COMBINE);
>>   	if (!core->iface_q_table_vaddr) {
>> -		dev_err(core->dev, "queues alloc and map failed\n");
>> +		dev_err(dev, "queues alloc and map failed\n");
>>   		return -ENOMEM;
>>   	}
>>   
>> -	core->sfr_vaddr = dma_alloc_attrs(core->dev, SFR_SIZE,
>> +	core->sfr_vaddr = dma_alloc_attrs(dev, SFR_SIZE,
>>   					  &core->sfr_daddr,
>>   					  GFP_KERNEL, DMA_ATTR_WRITE_COMBINE);
>>   	if (!core->sfr_vaddr) {
>> -		dev_err(core->dev, "sfr alloc and map failed\n");
>> -		dma_free_attrs(core->dev, sizeof(*q_tbl_hdr), core->iface_q_table_vaddr,
>> +		dev_err(dev, "sfr alloc and map failed\n");
>> +		dma_free_attrs(dev, sizeof(*q_tbl_hdr), core->iface_q_table_vaddr,
>>   			       core->iface_q_table_daddr, DMA_ATTR_WRITE_COMBINE);
>>   		return -ENOMEM;
>>   	}
>> @@ -291,6 +292,7 @@ int iris_hfi_queues_init(struct iris_core *core)
>>   
>>   void iris_hfi_queues_deinit(struct iris_core *core)
>>   {
>> +	struct device *dev = iris_get_cb_dev(core, NULL, BUF_HFI_QUEUE);
>>   	u32 queue_size;
>>   
>>   	if (!core->iface_q_table_vaddr)
>> @@ -300,7 +302,7 @@ void iris_hfi_queues_deinit(struct iris_core *core)
>>   	iris_hfi_queue_deinit(&core->message_queue);
>>   	iris_hfi_queue_deinit(&core->command_queue);
>>   
>> -	dma_free_attrs(core->dev, SFR_SIZE, core->sfr_vaddr,
>> +	dma_free_attrs(dev, SFR_SIZE, core->sfr_vaddr,
>>   		       core->sfr_daddr, DMA_ATTR_WRITE_COMBINE);
>>   
>>   	core->sfr_vaddr = NULL;
>> @@ -309,7 +311,7 @@ void iris_hfi_queues_deinit(struct iris_core *core)
>>   	queue_size = ALIGN(sizeof(struct iris_hfi_queue_table_header) +
>>   		(IFACEQ_QUEUE_SIZE * IFACEQ_NUMQ), SZ_4K);
>>   
>> -	dma_free_attrs(core->dev, queue_size, core->iface_q_table_vaddr,
>> +	dma_free_attrs(dev, queue_size, core->iface_q_table_vaddr,
>>   		       core->iface_q_table_daddr, DMA_ATTR_WRITE_COMBINE);
>>   
>>   	core->iface_q_table_vaddr = NULL;
>> diff --git a/drivers/media/platform/qcom/iris/iris_resources.c b/drivers/media/platform/qcom/iris/iris_resources.c
>> index be58e8620086d0f82c2c2bda29247483f5c56d79..65544cb0fa8fc4b250b0a0be1bb900d74b999d35 100644
>> --- a/drivers/media/platform/qcom/iris/iris_resources.c
>> +++ b/drivers/media/platform/qcom/iris/iris_resources.c
>> @@ -13,6 +13,7 @@
>>   #include <linux/reset.h>
>>   
>>   #include "iris_core.h"
>> +#include "iris_instance.h"
>>   #include "iris_resources.h"
>>   
>>   #define BW_THRESHOLD 50000
>> @@ -177,3 +178,62 @@ int iris_create_child_device_and_map(struct iris_core *core, struct iris_context
>>   
>>   	return 0;
>>   }
>> +
>> +static enum iris_buffer_region iris_get_region(struct iris_inst *inst,
>> +					       enum iris_buffer_type buffer_type)
>> +{
>> +	switch (buffer_type) {
>> +	case BUF_INPUT:
>> +		if (inst && inst->domain == ENCODER)
> 
> Can inst be NULL here?

during queues init/deinit, instances are not created.

> 
>> +			return IRIS_PIXEL_REGION;
>> +		else if (inst && inst->domain == DECODER)
>> +			return IRIS_BITSTREAM_REGION;
> 
> Are there any other possibilities than encoder and decoder?

will simplify it as

if (inst) {
     if (inst->domain == ENCODER)
         return IRIS_PIXEL_REGION;
     else
         return IRIS_BITSTREAM_REGION;
}
> 
>> +		break;
>> +	case BUF_OUTPUT:
>> +		if (inst && inst->domain == ENCODER)
>> +			return IRIS_BITSTREAM_REGION;
>> +		else if (inst && inst->domain == DECODER)
>> +			return IRIS_PIXEL_REGION;
>> +		break;
>> +	case BUF_BIN:
>> +		return IRIS_BITSTREAM_REGION;
>> +	case BUF_DPB:
>> +	case BUF_PARTIAL:
>> +	case BUF_SCRATCH_2:
>> +	case BUF_VPSS:
>> +		return IRIS_PIXEL_REGION;
>> +	case BUF_ARP:
>> +	case BUF_COMV:
>> +	case BUF_HFI_QUEUE:
>> +	case BUF_LINE:
>> +	case BUF_NON_COMV:
>> +	case BUF_PERSIST:
>> +		return IRIS_NON_PIXEL_REGION;
>> +	default:
>> +		return 0;
> 
> dev_err(dev, "unsupported buffer type %x\n", buffer_type)
> return -EINVAL;

these are bit fields, returning -EINVAL would still match some bits and 
can make the logic as true. 0 can be defined as IRIS_UNKNOWN_REGION

> 
>> +	}
>> +
>> +	return 0;
> 
> Drop
> 

Ack

>> +}
>> +
>> +struct device *iris_get_cb_dev(struct iris_core *core, struct iris_inst *inst,
>> +			       enum iris_buffer_type buffer_type)
>> +{
>> +	enum iris_buffer_region region;
>> +	struct device *dev = NULL;
>> +	int i;
>> +
>> +	region = iris_get_region(inst, buffer_type);
>> +
>> +	for (i = 0; i < core->iris_platform_data->cb_data_size; i++) {
>> +		if (core->iris_platform_data->cb_data[i].region & region) {
>> +			dev = core->iris_platform_data->cb_data[i].dev;
>> +			break;
>> +		}
> 
> You really seem to overcomplicate things. Replace array search with the
> indexed array access. Much easier and much better.
> 
> enum iris_buffer_region {
> 	IRIS_PIXEL_REGION,
> 	IRIS_BITSTREAM_REGION,
> 	IRIS_NON_PIXEL_REGION,
> 	// add more when necessary
> 	IRIS_NUM_REGIONS,
> };
> 
> struct iris_core {
> 	struct iris_cb_device cb_devices[IRIS_NUM_REGIONS];
> };
> 
> region = iris_get_region(inst, buffer_type);
> dev = core->cb_devices[region];

all the regions may/may not be present in all SOC

> if (!dev)
> 	dev = core->dev;
> 
> 
>> +	}
>> +
>> +	if (!dev)
>> +		dev = core->dev;
>> +
>> +	return dev;
>> +}
>> diff --git a/drivers/media/platform/qcom/iris/iris_resources.h b/drivers/media/platform/qcom/iris/iris_resources.h
>> index b7efe15facb203eea9ae13d5f0abdcc2ea718b4d..ea31726f1789130fccf6b24540a62b86cb3c36ac 100644
>> --- a/drivers/media/platform/qcom/iris/iris_resources.h
>> +++ b/drivers/media/platform/qcom/iris/iris_resources.h
>> @@ -16,5 +16,7 @@ int iris_set_icc_bw(struct iris_core *core, unsigned long icc_bw);
>>   int iris_disable_unprepare_clock(struct iris_core *core, enum platform_clk_type clk_type);
>>   int iris_prepare_enable_clock(struct iris_core *core, enum platform_clk_type clk_type);
>>   int iris_create_child_device_and_map(struct iris_core *core, struct iris_context_bank *cb);
>> +struct device *iris_get_cb_dev(struct iris_core *core, struct iris_inst *inst,
>> +			       enum iris_buffer_type buffer_type);
>>   
>>   #endif
>> diff --git a/drivers/media/platform/qcom/iris/iris_vidc.c b/drivers/media/platform/qcom/iris/iris_vidc.c
>> index bd38d84c9cc79d15585ed5dd5f905a37521cb6dc..b61d7941d88662f34a9d2ab3b6c5bd9acf4b5df5 100644
>> --- a/drivers/media/platform/qcom/iris/iris_vidc.c
>> +++ b/drivers/media/platform/qcom/iris/iris_vidc.c
>> @@ -107,7 +107,7 @@ iris_m2m_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_
>>   	src_vq->drv_priv = inst;
>>   	src_vq->buf_struct_size = sizeof(struct iris_buffer);
>>   	src_vq->min_reqbufs_allocation = MIN_BUFFERS;
>> -	src_vq->dev = inst->core->dev;
>> +	src_vq->dev = iris_get_cb_dev(inst->core, inst, BUF_INPUT);
>>   	src_vq->lock = &inst->ctx_q_lock;
>>   	ret = vb2_queue_init(src_vq);
>>   	if (ret)
>> @@ -121,7 +121,7 @@ iris_m2m_queue_init(void *priv, struct vb2_queue *src_vq, struct vb2_queue *dst_
>>   	dst_vq->drv_priv = inst;
>>   	dst_vq->buf_struct_size = sizeof(struct iris_buffer);
>>   	dst_vq->min_reqbufs_allocation = MIN_BUFFERS;
>> -	dst_vq->dev = inst->core->dev;
>> +	dst_vq->dev = iris_get_cb_dev(inst->core, inst, BUF_OUTPUT);
>>   	dst_vq->lock = &inst->ctx_q_lock;
>>   
>>   	return vb2_queue_init(dst_vq);
>>
>> -- 
>> 2.34.1
>>
> 


