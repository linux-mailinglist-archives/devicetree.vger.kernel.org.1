Return-Path: <devicetree+bounces-163548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 58094A7D33A
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 07:00:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E50803AD0AA
	for <lists+devicetree@lfdr.de>; Mon,  7 Apr 2025 05:00:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C192314F123;
	Mon,  7 Apr 2025 05:00:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RzT4Nn9e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161828494
	for <devicetree@vger.kernel.org>; Mon,  7 Apr 2025 05:00:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744002051; cv=none; b=fYxgRNrmEja53Se47hBrZtFeD9XzdAyHNpJhIJPWP9yjM+hHd6L8OFLAkbMgQzrQylcqAPce6w/0FbbQmdt7ntro4X2EfT9jL5UVTIhPEOaciB/F2pk9EV2mdZpm79pSeFK0+ZF+J1swFn7TZeX24moBXJFb2i0aJo9gN0l/47s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744002051; c=relaxed/simple;
	bh=f9FLUr9JHh4KPmF0pAf5Tib5RtqWE3Aqplq2M7SyWs8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jTXCZYpEizt/iMjbKGACQPzsKHiZbkQxFsrWCKbWlSJ9KE+NHqi2Samw48F51/9O4hHwObT36UkHG11CzJzC4GDViE8ktF4Iq6qyaUdbyHcBYtABMBj1WU3m/Df/qqJprDTJCVghEFKvzvKhUrHoCr4XPJFUhr5CA01RQa4RVPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RzT4Nn9e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 536NKwbA011733
	for <devicetree@vger.kernel.org>; Mon, 7 Apr 2025 05:00:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	XPG+KNjvl2uOoYVxg7pkjx2MUlutCIk4Vr5rHK6eEBM=; b=RzT4Nn9eAzD9HHMa
	HSrT9GJ0IcJcX2aOpC4kuRb/Jd6fS61GH9pY69Ldb00MRUU1TEvD0aoEa4+wy0V2
	XiFv+0zL3WiTlyihFY5mbXOIuGzMi3aEslN9NhReBzkDHUre1VGzlkeq/40n8CFm
	ubeN/s5oFjq/Jii2UfTpzNDiny3CeZ/u8+pmhqVyL7Yhg1H7UWeesJWRfO25jk5O
	7a1NWQxWLOHCcKUsvUaRkmJLP7K6VsMGvV0ldZ/jNS5KALSftxZL26tkPxRHz/mT
	puqu5jqEoIfZgkclLIC+G+/kQcvhOELJmJfkxn/y7BnMvEap1JzO9qK3YuH1E86F
	5i7W2w==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twdgayrd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 07 Apr 2025 05:00:48 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-223fd6e9408so37357535ad.1
        for <devicetree@vger.kernel.org>; Sun, 06 Apr 2025 22:00:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744002041; x=1744606841;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XPG+KNjvl2uOoYVxg7pkjx2MUlutCIk4Vr5rHK6eEBM=;
        b=b0UMoW2ai+eG5A+jfHLvFcjm5jCYGInzyJG9eBKeNV6IJ0T+MhlbGhuk60NQxK4I89
         eB6pLWds7c+KqXJ+W5Xdixyaevj/KE+8cfxp3dAVUxy0nVzBS6vH3RZ0SGsFTxStDOt4
         rzas6/ReQQFOki8z7boi+jiYOUkTfm3uJmob13sKJjq37eXNVMAjPzb61qLRfFyHJiTk
         2EIVeG1if26QdodW/W7TJh1DX+gUdWjJzrSxajU5+hL5kebJJdJLDpRmSLRW/Cz98C96
         tK9P5yCXjHiUiTLj6leNBdWG40f+5KcCNV9cZQ1WBHKZ/9+o+PCxSL4QOr4ocIr5jyQW
         mrmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKGECDKjCkuX0QBbDqddW9Pvo8GdF3Ci8U3PHEO0GMz/iaMeWUNk9yhBdjKpJCz2nYRYmr28L5do6g@vger.kernel.org
X-Gm-Message-State: AOJu0YyOhl0loIjd0Eu1WS3HVNQXpVvjZ9u9hwlyv4ZHCAmjM3e2vwIA
	EdxmdM+s2EWwk9nNB1npNLTpEAOjyC7NOi+RDUCNHMORNpxaOSkt6Qsap76RQBR1U5A8nJL7vRB
	pw+6vfHz9kFvnTLZhaLxitayH+QrCWtsmq7HH3ut4UMRk+gC9jJXQQHod/geN
X-Gm-Gg: ASbGncvxHtu2Vk4CCXePbRZYh/r2QZTJXlw2uhgLuzG40k3MwNYatKu0KqGM+1foTn/
	+ajFNJw+jAGncc8FMVBwGu3VPWO0XNBOIXed4jm9QaLNDraFWQXT3GriZBf97Plt1HNHe+FPyu7
	fjIW6GdQWtPekhqiJCu/CzqXQfiiO346xm3Dscnyoy8bFMqBHfu5P+W5HytH0hTR+L3DIQec9Ox
	6OQX0YBf/d1dTsIr1a5rjBlqfdh4UuKHZlC89xN9ZOJ9h7i+ITmDNzAkXGvTLcpWCHGg4Wayp1Y
	/pYIbTozHWYcXiJpHUblOdhYYX5f4KLhYfQhyXy4nBrc
X-Received: by 2002:a17:903:1b0e:b0:224:3d:2ffd with SMTP id d9443c01a7336-2297660f59bmr209706235ad.17.1744002041058;
        Sun, 06 Apr 2025 22:00:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHG3Z9u/HwCpfZAjz4oPU4NfpleqOHBQXXQAU5P8eH/nEpn2HytVe4I1iGQdqVu2jL4z81qtw==
X-Received: by 2002:a17:903:1b0e:b0:224:3d:2ffd with SMTP id d9443c01a7336-2297660f59bmr209705925ad.17.1744002040666;
        Sun, 06 Apr 2025 22:00:40 -0700 (PDT)
Received: from [10.152.201.37] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-739da0b45b4sm7517729b3a.151.2025.04.06.22.00.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Apr 2025 22:00:40 -0700 (PDT)
Message-ID: <1869a579-40aa-4b73-a503-a1e781a0537a@oss.qualcomm.com>
Date: Mon, 7 Apr 2025 10:30:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 4/8] soc: qcom: smem: introduce qcom_smem_get_machid()
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250403120304.2345677-1-gokul.sriram.p@oss.qualcomm.com>
 <20250403120304.2345677-5-gokul.sriram.p@oss.qualcomm.com>
 <63831566-2975-4ef8-9057-239e0603adee@oss.qualcomm.com>
Content-Language: en-US
From: Gokul Sriram P <gokul.sriram.p@oss.qualcomm.com>
In-Reply-To: <63831566-2975-4ef8-9057-239e0603adee@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=PJgP+eqC c=1 sm=1 tr=0 ts=67f35c00 cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=GGSKKsJ9ZFKbGOncAKIA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: nFays3Ep6pfNVOJUXQ7X_OZobgKghlst
X-Proofpoint-GUID: nFays3Ep6pfNVOJUXQ7X_OZobgKghlst
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-07_01,2025-04-03_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 malwarescore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=922 bulkscore=0 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504070034


On 4/5/2025 4:15 AM, Konrad Dybcio wrote:
> On 4/3/25 2:03 PM, Gokul Sriram Palanisamy wrote:
>> Introduce a helper to return the machid which is used to identify the
>> specific board variant derived from the same SoC.
>>
>> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
>> ---
>>  drivers/soc/qcom/smem.c       | 26 ++++++++++++++++++++++++++
>>  include/linux/soc/qcom/smem.h |  1 +
>>  2 files changed, 27 insertions(+)
>>
>> diff --git a/drivers/soc/qcom/smem.c b/drivers/soc/qcom/smem.c
>> index 592819701809..327f7358191d 100644
>> --- a/drivers/soc/qcom/smem.c
>> +++ b/drivers/soc/qcom/smem.c
>> @@ -827,6 +827,32 @@ int qcom_smem_get_soc_id(u32 *id)
>>  }
>>  EXPORT_SYMBOL_GPL(qcom_smem_get_soc_id);
>>  
>> +/**
>> + * qcom_smem_get_machid() - return the machid
>> + * @id:	On success, we return the machid here.
>> + *
>> + * generate machid from HW/SW build ID and return it.
>> + *
>> + * Return: 0 on success, negative errno on failure.
>> + */
>> +
>> +int qcom_smem_get_machid(u32 *id)
>> +{
>> +	struct socinfo *info;
>> +
>> +	info = qcom_smem_get(QCOM_SMEM_HOST_ANY, SMEM_HW_SW_BUILD_ID, NULL);
>> +	if (IS_ERR(info))
>> +		return PTR_ERR(info);
>> +
>> +	*id = ((info->hw_plat << 24) |
>> +	      (((info->plat_ver & 0xffff0000) >> 16) << 16) |
>> +	      ((info->plat_ver & 0x0000ffff) << 8) |
>> +	      (info->hw_plat_subtype));
> FIELD_PREP + GENMASK, not raw bit ops, please
>
> Is this format specific to this usecase, or is it used more widely?
> If the former, it may be better to export these variables separately
> and combine them into this specific combination of fields in the
> consumer
>
This is specific to this usecase. Will use FIELD_PREP and GENMASK.

Regards,
Gokul


