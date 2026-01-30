Return-Path: <devicetree+bounces-261221-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yMVsHiKvfGmPOQIAu9opvQ
	(envelope-from <devicetree+bounces-261221-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:16:18 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEBEBAE68
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 14:16:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4738A3006B5E
	for <lists+devicetree@lfdr.de>; Fri, 30 Jan 2026 13:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB52828466F;
	Fri, 30 Jan 2026 13:16:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V6gcwo6k";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hrw0rVS7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC6719F464
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:16:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769778974; cv=none; b=apA6qec8btJ/zgbElAfZCXn9j/Tp6+MnQUe8xTOLybaD1S6dJkqOTVp6zGcTIYXW18Rb15gYX3bfJ+1Fqje7Wigp0DPapa13cq+EyPfKVK2iEOhX3hm+Q6Jy7Cp/UUtL1AidBH7wnEGChTLub/dvXzyuezrMw4Ab455hy+EnYf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769778974; c=relaxed/simple;
	bh=vhwY5XruRuEDyW/2TsSKdeRmpkI+kWwgAODxEujg3Dk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=C0+vBl539GkSOTY++1CPoIL2Q2HVXlBKr9Grr+Yi0ow8BShIvU2D3Hz9oQeAHJNZ/5t9Gldla/HmAKdrnNHqNj5XgauzrvrBOQhR3gFR6Vsho4Dh/3QlN8iS0ZMUsHPzNKzppkYBxfyo6iVz3CbiNGXNfjEtMAqU2jccWhBup/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V6gcwo6k; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hrw0rVS7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60UC8EBe1485353
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:16:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8VXF453gbssyoEkQiSKvuRsYKrHyVX27FC/n38uidpM=; b=V6gcwo6kJBOEJ8U7
	nQHkz9RymZOwJ5LjLkB4qcncpISQVusocHHe9X9mZZHynxR+BZEKup8nISfRTBag
	OaCxIscq/zSm5YBmWeHmT+MUVlcR8XaT0n8DGbJXJqJLq9L22cDMThvpbeUpsXak
	Ay1kASdhPhg7lr5qHR4s7o2aCmD/B9R069KhwX6Ie/epqC2dtnJnwNaABkzz9TdZ
	wY5nnMqCSVdLqu9XOVbG7wwh1orBOtMbJPS9wnfo4K4K88dvcUVLYPX/Qb+2AfyW
	BhwQmcuLi9ScJyAXoi4xIkJQDxaobppihBzQUeqL4AEqTO6XM7vBcTSBp+6zOuL8
	+dEbEQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4c0nsf9ecq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 13:16:12 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2a8c273332cso47423775ad.1
        for <devicetree@vger.kernel.org>; Fri, 30 Jan 2026 05:16:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769778972; x=1770383772; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8VXF453gbssyoEkQiSKvuRsYKrHyVX27FC/n38uidpM=;
        b=hrw0rVS7tQijZPtrDQj2GOJCIYinfUCeQQVTssnvTySSni8eIO92VvZsP1vR9MVjX9
         jJGZR4ZVeJKsblqOJKYHA+/yKAwYzF06jd5PezydGegZ+/AdORBHH7j/GY7OvzZpiJNX
         iMgRrCx6BgcSZCaq5tTsJ3Yka80AgF0PNXSJgjjTaPZ/roZayf3fIrte2F58hvkE0sBf
         C+DWaIhcrv49LItpvxJb9h7mGoTgezoN0rB4fnrICpIlR5M5GFX6SR7wpVwCWJgGAiID
         Me9dhNxxmW59EkUhIC2aUBUbrQfwDTRBgvGnYvG7yJsqOGwG2H7kao8ooQRWSphTpcMW
         R3nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769778972; x=1770383772;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8VXF453gbssyoEkQiSKvuRsYKrHyVX27FC/n38uidpM=;
        b=FoKsnOoYrmV5rmOLGD3LXOfcCT8QIkFU1mkGC5E8JoLX0CW7a0n6XwH/CsUmKSrDbX
         JnUI5hgaHq5yTSFTe7R/zuESUaM7DCzrXvMiwZ7slF69GBSFwsI22CAqe9OM021zZzeX
         gzBHsTX5JEIqBq75oaDDnXogPPIwTc89wRt5Sjf8IFSOcp3lyR5oZEPw0LMUXX4NO7Vd
         FGKyZwNTNGl7ppoFfe2hgkicb1SiiJT4Ka75fZp28GObRNm6M5Nmn1eVzz2LkfnsHqBf
         cxuUYfaMkU5KUIZpYqMwdWweV+GNz1U1jEpKQMdsMK67wcrnvCO02ZixS0ALP/ABo34z
         0qTA==
X-Forwarded-Encrypted: i=1; AJvYcCXpIFwrpDLyDeFXjlDZMo/k8v6v+hM3r70H3Ig5PgvbN+ltjjOM6d6b95WD9vPFqWGyzLf5I6iZ8pKf@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/i+hmgP7NTDQR3tIHcmt8DJPtr4dBThYNBqmW3a+2qpGMoeQw
	KH11vhXT9WQneWTacYqct1m3rhC1FtfrVkFE9n+jzxj6g5+zrAw9dQka+yg/xZGyH0fPTZ5OB3s
	qxhs4yMvv4phfzFsI/AO81YRf6Z0FThNeA23AE/9uKfAFnimRhhOeLfKN05Y0XaLt
X-Gm-Gg: AZuq6aKQHdDuB9xNpZCwIwKKhnvjV8fYRJFuCEB0hmyskkhamiCYUGZmCYP25sVV05A
	KFAECPF8CvxZWqaJUAP3ITp4pmFNeiSqMvZh8uklkf3fbzShlTIsesbLpwGl0656H0NzICzaI7f
	qvtyRXICXaaJX7iQCQnxnqs21smtIgJNYsxe9LryjLZvdM+Dlnosoyb1gk+Gg2nRrokxFQaBnms
	jInctpJ4mHYSPET0Z7++JS0w2cr8oxYRSekFJijN/fkhVfmZ4dIn+eqg76mZJiaVClUdmJpHXI/
	/f+45dHmDDBi9m+YnPKVkHe+TWbswpxpJJc6bE5sfu41jtj1nmc9Y/ObVtKAtR5isDupIEmN9hJ
	qnR1MrEJJ97ZLw+ZwYt+/2/vDn743ywA/gacmhdw=
X-Received: by 2002:a17:903:3204:b0:2a0:d6d5:b342 with SMTP id d9443c01a7336-2a8d9912e35mr29345775ad.37.1769778971540;
        Fri, 30 Jan 2026 05:16:11 -0800 (PST)
X-Received: by 2002:a17:903:3204:b0:2a0:d6d5:b342 with SMTP id d9443c01a7336-2a8d9912e35mr29345475ad.37.1769778970947;
        Fri, 30 Jan 2026 05:16:10 -0800 (PST)
Received: from [10.0.0.3] ([106.222.235.0])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b414fc4sm78288295ad.32.2026.01.30.05.16.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jan 2026 05:16:10 -0800 (PST)
Message-ID: <8c5cd9ff-e549-00ab-60c6-814b52f50949@oss.qualcomm.com>
Date: Fri, 30 Jan 2026 18:46:04 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v3 2/7] media: iris: introduce SM8350 and SC8280XP support
Content-Language: en-US
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bjorn Andersson <andersson@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Johan Hovold <johan+linaro@kernel.org>
References: <20260125-iris-sc8280xp-v3-0-d21861a9ea33@oss.qualcomm.com>
 <20260125-iris-sc8280xp-v3-2-d21861a9ea33@oss.qualcomm.com>
From: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>
In-Reply-To: <20260125-iris-sc8280xp-v3-2-d21861a9ea33@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: 5oKViMzjYYi3tlaWgEAyTJQoYcNnWH1C
X-Authority-Analysis: v=2.4 cv=EvjfbCcA c=1 sm=1 tr=0 ts=697caf1c cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=6cH4IgXjao/mkWo6W7aGpA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=QVgFpZlzPVjKh7SGavcA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 5oKViMzjYYi3tlaWgEAyTJQoYcNnWH1C
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTMwMDEwOCBTYWx0ZWRfX8fRTCPrlQ5Kb
 C6WwhTqYtye0p9u/cYwN9rSJ8okN5d+/IYj2piIBkuke4NumMGY+0r3Sqcl9QUvK65ubYIAyOyE
 Oj01iy3R3C/GSdvg1/wDeuMpqY8DDGhxmHcV0S/XBTV25CW7fu4gsMvCOWbLMFG3k8gBCu15Yc3
 Dds7nxljn7HFciKxSPgfmxdEXGGVTYkIu2bQbX3UBXHcffGio2GYFmwY5U1s/IgDXgW03e4EXlD
 iMHe2MX4lnmrV/KcIyLmp01Hoosb0HX7SuPGZ0XdxrVEd2V0smfXLE0gjvgeCbwiDivcXZ0ZIRT
 gO9i25drl0MgA7H+XwvKaOp09qXm1zskQ7CSQ3g4a6F9TD08pZhOEoP9pnwB/Pe6xVARPFDeGjx
 /5dgGsiO3dm3gNXoMa0mfROp9Zgnq3Ar2V41trx+71AIa4cjTFYtG2v8RnR0WxhghGMzFrWDuZ8
 8IGrjmGPrvdScYzPX7w==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-30_01,2026-01-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 priorityscore=1501 bulkscore=0 suspectscore=0
 adultscore=0 malwarescore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601300108
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-261221-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dikshita.agarwal@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt,linaro];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: BFEBEBAE68
X-Rspamd-Action: no action



On 1/25/2026 9:02 PM, Dmitry Baryshkov wrote:
> SM8350 and SC8280XP have an updated version of the Iris2 core also
> present on the SM8250 and SC7280 platforms. Add necessary platform data
> to utilize the core on those two platforms.
> 
> The iris_platform_gen1.c is now compiled unconditionally, even if Venus
> driver is enabled, but SM8250 and SC7280 are still disabled in
> iris_dt_match.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  drivers/media/platform/qcom/iris/Makefile          |   5 +-
>  .../platform/qcom/iris/iris_platform_common.h      |   2 +
>  .../media/platform/qcom/iris/iris_platform_gen1.c  | 111 +++++++++++++++++++++
>  .../platform/qcom/iris/iris_platform_sm8350.h      |  20 ++++
>  drivers/media/platform/qcom/iris/iris_probe.c      |  10 ++
>  5 files changed, 144 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/media/platform/qcom/iris/Makefile b/drivers/media/platform/qcom/iris/Makefile
> index 2abbd3aeb4af..2fde45f81727 100644
> --- a/drivers/media/platform/qcom/iris/Makefile
> +++ b/drivers/media/platform/qcom/iris/Makefile
> @@ -10,6 +10,7 @@ qcom-iris-objs += iris_buffer.o \
>               iris_hfi_gen2_packet.o \
>               iris_hfi_gen2_response.o \
>               iris_hfi_queue.o \
> +             iris_platform_gen1.o \
>               iris_platform_gen2.o \
>               iris_power.o \
>               iris_probe.o \
> @@ -26,8 +27,4 @@ qcom-iris-objs += iris_buffer.o \
>               iris_vpu_buffer.o \
>               iris_vpu_common.o \
>  
> -ifeq ($(CONFIG_VIDEO_QCOM_VENUS),)
> -qcom-iris-objs += iris_platform_gen1.o
> -endif
> -
>  obj-$(CONFIG_VIDEO_QCOM_IRIS) += qcom-iris.o

This change is not needed in this patch, pls remove.

> diff --git a/drivers/media/platform/qcom/iris/iris_platform_common.h b/drivers/media/platform/qcom/iris/iris_platform_common.h
> index 5a489917580e..49dba0f50988 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_common.h
> +++ b/drivers/media/platform/qcom/iris/iris_platform_common.h
> @@ -43,7 +43,9 @@ enum pipe_type {
>  
>  extern const struct iris_platform_data qcs8300_data;
>  extern const struct iris_platform_data sc7280_data;
> +extern const struct iris_platform_data sc8280xp_data;
>  extern const struct iris_platform_data sm8250_data;
> +extern const struct iris_platform_data sm8350_data;
>  extern const struct iris_platform_data sm8550_data;
>  extern const struct iris_platform_data sm8650_data;
>  extern const struct iris_platform_data sm8750_data;
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_gen1.c b/drivers/media/platform/qcom/iris/iris_platform_gen1.c
> index df8e6bf9430e..c99ff4d4644d 100644
> --- a/drivers/media/platform/qcom/iris/iris_platform_gen1.c
> +++ b/drivers/media/platform/qcom/iris/iris_platform_gen1.c
> @@ -14,6 +14,7 @@
>  #include "iris_instance.h"
>  
>  #include "iris_platform_sc7280.h"
> +#include "iris_platform_sm8350.h"
>  
>  #define BITRATE_MIN		32000
>  #define BITRATE_MAX		160000000
> @@ -392,6 +393,61 @@ const struct iris_platform_data sm8250_data = {
>  	.enc_ip_int_buf_tbl_size = ARRAY_SIZE(sm8250_enc_ip_int_buf_tbl),
>  };
>  
> +const struct iris_platform_data sm8350_data = {
> +	.get_instance = iris_hfi_gen1_get_instance,
> +	.init_hfi_command_ops = &iris_hfi_gen1_command_ops_init,
> +	.init_hfi_response_ops = iris_hfi_gen1_response_ops_init,
> +	.get_vpu_buffer_size = iris_vpu_buf_size,
> +	.vpu_ops = &iris_vpu2_ops,
> +	.set_preset_registers = iris_set_sm8350_preset_registers,
> +	.icc_tbl = sm8250_icc_table,
> +	.icc_tbl_size = ARRAY_SIZE(sm8250_icc_table),
> +	.clk_rst_tbl = sm8350_clk_reset_table,
> +	.clk_rst_tbl_size = ARRAY_SIZE(sm8350_clk_reset_table),
> +	.bw_tbl_dec = sm8250_bw_table_dec,
> +	.bw_tbl_dec_size = ARRAY_SIZE(sm8250_bw_table_dec),
> +	.pmdomain_tbl = sm8250_pmdomain_table,
> +	.pmdomain_tbl_size = ARRAY_SIZE(sm8250_pmdomain_table),
> +	.opp_pd_tbl = sm8250_opp_pd_table,
> +	.opp_pd_tbl_size = ARRAY_SIZE(sm8250_opp_pd_table),
> +	.clk_tbl = sm8250_clk_table,
> +	.clk_tbl_size = ARRAY_SIZE(sm8250_clk_table),
> +	.opp_clk_tbl = sm8250_opp_clk_table,
> +	/* Upper bound of DMA address range */
> +	.dma_mask = 0xe0000000 - 1,
> +	.fwname = "qcom/vpu/vpu20_p4.mbn",

This firmware is not compatible with SM8350.
SM8350 firmware is not released to linux-firmware yet.

> +	.pas_id = IRIS_PAS_ID,
> +	.inst_iris_fmts = platform_fmts_sm8250_dec,
> +	.inst_iris_fmts_size = ARRAY_SIZE(platform_fmts_sm8250_dec),
> +	.inst_caps = &platform_inst_cap_sm8250,
> +	.inst_fw_caps_dec = inst_fw_cap_sm8250_dec,
> +	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8250_dec),
> +	.inst_fw_caps_enc = inst_fw_cap_sm8250_enc,
> +	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8250_enc),
> +	.tz_cp_config_data = tz_cp_config_sm8250,
> +	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8250),
> +	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
> +	.num_vpp_pipe = 4,
> +	.max_session_count = 16,
> +	.max_core_mbpf = NUM_MBS_8K,
> +	.max_core_mbps = ((7680 * 4320) / 256) * 60,
> +	.dec_input_config_params_default =
> +		sm8250_vdec_input_config_param_default,
> +	.dec_input_config_params_default_size =
> +		ARRAY_SIZE(sm8250_vdec_input_config_param_default),
> +	.enc_input_config_params = sm8250_venc_input_config_param,
> +	.enc_input_config_params_size =
> +		ARRAY_SIZE(sm8250_venc_input_config_param),
> +
> +	.dec_ip_int_buf_tbl = sm8250_dec_ip_int_buf_tbl,
> +	.dec_ip_int_buf_tbl_size = ARRAY_SIZE(sm8250_dec_ip_int_buf_tbl),
> +	.dec_op_int_buf_tbl = sm8250_dec_op_int_buf_tbl,
> +	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8250_dec_op_int_buf_tbl),
> +
> +	.enc_ip_int_buf_tbl = sm8250_enc_ip_int_buf_tbl,
> +	.enc_ip_int_buf_tbl_size = ARRAY_SIZE(sm8250_enc_ip_int_buf_tbl),
> +};
> +
>  const struct iris_platform_data sc7280_data = {
>  	.get_instance = iris_hfi_gen1_get_instance,
>  	.init_hfi_command_ops = &iris_hfi_gen1_command_ops_init,
> @@ -446,3 +502,58 @@ const struct iris_platform_data sc7280_data = {
>  	.enc_ip_int_buf_tbl = sm8250_enc_ip_int_buf_tbl,
>  	.enc_ip_int_buf_tbl_size = ARRAY_SIZE(sm8250_enc_ip_int_buf_tbl),
>  };
> +
> +const struct iris_platform_data sc8280xp_data = {
> +	.get_instance = iris_hfi_gen1_get_instance,
> +	.init_hfi_command_ops = &iris_hfi_gen1_command_ops_init,
> +	.init_hfi_response_ops = iris_hfi_gen1_response_ops_init,
> +	.get_vpu_buffer_size = iris_vpu_buf_size,
> +	.vpu_ops = &iris_vpu2_ops,
> +	.set_preset_registers = iris_set_sm8350_preset_registers,
> +	.icc_tbl = sm8250_icc_table,
> +	.icc_tbl_size = ARRAY_SIZE(sm8250_icc_table),
> +	.clk_rst_tbl = sm8350_clk_reset_table,
> +	.clk_rst_tbl_size = ARRAY_SIZE(sm8350_clk_reset_table),
> +	.bw_tbl_dec = sm8250_bw_table_dec,
> +	.bw_tbl_dec_size = ARRAY_SIZE(sm8250_bw_table_dec),
> +	.pmdomain_tbl = sm8250_pmdomain_table,
> +	.pmdomain_tbl_size = ARRAY_SIZE(sm8250_pmdomain_table),
> +	.opp_pd_tbl = sm8250_opp_pd_table,
> +	.opp_pd_tbl_size = ARRAY_SIZE(sm8250_opp_pd_table),
> +	.clk_tbl = sm8250_clk_table,
> +	.clk_tbl_size = ARRAY_SIZE(sm8250_clk_table),
> +	.opp_clk_tbl = sm8250_opp_clk_table,
> +	/* Upper bound of DMA address range */
> +	.dma_mask = 0xe0000000 - 1,
> +	.fwname = "qcom/vpu/vpu20_p2.mbn",

this firmware doesn't exist on linux-firmware.

> +	.pas_id = IRIS_PAS_ID,
> +	.inst_iris_fmts = platform_fmts_sm8250_dec,
> +	.inst_iris_fmts_size = ARRAY_SIZE(platform_fmts_sm8250_dec),
> +	.inst_caps = &platform_inst_cap_sm8250,
> +	.inst_fw_caps_dec = inst_fw_cap_sm8250_dec,
> +	.inst_fw_caps_dec_size = ARRAY_SIZE(inst_fw_cap_sm8250_dec),
> +	.inst_fw_caps_enc = inst_fw_cap_sm8250_enc,
> +	.inst_fw_caps_enc_size = ARRAY_SIZE(inst_fw_cap_sm8250_enc),
> +	.tz_cp_config_data = tz_cp_config_sm8250,
> +	.tz_cp_config_data_size = ARRAY_SIZE(tz_cp_config_sm8250),
> +	.hw_response_timeout = HW_RESPONSE_TIMEOUT_VALUE,
> +	.num_vpp_pipe = 2,

sc8280xp is IRIS2 4 Pipe.

> +	.max_session_count = 16,
> +	.max_core_mbpf = NUM_MBS_8K,
> +	.max_core_mbps = ((7680 * 4320) / 256) * 60,
> +	.dec_input_config_params_default =
> +		sm8250_vdec_input_config_param_default,
> +	.dec_input_config_params_default_size =
> +		ARRAY_SIZE(sm8250_vdec_input_config_param_default),
> +	.enc_input_config_params = sm8250_venc_input_config_param,
> +	.enc_input_config_params_size =
> +		ARRAY_SIZE(sm8250_venc_input_config_param),
> +
> +	.dec_ip_int_buf_tbl = sm8250_dec_ip_int_buf_tbl,
> +	.dec_ip_int_buf_tbl_size = ARRAY_SIZE(sm8250_dec_ip_int_buf_tbl),
> +	.dec_op_int_buf_tbl = sm8250_dec_op_int_buf_tbl,
> +	.dec_op_int_buf_tbl_size = ARRAY_SIZE(sm8250_dec_op_int_buf_tbl),
> +
> +	.enc_ip_int_buf_tbl = sm8250_enc_ip_int_buf_tbl,
> +	.enc_ip_int_buf_tbl_size = ARRAY_SIZE(sm8250_enc_ip_int_buf_tbl),
> +};
> diff --git a/drivers/media/platform/qcom/iris/iris_platform_sm8350.h b/drivers/media/platform/qcom/iris/iris_platform_sm8350.h
> new file mode 100644
> index 000000000000..74cf5ea2359a
> --- /dev/null
> +++ b/drivers/media/platform/qcom/iris/iris_platform_sm8350.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef __IRIS_PLATFORM_SM8350_H__
> +#define __IRIS_PLATFORM_SM8350_H__
> +
> +static void iris_set_sm8350_preset_registers(struct iris_core *core)
> +{
> +	u32 val;
> +
> +	val = readl(core->reg_base + 0xb0088);
> +	val &= ~0x11;
> +	writel(val, core->reg_base + 0xb0088);
> +}

you can reuse this from SM8250. That would work.

Thanks,
Dikshita

> +
> +static const char * const sm8350_clk_reset_table[] = { "core" };
> +
> +#endif

