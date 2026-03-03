Return-Path: <devicetree+bounces-270714-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oAAJMwoxp2kjfwAAu9opvQ
	(envelope-from <devicetree+bounces-270714-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:05:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F741F5A22
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 20:05:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 40ADD302306B
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 19:05:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 29B06372694;
	Tue,  3 Mar 2026 19:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dZYNhtpx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FmrNXI6X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1FB52459C6
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 19:05:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772564734; cv=none; b=uO2V9hxFoVaHJEXU2SYNTOOrICMrpH9RG2T8kH6Z+eCgMHMKqszBhSnS5rZlNqsw1v41jG9sBKQEydOxjcqh0Gi2UqNqGYuw6uqkJNcW85R4aOCc4+FxVdtnOwFdnBCW6SiSL4n+BdYmogShqDb37EhPB3JgUoJish90yT8yvbY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772564734; c=relaxed/simple;
	bh=OpM8w/CsdWKFrTx3OTldSo1pPZobJUMav0CmXqMmBdk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BbhrwzZp4vKfAfSud3Y9UgVrk8OS6KkZ03tULbPtEnZRnQFX8/Efln8Ky1tXxIQmHgP/4zxRVbFPJGD4PVUdJn/5pijlcl/S5QVvNKBSCyBcdXkzWdiGTiRUgEV0xDHiU1yccXJ5q9xn+8cfFIwG1ckBCCLeFhc1EVwjwac1X1Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dZYNhtpx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FmrNXI6X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 623H0duf687203
	for <devicetree@vger.kernel.org>; Tue, 3 Mar 2026 18:47:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2w9WfPgSlNGq9kAZE7gc5V3C6SFEsmr7ux+w01L1aeQ=; b=dZYNhtpxFPdIILyj
	vouRW/3y5UPAgQ3OfkqSeP3umkqfkCaDJq2Xd6J76d0ljD+0vJQB4bXJnuLhdX3V
	igOKPOCstHWfuRpz7pu3tFvoWUKmC3auz4BtIg6A8jwLP/H1wH8dy4EfRYB7sBhu
	k6/6xna6G0zX66infyRpxsDoR/Eza0b7V0IQQCyWphoVicHtG/400YsljktM7mTX
	Cgo1/5RK79tFoFZUqwWICmGUlRxlPB1d3R6npDYaRTWZyBPlRn54K6Iyiadl6MA7
	WaXK+kD7NnC0ThSgTEmiADEZrIgvsqzLc2caC6OjsXLiXpfYHSojkLSd1DMvl8Re
	H6+PYw==
Received: from mail-pj1-f72.google.com (mail-pj1-f72.google.com [209.85.216.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cnu3na86j-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 18:47:01 +0000 (GMT)
Received: by mail-pj1-f72.google.com with SMTP id 98e67ed59e1d1-3598518beceso2906272a91.2
        for <devicetree@vger.kernel.org>; Tue, 03 Mar 2026 10:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772563620; x=1773168420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2w9WfPgSlNGq9kAZE7gc5V3C6SFEsmr7ux+w01L1aeQ=;
        b=FmrNXI6XlKIBTucsMGUl3AFvbJn9GO6wJJJl/t7j5EMkZCYOR2vvAEiEPzVvfU8fqc
         mFukspHu6yL6uPbkfWw7oV7iguT/k/JDRXmeCZe5Im81TNldn+kH9quBNH7+hcFSAsHY
         l/zc6xFSxNLxNLTuv/DGzd2irWAzYmlGyDo+6CvZhD17IqbJkhmDMZ7cX54V9iVUVpjR
         qSD1ikLi4CzTrXsPIOPCAwb8063etwkRNhkz+lrghgtEDdhqeUYJ9OPh6dxZqi+oomku
         nQrmrhHTbTLtk91xoDv5acAbkY1HEBBZKHvEjOqaAhclmMlMyyvfQZC2EkAvOXyoq/H5
         XA9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772563620; x=1773168420;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2w9WfPgSlNGq9kAZE7gc5V3C6SFEsmr7ux+w01L1aeQ=;
        b=vZ5uJWgZAcy90UoXwbuxImECjJzCgtFxuxEidemRdSVuXaVFbCjSaYqSsIJgvhTo7U
         hT3rAdTQME1ve8sLkkUzmTpOGQxMB8QrPK2sGFGIAtvMMB5SW4LiarKhylYb6Dal8o4W
         qbF8CUGKAz+U/svvdhoxJXTn5j3h3MhaASHIvuIAbTtoYn04Ds9auh8KAoHX11Gp2QPw
         pcXNqu9k2VG1l8PzEoLbnQfFtb909goWk1gzQavJjkR8ZtSu9G8kbVOcGUC7cdYNOqbU
         moClmOx2SDNnwPLv9XturLDMbPNlLKcA7YJV7vUbK5t91J9hX3dEjinX/uM1znjJJr4J
         YKUA==
X-Forwarded-Encrypted: i=1; AJvYcCUMnj2c0GE33MZG4rzLU/HA+LrRYOa7awu3lZ/Z81NZpE8WY6uRKHmnM6JRnEl75GNSg6WnsxRQAC3J@vger.kernel.org
X-Gm-Message-State: AOJu0YzBsb9bx7+jFkZeJIgSqXRc4VorzSHNKoBSqN65W5SO4QNhWRNO
	9bcmEbiIwMutPZsfj/4YolVMzTUI60a3X/aW9DEMlXA4WEFuB0ei+c9wzHQ2G3Mejh/o90D0bF4
	wtxcUfBTpzuC4WJdNnblo3TXcNSUcAC3un//m3IRxdqxc6Vtm6NYMDE3I/VcWLjwZ
X-Gm-Gg: ATEYQzzzQM8f9HRMvNh7jI6nyN58qy3e2DDAYrNpJGaOJjWGSbxETUpC+KqdAKzPIc1
	lRHueU2esnuySbtKKLDv/LXkNHq0NJ0eFEDDOyDwMX6/aROFtfEbtuTJxMgomBTs91F8OEkjich
	PBvUR1vjqC3LWnWvAfjdheSObehoT4bqr0hFyLCJh08Ub9yGY4LhnQ/IFNSH2D0YDoA9RKgRRp9
	gG0ufF9UfSZ+/7NibCRR+QkEsYBX+LknlU59fWJmqQhPZ0ToGDhKZxgWb3Kz902XNoeS1RT4zCO
	d+Vyj6QnfzmLPz6Bwm5tPxfmnG1pXNAZWsPbc5KIiz+7+CpaRU9gLA6spkJP20/uXHhgFUEQZpE
	T/qVQGTFbVYHT3RM6JDrdeeXowKCxFXKGHtttU+rbxHhs0kfgZyKXjr0=
X-Received: by 2002:a17:90b:574f:b0:356:9405:759d with SMTP id 98e67ed59e1d1-35965c3c280mr13369289a91.9.1772563620316;
        Tue, 03 Mar 2026 10:47:00 -0800 (PST)
X-Received: by 2002:a17:90b:574f:b0:356:9405:759d with SMTP id 98e67ed59e1d1-35965c3c280mr13369250a91.9.1772563619746;
        Tue, 03 Mar 2026 10:46:59 -0800 (PST)
Received: from [192.168.0.172] ([49.205.248.49])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3599ca38be9sm2077090a91.4.2026.03.03.10.46.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Mar 2026 10:46:59 -0800 (PST)
Message-ID: <e12da06d-cad5-4967-af07-64c7c6e540f4@oss.qualcomm.com>
Date: Wed, 4 Mar 2026 00:16:50 +0530
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
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <rzi7qmzsofocwcqxhsqz3f3tl4ahqnwn34of6qcc54odpben5d@7okuqabxgdqh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=JaexbEKV c=1 sm=1 tr=0 ts=69a72ca5 cx=c_pps
 a=RP+M6JBNLl+fLTcSJhASfg==:117 a=KPiuay1jFzAquJblYynD6w==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=gowsoOTTUOVcmtlkKump:22
 a=EUspDBNiAAAA:8 a=BWWBYsVxUbrYxgTBB7YA:9 a=QEXdDO2ut3YA:10
 a=iS9zxrgQBfv6-_F4QbHw:22
X-Proofpoint-ORIG-GUID: SOuJc7Yt1z6C1yGG1au85iT3Z4d-Dj5I
X-Proofpoint-GUID: SOuJc7Yt1z6C1yGG1au85iT3Z4d-Dj5I
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzAzMDE1MSBTYWx0ZWRfX/Iwoa2P65oe3
 Dul0TT/P5Ry24jxegZvoFh1XHSk3NTy8mNRvyVoq9ev1gHaQBMqpaIL3WMgWO0T34oasn3N/7VJ
 c8DrU6S/OQ3uDQWGkVbImKy/oqFwWpTVjg0gzxLIF+C+oxG9GMulmurWLXjUQrlR/4OjQ+u0d/9
 iDHDFU/vbkxj/Givcyo/Sb41KJ7wZ3/MOCVx2f0rQoflgf/Ql3xtNOS7lK9hrAQGun5wrzcH6Y8
 ndIa6rzaQj8kyrPstqWZNavExIAxukw0ugUSH+UYxgWIToezzG/abIkhn+zDSOGvAABcJmfcTS6
 uI61REFbTRdMHq5U3PZyQR05aepM6XkF9PWy5kwhEy64HzNDuiF8Ie1B4ZXrLIwu+4M7/wPOhXh
 g2iiv/nJAskFYZSrsJi7bd5xRdh9X4gtWkRq0k4tjMq3iaJffSYZiaZEtPUo0F8qMypXeptWqvt
 Zn76J6BLEvNt3AZL7MQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-03_02,2026-03-03_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603030151
X-Rspamd-Queue-Id: 44F741F5A22
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
	RCPT_COUNT_TWELVE(0.00)[23];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-270714-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vikash.garodia@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,cisco];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 2/28/2026 1:50 AM, Dmitry Baryshkov wrote:
> On Fri, Feb 27, 2026 at 07:41:20PM +0530, Vikash Garodia wrote:
>> Introduce different context banks(CB) and the associated buffer region.
>> Different stream IDs from VPU would be associated to one of these CB.
>> Multiple CBs are needed to increase the IOVA for the video usecases like
>> higher concurrent sessions.
>>
>> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>> ---
>>   .../platform/qcom/iris/iris_platform_common.h      | 18 +++++++
>>   drivers/media/platform/qcom/iris/iris_probe.c      | 60 ++++++++++++++++++++--
>>   drivers/media/platform/qcom/iris/iris_resources.c  | 36 +++++++++++++
>>   drivers/media/platform/qcom/iris/iris_resources.h  |  1 +
>>   4 files changed, 111 insertions(+), 4 deletions(-)
>>
>> diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
>> index 5a489917580eb10022fdcb52f7321a915e8b239d..03c50d6e54853fca34d7d32f65d09eb80945fcdd 100644
>> --- a/drivers/media/platform/qcom/iris/iris_platform_common.h
>> +++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
>> @@ -204,6 +204,22 @@ struct icc_vote_data {
>>   	u32 fps;
>>   };
>>   
>> +enum iris_buffer_region {
>> +	IRIS_BITSTREAM_REGION		= BIT(0),
>> +	IRIS_NON_PIXEL_REGION		= BIT(1),
>> +	IRIS_PIXEL_REGION		= BIT(2),
>> +	IRIS_SECURE_BITSTREAM_REGION	= BIT(3),
>> +	IRIS_SECURE_NON_PIXEL_REGION	= BIT(4),
>> +	IRIS_SECURE_PIXEL_REGION	= BIT(5),
> 
> Can a context bank belong to multiple regions at the same time?

yes, they would.

> 
>> +};
>> +
>> +struct iris_context_bank {
>> +	struct device *dev;
> 
> Separate data and the actual device. Define a wrapper around struct
> device for the actual runtime usage.

we still have to store the list of dynamically created device. Name can 
be used to fetch the device from the list, i think the existing approach 
is simpler ?

> 
>> +	const char *name;
>> +	const u32 f_id;
>> +	const enum iris_buffer_region region;
>> +};
>> +
>>   enum platform_pm_domain_type {
>>   	IRIS_CTRL_POWER_DOMAIN,
>>   	IRIS_HW_POWER_DOMAIN,
>> @@ -246,6 +262,8 @@ struct iris_platform_data {
>>   	u32 inst_fw_caps_enc_size;
>>   	const struct tz_cp_config *tz_cp_config_data;
>>   	u32 tz_cp_config_data_size;
>> +	struct iris_context_bank *cb_data;
>> +	u32 cb_data_size;
> 
> Do they differ from platform to platform?
Yes

> Mark them as const, it should be data only.

cb_data_size can be marked as const

> 
>>   	u32 core_arch;
>>   	u32 hw_response_timeout;
>>   	struct ubwc_config_data *ubwc_config;
>> diff --git a/drivers/media/platform/qcom/iris/iris_probe.c b/drivers/media/platform/qcom/iris/iris_probe.c
>> index ddaacda523ecb9990af0dd0640196223fbcc2cab..557adb038328a75510591d91569819abc0b7b1c9 100644
>> --- a/drivers/media/platform/qcom/iris/iris_probe.c
>> +++ b/drivers/media/platform/qcom/iris/iris_probe.c
>> @@ -123,6 +123,49 @@ static int iris_init_resets(struct iris_core *core)
>>   				     core->iris_platform_data->controller_rst_tbl_size);
>>   }
>>   
>> +static void iris_destroy_child_device(struct iris_context_bank *cb)
>> +{
>> +	struct device *dev = cb->dev;
>> +
>> +	if (dev)
>> +		device_unregister(dev);
>> +
>> +	cb->dev = NULL;
>> +}
>> +
>> +static void iris_deinit_context_bank_devices(struct iris_core *core)
>> +{
>> +	struct iris_context_bank *cb;
>> +	int i;
>> +
>> +	for (i = 0; i < core->iris_platform_data->cb_data_size; i++) {
>> +		cb = &core->iris_platform_data->cb_data[i];
>> +		iris_destroy_child_device(cb);
>> +	}
>> +}
>> +
>> +static int iris_init_context_bank_devices(struct iris_core *core)
>> +{
>> +	struct iris_context_bank *cb;
>> +	int ret, i;
>> +
>> +	for (i = 0; i < core->iris_platform_data->cb_data_size; i++) {
>> +		cb = &core->iris_platform_data->cb_data[i];
>> +
>> +		ret = iris_create_child_device_and_map(core, cb);
>> +		if (ret)
>> +			goto err_deinit_cb;
>> +	}
>> +
>> +	return 0;
>> +
>> +err_deinit_cb:
>> +	while (i-- > 0)
>> +		iris_destroy_child_device(&core->iris_platform_data->cb_data[i]);
>> +
>> +	return ret;
>> +}
>> +
>>   static int iris_init_resources(struct iris_core *core)
>>   {
>>   	int ret;
>> @@ -193,6 +236,7 @@ static void iris_remove(struct platform_device *pdev)
>>   		return;
>>   
>>   	iris_core_deinit(core);
>> +	iris_deinit_context_bank_devices(core);
>>   
>>   	video_unregister_device(core->vdev_dec);
>>   	video_unregister_device(core->vdev_enc);
>> @@ -275,12 +319,18 @@ static int iris_probe(struct platform_device *pdev)
>>   
>>   	platform_set_drvdata(pdev, core);
>>   
>> -	dma_mask = core->iris_platform_data->dma_mask;
>> -
>> -	ret = dma_set_mask_and_coherent(dev, dma_mask);
>> +	ret = iris_init_context_bank_devices(core);
>>   	if (ret)
>>   		goto err_vdev_unreg_enc;
>>   
>> +	dma_mask = core->iris_platform_data->dma_mask;
>> +
>> +	if (device_iommu_mapped(core->dev)) {
>> +		ret = dma_set_mask_and_coherent(core->dev, dma_mask);
>> +		if (ret)
>> +			goto err_deinit_cb;
>> +	}
>> +
>>   	dma_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
>>   	dma_set_seg_boundary(&pdev->dev, DMA_BIT_MASK(32));
>>   
>> @@ -288,10 +338,12 @@ static int iris_probe(struct platform_device *pdev)
>>   	pm_runtime_use_autosuspend(core->dev);
>>   	ret = devm_pm_runtime_enable(core->dev);
>>   	if (ret)
>> -		goto err_vdev_unreg_enc;
>> +		goto err_deinit_cb;
>>   
>>   	return 0;
>>   
>> +err_deinit_cb:
>> +	iris_deinit_context_bank_devices(core);
>>   err_vdev_unreg_enc:
>>   	video_unregister_device(core->vdev_enc);
>>   err_vdev_unreg_dec:
>> diff --git a/drivers/media/platform/qcom/iris/iris_resources.c b/drivers/media/platform/qcom/iris/iris_resources.c
>> index 773f6548370a257b8ae7332242544266cbbd61a9..be58e8620086d0f82c2c2bda29247483f5c56d79 100644
>> --- a/drivers/media/platform/qcom/iris/iris_resources.c
>> +++ b/drivers/media/platform/qcom/iris/iris_resources.c
>> @@ -6,6 +6,7 @@
>>   #include <linux/clk.h>
>>   #include <linux/devfreq.h>
>>   #include <linux/interconnect.h>
>> +#include <linux/iris_vpu_bus.h>
>>   #include <linux/pm_domain.h>
>>   #include <linux/pm_opp.h>
>>   #include <linux/pm_runtime.h>
>> @@ -141,3 +142,38 @@ int iris_disable_unprepare_clock(struct iris_core *core, enum platform_clk_type
>>   
>>   	return 0;
>>   }
>> +
>> +static void iris_device_release(struct device *dev)
>> +{
>> +	dev_set_drvdata(dev, NULL);
>> +	kfree(dev);
>> +}
>> +
>> +int iris_create_child_device_and_map(struct iris_core *core, struct iris_context_bank *cb)
>> +{
>> +	struct device *dev;
>> +	int ret;
>> +
>> +	dev = kzalloc_obj(*dev);
>> +	if (!dev)
>> +		return -ENOMEM;
>> +
>> +	dev->release = iris_device_release;
>> +	dev->bus = &iris_vpu_bus_type;
>> +	dev->parent = core->dev;
>> +	dev->coherent_dma_mask = core->iris_platform_data->dma_mask;
>> +	dev->dma_mask = &dev->coherent_dma_mask;
>> +
>> +	dev_set_name(dev, "%s", cb->name);
>> +	dev_set_drvdata(dev, cb);
>> +
>> +	ret = device_register(dev);
>> +	if (ret) {
>> +		put_device(dev);
>> +		return ret;
>> +	}
>> +
>> +	cb->dev = dev;
>> +
>> +	return 0;
>> +}
>> diff --git a/drivers/media/platform/qcom/iris/iris_resources.h b/drivers/media/platform/qcom/iris/iris_resources.h
>> index 6bfbd2dc6db095ec05e53c894e048285f82446c6..b7efe15facb203eea9ae13d5f0abdcc2ea718b4d 100644
>> --- a/drivers/media/platform/qcom/iris/iris_resources.h
>> +++ b/drivers/media/platform/qcom/iris/iris_resources.h
>> @@ -15,5 +15,6 @@ int iris_unset_icc_bw(struct iris_core *core);
>>   int iris_set_icc_bw(struct iris_core *core, unsigned long icc_bw);
>>   int iris_disable_unprepare_clock(struct iris_core *core, enum platform_clk_type clk_type);
>>   int iris_prepare_enable_clock(struct iris_core *core, enum platform_clk_type clk_type);
>> +int iris_create_child_device_and_map(struct iris_core *core, struct iris_context_bank *cb);
>>   
>>   #endif
>>
>> -- 
>> 2.34.1
>>
> 


