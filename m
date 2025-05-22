Return-Path: <devicetree+bounces-179585-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EB2C0AC0DFB
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 16:24:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2F54D7AA582
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 14:23:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A4E28C2BD;
	Thu, 22 May 2025 14:24:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wm9SjnmP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C4EC2343BE
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747923870; cv=none; b=a88kPnQlW091kqaWG40CfyxQnDVubWGVQSnEj/7yRYYxQYCBG/jrHl9aapraqXRKx5GbwilmKzF5JnOz0GQVEA1lbskzXIEw2wel0nQmYasUfAFWsjDKozHWOo5hjNASvykpVxFs1g0OXrcR8I0ORJzWX+4yzWqfSgONvPjVqK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747923870; c=relaxed/simple;
	bh=VXj41DTxk2nVxmBLHxxvZ8NS1geBQOG8UQQmKvy2P/g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DmJQsxMP6w0dP+j+/rjTpY5BblT1aOsm1oNGDR1TdKmlBLk6YgDotrPeJF2DupvwUlaKTAtC3QCxvGYP3ofd2Z8aHbyC/gFuYqJkPmX4KmA5IZnf7Qj81XRXEt8RqwCmq2YXwgd7Bvsq4vGwvDH8/SCq4ld00RtvELAUz6TJabk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wm9SjnmP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54M7CuGT020973
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:24:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Kn3C81CMXKXbBKQs7ygohrAuPf0DoUyEhaA1DlF3qOo=; b=Wm9SjnmP3hn7PMvE
	Dn5UXC65rGjXq3zKWimLmwyCuA6Lq1F0585Lob51I00/+hdupRAR4TEZLM1+pj+S
	W0YzrkQPePiGYSK5NFcS7NQ5wOArseekhIB0u/t06BWPAE9Vq1C29rtfYsW1CcOJ
	kyiP3FanAnbYgV0xHZPh+t99IuKYyOfMckbq+aNQdjoDVr/+CAfgGPBTlBcM7SFp
	Nbp4Az1+x3RgyAh8s6wQ3lTAKoPv8qIFOjmRnj91RxtVfah0dP3wc11v5HD+SMyf
	qbjSlS/ixvGm0IQR+CoQQ23vPYJHAyF+Yq53FnCwSp+7B0h/lS0QbFdeBm/lbPAk
	M2zCeg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf06stu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 14:24:28 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c545ac340aso75942185a.1
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 07:24:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747923867; x=1748528667;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kn3C81CMXKXbBKQs7ygohrAuPf0DoUyEhaA1DlF3qOo=;
        b=AqHjhHT0ycF5GE0P3xLPgMqWqBpJYKMry7yguDZkJE4UALB34M3VI+5ELuBTyP/cuP
         9PjZtmaFBxRa1MKwZtNJoKJc5i37NMKd/JusFahmXk7N9c/Zl/Kqp7QHYYl0g+C5Us4v
         57HWY8rZz7XFx86v8Lx8FOsyN+Yn9xAbpPa79bxpDvCzPqOB8MWLumtkB7q2cZIT5tFB
         ETwLlsOu5dItk4pqek1Y7fuuyoxaxVxf10fKoOn5H7YvYYNbdi9IBYZtghucohMBfXmi
         OBx9TYfBie01oNiqdeFO2E0Qoi3fOEMHKkR3twPWw4KrouWfqjzxLCMefyii/qKQWRBl
         x3UQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmbxxIFWHGqL0k9uk1sYONvZvKTZIYlE1aTvZJgvLyvY/GsY2qSMxrLlBZuFLBEXvOIj+zJIRGvBVQ@vger.kernel.org
X-Gm-Message-State: AOJu0YymkXWTDFGnYTHHDs3VrUdwmF9Jv8xDGJFJ0JPpOZZLILwqd3jI
	NlgKmuTowE92csKgjo7nBWvx0/7Tp473doMxtdkvj0PB7QrOe/R8WbgSqz0hLfSROOpWCAFH8AP
	3UdfKWDtpmcT1+PNTCzAXZnRLgHuyu+f4tpVcsJk3PmmOjEZ79WwWbE1yt0QCOLSs
X-Gm-Gg: ASbGncuw85Ef071/ShEYJiP3lqw4xJlr2k4LHD2SDLSFIWp7sJGZWO5q93WbTcvNLzl
	rWji1RVoMPDOMcU3fZk6EYpvTtt1v0Ao6Gy2oXA3Ys2tXdG4xEDpZ18y+r1vd9IdFuZu9zSOmha
	tnLxpYVMDDf5h7rvQKxn+420GI5stGo6++0G4LctlNgGDeAw8ANYy3gJjkpCAm/Y7IMVW/5Zl3m
	y5b5BZsX7PGN8vbjhis7oK8cajU5S3lG9lkkCFKw93e2uZyqNKglO8tHcCzmb0KDB7fJeqtEtsi
	rKZIdnqYtpnv7ObQIICzc95QY66cTNPMSVYFtTaOS0fTUK9tN8WHjy4z4K6DrzG4vg==
X-Received: by 2002:a05:620a:2605:b0:7c7:5384:fa53 with SMTP id af79cd13be357-7cd4671f6e4mr1567814785a.6.1747923866950;
        Thu, 22 May 2025 07:24:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFn3Be9JZztiH6LZx2/DqvBpQZs5qyZUJI7lo8uvnzpNrUGACIobPlQCI9fOwzq9+sWXwBh0g==
X-Received: by 2002:a05:620a:2605:b0:7c7:5384:fa53 with SMTP id af79cd13be357-7cd4671f6e4mr1567812785a.6.1747923866522;
        Thu, 22 May 2025 07:24:26 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad52d44200bsm1081105066b.116.2025.05.22.07.24.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 07:24:26 -0700 (PDT)
Message-ID: <3684b6c5-91c1-44b9-aab5-b768db9fd08a@oss.qualcomm.com>
Date: Thu, 22 May 2025 16:24:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] soc: qcom: qcom_stats: Add support to read DDR
 statistic
To: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
References: <20250521-ddr_stats_-v2-0-2c54ea4fc071@oss.qualcomm.com>
 <20250521-ddr_stats_-v2-1-2c54ea4fc071@oss.qualcomm.com>
 <c4442c3b-4f05-4031-8b1c-243e3028fc78@oss.qualcomm.com>
 <d70da81f-29a6-487c-9781-c2fda6327a75@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <d70da81f-29a6-487c-9781-c2fda6327a75@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: sC9FX5TV-9vAJBL4j79wpUdaemCrHY_f
X-Proofpoint-ORIG-GUID: sC9FX5TV-9vAJBL4j79wpUdaemCrHY_f
X-Authority-Analysis: v=2.4 cv=ZP3XmW7b c=1 sm=1 tr=0 ts=682f339c cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=HmYs3LRdz1ZYokrEnt8A:9
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDE0NyBTYWx0ZWRfX1P4LPvCvoL72
 KVhfAWeV3i/y42CQRiMEuoJ2gqUCygNIg8Uoana6BMmZu4cEjikpuU2mxJMWVXzGGNjaWo/yxYV
 l936JbkegGPsAyYD1niVabwFRaWbUFbh1LvQeKNDjm8IzuFwgmmNNPDCHbnS+c1pRgDG1MBK2o1
 rEA30W6oOeAdz70f9mSpDMDc6jmaGWYzD43gADu4LAn9UgQzSkoD10xMC5j7dgWjhdSxZrZXHdS
 iHotQUcAB0Cu3+k0tJI2KJaZgkwByNrzSLRKa09KjRGHYz2KM9EH5dWp4chs06YUswz5/WptCqM
 l/iMK1FIBXegsggt2JXxJOpQU0tMvaB+lfOF0l5I9lONAyARvcLE/eedPB7fLzd2idZuWy5Ypqt
 qQEpEAWffTZCQIoKTKU29g5gXY0g1s2PXkRKj1xMlzBlbDd2vrvm3E7kk2M8mA7Qqllkiy7m
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_07,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 adultscore=0 mlxlogscore=839 suspectscore=0 bulkscore=0
 impostorscore=0 phishscore=0 spamscore=0 mlxscore=0 lowpriorityscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220147

On 5/22/25 7:48 AM, Maulik Shah (mkshah) wrote:
> 
> 
> On 5/21/2025 10:31 PM, Konrad Dybcio wrote:
>> On 5/21/25 10:32 AM, Maulik Shah wrote:
>>> DDR statistic provide different DDR LPM and DDR frequency statistic.
>>> Add support to read from MSGRAM and display via debugfs.
>>>
>>> Signed-off-by: Maulik Shah <maulik.shah@oss.qualcomm.com>
>>> ---
>>
>> [...]
>>
>>> +	case 0:
>>> +		seq_printf(s, "DDR LPM Stat Name:0x%x\tcount:%u\tDuration (ticks):%llu\n",
>>> +			   DDR_STATS_LPM_NAME(data->name), data->count, data->duration);
>>> +		break;
>>> +	case 1:
>>> +		if (!data->count || !DDR_STATS_FREQ(data->name))
>>> +			return;
>>> +
>>> +		cp_idx = DDR_STATS_CP_IDX(data->name);
>>> +		seq_printf(s, "DDR Freq %uMhz:\tCP IDX:%u\tcount:%u\tDuration (ticks):%llu\n",
>>> +			   DDR_STATS_FREQ(data->name), cp_idx, data->count, data->duration);
>>
>> clang complains about both prints:
>>
>> drivers/soc/qcom/qcom_stats.c:173:7: warning: format specifies type 'unsigned int' but the argument has type 'unsigned long' [-Wformat]
>>   172 |                 seq_printf(s, "DDR LPM Stat Name:0x%x\tcount:%u\tDuration (ticks):%llu\n",
>>       |                                                    ~~
>>       |                                                    %lx
>>   173 |                            DDR_STATS_LPM_NAME(data->name), data->count, data->duration);
>>       |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>>
>> drivers/soc/qcom/qcom_stats.c:181:7: warning: format specifies type 'unsigned int' but the argument has type 'unsigned long' [-Wformat]
>>   180 |                 seq_printf(s, "DDR Freq %uMhz:\tCP IDX:%u\tcount:%u\tDuration (ticks):%llu\n",
>>       |                                         ~~
>>       |                                         %lu
>>   181 |                            DDR_STATS_FREQ(data->name), cp_idx, data->count, data->duration);
>>       |                            ^~~~~~~~~~~~~~~~~~~~~~~~~~
>>
>>
>>
> 
> I will update correct format specifiers in v3.
> 
>>
>>> +
>>> +	key = readl_relaxed(reg + config->ddr_stats_offset + DDR_STATS_MAGIC_KEY_ADDR);
>>> +	if (key == DDR_STATS_MAGIC_KEY)
>>> +		debugfs_create_file("ddr_stats", 0400, root,
>>> +				    (__force void *)reg + config->ddr_stats_offset,
>>> +				    &qcom_ddr_stats_fops);
>>
>> else
>> 	pr_err("Found invalid DDR stats magic\n");
>>
>> (because through the compatible, we much expect it to be present)
> 
> The qcom,rpmh-stats compatible does not guarantee the DDR stats presence. DDR stats is only present if
> magic value matches. The ddr stats was incrementally added over time so older SoCs like SM8150, QCS615
> will not have the ddr stats and would end up printing this error during boot up but yes all almost all
> rpmh targets do have the DDR stats present. If we are ok to print this error for older SoCs i can add it
> or how about using pr_warn instead of pr_err?

OK, Let's not print anything then

Konrad

