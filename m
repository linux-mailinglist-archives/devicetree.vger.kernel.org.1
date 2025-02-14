Return-Path: <devicetree+bounces-146662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 199CDA35C24
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 12:09:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ADACE188D243
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 11:09:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 30E3C25D52D;
	Fri, 14 Feb 2025 11:09:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AlbSIDu1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4158925A64D
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 11:09:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739531362; cv=none; b=kpb8j/In3logOd8GdblT5ez9oMMti1t93uYR4IQdaSB4Dx33r+TgC2MARUnk7cZXgLNDlZnCGWrPXTUenpzK12u1rmtNbAUw/sL2hysf9GUmGOMoKs/h2L0LsfEuldVhSNDe22PnAVlVAwn4QXl3gHlQyRkf8DzomzQaoVGTvCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739531362; c=relaxed/simple;
	bh=kbVminQweP0edHX60DRMOZAmpRtqyibJvpWKml9aMvQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TWnKnWcIfp7VH2pzkMphvwhmwDLcDNqWZosVfDNz8NlyKc4ANjIArtB1SnOrkLPUzo7/INAF5CEfvpTT/SYPwBedgtGl/OE+qetSemWdhAoO6p6LnQxKB6ZqUbAJZkwALBDRO/++wxh+CLHxe2uWRx4yHb7sAXcOjzzHi/CS/pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AlbSIDu1; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-38dcac27bcbso1896631f8f.0
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 03:09:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739531358; x=1740136158; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=V7+4mem2ft+RVvvLEGTsxFIwY8eDWNZdbE4U/VEn5OU=;
        b=AlbSIDu165La21uG3l8xxHp4sIcrOvyT/PpKJPpjoPVm4PRnFFXveBPXKEtBY0bcID
         wInc7wKjISPR86md30Hv2YiK7vazo/8JtCzcmU8WjnMJwPw7LhBF7/q9zA459eLHTRvf
         BPhaeCciifwpI4EffHABAeRMOQqKD2yK/3w1XKWWLXokPIJVXC+tP0AQAL23a4mHlEG/
         NtWjq+fz9qspZmoNMFeWk94fMp4AY/qJeueqlITHIyiS7gyF0IKkX90eBNbczFPdQe1q
         oxfgglXoHzqJR+SL50spwK/MB+9oD8gX65P96lvfuyEgc7pgnJD1a9SQ8OQBGM0zpeXI
         Dd+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739531358; x=1740136158;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V7+4mem2ft+RVvvLEGTsxFIwY8eDWNZdbE4U/VEn5OU=;
        b=KAlgkk2PSUyiRRZJNL0stcyUDeXBBzvCxKvdXGg3i+L0do2FicXuCNLrf1FufHXdw7
         FrWQe3jLZFcCnJcLkZgnTdwy78uE5mGLVpEfC4ajssC9IqXlSd0VGdiP+sOJ1ZxFTXlg
         eXUVKhV+zf9iSjjKwGCdTFBeqp93B7mbP8x7N8Iq4J8KHmh0J/lQFSLb1G5B3r3kfB33
         s7KwABnVsXTv4TO5/vgjlprmy9XNuKRWsmBRmvf/pisx82CLvSZSSWSZjznVdd0cq2Du
         aO2Xqsz/kHCn1o/kwXgFG3be1fft2os04bY1pvjVL2Zvua3WkuN4WgS0QH2A2zdecJgO
         ATWg==
X-Forwarded-Encrypted: i=1; AJvYcCVCsH3u1lV8Xlj92Env2SiA/Cu9gwtyOY0r2oPYF42lUPFgLHzpObac+XtuW8AotQdPJL+UYn8YsByo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2GMt0CJ+caCHbizwWMlV55woVL3o4xE5xaEh28/jM/e4YkjJ8
	N+5ZPp67v7CdGY6ijSjBFtoAMSUtW1BB94j4vrrkTCp8SChbXPuRa1W/X1nrip8=
X-Gm-Gg: ASbGncsTJLls9xzdEGhksGla8+FSZvghN2Xem+kdG/4YuvZSWv4CqHHwT82g+RRvvMX
	rsNSSHKurA1SMsLOz0tojO+pE1RloO2QD3mpgIDvAGY9dAXlGvO1UB8o1RpxfjspMbyMztyZP5D
	L0vjiIrikHFgHkQW6mGg9biuPPSWhXGZoxjZ+N1uffZyd402+IEFkeCGU6TcmgczJiy9dur/8A2
	R2BlPGjRg1/Ou/KfpiQkwQXv8Hu/tYdxZpMZK1bP3FgYnLjDvWpXJHjd1hlBf8qsomROMS+8SUj
	Jor37Bs9wxHD75S7XtI5wjkfAA==
X-Google-Smtp-Source: AGHT+IHSYzmRWK6x5dqInVV0CJ5pE2+xfHMxdXlGP6JgPhn1Wonrdhujy16nNDJTyIehflsH4kOBJw==
X-Received: by 2002:a05:6000:71c:b0:38f:2b64:5327 with SMTP id ffacd0b85a97d-38f2b6457ccmr2854936f8f.24.1739531358487;
        Fri, 14 Feb 2025 03:09:18 -0800 (PST)
Received: from [192.168.68.163] ([145.224.90.202])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38f25913eb6sm4373298f8f.51.2025.02.14.03.09.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Feb 2025 03:09:18 -0800 (PST)
Message-ID: <b61af324-7488-4a4f-9f9e-2ecb004fc4c7@linaro.org>
Date: Fri, 14 Feb 2025 11:09:16 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/7] Coresight: Introduce a new struct coresight_path
To: Jie Gan <quic_jiegan@quicinc.com>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
 Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach
 <mike.leach@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>
References: <20250207064213.2314482-1-quic_jiegan@quicinc.com>
 <20250207064213.2314482-5-quic_jiegan@quicinc.com>
 <a633f52c-81e8-4c0d-aca7-cc18360866eb@linaro.org>
 <4b521b49-7104-4f25-82cb-4f9be7b235f4@quicinc.com>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <4b521b49-7104-4f25-82cb-4f9be7b235f4@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 14/02/2025 1:34 am, Jie Gan wrote:
> 
> 
> On 2/14/2025 12:00 AM, James Clark wrote:
>>
>>
>> On 07/02/2025 6:42 am, Jie Gan wrote:
>>> Add 'struct coresight_path' to store the data that is needed by
>>> coresight_enable_path/coresight_disable_path. The structure will be
>>> transmitted to any required devices to enable related funcationalities.
>>>
>>> The trace_id will be allocated after the path is built. Consequently,
>>> The ETM3x and ETM4x devices will directly read the trace_id from path
>>> which result in etm_read_alloc_trace_id and etm4_read_alloc_trace_id
>>> being deleted.
>>>
>>> Co-developed-by: James Clark <james.clark@linaro.org>
>>> Signed-off-by: James Clark <james.clark@linaro.org>
>>> Signed-off-by: Jie Gan <quic_jiegan@quicinc.com>
>>> ---
>>>   drivers/hwtracing/coresight/coresight-core.c  | 106 +++++++++++++-----
>>>   drivers/hwtracing/coresight/coresight-dummy.c |   5 +-
>>>   .../hwtracing/coresight/coresight-etm-perf.c  |  30 +++--
>>>   .../hwtracing/coresight/coresight-etm-perf.h  |   2 +-
>>>   drivers/hwtracing/coresight/coresight-etm.h   |   1 -
>>>   .../coresight/coresight-etm3x-core.c          |  54 ++-------
>>>   .../coresight/coresight-etm4x-core.c          |  54 ++-------
>>>   drivers/hwtracing/coresight/coresight-etm4x.h |   1 -
>>>   drivers/hwtracing/coresight/coresight-priv.h  |  12 +-
>>>   drivers/hwtracing/coresight/coresight-stm.c   |   3 +-
>>>   drivers/hwtracing/coresight/coresight-sysfs.c |  17 ++-
>>>   drivers/hwtracing/coresight/coresight-tpdm.c  |   3 +-
>>>   include/linux/coresight.h                     |  12 +-
>>>   13 files changed, 143 insertions(+), 157 deletions(-)
>>>
>> [...]
>>> @@ -352,7 +352,7 @@ static void *etm_setup_aux(struct perf_event 
>>> *event, void **pages,
>>>        * CPUs, we can handle it and fail the session.
>>>        */
>>>       for_each_cpu(cpu, mask) {
>>> -        struct list_head *path;
>>> +        struct coresight_path *path;
>>>           struct coresight_device *csdev;
>>>           csdev = per_cpu(csdev_src, cpu);
>>> @@ -405,15 +405,15 @@ static void *etm_setup_aux(struct perf_event 
>>> *event, void **pages,
>>>               cpumask_clear_cpu(cpu, mask);
>>>               continue;
>>>           }
>>> -
>>>           /* ensure we can allocate a trace ID for this CPU */
>>> -        trace_id = coresight_trace_id_get_cpu_id_map(cpu, &sink- 
>>> >perf_sink_id_map);
>>> -        if (!IS_VALID_CS_TRACE_ID(trace_id)) {
>>> +        trace_id = coresight_path_assign_trace_id(path, CS_MODE_PERF);
>>> +
>>> +        /* Can be 0 and valid, ETE doesn't need an ID */
>>> +        if (trace_id < 0) {
>>
>> Not sure why I wrote it like this, but I think we should leave it as 
>> it was with !IS_VALID_CS_TRACE_ID(). Even with ETE it calls the trace 
>> ID allocator, so nothing has changed here.
>>
> Sure, Will restore. For ETE or ETM, we dont need traverse the path, just 
> directly allocate the trace id based on cpu id.
> 
> Jie
> 
> 

Sorry I meant to only keep the !IS_VALID_CS_TRACE_ID() bit. We still 
need to call the new coresight_path_assign_trace_id() otherwise it 
doesn't get assigned to the path. I saw that got removed in v11.



