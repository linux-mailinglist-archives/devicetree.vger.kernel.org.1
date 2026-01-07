Return-Path: <devicetree+bounces-252182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F403ECFC134
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 06:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D8CD43013399
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 05:33:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2968C265CA8;
	Wed,  7 Jan 2026 05:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jSOXlu2a";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Rexet7Dz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EDDE265623
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 05:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767764015; cv=none; b=tmDEorvbu22g+2tjh/41lcBc3x8KDEySN4ODz7te5NacDHp/hx9igsumtD46NmIzB82jsqJALI/k30T+xUBN63ft/tvNoJetvCGbwKOO/Ot14OzOuQHorM11KVxqq39Tjv+i59bQOLXaEio/ycyTdeGsK4BinJmNvJgU5D+aJHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767764015; c=relaxed/simple;
	bh=64ae/iNjKqB8J6PDFkT5fQQ5KaEE7BETKPiZ8TVOG8Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YfM3PbIoW7SttEE0BIewvX9LAUTIBE6dkYXUN7Ay49h2NwvsDPwknvVn0GD6f8n3o+lC7D6ijidgFOO9y0XcN0YGlGg1puIbqCchZD+RPwPSeQ06OcxXm+Y+HWnlNHRhYmo+WEGvt2WKOavRi0GctvP8GJTUA9HC08UER5bRHzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jSOXlu2a; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Rexet7Dz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6074F6VJ4090727
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 05:33:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X6ePKBgvlfUS0ntFGW76YYkaLLe8e4OHaogWUUcShds=; b=jSOXlu2aogZZ1wu0
	Gj5K1m7QVxruYAhOFcLomjNtT6ey68ykRNFyweb1HG2dN9V5voF6hWmKSIPUvyuT
	z9YI71PT58uxPXrAlsipAu03XySWkld3ETmkhwYNfoampOjE1TvcQzUXmH0TKxWN
	L43DfVbXQDtICfhuYzGAmOTLIg2QX5gaA7H8Pia02hRKBjFZAjVX/oJmzNaXfM4I
	sojdFU/8puhbgxT69SfBmWNRsi3MiXIW2IuSIsDpIcrmxcetp7Y6ZFE0hd/HcdT8
	VfqH7l9QAbWEevHo9R5VowVg4gq5DAalTHQOSE4ESvs3U0VNBIwrxZQ6vG1ecWQu
	+A+q8A==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgyunb6vk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 05:33:32 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34ac814f308so3018884a91.3
        for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 21:33:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767764011; x=1768368811; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X6ePKBgvlfUS0ntFGW76YYkaLLe8e4OHaogWUUcShds=;
        b=Rexet7Dz7FZGzStHRxTL0WGh4RcaF+c+O/BAUh+31bbu2V3S0WzoHFiew2+QCRXYAu
         2sSeVG3lYDjQs3mor+JetXNvfX3XlcyaK0758h6hBKj6/ES56fENdzO0n5DmaQaffWBe
         hOCp92u2Bz7+o9vOcH/aSqAsIWeI7dvrPSKCntDEk3RxnAkP/PNUZUfKXuPas3TFGu2J
         LF7GPTg0S1vPmZASp1xu6a0q6n2rzrtd9lZQJ8wL1rHcWNWs3vKNLvSDJH4uniq071OA
         iJ+r5IoI7jX09bBX8wmzLSBso6yxYQcdiKBtXdYCbgqu2stiqqwzNgyTriejDt/IGQFX
         8zhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767764011; x=1768368811;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=X6ePKBgvlfUS0ntFGW76YYkaLLe8e4OHaogWUUcShds=;
        b=GbGEBtabPYffvSarysP2P8AAYNgSIA2dkBjlUA4ap4OkWkX+w0JqiWq6fnW0j16jJV
         DpR3+uKEK4BPEk0WmcFDs//NdEVOX42JCpSUtXgnQuJRQ3jN9Vp5HpzBC4FoLqkcu8Cq
         jG3Ru1xA2HKg0MMT95V2aL1fplNInlYiCiAcmpdKVKslMhhD7Z9Bky6W6uCUaFWddTMu
         kte5YoB9IQR6A0zDDjDUJTNk+uICpwdGTQ1YFuxVgGl5cWIzydBu4eS8D8zOL7KYvDO6
         6ErUndy8Ao+WJJOPISzzn7lZ2snzn/8D/ezy19wmohWlnrU0gImV//S/Gy78EXlSv18s
         Qt+A==
X-Forwarded-Encrypted: i=1; AJvYcCWqm1rlk6isjIeSa9qUZGh3VSXN+sAvvrb2fG2kL7LqRltDNW4ATxSaN2aSse8VSyHHa+a5iUGZeApx@vger.kernel.org
X-Gm-Message-State: AOJu0YwK+mDgz3wOqZXtnLNTTQFN26wUyXVwz4pclxsm8WC1vccbAOS8
	/Bq3jqpFAE5mKFLxwwLPFDcsOuBmJYWmD3+bSCnS5y2NvqqAYskKyrjtyXWQXZ8B6W4ZdG/+3pb
	TO9/H2h55XGXhliYPNxuMMJyQPpHdafWVX4blKr2LvicgMjtUvqtoii+oH1YtB/Vt
X-Gm-Gg: AY/fxX5rXVuJN4aCbBqof1MFJzEdH30FGzz+msuGEAbl76+qH6dJZ8NhP+iTPNKrgHf
	uzUxRrdSO6DSHv6u+lbru34zNz/EHDhaWGsffTw8YTMQjM/ViDV9V0nHMCaD69urro4BL6qVEwS
	d6N1CJGMHshUdsRKJQhBV0iuS6e8vRG7wl9FLpWBzFkwuclXOz83WF05QnVmkERaB4OKZp/QekG
	ody4WpNt+5+BFYd0asJpFBIYPlVuETRrKYXXCohloXZi0AtmuSxk7DLk6KiAF/pS8Lm2TWNeLmv
	1K9QTBUUao/Rl4ik3UEVc9Z43LIt/so/fEEeIImNweFONsqZeTDsNCSvX9NmuZ34KcjABdU8P69
	5IZpIfz1oiQG2vJBCzlftCQ/BN46aBhgyUM+uo4u4eAf23Lu2zbzu0F+zJWb1Q+ErFzFsudPHX4
	cfOf/xmA==
X-Received: by 2002:a17:902:cece:b0:298:2afa:796d with SMTP id d9443c01a7336-2a3ee4c432bmr11929495ad.61.1767764011530;
        Tue, 06 Jan 2026 21:33:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHgy5wTNf6ktpNl/IexKuFlCaYcP5E8i67hUlr8fprbXTH4XkoF6ise2t8mw7XJvOAw0b5P6g==
X-Received: by 2002:a17:902:cece:b0:298:2afa:796d with SMTP id d9443c01a7336-2a3ee4c432bmr11929275ad.61.1767764011001;
        Tue, 06 Jan 2026 21:33:31 -0800 (PST)
Received: from [10.133.33.154] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c48c2bsm37091885ad.26.2026.01.06.21.33.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Jan 2026 21:33:30 -0800 (PST)
Message-ID: <945e0063-23eb-4111-9aed-36fce77a0afa@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 13:33:24 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 7/7] qcom-tgu: Add reset node to initialize
To: Suzuki K Poulose <suzuki.poulose@arm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        james.clark@arm.com, krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20251219065902.2296896-1-songwei.chai@oss.qualcomm.com>
 <20251219065902.2296896-8-songwei.chai@oss.qualcomm.com>
 <7cfbcc2e-b6ca-47cf-83fe-1c61df40885b@arm.com>
Content-Language: en-US
From: Songwei Chai <songwei.chai@oss.qualcomm.com>
In-Reply-To: <7cfbcc2e-b6ca-47cf-83fe-1c61df40885b@arm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA0MiBTYWx0ZWRfX6R7uHqzFH7Pe
 cx6GFCpgajZ9uoTWnrkrntu4iE3/9XWuMEW5xWU9d9L5Tlsp3RDdZzjypuc4vOqsz7WlEa8lyr2
 bcXfbbH5tbKZXQHtPETPZ7Gr7Opdv6BayVeddYK3IQuU3lNeTdxPzV9cPT5lWa8OAYPIf6qJToc
 U/CT/cAP29BpUusNh1e2YpWGvxi/Hirk3wJMbqDHgIs7cVrjC603VdXHI61gjQNx+J2UnKgklGH
 LzQvz+e/aYSG7QHMc+EhsPd86KDo7xc21AMCH31i/hGaRdESW5NAcqBjpDCuyahua3AWz4sVDmr
 9jwCG5xwsJPf60I0e1aWki+kVpW2UkRGS1JvRNZZlmx+API5lSG12o2dMvhN8mT8OvtXSVfPrFa
 sgafXC4wkfefpv8szbuSPozEEbw6l3A84zZj1eom389BqLS2qQv4gJwnnfwHB+4Cc2QpdNldXlQ
 ewC51+1eRe00j8AGJRg==
X-Authority-Analysis: v=2.4 cv=YqIChoYX c=1 sm=1 tr=0 ts=695df02c cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=aO9wjV38XZb3NMbED0oA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-GUID: 4RPI01n8PthwNTSfgxVT-Q_IE-v1D4Zz
X-Proofpoint-ORIG-GUID: 4RPI01n8PthwNTSfgxVT-Q_IE-v1D4Zz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 phishscore=0 adultscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070042



On 1/6/2026 6:16 PM, Suzuki K Poulose wrote:
> On 19/12/2025 06:59, Songwei Chai wrote:
>> Add reset node to initialize the value of
>> priority/condition_decode/condition_select/timer/counter nodes.
>>
>> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
>> ---
>>   .../ABI/testing/sysfs-bus-amba-devices-tgu    |  7 ++
>>   drivers/hwtracing/qcom/tgu.c                  | 74 +++++++++++++++++++
>>   2 files changed, 81 insertions(+)
>>
>> diff --git a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu b/ 
>> Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
>> index 010eade0a1c5..0733b3e07b45 100644
>> --- a/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
>> +++ b/Documentation/ABI/testing/sysfs-bus-amba-devices-tgu
>> @@ -42,3 +42,10 @@ KernelVersion    6.19
>>   Contact:    Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai 
>> <songwei.chai@oss.qualcomm.com>
>>   Description:
>>           (RW) Set/Get the counter value with specific step for TGU.
>> +
>> +What:        /sys/bus/amba/devices/<tgu-name>/reset_tgu
>> +Date:        December 2025
>> +KernelVersion    6.19
>> +Contact:    Jinlong Mao <jinlong.mao@oss.qualcomm.com>, Songwei Chai 
>> <songwei.chai@oss.qualcomm.com>
>> +Description:
>> +        (Write) Write 1 to reset the dataset for TGU.
>> diff --git a/drivers/hwtracing/qcom/tgu.c b/drivers/hwtracing/qcom/tgu.c
>> index d4210869556e..5a8c6af9b719 100644
>> --- a/drivers/hwtracing/qcom/tgu.c
>> +++ b/drivers/hwtracing/qcom/tgu.c
>> @@ -425,8 +425,82 @@ static ssize_t enable_tgu_store(struct device *dev,
> 
> 
>> +
>> +    dev_dbg(dev, "Coresight-TGU reset complete\n");
> 
> Qualcomm-TGU ?Exactly! Thanks for reminder.>
> Suzuki


