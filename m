Return-Path: <devicetree+bounces-245106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 134AFCAC449
	for <lists+devicetree@lfdr.de>; Mon, 08 Dec 2025 08:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4BAA2300EBDA
	for <lists+devicetree@lfdr.de>; Mon,  8 Dec 2025 07:05:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6211C1E00B4;
	Mon,  8 Dec 2025 07:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TeWKF68j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HfqFeBHt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD6C21E86E
	for <devicetree@vger.kernel.org>; Mon,  8 Dec 2025 07:04:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765177499; cv=none; b=UDW0PoJWvb6PqYXXzX0FW2JqUY7i5Q8SaQQkTgZuVNDElhADda2S9WsaGszdk3qVTFk5WLWfTqpLcoQlpUlCe1apy/cpZ6Rd4zjKOiWHYS55fFNFHG+gUc6KqDXwcbN0NxuzAIUNoYAFQi07619Q7BlueohGVlN9tOLll15UNyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765177499; c=relaxed/simple;
	bh=NyGPQggKOw9qL9pkvluZ0L9NKyLKpnlf8eo1rG4t4AE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=IJ/g0fdqNxGI6rioY+RQ5bhPpMUJNYh+Y/VwO7zUfh5Iw+BclqcU6EaKBTmWCk/WkbC1aXcoJL7/xwjzrn/9Pnpjml1As/R3TY7nCWeeCK0+bhGGyWmubhWPYjUVJlucQpt0A/o8hRbjG9zSJgtydzpk/gv2uSxbsiKVColbDH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TeWKF68j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HfqFeBHt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B7NenZk3512381
	for <devicetree@vger.kernel.org>; Mon, 8 Dec 2025 07:04:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FGaVPlF30fkBj2JVwi64KaI/aCwHZ13hN5EJA5rYn0s=; b=TeWKF68j4BUrPE8i
	MB4GCUuy2K+U9PxBHNs9VjbQfsR2vDbNGjJkh02rFWs1e+/ivrKlgQ+bJWlX25zj
	94T07y8hQjGMT92GMedbpJBbD83KBeoFDeBunvx7lxrfP6pJ6PhCbHcV8K6xVhF1
	QVXZMdyJzI9pZIGH+Mx/J7v79o1FBrLju0UQzcrYCpwsflME2/7b8hG9kJdtLDGW
	mCKn4KJAT14gvbstOnOEiH6vltuyIeZftfxeYxCF5WsDEmSm0/gqZ1ULEC9eJKB5
	6R8S4iuHeDxdxNHDnUT5Wo/qjqzMb0bRCcW0BTbRu/AyUx1YP0tgsZlxWQdqxl91
	bKyg8g==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avcv83ws9-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 08 Dec 2025 07:04:56 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-7c240728e2aso7598761b3a.3
        for <devicetree@vger.kernel.org>; Sun, 07 Dec 2025 23:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765177495; x=1765782295; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=FGaVPlF30fkBj2JVwi64KaI/aCwHZ13hN5EJA5rYn0s=;
        b=HfqFeBHt8RaD1pMKnQSR/MXs6SEsxIuIAcHBxk8GbR1ShrGCEEvIt6uQS7ay6/p1tx
         5Dudt4/wm2ZEVBmKf+KsIpHT9uXNA0tv4o+WK+lNn3dTelAX3RF3dYj1Crbo0KXCWw2J
         cTCy/2D0GtAOrVjxj4aW/5vlzUVTWvNQcrycHmDhaC0qvs9fcFXOIh+eFc/KD9nJgx5t
         lH5OlBPLsJ8l+5k2zGsASgNJ5FpWhVy1pxRCiY3qkt0OOql/1UXou5xLkRsU7oRb8pBa
         evUctwRVszxO2edXo7ctHsw0QYI4EGRIL+Qlsj+jSDP3KJx5I64pTW6H6nkO/iIWow8A
         zPEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765177495; x=1765782295;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FGaVPlF30fkBj2JVwi64KaI/aCwHZ13hN5EJA5rYn0s=;
        b=I0nZFGh4ZilQvWnP89RAyDDyOZ8XvawtenZ1ra8UrSZjCAKXYEHMKzQwuU2VdYIZUp
         xfFPf1Q6pyL674oymV48KKotxwUN+wkH+CWUJKL7B7pHc3dV4dRg4qXUWbtxvTbre9DK
         0pwFqb6AJZInIt4J2R8WFXqnFsXi/i5UT0Wq6GkgzojNx9Y/i0Nx6CtTxzfXR/Egzlih
         UfisEjz58m8yQaAOzXNv/T+uoGXfXmyZ7lhngTLBvNxK1AJ0gHuINdW64LvI4NbU8Ifq
         I0iwQk4fGvVzXfv/AGVA0mhe61x8vDEkxczd9gfYc7Xb8PI9DGeZ/+eFCAJ8rpWBhzbC
         F/Xg==
X-Forwarded-Encrypted: i=1; AJvYcCW0Un+Q4NH4wscnU53ZPMhXL7h7JD1BqH2KN1Kzh94hVus4a2QZtfeLJBX9It2WlhR+zSBbGaFutX/0@vger.kernel.org
X-Gm-Message-State: AOJu0YwpJZlLWeSbcqeYqEcdOhVS2UXRqD6jwLGsrgDl8ezBY9c5Y62y
	qIbJeGDCty9+il/4feZ9p2elkMKHDRt2lj9JDH1Xu2fH38l+G095s6oDv4bLrNGEpcsTmqpuksn
	J6XHd5O/g2uOzWPc5hj7T2W+c/RubZPLTq/rLig6w5wC8+JRPUN1Z+tft1CzIEhpQ
X-Gm-Gg: ASbGncuJOHny+qd7WFER4PBzgcg15zk/8rdGw/auIgmej5jjMWZpw9fMf5arvBKModA
	f7funwsV9KRHNswjE37za8OUzqZ22NwkHuBMnhgwwnz/n6BuexzIH6wFWzv4u0IxbZBSlBP0bR2
	HPJ+pYa4Lk2h65VccDw3wV787zPDqpvrmhKg5bCvEYIEin4P6rj8c99a11k1hppJPwFARLEFJ/h
	Jh9PuEiaUZm8PfsqNCqhvIYeZuRyl9dTgmgSFIY4eASKo5Jx+Altcutxe7QcPYXpfRuI8UxR25E
	F0r5l4ZgBFJ0jSjY2HdSAd2Y9V5LHRHphy9UfWtR/iIrXhRmLfFec2kBBy2qS4/QqUmjw8bhlSN
	Kj6mGXgqOOO1tMjvjqY49ZJHEhCCWg8kUX4fDzLFl
X-Received: by 2002:a05:6a00:198d:b0:7e8:4398:b351 with SMTP id d2e1a72fcca58-7e8c4a760b0mr5135532b3a.36.1765177495276;
        Sun, 07 Dec 2025 23:04:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFXXstO1/aH4pNkltYFRUw67jHP+4wYmmld/ualkI5pVrl7sEs1XBsQY9dBdbZ/F4pmYZUYPg==
X-Received: by 2002:a05:6a00:198d:b0:7e8:4398:b351 with SMTP id d2e1a72fcca58-7e8c4a760b0mr5135511b3a.36.1765177494761;
        Sun, 07 Dec 2025 23:04:54 -0800 (PST)
Received: from [10.204.86.50] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7e73079fa24sm8726983b3a.40.2025.12.07.23.04.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Dec 2025 23:04:53 -0800 (PST)
Message-ID: <5f4efb71-4d39-45e4-bb0f-dd3c3c5b3a28@oss.qualcomm.com>
Date: Mon, 8 Dec 2025 12:34:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/4] misc: fastrpc: Update dma_bits for CDSP support on
 Kaanapali SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: kpallavi@qti.qualcomm.com, srini@kernel.org, amahesh@qti.qualcomm.com,
        arnd@arndb.de, gregkh@linuxfoundation.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_bkumar@quicinc.com,
        ekansh.gupta@oss.qualcomm.com, linux-kernel@vger.kernel.org,
        quic_chennak@quicinc.com, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        jingyi.wang@oss.qualcomm.com, aiqun.yu@oss.qualcomm.com,
        ktadakam@qti.qualcomm.com
References: <20251202060628.1869967-1-kumari.pallavi@oss.qualcomm.com>
 <20251202060628.1869967-5-kumari.pallavi@oss.qualcomm.com>
 <l6pf6zoz3sfawnsdmtacczykg2dgnaw4x26dfg4o3al44y7fc5@vgzd5s4uygm6>
Content-Language: en-US
From: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
In-Reply-To: <l6pf6zoz3sfawnsdmtacczykg2dgnaw4x26dfg4o3al44y7fc5@vgzd5s4uygm6>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: qFtmcbAy5myMxv55LnjdRALV6uB_ONaI
X-Authority-Analysis: v=2.4 cv=KL9XzVFo c=1 sm=1 tr=0 ts=69367898 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=zVikO9lnR5s5zLRVlN8A:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA4MDA1OCBTYWx0ZWRfX69kIsmRe0mF1
 41QPYJs+ydQy9E6SW44FocyvgBH63Ly10oXSEwbpZQ6vQSDlYvAU1eU/hHceJkPYpRvXW3PLb6Z
 vuWcXqZAupsvxCNzJgb9pM9bQQ1Sz8qaWKOlAD7p5Wp0hFt1IPeTgmwTNg6NPmAShOy1oXBL9CH
 A8p3NMVJu0E2wjrmgpzepJ8vogZSMmseTFuWw1IUXarBKy76O9fua23NHSTo7ONP7sx+hJPjeRC
 m1YQsJvzRpN5iYM4FkwNRPEJ9MsW0fglV6D1T1SWzrVNZvr/YWX6F7jBgbOgvNaeFsqnist8kxM
 aEtbSqT25z7jV9qlxvbP7boiap+UrNuetLPjGAzkB+pmMiiYyauh5T+Q8zzxrJNpSLxv6nXGjpR
 Gwsvxeg514t8m6hw3JibLuUSWTku/A==
X-Proofpoint-GUID: qFtmcbAy5myMxv55LnjdRALV6uB_ONaI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-06_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 impostorscore=0 spamscore=0
 priorityscore=1501 suspectscore=0 clxscore=1015 malwarescore=0 bulkscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512080058



On 12/6/2025 8:01 AM, Dmitry Baryshkov wrote:
> On Tue, Dec 02, 2025 at 11:36:28AM +0530, Kumari Pallavi wrote:
>> DSP currently supports 32-bit IOVA (32-bit PA + 4-bit SID) for
>> both Q6 and user DMA (uDMA) access. This is being upgraded to
>> 34-bit PA + 4-bit SID due to a hardware revision in CDSP for
>> Kaanapali SoC, which expands the DMA addressable range.
>> Update DMA bits configuration in the driver to support CDSP on
>> Kaanapali SoC. Set the default `dma_bits` to 32-bit and update
>> it to 34-bit based on CDSP and OF matching on the fastrpc node.
>>
>> Signed-off-by: Kumari Pallavi <kumari.pallavi@oss.qualcomm.com>
>> ---
>>   drivers/misc/fastrpc.c | 15 +++++++++++++--
>>   1 file changed, 13 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/misc/fastrpc.c b/drivers/misc/fastrpc.c
>> index 6a67daafeaa1..c5d2c426fcbc 100644
>> --- a/drivers/misc/fastrpc.c
>> +++ b/drivers/misc/fastrpc.c
>> @@ -269,6 +269,8 @@ struct fastrpc_session_ctx {
>>   
>>   struct fastrpc_soc_data {
>>   	u32 sid_pos;
>> +	u32 dma_addr_bits_extended;
> 
> s/extended/cdsp/
> 

Thanks for your feedback.
Here, i have used extended instead of the cdsp as to replace the 
domain-based naming with functional naming. Currently, CDSP supports an 
extended DMA address width of 34 bits due to specific use cases, but 
this could change in the future for other DSPs as well.
Using names like "dma_addr_bits_extended" and "dma_addr_bits_default"
would keep the design flexible and independent of domain.

Reference of the earlier conversation regarding the change of the name
s/cdsp/extended

https://lore.kernel.org/all/e0d039e8-8f65-4e2e-9b73-74036dc0bb8d@oss.qualcomm.com/

Thanks,
Pallavi

>> +	u32 dma_addr_bits_default;
>>   };
>>   
>>   struct fastrpc_channel_ctx {
>> @@ -2189,6 +2191,7 @@ static int fastrpc_cb_probe(struct platform_device *pdev)
>>   	int i, sessions = 0;
>>   	unsigned long flags;
>>   	int rc;
>> +	u32 dma_bits;
>>   
>>   	cctx = dev_get_drvdata(dev->parent);
>>   	if (!cctx)
>> @@ -2202,12 +2205,16 @@ static int fastrpc_cb_probe(struct platform_device *pdev)
>>   		spin_unlock_irqrestore(&cctx->lock, flags);
>>   		return -ENOSPC;
>>   	}
>> +	dma_bits = cctx->soc_data->dma_addr_bits_default;
>>   	sess = &cctx->session[cctx->sesscount++];
>>   	sess->used = false;
>>   	sess->valid = true;
>>   	sess->dev = dev;
>>   	dev_set_drvdata(dev, sess);
>>   
>> +	if (cctx->domain_id == CDSP_DOMAIN_ID)
>> +		dma_bits = cctx->soc_data->dma_addr_bits_extended;
>> +
>>   	if (of_property_read_u32(dev->of_node, "reg", &sess->sid))
>>   		dev_info(dev, "FastRPC Session ID not specified in DT\n");
>>   
>> @@ -2222,9 +2229,9 @@ static int fastrpc_cb_probe(struct platform_device *pdev)
>>   		}
>>   	}
>>   	spin_unlock_irqrestore(&cctx->lock, flags);
>> -	rc = dma_set_mask(dev, DMA_BIT_MASK(32));
>> +	rc = dma_set_mask(dev, DMA_BIT_MASK(dma_bits));
>>   	if (rc) {
>> -		dev_err(dev, "32-bit DMA enable failed\n");
>> +		dev_err(dev, "%u-bit DMA enable failed\n", dma_bits);
>>   		return rc;
>>   	}
>>   
>> @@ -2311,10 +2318,14 @@ static int fastrpc_get_domain_id(const char *domain)
>>   
>>   static const struct fastrpc_soc_data kaanapali_soc_data = {
>>   	.sid_pos = 56,
>> +	.dma_addr_bits_extended = 34,
>> +	.dma_addr_bits_default = 32,
>>   };
>>   
>>   static const struct fastrpc_soc_data default_soc_data = {
>>   	.sid_pos = 32,
>> +	.dma_addr_bits_extended = 32,
>> +	.dma_addr_bits_default = 32,
>>   };
>>   
>>   static int fastrpc_rpmsg_probe(struct rpmsg_device *rpdev)
>> -- 
>> 2.34.1
>>
> 


