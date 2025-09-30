Return-Path: <devicetree+bounces-222580-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A5ED5BAB18F
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 04:53:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 33D9C1C301C
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 02:53:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C3A3F153BE9;
	Tue, 30 Sep 2025 02:53:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="V3iTXAvH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 156E32080C0
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 02:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759200805; cv=none; b=qqK5nlBxhmWm5DnUs7kkVPbNRYrZ6M6Sd47Y/oYVkiINNZMDH+ej7PeBirdk3GRiwTkqAxnY8yOQWnTTIMD42vLiEIyYLkZPmYq9zS8uyu1iH4WXEvvYhMtSiSlq+O0p1e+KQQd/UsqaNI5ddC7lNsZVlyVtW1/2o1t+GwIu2pY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759200805; c=relaxed/simple;
	bh=vx+f1fQY2Uwueq3Jx9VQNWKhSt/AYmYcmnwfYaVLCf8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=P9rSiOjikAT0KqSJ0+0Ss2/031qXvD1y2Mxm7ao39bcablZAHJvRH8hgl/8CZaTGriYeUuboMGFQ9K/4xFYzByoDG+8d1IAeZuMGlE4QZgQEisK8N442Wgp2IwnD56qCVJ7qDrGZ4i4+7tm1LbfXmHA/J4IPzplfjQMvnjJzpG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=V3iTXAvH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58TLt2IZ013157
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 02:53:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ptmEaaTCFgclY0orIxraWd4bdye2B8I3nhnkuntUSC4=; b=V3iTXAvHQu716hMu
	lFlOXMFOLM7FRNpoWINAQOmdXf3hKtyIk+xH6+Gzn5FfR1fFQfa90OodMziHt2Wd
	K3uXTkpB05uEHm8Pr1GTZLdBZZ2kBlXUhw9QIJpNgI4HRrQGi6eXEEauG+lMjgoB
	07/tLRos6R2ifnwv2reoBEnqLOEdePEVWGz2fmlOUt8d/3lzO9QnKXqXyF8TvSQe
	5fEs2m/xpacJs47Fe91l6vuUnrGF9LEmh54ueL8zNeC8xSAtNHn0KLv4zrxPnFvK
	EeJyw2LsCcaTZIkaSaTnRZ2A6Lht6M9p79wf50tK///JrPfLB/TYMlSPdusInv/a
	qgy3ag==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a5ydju-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 02:53:22 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b5509ed1854so3486486a12.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 19:53:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759200801; x=1759805601;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ptmEaaTCFgclY0orIxraWd4bdye2B8I3nhnkuntUSC4=;
        b=JV04AN8sPYcFws7TS4OWL6NcS0tnet3X8dxg3j2CJUrDzrgvp2F1WzcldCxzNrDKZN
         3Alw0wFAC8sEzGjOB5CqxzQY9H7m2Qh4Bt+rqsfLYslhzNlxr2w0sUilBiTiHRAqNIkY
         6P3WSi1Vqfi568IHh3/2fSi2bq7H+A/C6MDsTS6IzODokuL0AV1i91vUUKimKt/5GWb1
         2+7fJeRCE3/cflzDYVFD8aNTO00N5USwyZ8RhzhMcIqVPKWSlHadR9qTqfV4TST68hfH
         DYiITxzjTfUtbNF0+iR89x81t5sQnkl6slIm0uF86jbq1OQxQZok6Uwi3RQGK41dxl05
         fEFA==
X-Forwarded-Encrypted: i=1; AJvYcCU7OKhQuRcj8fPPB8j6gRQTp4cYDBGcqD9nwSiNVCzYwe7l9u0jIRr4eqbcr22ym1InrtmHx8UoCmJT@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5S+jtan6fi9KgpsbJQeIEVwRuJPybGwaYPYS0N6FGJlTbhj3t
	Hvc4hEn8ho3ZFjG1t2UMgH6eGnclz2Tt7ujtx13urCnNBY4NgIXmFxfDJ7DWEaYtH+lqAmNUYPP
	CMEIWPL9ulRb1dl1VpN5vhR8nzv2M0IXRTQErW93Khb4YMAYi523ipG6zmpV3OOhp
X-Gm-Gg: ASbGncswT5SdxiS+KII1ADXQ9AfMaqKJ/8zHX4uwC2fGG7CJN+qQrTBpOa+xhsgVPTt
	1qYWVXblrWqg9tziUrOPzMa3LEZUhL7yAD5npFJYRNgjIBftvKb5ofeDZnzB/lZSzBQeJv1rsDf
	KYAX+nCE1qJfcmUpHYKJnuyOrejA2ol4F0SStMJ8kB6aitaHRmtFJAw3w8xp2GFEMMPBT7NMiwm
	E73WCds7oArlBRvB9eAb/z5rbcbRUINGpzvtKD/ZUGO8ktrbamMGaYByHsyUuICmEO+xrrfj3+j
	3Z4ojpTwEoug+ZIrHyYaMgDoL//zVayVHCA6tz54DOJIqm+NI0YMTDqcyWMkE71m3vfI0mTDZuV
	rzihkVhn8Qw==
X-Received: by 2002:a17:903:90d:b0:268:baa6:94ba with SMTP id d9443c01a7336-27ed4ab65b8mr164718635ad.53.1759200801559;
        Mon, 29 Sep 2025 19:53:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG9BYMWp6hNCw9FidFOi2WDNeI5c08GRWhasex0PVEvIzKhELgPVQ9in2bgdPZSp3Wkfk1VQA==
X-Received: by 2002:a17:903:90d:b0:268:baa6:94ba with SMTP id d9443c01a7336-27ed4ab65b8mr164718445ad.53.1759200801090;
        Mon, 29 Sep 2025 19:53:21 -0700 (PDT)
Received: from [10.218.15.248] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed699ecacsm144700875ad.109.2025.09.29.19.53.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 19:53:20 -0700 (PDT)
Message-ID: <91821a59-d893-4807-a9da-bf7cb75a30f0@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 08:22:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] interconnect: qcom: add Kaanapali interconnect
 provider driver
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-interconnect-v1-0-4c822a72141c@oss.qualcomm.com>
 <20250924-knp-interconnect-v1-2-4c822a72141c@oss.qualcomm.com>
 <2mq2qqrgm5x4hj2cnstzsqzfk4lmzhg223hmobrjnqu62facc4@p57wbmkys4in>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <2mq2qqrgm5x4hj2cnstzsqzfk4lmzhg223hmobrjnqu62facc4@p57wbmkys4in>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68db4622 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=U-4vxhJDZ8N_SHWVoUYA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: dEDGlq0AE5LmDsaju-m6eROnptj43wCq
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfXzybGC0bq76GE
 22+TmTVQa1uDhLDu5CtC0m5g39Y7I65Ahk1Rv7P/D7L8EJb9gOhd4kgQXAhH/FBAZL1f+OLRH3Z
 PpkZv2vGBNXv426JgXQYgbl5Pg6cQKfFpBB6PcUzksH7qJv+jSi5SKlVh4fwnEPTIJJPm6pkR9e
 dA0mWh3pC9s8fE3vFlBM8pGz71djbAonSePUtLX5IxdQ3X9rUycDDrJAAxJumJL/EmcZkv3oOMh
 ER5+b29NL5Jp9CVwCYca6eTWV8WY1/dIdlbWRvvvE4tw7hHiYnLWBLljJuMp0fYMligAG+pWs32
 bZIDOT2w0LqZBVFFBzot65Bws4S2lMj2LPAr9Pu65kJ3edXZ0la9NABbOijNQoskh1bsYXBTarw
 3IE5GaOR6fyPW8bSQVBDubRZrOuY0g==
X-Proofpoint-ORIG-GUID: dEDGlq0AE5LmDsaju-m6eROnptj43wCq
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_08,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033



On 9/25/2025 8:17 AM, Dmitry Baryshkov wrote:
> On Wed, Sep 24, 2025 at 04:02:45PM -0700, Jingyi Wang wrote:
>> From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>>
>> Add driver for the Qualcomm interconnect buses found in Kaanapali
>> based platforms. The topology consists of several NoCs that are
>> controlled by a remote processor that collects the aggregated
>> bandwidth for each master-slave pairs.
>>
>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>  drivers/interconnect/qcom/Kconfig     |    9 +
>>  drivers/interconnect/qcom/Makefile    |    2 +
>>  drivers/interconnect/qcom/kaanapali.c | 1868 +++++++++++++++++++++++++++++++++
>>  3 files changed, 1879 insertions(+)
>>
>> +
>> +MODULE_DESCRIPTION("Kaanapali NoC driver");
> 
> Qualcomm Kaanapali ...

Will be addressed in next patch revision, thanks for the review.

> 
>> +MODULE_LICENSE("GPL");
>>
>> -- 
>> 2.25.1
>>
> 


