Return-Path: <devicetree+bounces-228595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 32018BEF619
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 07:59:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AA14D189538E
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 06:00:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F4DA2D0629;
	Mon, 20 Oct 2025 05:59:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AwvQAiHN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0FAE2D0631
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 05:59:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760939969; cv=none; b=IpeXpll4zMIc140gm9h0FH4U+IXuq7IlI1PMcgeQmjoFjWHTILjTBVB4D5fg3RBtrygglv2LSGZcwRT8CnlplwWvTVPOE/OvK2inC+aZNOx5qmITuCGYTIw97xT1cwLN2+Vf152q/hBPyOt+UWz1LvJjRoc3FHgBNqdJ1NOm0rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760939969; c=relaxed/simple;
	bh=DfgQhDV2FB+r3jXdeQjlELojhkZCzkVAxCp7ukCYBp4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SqzNvYa+3TqxZiQea1gnmD9L44zg+qmfS41j5apwitIEEVEeDfTr0+5ZsdcxInANXFJYfphN/tl31+9cVMBee8YPcIU1bcQjoHPtizk7DtZlvF1xTkMUzzZwwHuvulf1tfbYU4seFCX1QuwRh/Nb/RttDHrqwhiXpFkiWhPc01M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AwvQAiHN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JJLr7e022395
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 05:59:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nM+18YfZG3eJcSFCMfzYrqy29nlqANkrqIV1DISydfs=; b=AwvQAiHNZfptJ/sS
	i5WDMuP2gRVCoBZ68zEz05L2Ju3az2ItKHRmAT6DUhiNLKy8s8ozHmuBu8Kz9ULM
	eWNZgonQhV+lfmHKBPfDj5xeYC+GMPa0DpRsnba3F3U2YJQS2J6HRTvOb237+m72
	xQNCGieEZs+l5Bx58+CB37AkYupNbQLU0pB1yJ0kF9GTWwWs6QFjNEIdk8fxxG8s
	PSeBCIDMqhmWo8KbJx7ayULn/eurVcduffgVD5Rz/MeseGjoQT+7BCLsBtGMefND
	M7EPR0uxZd/Lh94X7BLvG8Sgw205tdyhip21CZYDrW9OrIItFDnAod1MQ5q6UpYJ
	8NvWHA==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w7utuq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 05:59:26 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7a144677fd9so7800535b3a.3
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 22:59:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760939965; x=1761544765;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nM+18YfZG3eJcSFCMfzYrqy29nlqANkrqIV1DISydfs=;
        b=cHoDWQMBvY9b3WJ7Cb/OLzRm5D0nYdJwIvHVAF1Ozrq5mNdvrbpVTlD1buemyGjkEi
         L5VJ0rCH07ZX8PnBMRxrV8uptaWItwZrahOZ7Y+TOpMJJPBC3r94TdSxkHk2WNnRGi7a
         rM4C0GCpEJGjcfH5MynD2ob3BWuv/9vbYMuBsbqinvLyAgYqfw6XbjgqtH3EInODvr1I
         8O7wvEwc41sdwrYNZSPXOhAWom06dcAleNfNEzvZp8KFXzDbHNqkyqgLVvXL9cembmIb
         DEzxUNo/nBwzscseThIbthY4nI2lrs1WY/+exEvMNwvigMgjzBOJh+x5pcorvZ0Js41/
         FiIA==
X-Forwarded-Encrypted: i=1; AJvYcCX3/lpT3FxVbLGhrWTqYwmVqI6Vm2EUweqWucN1S5ugfWlraZ+tXG/+PLdeziv4A3Zd6ldkYeG1NX6Z@vger.kernel.org
X-Gm-Message-State: AOJu0YxPTEAsqzKH63S0PhASIR13efVrFEle70tb5FNmJtL74gUo1GUv
	2pmx1eP2ivptQceoQ4VKaBVZOj2E1yaKXUfLwf+3yf8YL7H4FC5QWyeSq+9sWnPqou76rZt3vfO
	LPZg0+1GB7XsWbGuKaa5CoOx4nBQbFqDzJ8gXNIaAFvipxgmbzVCKKzjbPjaMMc7e
X-Gm-Gg: ASbGnct8ohAJdb6F/Lbs4ltDrhqK+QyFwoSjyu2LjeslRep/Eshu/7JiuCDDR3tNrYV
	Hq/KHVhbquBJ905rkv6lvaA8xn+MVm46hR6RWdvQLvtTYAc5DP+SYA+jr5CLC00SbkKAdIV2N7t
	4kZugXV3HOjLymsTA4dZSyjSrvsr5UX+IBxDxibazN8JMgrvcvtKwQvnMULzEO4cnt3Qa5JVO6E
	iZI0++bnTpaRCMFxs6o/lrcuy/TQ3OytM/ljCyTz/RH9LokjXIOGyzwHHtL5UwufQ3qvDxVQaUX
	M5RdzDtcE0lB+GELdPEPtNVEvFLfCXxmWWARThUPceLjAEozovLcvUg2EHexFwLtkLUw6HJBzzm
	9OBwwpRYOy7cXiiz19TKsYwEFeTf3A+lUygEZbd9NHXSfUAcSsob53a41qu/R/oB3G372Vg==
X-Received: by 2002:a05:6a00:21c4:b0:772:45ee:9b9e with SMTP id d2e1a72fcca58-7a220aa8c36mr12648439b3a.9.1760939965338;
        Sun, 19 Oct 2025 22:59:25 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFOnIQKmKM4/wBe+q3U4Vl91ebk6gizKnC7NhQP4NZOp+sNVTSvIrGb+vHkb3XE0F6V5ZNQSg==
X-Received: by 2002:a05:6a00:21c4:b0:772:45ee:9b9e with SMTP id d2e1a72fcca58-7a220aa8c36mr12648411b3a.9.1760939964922;
        Sun, 19 Oct 2025 22:59:24 -0700 (PDT)
Received: from [10.133.33.90] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a22ff34ba6sm7240595b3a.18.2025.10.19.22.59.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Oct 2025 22:59:24 -0700 (PDT)
Message-ID: <bc9f58db-c0b2-4c97-8ae6-ee01a5bf49e7@oss.qualcomm.com>
Date: Mon, 20 Oct 2025 13:59:16 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] media: qcom: camss: csid: Add support for CSID
 1080
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com>
 <20251014-add-support-for-camss-on-kaanapali-v2-5-f5745ba2dff9@oss.qualcomm.com>
 <f64bc46b-9c21-49a8-b5d8-3e21614b6695@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <f64bc46b-9c21-49a8-b5d8-3e21614b6695@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX8T0+CBw2Dyv5
 27Yl+Mwe7cjZbWh8KQicjqnuCvFdQvgipXuxUJXnnlAagNfMHjVE45/AO3xJshJWDA6wztzlvSH
 gX372CPo3DHuXCy63qP5I8+KHW18PPyG9+4uVfqNA8pYmK36UY7E8Nqh9OqtaAMWXhjFbU+hzEL
 /3Fw0DmyiuN+dpikroQnu9+oRdvJCnS/QJJ5xNXoHsy64g1013yHE6ltIl36BOSEksm1jJSw+X5
 nH4aiyCF6Cbdmzj03OfkwN6vclj5XxcYYw764MCI3o4UkSNCi3rWmkSSShWHR6N+MNMLHjTtj0J
 E8MON49Gv5wp5eMZtnz+Q/VYLOvjVoiAs48h9BIBqkpRENBn3V4eyialCIW/2/MfFm+Kd/v1HxB
 xTZBeoXMJujqVBEZNt1snjMbZHj8yQ==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68f5cfbe cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=AXp2hmqOj5kKvFkYXygA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: 4vOi0T5E9AQLABOPVSkSQpUqOl_jQDOn
X-Proofpoint-ORIG-GUID: 4vOi0T5E9AQLABOPVSkSQpUqOl_jQDOn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-20_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On 10/16/2025 5:12 PM, Bryan O'Donoghue wrote:
> On 15/10/2025 03:56, Hangxiang Ma wrote:
>> +    for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS_1080; i++)
>> +        if (csid->phy.en_vc & BIT(i)) {
>> +            val = readl(csid->base + CSID_CSI2_RDIN_IRQ_STATUS(i));
>> +            writel(val, csid->base + CSID_CSI2_RDIN_IRQ_CLEAR(i));
>> +
>> +            if (buf_done_val & BIT(BUF_DONE_IRQ_STATUS_RDI_OFFSET + 
>> i)) {
>> +                /*
>> +                 * buf done and RUP IRQ have been moved to CSID from 
>> VFE.
>> +                 * Once CSID received buf done, need notify VFE of this
>> +                 * event and trigger VFE to handle buf done process.
>> +                 */
>> +                camss_buf_done(csid->camss, csid->id, i);
>> +            }
>> +        }
>> +
> A multi-liner like this should be
> 
> for (i = 0; i < MSM_CSID_MAX_SRC_STREAMS_1080; i++) {
>      /* etc */
> }
> 
> in fact csid_reset_1080() does the right thing, please replicate.
> 
Ack. Thanks.

---
Hangxiang

