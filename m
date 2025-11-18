Return-Path: <devicetree+bounces-239987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F76EC6BCB2
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:01:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 51B4C4E2869
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:01:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 950DC28031D;
	Tue, 18 Nov 2025 22:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aDPXMimC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AnG8bAUX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CD7326A1B9
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763503261; cv=none; b=EnIOd7fOH79DTYDh2G9JyU5kfnGjORUq+oN9bRKLKzsKjmEL8s13Zhmp7HvqieNgOI05OZoIEFpNgIFpLSSJ6um9cCqrSWKMitu1U+VcYxt8mlbCbxG+teVe6dX0MwH0o9KtFDjLK5AoVzGN1UJghszKUek5CKUxlDnKoQnhios=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763503261; c=relaxed/simple;
	bh=Dih9fXevBS3u9kszVPmtQnrlg5dIJndE5uxACAe+v0Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=UrBvhRCeO6tZ1knwOcmCEGPnhOr5coBkLEzAw/h+kdzp1zvy/3BggFKLT7ya1CTzkQCjIAaXHXr6yVBwTFfO9RQxb4rxqOlYaHlvBDB7JOqs5VgF4jVA8GTxcbhVjiyKkJCyRaqbB/lD/G9+hxRwxPPML/OB7OQgytEf9Kbt9jY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aDPXMimC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AnG8bAUX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIG588u3412654
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:00:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XJ/krFdrukxS2jHjMwJ/crT5obHVqzWDf9mfKu1vzco=; b=aDPXMimC7P9Rq/2c
	poyupxweKVoSSLk40X7Q6skRynMwg5cAIZytxpn0XG581Q0g39luwtpWaEa0Jt3X
	uPVh2J4/CHv1KWAzZUxZuXC1pjNEZluQaOTbrSAZcWhrotFj619A3cwmUpUijAfl
	ObNq5qr99JEhx1JkBDC1Fc4ijH4I6qMH/tKtuJAVTpsOmIF6kKpQh5T7vDIYRqTm
	N71omRjDCWHwQfO/Odnkn69yCY1APiY+pIIJmeNcOhfdYTX/9+xD0yqSmZLt/pzt
	38M50D/w3XrJ1wTWeKXyO9S2Cj8bIcq6sfef8ggCOUYmcJU9W2Q29rcv+MxZgRqJ
	3SFGtQ==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agv0v11ma-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:00:58 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-3416dc5752aso18288506a91.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763503258; x=1764108058; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XJ/krFdrukxS2jHjMwJ/crT5obHVqzWDf9mfKu1vzco=;
        b=AnG8bAUXvR9USTqKihm9yC9I4fpxrHulcRHmqeEOWfLYcAeL1B7fe2ry2XSvyoOzKP
         52uMhGz6ig4S2NeU01+/0/ACCaMDpq2n6Dabqwnq+vjdYJUBymqcA87M8zJU9t26ubQ6
         ZrcMySVJYD7r7+KyAwYblvIKzef3Ro0xxkG4jliCWlUPSGSUWE2yn24FHA+VB/6H90tx
         iKkgmcDksn9UgR8gryqlq6/lmFgehMd+VqaADiwVkktufc5HLbduMKnmT7vwKKI4F2cu
         QYRH2CJPIM8/AvnqOvikYgDJ/tye96W4bDnH8vY3BM9HxpreX+4BMH4dOXRsJ0loYogx
         k+CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763503258; x=1764108058;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XJ/krFdrukxS2jHjMwJ/crT5obHVqzWDf9mfKu1vzco=;
        b=aINcS5Dbjr4vZkCBZOY1rfWeO3pyaPOmTnPOzl6OiSFwFDr+Fs0UJUWDGScmTeq2js
         weBm5qE7Rgge7r9B8SkMxdSFdnUt8UnXUUfo6Iz7u6wVV40p1eG0OZqRcIuxfb70Nmpe
         FCfzUuOILc0XKVb9ooNNPeH6k0IFt//tfCGY9PzJiN3B92pPlxQhbyyNt0F0tFILcyhP
         wTmB81MdK9t+d8BkXOCj455vxebERfCLUsFA3xKPgb9ZwqcED0wUD/TgSTKPMm2vrg4Y
         zAYPJl0GpFkCdCvaX+zzaTNBCv73NiVczqxI6fD16ttoe/MLHPfcvJrbR4AexqrS/iTv
         AmDQ==
X-Forwarded-Encrypted: i=1; AJvYcCW3sfK0stMEI985ImAczAS0Dm9FWh/8dkrQFFhb5iyYOf6w+kdaWFPyvBPFC5QZ3HRn5OFQqe8huoD8@vger.kernel.org
X-Gm-Message-State: AOJu0YwpCes3h/Iu6IJwXvgQ/CJ4slREJx0do4d1iKOpGFCDCxhZp0FM
	1ZTOobbBXS5kuRDbXik/WCGBvVqSJeyuEkOflC5+ROujTXh0m+jyb5cEy5vO4iix0S7dZpOmlgS
	nd7ESsncMUITq86ALfM1NGy8pAaJn2A0FaJ/+35iwYOYNbejSlFJZJ70TF8JCfJ1S
X-Gm-Gg: ASbGncs8Q1K8eZfKzr8/y6OOuvwUjowJFTnIEeZYiPJgnMuQvRzWmxXABVWMKgCT+tO
	ojl2MbFdAuCnz5yPus910RqE9e8F9W3wXFukdrCRdYQhk5ZtDaSed1oSRjb2kk3bURAJ1BFXpkh
	0+0lOMXicPAnqIbMsW92CA3WyG188GMjAe5hmH6mAyTGLWUxdSrz7ELmFHGLOAVF4mSXTTUg4M8
	ewPSyVkIl4aUY9QAxURgFo2zbhtMjHPQH0auqmfpP/h/ILmCwh6qtYwibpmGL0xToBwgUgahTot
	1Z6OQDuOZy+1hZ979mfrKyHT4GPuvsXHuBRtmDSoG8IDdT/2GA5GeeQVqLu2hkN1Exo9AJgfy6q
	Z+CsVmTf1vokQStsVv+tcXO5kOHq47YqHwNuM7Q7u
X-Received: by 2002:a17:90b:5804:b0:343:5f43:933e with SMTP id 98e67ed59e1d1-343fa52ba9fmr18896536a91.19.1763503257963;
        Tue, 18 Nov 2025 14:00:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IENuyMCSbnJeXHIJwaNL3s/cjdlr4lhkPOILg4vP2RvQYr6dD7lW+iuOT8xJ6HGirA+lTfVUA==
X-Received: by 2002:a17:90b:5804:b0:343:5f43:933e with SMTP id 98e67ed59e1d1-343fa52ba9fmr18896496a91.19.1763503257444;
        Tue, 18 Nov 2025 14:00:57 -0800 (PST)
Received: from [192.168.1.57] ([98.148.145.183])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-345bbfe30e9sm441894a91.5.2025.11.18.14.00.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 14:00:57 -0800 (PST)
Message-ID: <5fee98e6-019c-41f1-b13b-ce06c736147d@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 14:00:54 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] media: qcom: camss: csid: Add support for CSID
 1080
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251113-add-support-for-camss-on-kaanapali-v6-0-1e6038785a8e@oss.qualcomm.com>
 <20251113-add-support-for-camss-on-kaanapali-v6-4-1e6038785a8e@oss.qualcomm.com>
 <ced2ad99-fe9a-4794-be2f-f8760deed0a1@linaro.org>
Content-Language: en-US
From: Vijay Kumar Tumati <vijay.tumati@oss.qualcomm.com>
In-Reply-To: <ced2ad99-fe9a-4794-be2f-f8760deed0a1@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDE3OCBTYWx0ZWRfX/LmPP7QrXDxy
 +h4bOn+koJfSn1GlnmaC7VM7lVnAyr39526JJU1nEdB8DBJIf5iHSEqE6q3BHZGTsugaLE+nUzs
 l0eHKw3X4o6ZRdN+YUK3kdURLyn08OSp89PWjZopmzD2nWJWK8goQgGHpOHq/NV2CFUEWWrixdZ
 bdK0Yh5aOTeF5YyVpxHRpyaP4wD48OOII/geSWhhEk5xQ++S323hzvhrEDWCZgBVZ6NOtqPNPg7
 VklZMTsiWXBQDbPzNDGKnK8OsUml/ss77lS52wcosa2PrumigWc+QqoRCM8ELA74pnaigXHHYf5
 V+AOYjZw6mwp/L/j/0qUrPpDk0jZboX5hVq0iUhdybzxuIVhUrFTYuCE9YsM38gsFVV5FpsrwiR
 DGW2fpX+UM/kzXYolX50C2uPP/7n1g==
X-Authority-Analysis: v=2.4 cv=S8XUAYsP c=1 sm=1 tr=0 ts=691cec9a cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=BiHMn5M11h/vNwziJwzFrg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=GDeJsyEDr6o3VvAygAYA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: ZhhMviNJSBZqXA6qAZbrmt3ZPxffJf5W
X-Proofpoint-GUID: ZhhMviNJSBZqXA6qAZbrmt3ZPxffJf5W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_03,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 adultscore=0 suspectscore=0 bulkscore=0
 lowpriorityscore=0 priorityscore=1501 impostorscore=0 spamscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180178


On 11/18/2025 1:41 AM, Bryan O'Donoghue wrote:
> On 14/11/2025 03:29, Hangxiang Ma wrote:
>> +    /* note: for non-RDI path, this should be format->decode_format */
>> +    val |= DECODE_FORMAT_PAYLOAD_ONLY << RDI_CFG0_DECODE_FORMAT;
>> +    val |= vc << RDI_CFG0_VC;
>> +    val |= format->data_type << RDI_CFG0_DT;
>> +    writel(val, csid->base + CSID_RDI_CFG0(vc));
>
> Why not just add that code now ?
>
> ---
> bod
Hi Bryan, I think this has been carried over from previous versions and 
the comment is trying to say that, for RDI path alone we can just dump 
the data into the buffer without any decoding and the format becomes 
more relevant for pixel processing as CSID needs to decode the input 
byte stream first. Either way, if this is a stand alone entity, we can 
discuss offline and push another patch series to handle this? Please 
advise. Thanks.

