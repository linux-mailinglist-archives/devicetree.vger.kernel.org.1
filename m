Return-Path: <devicetree+bounces-245336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E25D1CAF621
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 10:04:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D0ED33019B47
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 09:02:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04960279346;
	Tue,  9 Dec 2025 09:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SjPiMIfq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="P1iKUsVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5460A277007
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 09:02:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765270959; cv=none; b=pPcF7mu3zVuyhXDY7zFN7yBw13Yff/8adpgD6P/059Ri6mH3Wh1jfHuMnYug46lHhIa07M0+nJxBtN9WVGJnQwRzn6RVILExze6WvwHXv1Zn3A5AI25lRY7g5I9UC+6UZI8kc4bCt6lTD6G+oPyhTBlUyVyz1p1WX2umAxtycwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765270959; c=relaxed/simple;
	bh=EtTv7vNEzQMUejWJsJu8WCawWuLh0PKnt37hkY8faZs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QIGufrYqRKQQ/R0IZgqaa/q1mmmtH5b7ZnwZrtQk9zqPbW6uFyH7pfrnL+l28I93oSdb+P2EWgLpiByAoEHMUCuN5K2qbfPOrLYqICBtT0yWiRXz0sr1BJ0IUUjTwJNuZ7OBC/bYAUW0+Zb0/6liX02aacl4V/5MoA2JumgQizc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SjPiMIfq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=P1iKUsVP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B98jUUO3021739
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 09:02:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Tjn5t+EqGVO41CN3VxibifbWGxwt18O6GEv39Vxr8zo=; b=SjPiMIfq/BEvEaca
	ecXb40cLK/160ttgpfBV6J6KO5sMjNy4ijd707tQ3K/zTYiCFca3N4jbQDBvFT5g
	RZAI2p/RYEXglsLeiRRVauF2NGfZkuGqy00Wj0HGPXFSIg5ci5BZ9wLDrV5PsWFz
	ZDcxY93xt5/Sw92CR4JCsaupEHrBBelIdThit6XJ3VW93MHG5In211tTlL6dWjzQ
	zlDaK5yepK9feoJ6Ro3iYJsnM0QlF7pzbZdySCav9N1wWJZCvVvJliImghWcNTIU
	d4G4b1SCRraaFJGWhEINz6a7vSCu/VjGE9V9Td38Unbk+wN7EpfDK164Mz+H44NM
	PypzZA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ax63v9s62-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 09:02:37 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297f48e81b8so74210565ad.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 01:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765270957; x=1765875757; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Tjn5t+EqGVO41CN3VxibifbWGxwt18O6GEv39Vxr8zo=;
        b=P1iKUsVPMOd8sHGTn25o6bG5sg0hvOBqh9PJtgsBQZuAqatFXWdJJ7Ayzbwdh68yjJ
         JjYxGEdyfyXPrr72kkLgFhjDZ8C90uYSKWzHgxSM6e7bVvtbnPrTlATMZOuJS53W33AR
         TLOAS25TeLudMZu30CxJj9hM3tJCe31vXh6/In6mLx2MbT2OYcnliPjdBSmrZgez9SQh
         Lc+4HOdKwhAYDCNvGupZj96s2PJcHlLmquK8mI8yeeheymaECnP1SlSv5aB68yad3H8F
         r4qSJh9G6iPY/Q2kA02h7cQpaF1nKng8LGlgx1q9Hy6NNFPlT1rcDhWaZ3slpQb5NFRl
         KYIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765270957; x=1765875757;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tjn5t+EqGVO41CN3VxibifbWGxwt18O6GEv39Vxr8zo=;
        b=hgwBAxtDm+6W7pVlREZPZujRJpcn8GSguuvroxM9Gb1htI1EcHGmGsoZgtTy6PTMvD
         u073d0K36MnutgMzqtjYQDwsmNXj8JNqvC4zJ2pCVbttleSLTFtw9mQQsDw/dZ5HOZX1
         MzFVHzgxGzeqhM/OpKu85wf4/CCqCYHmuJPlGu3xsY+2BcyZC9bIbXVu01RTNEooiP04
         VWWGfn5fGZvu3+A4apgcRoqTfXGwdo+ldqgi+MUMRPmxc8TJPUGv7lgCwZ39a2KpNT2w
         XHJ+wEVsXUr0viowInBZEyZDMi886jZCvh2qpVZmULGy2o1x3HHspDJw2XRPUkXiO0w5
         IOGA==
X-Forwarded-Encrypted: i=1; AJvYcCXxxH6zOTBtTsuAvfp9xPXbgtsGT/U/cr7ffQ8btAx3PFAqZoJH0pYXgNPNub5PuicpMB7124QqcuD9@vger.kernel.org
X-Gm-Message-State: AOJu0YzDI8YMRX/28IkLWBMONqcIr9NKkipdECjc48hOj4OYoy2+PrVk
	pvAVc3k/X55Rr2SLtUjwCaG0lTlXjAhJJgSyY4dNM0hj0VkUeOJNBUNLfx1HhXS0WcbTSji0r/D
	hodRBFbWLZ/J2EMEKlgd1wR2r+kpF2hSWMhZok9I2oCRy5pjCgbGBmyQwROzQWPKK
X-Gm-Gg: AY/fxX6hQ8ebJQT0vag+v2A/fUi9Xy67tDYoqyPLuUR6MHMKViwumIa95RzwAElg0zs
	1AmiEi7YKt5hnJiG1Y5a+bAo/V9EIpZX07dYDrsSN39YWjlGQr3Y8Lr2yX5DWSBFz8BJoQgQa4J
	sglOzF2QgxjPiWzRHnRbIw4qMv81Hj3EglCjgp80NRX7FsZs8+BPUoawxDnWxjYqKJV+XiXHeDQ
	QwBiV2vlhvUA1bgsP+uNGahXLwcoLycz4y76hKi/FYY3olYlLMeelNmX5ctnH4mu0d4a9pNIyK1
	6mXPQDVM/CoXGAHZUvMop/AIgkREGkIsw8vTO4OND/+7TnmjZ/VjQdoV3sJArk6jIR9AckTnkum
	hL0wzOnGNBj9tSBS9lV7weV5hniuv2PopVAH4TMPftw==
X-Received: by 2002:a17:902:f78b:b0:295:55fc:67a0 with SMTP id d9443c01a7336-29ea02a9cb2mr8870775ad.2.1765270956826;
        Tue, 09 Dec 2025 01:02:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHkhI1GXHBiPquCji+ZgoLgAwuwKObWbNekX0HnKK5pPxwDFhYjZRIriYLSQ5ETb888EDm3lQ==
X-Received: by 2002:a17:902:f78b:b0:295:55fc:67a0 with SMTP id d9443c01a7336-29ea02a9cb2mr8870475ad.2.1765270956300;
        Tue, 09 Dec 2025 01:02:36 -0800 (PST)
Received: from [10.206.101.67] ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29e2444f5a0sm69951955ad.33.2025.12.09.01.02.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Dec 2025 01:02:35 -0800 (PST)
Message-ID: <157a3960-0110-4026-8ef5-e3378c8db693@oss.qualcomm.com>
Date: Tue, 9 Dec 2025 14:32:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] media: iris: Introduce vpu ops for vpu4 with
 necessary hooks
To: Bryan O'Donoghue <bod@kernel.org>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
References: <20251107-knp_video-v3-0-50c86cbb0eb8@oss.qualcomm.com>
 <X5BA5y9fXZEHaAaGjdczRxdqFLVPrIv37Drl75z21uc4100UvnYAoEHzwGGyLGVGIv5NBDnu_Mn8rM8gSxCyNw==@protonmail.internalid>
 <20251107-knp_video-v3-6-50c86cbb0eb8@oss.qualcomm.com>
 <5a5908db-aa96-4cfa-a908-d393dd2d79c0@kernel.org>
Content-Language: en-US
From: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
In-Reply-To: <5a5908db-aa96-4cfa-a908-d393dd2d79c0@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=dKarWeZb c=1 sm=1 tr=0 ts=6937e5ad cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=nqpN-pjiYS0InRIFTCgA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 9IxWHqrx0JM3nTuObb94nfixLKB98Z2k
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDA2MyBTYWx0ZWRfX7kNbzc3EJh9f
 u6zqPOSIbSrNul3G/DRtoNdlpQXvJZmXXGqGI28V4TCIP7ZsnaP52Gjpf8fpc2FqCfgft8rUsqG
 f+sS4Z8NQOD/xueuBvb3ZGneNidORn9Z9fLRtH9Nac7ma/Rlk17pxF4+b3PmQXO91HNYg1LM8AY
 0g9dl/ve98TWNuYoIh+6LpNoRrSXhQvmnSWcnMHA25ktL3sM2hemjd0zwoYt+6wZ5aRa36u4k0Y
 ISd6kEhIahTabjO1tPqb6PR8kuHhFpabvlfV+xxieOI/c3LIRNo3FZkX4vFLFUCfjaQiYtr/3t5
 xdTfLeh9BbMYHNPdhzo75ifHjk8JMM5ixwL00+psjCkdjKnGjzMkp//EwBmu8tSS+XVECM+SpTY
 9L02HdsZ375HOXvDgD5HUx9Ar+xy6g==
X-Proofpoint-GUID: 9IxWHqrx0JM3nTuObb94nfixLKB98Z2k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_02,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 bulkscore=0 adultscore=0 malwarescore=0
 phishscore=0 priorityscore=1501 suspectscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090063


On 12/7/2025 4:34 AM, Bryan O'Donoghue wrote:
> On 07/11/2025 09:49, Vikash Garodia wrote:
>> Add power sequence for vpu4 by reusing from previous generation wherever
>> possible. Hook up vpu4 op with vpu4 specific implemtation or resue from
>> earlier generation wherever feasible, like clock calculation in this
>> case.
>>
>> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
>> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
>> ---
> 
>> +static void iris_vpu4x_power_off_hardware(struct iris_core *core)
>> +{
>> +    u32 efuse_value = readl(core->reg_base + WRAPPER_EFUSE_MONITOR);
>> +    bool handshake_done, handshake_busy;
>> +    u32 value, count = 0;
>> +
>> +    iris_vpu4x_genpd_set_hwmode(core, false, efuse_value);
>> +
>> +    if (!(efuse_value & DISABLE_VIDEO_APV_BIT))
>> +        iris_vpu4x_power_off_apv(core);
>> +
>> +    value = readl(core->reg_base + WRAPPER_CORE_POWER_STATUS);
>> +
>> +    if (!(value & CORE_PWR_ON))
>> +        goto disable_clocks_and_power;
>> +
>> +    value = readl(core->reg_base + WRAPPER_CORE_CLOCK_CONFIG);
>> +
>> +    if (value & CORE_CLK_HALT)
>> +        writel(0x0, core->reg_base + WRAPPER_CORE_CLOCK_CONFIG);
>> +
>> +    readl_poll_timeout(core->reg_base + VCODEC_SS_IDLE_STATUSN, value,
>> +               value & VPU_IDLE_BITS, 2000, 20000);
>> +
>> +    do {
>> +        writel(REQ_POWER_DOWN_PREP, core->reg_base + 
>> AON_WRAPPER_MVP_NOC_LPI_CONTROL);
>> +        usleep_range(10, 20);
>> +        value = readl(core->reg_base + AON_WRAPPER_MVP_NOC_LPI_STATUS);
>> +
>> +        handshake_done = value & NOC_LPI_STATUS_DONE;
>> +        handshake_busy = value & (NOC_LPI_STATUS_DENY | 
>> NOC_LPI_STATUS_ACTIVE);
>> +
>> +        if (handshake_done || !handshake_busy)
>> +            break;
>> +
>> +        writel(0x0, core->reg_base + AON_WRAPPER_MVP_NOC_LPI_CONTROL);
>> +        usleep_range(10, 20);
>> +
>> +    } while (++count < 1000);
>> +
>> +    if (!handshake_done && handshake_busy)
>> +        dev_err(core->dev, "LPI handshake timeout\n");
>> +
>> +    writel(MVP_NOC_RESET_REQ_MASK, core->reg_base + 
>> AON_WRAPPER_MVP_NOC_RESET_REQ);
>> +    readl_poll_timeout(core->reg_base + AON_WRAPPER_MVP_NOC_RESET_ACK,
>> +               value, value == MVP_NOC_RESET_REQ_MASK, 200, 2000);
> 
> I realise it replicates what we already have upstream but...
> 
> if (!handshake_done && etc) is true then how does it make sense to 
> continue on with the routine at all ?

Yes, LPI (low power..) is an optional "good to have" routine before 
resetting the NOC and powering down.

> 
> We would expect the poll_timeout to timeout .. ?

during good times, it would not, and when it times out, it is always 
good to force reset the NOC before the GDSCs/clocks are turned off.

> 
> If the documentation states loop 1000 times trying this then does it 
> also say continue to try to power things off if that 1000 retries fails ?

Thats correct.

> 
> I realise its a nit-pick but the logic seems a bit fluffy here. Could 
> you tidy it up ?
> 
> Also now that I look at it - vpu2 and vpu3 both trap the timeout and 
> jump to some kind of cleanup routine.
> 
> goto disable_power;
> 
> Why is that logic not being followed here ?
> 
>> +    writel(0x0, core->reg_base + AON_WRAPPER_MVP_NOC_RESET_SYNCRST);
>> +    writel(0x0, core->reg_base + AON_WRAPPER_MVP_NOC_RESET_REQ);
>> +    readl_poll_timeout(core->reg_base + AON_WRAPPER_MVP_NOC_RESET_ACK,
>> +               value, value == 0x0, 200, 2000);
> 
> Feels like there is little point in having a poll timeout if we throw 
> away a timeout result code..
> 
> Not sure why you're changing up the logic from previous versions ?
> 

Given the NOC reset/ack is recommended, even if LPI times out, we can 
move to disable_power i.e power off clocks/GDSCs, once NOC reset times out.

Regards,
Vikash

