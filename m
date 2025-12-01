Return-Path: <devicetree+bounces-243501-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 321B3C98439
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 17:33:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id A782934016A
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 16:33:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49249334C13;
	Mon,  1 Dec 2025 16:33:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QoW2DcMP";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ODYRs0gI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 004581FBEA6
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 16:33:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764606827; cv=none; b=KMyteK+2gIt1u8qU3nU/WnDfPyOtTDzWb3gso+FXi9GY4V+x4nJbS5xSXpi+8bLViknO6pZeOpS1WBVpWf2RH8KB7C0zOVaoM38j1TxAkJ3X+BjEEZT9BjxFulDFK7EvrpbUeT+yxs4kZvn9vldzYgfXpCrBg6rreKY13NJFV7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764606827; c=relaxed/simple;
	bh=AbhQ62nqAUfgrnUGD/R0jH3mo57htPWPyjSXy4JoUXU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M0FSbotoTmknPqyVV0R/pkSdFtpZK8B+d9GsODKSDIzlNnaKoDFKv2MR5WlP1mhunHrWvMA6mliqS10ZeS4ihkRDS4ARylUf3K1Kk8gloS37B/7h+8YqLLCEhBI1waZaFot/v/YRa9I01PRAhtqCcJM/2U75n/Vt5lvFwQHyOXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QoW2DcMP; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ODYRs0gI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B1Ax8qo343481
	for <devicetree@vger.kernel.org>; Mon, 1 Dec 2025 16:33:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vyef+WiezFSjoN3MHaQMwEyGi2XeionlLLph0yiVFQA=; b=QoW2DcMPKbNzjdPE
	OtiwOf8jYaQlUo+wHUaffpSp/gSj9fgTZCL8q6z4Bcsow+sE/iUtwpCVszARQupD
	JjPEEGU2Ts22IkByqPwEvwI751Tgwwh4xbo3OgElxOTEcHomnr0OmhVekZd9M7uC
	fT6PPkoLEYX8z/iFU8lIh85K3Cxzn1sbFVMDvL2Jr3/JUKY8BHQ3rH0JS2mfmCoj
	4eZYutFX7DiwRfMyT5xNepKNmkPQYSJaFdunii+dwVACJU5jwJWazfVSDLP8de43
	yEh25/cgg/svsvxfmCf6hF87PEgvPkYZpeFp9gD0JMlcG4/OayZuD89TYT4FmRhq
	RjRkLA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4as9re0xs1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 16:33:43 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-295fbc7d4abso54037195ad.1
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 08:33:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764606823; x=1765211623; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vyef+WiezFSjoN3MHaQMwEyGi2XeionlLLph0yiVFQA=;
        b=ODYRs0gIS7/NZtvoSrNLtMS5f6KEZEZkkRJk3SWEBMp5REHWCE7bhI+UcRVx262ZGu
         f2rP1T3HIu/sLW0jWzaMJXZYM2DwQLPXzXnxZr/IrntRTb6barDbQfFozIbyRizlZGNB
         lFdTif41xhyE8p0ESsrx3W3uYY1YcQ/5lxJy1trE7lE2JrUyWR8DMnfVnhxbIxAC4zR+
         SWrIeNvxtsLcg5X5WQIEJBAg6TiB1LQsZKx54jfGX1R6K1ExWveuQqaLgd/dTwBrybaO
         bo0y8lDIIQFP9oyzgVIdtxOOnFBsyeV95alMCFQDY4HQzK2Nxq/qgQrnpKvZfelxOaS+
         fqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764606823; x=1765211623;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vyef+WiezFSjoN3MHaQMwEyGi2XeionlLLph0yiVFQA=;
        b=e8VgCbNd9xt+RECRJULgEo9ScYVBNxWz+8H18Iq53PJUa8whTSzZYqLpuJEMbFgx3y
         BRbCp2OV8Xm9i+jyJVg8tS+acSTySad5fJwecWQlecAhtxn1MUIEz5RoSy6QznY5oVIr
         q6/lOx8p0pmMPFZHGsTt9PyBtaJF6dI/2ZrXdVBHqRrT/pdigaBwZjyO1DMgxCxRJLD9
         g+MRQlXSWMiIUz0QA3QYHoIsfaVAL1ip71X/FjupMmPfiJ6uTlzieP/05kgKsl6ceRtd
         smrMtK5Oq325AVKR3u5ijdg29klei52MFY4YmJfaUXDpLW5IQmrYrYjEn5Vjkl1f2ADn
         /Ajg==
X-Forwarded-Encrypted: i=1; AJvYcCVycLL8z1FGP+Q6z5cXaUj0dCiUxz+igdHEhGeez4vYbZ5NasQGTNEBTsbwSmr9hkECUmoh4khJ8uIZ@vger.kernel.org
X-Gm-Message-State: AOJu0YztXXHLFb3O0o+U+nJgUXxNS46qzUanAqXZSxOJ+mtJdVNz5TOw
	F/Fs0jgrPcq8O94Lz15kgIwiXo65E13IA2xZ4Vd8q1v2bQxLpZD3/lxMD51QlX1KL7RTPQ8XO99
	VlgvdzIuX0+qc6a0mBuseXMBFMYJlvQ90cYV+AJuKDdMg5YagQDtsZf1kd7wFVYV5
X-Gm-Gg: ASbGnctnGV1xTerlPzotTr3LhNnmNL65hv12x8PYOc/HcrA3iUfbdVPX89CPhc6cFNR
	gT+irn1YXytZmZk00tZmyHtTkxrxRfr+kISYyUb872nHl2FwNhPLle2KUxizBeq0+aHeu3WXMvB
	owaU34NHHNQc+iqHQjoI1CwuggUSITfI1ZTCd3i0bsgE79l7tIlajupfun6/BVe4xH8tmVX3FqN
	5QYiOIWpFF9is+IJ3mdaAJSPxKe/KLrBzE2L0jJQJW1mXvlN3l2noCuUK8JvTtIv1lxbFWtjqU4
	ZNhf2K1wjf4I+cnggVqb2rYbmAvX0tqAiDmpssbtoZXeohl/oUYBVJkwROmWS/j0PvRnS6cjR3O
	0EZEtQb6gndqU5/p1DmKBg1pZ84yhCcyx7CcCD50X0g==
X-Received: by 2002:a17:903:f8b:b0:295:6d30:e26f with SMTP id d9443c01a7336-29b6becfe11mr399712465ad.22.1764606822657;
        Mon, 01 Dec 2025 08:33:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IECm2G+ZzwuiAOERajnZ4LvV40yFzTeM81elAzS5lncjpc/qcg3mSpJH3AwBfzITqEiRManfA==
X-Received: by 2002:a17:903:f8b:b0:295:6d30:e26f with SMTP id d9443c01a7336-29b6becfe11mr399711865ad.22.1764606822038;
        Mon, 01 Dec 2025 08:33:42 -0800 (PST)
Received: from [192.168.1.5] ([49.204.108.162])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bceb54915sm128371065ad.92.2025.12.01.08.33.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Dec 2025 08:33:41 -0800 (PST)
Message-ID: <ae8e5120-9e3b-4aad-83ce-32c93e24a566@oss.qualcomm.com>
Date: Mon, 1 Dec 2025 22:03:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 10/12] i2c: qcom-geni: Use geni_se_resources_state()
 API in runtime PM functions
To: Bjorn Andersson <andersson@kernel.org>
Cc: Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mukesh Kumar Savaliya <mukesh.savaliya@oss.qualcomm.com>,
        Viken Dadhaniya <viken.dadhaniya@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, psodagud@quicinc.com, djaggi@quicinc.com,
        quic_msavaliy@quicinc.com, quic_vtanuku@quicinc.com,
        quic_arandive@quicinc.com, quic_shazhuss@quicinc.com
References: <20251122050018.283669-1-praveen.talari@oss.qualcomm.com>
 <20251122050018.283669-11-praveen.talari@oss.qualcomm.com>
 <gwdb27mtmqrt7rt3g5bzae4a3soquy7lwtw6zbjjhj42v3oyrq@qf22i7davz3o>
Content-Language: en-US
From: Praveen Talari <praveen.talari@oss.qualcomm.com>
In-Reply-To: <gwdb27mtmqrt7rt3g5bzae4a3soquy7lwtw6zbjjhj42v3oyrq@qf22i7davz3o>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjAxMDEzNCBTYWx0ZWRfX+xjkoq2t2M0Z
 OykGL7bg93XrdhCisu2/cKkXd4oQmn63Scpmro+wie5/BoJ74FZ7ZRWk4AaIL6clROHXkELICLy
 nnrwTFMgoDINWbGyQKhXMkVVnTZF/u1JJ9RTlyug9O/ysCs29V/uKIuUqGmmAqIr0PKPlTnL26b
 9EB7DvxV+AnF62i+64L7hPkHYlb79RDQeqQ7V0oM8TWd58wwD7wU9H8oTKJg9CBwVI/fJ4BaYzY
 DBu8ODs9tIYb7akav3KK7L6dSX8DZXXZqkvCmKcOMiFMxV2FxNi+BAYx19FtNfQsFwJ9WpriUzE
 nPzmpYe8LS7Jpdnm9e7cXWMlyMef3eopvuwwNVKqxvLXOlOYz5EcALYaSGgnfOlL63lKiUBVUB/
 y9omoAdy5X2lfzS0jRr5IiL7zegCKQ==
X-Authority-Analysis: v=2.4 cv=MNptWcZl c=1 sm=1 tr=0 ts=692dc367 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=PVN08cSn8zglVHm8Z6xkeQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=n_5Q3kagYiSkGmCobM0A:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: Z-a0u-BZCrR1qh7UfjDeB4hZ5r_UqwjX
X-Proofpoint-GUID: Z-a0u-BZCrR1qh7UfjDeB4hZ5r_UqwjX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_08,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 adultscore=0 impostorscore=0
 priorityscore=1501 phishscore=0 spamscore=0 malwarescore=0 clxscore=1015
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512010134

Hi Bjorn,

Thank you for review.

On 11/26/2025 9:08 PM, Bjorn Andersson wrote:
> On Sat, Nov 22, 2025 at 10:30:16AM +0530, Praveen Talari wrote:
>> To manage GENI serial engine resources during runtime power management,
>> drivers currently need to call functions for ICC, clock, and
>> SE resource operations in both suspend and resume paths, resulting in
>> code duplication across drivers.
>>
>> The new geni_se_resources_state() helper API addresses this issue by
>> providing a streamlined method to enable or disable all resources
>> based on a boolean parameter, thereby eliminating redundancy across
>> drivers.
>>
>> Signed-off-by: Praveen Talari <praveen.talari@oss.qualcomm.com>
>> ---
>>   drivers/i2c/busses/i2c-qcom-geni.c | 28 +++++-----------------------
>>   1 file changed, 5 insertions(+), 23 deletions(-)
> 
> Nice to see such stats, which I presume will also show up in the other
> SE drivers later as well.

Sure.

> 
>>
>> diff --git a/drivers/i2c/busses/i2c-qcom-geni.c b/drivers/i2c/busses/i2c-qcom-geni.c
>> index 790cbca2c22e..ea117a4667e0 100644
>> --- a/drivers/i2c/busses/i2c-qcom-geni.c
>> +++ b/drivers/i2c/busses/i2c-qcom-geni.c
>> @@ -1166,18 +1166,15 @@ static int __maybe_unused geni_i2c_runtime_suspend(struct device *dev)
>>   	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
>>   
>>   	disable_irq(gi2c->irq);
>> -	ret = geni_se_resources_off(&gi2c->se);
>> +
>> +	ret = geni_se_resources_state(&gi2c->se, false);
> 
> As I said in the previous patch, there's no reason to "set state to
> false", it's clearer to just have an "on" and an "off" function.

Sure. Will review and update in next patch

Thanks,
Praveen

> 
> Regards,
> Bjorn
> 
>>   	if (ret) {
>>   		enable_irq(gi2c->irq);
>>   		return ret;
>> -
>> -	} else {
>> -		gi2c->suspended = 1;
>>   	}
>>   
>> -	clk_disable_unprepare(gi2c->core_clk);
>> -
>> -	return geni_icc_disable(&gi2c->se);
>> +	gi2c->suspended = 1;
>> +	return ret;
>>   }
>>   
>>   static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
>> @@ -1185,28 +1182,13 @@ static int __maybe_unused geni_i2c_runtime_resume(struct device *dev)
>>   	int ret;
>>   	struct geni_i2c_dev *gi2c = dev_get_drvdata(dev);
>>   
>> -	ret = geni_icc_enable(&gi2c->se);
>> +	ret = geni_se_resources_state(&gi2c->se, true);
>>   	if (ret)
>>   		return ret;
>>   
>> -	ret = clk_prepare_enable(gi2c->core_clk);
>> -	if (ret)
>> -		goto out_icc_disable;
>> -
>> -	ret = geni_se_resources_on(&gi2c->se);
>> -	if (ret)
>> -		goto out_clk_disable;
>> -
>>   	enable_irq(gi2c->irq);
>>   	gi2c->suspended = 0;
>>   
>> -	return 0;
>> -
>> -out_clk_disable:
>> -	clk_disable_unprepare(gi2c->core_clk);
>> -out_icc_disable:
>> -	geni_icc_disable(&gi2c->se);
>> -
>>   	return ret;
>>   }
>>   
>> -- 
>> 2.34.1
>>

