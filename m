Return-Path: <devicetree+bounces-178797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 47394ABD405
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 11:59:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B86273B259E
	for <lists+devicetree@lfdr.de>; Tue, 20 May 2025 09:59:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E1825269AFA;
	Tue, 20 May 2025 09:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VhBsdHFJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FC6D265CA0
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747735173; cv=none; b=GzvXP3qjirskmpAoWLe7v3yOt69S6bbTMjJhL9HA1XGFTJ/FvdqMUG6lH5TO++6CfvpHK5oiV4xsne2eekWl45c96uDOIaHCPhQ26CiU5XhrkDyhAl8EvoL54YQ2mOSK86eOLmp4jrqoYD/fD9sCsrf2v+jnxAsHL27/T7MER6w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747735173; c=relaxed/simple;
	bh=lH7x/Wo0CZ05NHk7+smtqoWoLqjABA8L5UWZE3AonbY=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=iF5RMFNXaZXkosAQskR5Eb25wHQnKLTSQ+lGrwnqNngi1jSmuAyJI5TeINvG6R8nhJdQDz5OBpCqCz9KCopbedVf++Kjou/R+FNAEAZl9WGfbiXPqCQQuJEuUFhpRft5/ESOU1gaD7HBE271NUw5kOFH2+eV0DGdAEydEKC+XLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VhBsdHFJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54K7bUB4006013
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:59:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jv3cua+BYR/31GrwxUJ8YoNbjglNl0IAz5i1xrlz600=; b=VhBsdHFJc68jk8CB
	S7abyPgti+NGobuuwFsxEsvmQm9ceXRyA36xP5ybK8FXjuo/jLTnunnuNWZNvVhK
	gdvLV91YEVUU960e+Z540NRzrcPP/E3GomdQuBqHWrDyN3P+KgZkO5EzDsB/fgT1
	7BHEkHcdkJMWEcq5Yc+mSS/ba6kJzCrfvpO2n0PMVahsmBij/xQ3g/BjredQx18f
	2UaHGjzZJfyHqsE6pAfdKSKp2M0ZUVDOAEiSRrIsVMOePP2z1+2/CKKgLVIKvkd9
	HDWCSyKfCMMozXC5W4EFqff++I1Wr72MJjfylYyFfEw/PLvdEyUJZh14I0XEgYgH
	p6geOg==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46pjnyqc10-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 20 May 2025 09:59:31 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2322a7b0735so34922255ad.3
        for <devicetree@vger.kernel.org>; Tue, 20 May 2025 02:59:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747735170; x=1748339970;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jv3cua+BYR/31GrwxUJ8YoNbjglNl0IAz5i1xrlz600=;
        b=qwKHzcB2xMRS7kkio78mvEkU8vqfKJERxFgYlBieJlEnGsuU2OrGDIhVxAsspsoI6a
         Rlci309aGgPv4wlyn9wKcV0vTjbmQ62IcjbyBvkghoWPRf7H1c79z8SNOzpx7jgeMLI5
         zE9G6vNEi7O2HZVed/urQcyAlnuOUDm1QjShIeVkOP8gKpN9wo8uR9dCFKac+nAukd00
         r+213pCmtP8/2Bc7PSvBers1WOScmUP4Mpi98FgoXv1fkKWEh2pXqaSq95Iq+QE6Ad7n
         zeHVPUN1IOn5SFxFWdOGP20c3i9mUhW5wOUrGmw2lgVQrCrLu4MfTU7c19t/YV7MyXRN
         zSfQ==
X-Forwarded-Encrypted: i=1; AJvYcCUPGHmL7ZXySxbW65TjucBcKtVhW4CTjgImOpi/6L8pPlajv+2H0pm9ONwWFDbOJv7RDnwTwCow2Xhn@vger.kernel.org
X-Gm-Message-State: AOJu0YyJvyee0FwRxUPb4rxN1ASM4Rld19NDkHAwGv9Xws6nyy2+GtrC
	6rBzVwvW+6KSk+0CA28UiJA3BUFYFZrOH/LZ90j5gAQadS8uVmJP31a6vf8VCKddlCy/wNfA/P0
	fFrZU3Xo3GFAL0l0OnBVG8O3Qy5QgRPbXZlbbRoFy9krjVjRZBW5zMsR+EibUkeQI
X-Gm-Gg: ASbGncvNjqT6Jcg8JO8BllrHF+fEeAHoD26QvwHxZd0CLWj6EeimB07Gh+TDK3ArWE5
	5bTxbHz6pSFF5mglY1mNloZT2J5O6K/uN1457y1/fY7e7yL/NWRtb/dVRQJuU2hyhIjTG68Hdbi
	vNN9ftNADjZDpLsGVsXc6+ghVuJ0orWkDEJdl5cTxGHztnTL9y+v4QavcMybs3wRpOL9u0esA2O
	Od4QHevyKLDp2ZHGt0fFCKogxVSIE6d/mxr7lsan5K2+dWtknDZwH8pjGfiddpEvwokHzCAzN8m
	8abnRqU57jM7AYj/z/z/DDUDuI6r0p1xu+3j
X-Received: by 2002:a17:903:46c6:b0:224:10a2:cad5 with SMTP id d9443c01a7336-231d43dcae5mr251622965ad.10.1747735169821;
        Tue, 20 May 2025 02:59:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH1zNkmIzglmpHCldY51C3CQJv11RUYjL8aNcrJibJIP0RRhYEje06LWOqz1EVMX0ZVKwW1ug==
X-Received: by 2002:a17:903:46c6:b0:224:10a2:cad5 with SMTP id d9443c01a7336-231d43dcae5mr251622685ad.10.1747735169435;
        Tue, 20 May 2025 02:59:29 -0700 (PDT)
Received: from [10.218.34.181] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-231d4afe887sm73495865ad.88.2025.05.20.02.59.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 May 2025 02:59:29 -0700 (PDT)
Message-ID: <890b9e41-d5a2-4df3-bb21-71642b4e6410@oss.qualcomm.com>
Date: Tue, 20 May 2025 15:29:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: "Maulik Shah (mkshah)" <maulik.shah@oss.qualcomm.com>
Subject: Re: [PATCH 1/3] soc: qcom: qcom_stats: Add support to read DDR
 statistic
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Doug Anderson <dianders@chromium.org>
References: <20250429-ddr_stats_-v1-0-4fc818aab7bb@oss.qualcomm.com>
 <20250429-ddr_stats_-v1-1-4fc818aab7bb@oss.qualcomm.com>
 <b3119bef-d045-467b-91cf-37fe6832ff63@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <b3119bef-d045-467b-91cf-37fe6832ff63@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIwMDA4MCBTYWx0ZWRfX1jOn6HiQv+Fo
 jVQH4/9FjM+uszsmkvVBp8V8X70jrWdvqmfJXhMahCiM2bYt46Su/0RQ/KfQjHFWczpExwjQ0sH
 1covbLQ8CAQdeCr/53WzbTkhuFoEXwM9tJ4Mj93ixguxSMY0nqioVMM3GzQ+kPG4BgeXBHaVA9G
 mh6S0J64yL9ObfnIzFlZczyynkFwF4F1Vo3/zGQ5VWHnJENybRaUVq/lfI6UdgJVQOscOHngF2L
 1FaHDGbw8OeFmAA6AoXIqsMZH0KMmzL0yi23peO+s7mOTfoAdIK2W5vU8Sr0/JGvRZUxolQdsSG
 0GgoUGy8StPQVpJBWODpoahNuMKD4Mlt+2YvupUDu9KyBgLUSZ/0x7++/UGVSAhFuOVTlC6m/zn
 ikBGmlc3TLv1tiMGdXIQUUMY4EZNJ7kOZTDEd5m61egqxMEQHeyiv9QYNrpAgEKGnFZCbOj0
X-Authority-Analysis: v=2.4 cv=Z9XsHGRA c=1 sm=1 tr=0 ts=682c5283 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=cm27Pg_UAAAA:8
 a=gI0cpxkbm6pSp9-x3_4A:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: G-ZQkaNyxlbv1KzjkxUt9j_ClXvK9m_H
X-Proofpoint-ORIG-GUID: G-ZQkaNyxlbv1KzjkxUt9j_ClXvK9m_H
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-20_04,2025-05-16_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 mlxlogscore=999 mlxscore=0 priorityscore=1501
 adultscore=0 impostorscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505070000
 definitions=main-2505200080


On 4/29/2025 4:04 PM, Konrad Dybcio wrote:
> On 4/29/25 5:52 AM, Maulik Shah wrote:
>> DDR statistic provide different DDR LPM and DDR frequency statistic.
>> +#define DDR_STATS_MAGIC_KEY		0xA1157A75
>> +#define DDR_STATS_MAX_NUM_MODES		0x14
> 
> Numbers (count) make more sense in decimal
> 

I will change to decimal.

>> +#define DDR_STATS_MAGIC_KEY_ADDR	0x0
>> +#define DDR_STATS_NUM_MODES_ADDR	0x4
>> +#define DDR_STATS_ENTRY_START_ADDR	0x8
> 
> [...]
> 

>> +	 */
>> +	name = DDR_STATS_TYPE(data->name);
>> +	if (name == 0x0) {
>> +		name = DDR_STATS_LPM_NAME(data->name);
> 
> I'm not super keen on reusing the 'name' variable, maybe turn the
> outer if-condition to switch(DDR_STATS_TYPE(data->name))

Okay. I will use switch-case.

> 

> 
>> +}
>> +
>> +static int qcom_ddr_stats_show(struct seq_file *s, void *d)
>> +{
>> +	struct ddr_stats_entry data[DDR_STATS_MAX_NUM_MODES];
>> +	void __iomem *reg = (void __iomem *)s->private;
>> +	u32 entry_count;
>> +	int i;
>> +
>> +	entry_count = readl_relaxed(reg + DDR_STATS_NUM_MODES_ADDR);
>> +	if (entry_count > DDR_STATS_MAX_NUM_MODES)
>> +		return 0;
> 
> -EINVAL
> 
> Konrad

I kept this return as success from details given in commit message of [1] 
which made the qcom_subsystem_sleep_stats_show() function return 0
in order to run command like below to collect the stats without interspersed errors
grep ^ /sys/kernel/debug/qcom_stats/*

The same may break if return error from ddr stats too.

[1] https://lore.kernel.org/r/20230119032329.2909383-1-swboyd@chromium.org 

Thanks,
Maulik

