Return-Path: <devicetree+bounces-151376-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA53A45954
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 10:03:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7210518970F6
	for <lists+devicetree@lfdr.de>; Wed, 26 Feb 2025 09:03:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 742A020AF8E;
	Wed, 26 Feb 2025 09:03:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FP9sn0ic"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F40258CED
	for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 09:03:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740560593; cv=none; b=Xo0fU6L7tj0g3jIgJkfUcw8z5NV1KHedbFncjBJjK+iE+uHj9t5ybaPD87VGIMTMGf8+yWiycCH32nWVGckvZfth1X3ASnEqqC3smv9f3S+iDyOVuAvQgRLWvMAoi8wa/51BBdw2ccwz5pw7Vd1raSk3XBHEf5LXmsY7K+7cs5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740560593; c=relaxed/simple;
	bh=fAnGIAX1w2JpoWs3zCkN4Aa2JLomqOEXNHfafAli2x8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A0Y8coS7P7vXfJf3OAY824HzwFyVHwDfMKI3GrJkGiKVToIp2BZFF19jRYctuwjvGV0jYuv/fj2fsqfQ1jAAY7Io9BOumHo/4z6Gcwg3a6TUTkk6gUM3zaWCoSo3GssBN5NNf4SNp7R/uT+Yp1Me7X397FZZREX56UBmPVH/G38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FP9sn0ic; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4394036c0efso41443065e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 01:03:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740560589; x=1741165389; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JnVQL+oGYE/yquJC0x3nJUckBQQoVnrR8qx6ncktlCE=;
        b=FP9sn0icxNrjzOW48Ci4led7AiDQIbbBBtzT9BDgUuNT2T5kz1FAwT6QnGLsJB6maF
         eo0WO6JZym+N+UBwd/eDBfJ8KvTh/xzlce4awJsLLxQwX/l6mkHY1ykX98c6xeE23y8z
         Nw2J0DzxWUtRsx6+QvC20CXEvlezn5hkxTkF31dW4TPnmFs+TCICUXCifmw1kvQ5qZ6X
         gO2MBx3eB3VQ5GV8N2N28FJWPFl1gz+3Ew/2usXkCBBL264I/HPbJuew18MEX2iz3Mk1
         FrzWlt45kkvbSttHu7tDsXyikCeJ0CUPlXf0F9x802NlAe+Jw3rQJ4NDsYLQju/odAL1
         X4TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740560589; x=1741165389;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JnVQL+oGYE/yquJC0x3nJUckBQQoVnrR8qx6ncktlCE=;
        b=YrSZlfcOELa8tuIB/ZCdw6KrsknrK4g6+0KeMVUl9tnmfNw5FrrzHGf9d8uJtc2pVv
         8x2ESFl2YjmbAtjKH6/pI1q/+AZ2neQebTmWgkxrhtB1q70IG9yrpWGxWETWmU2AJMww
         NCJzdtEsVfFHcuOSeRGfkE1j7wic3mi+lBIKBrG2vz3moVETDF366T8rEZSDcRbZEBl8
         c1NYELpS3hmTc4oV2Bq1zl3IXI5r+oH4R2SE3cYz4aBq9xwRKaiEUjwj+yMRXQ+ft0UV
         iR5CDQCYhvxQUNAy01oxzzyfA+kdCgTv7wS5rv04cUwYTPiFxT9bZ8SkkocFgq69As/W
         yp4Q==
X-Forwarded-Encrypted: i=1; AJvYcCXpZ3q8QJyKpmeRqXCHXkXv0Pr0xQKn9zMWgYNlmSw5XkRx1uJ2DDzGzdXuPVNsFbwQc9un2Vi5bSL9@vger.kernel.org
X-Gm-Message-State: AOJu0YxKeKjmzUZpAuVf+fSqGGiMQoYo0GtTqn0R43UL28cP+AygUkwt
	ldAKtMNd6/FtudH3iQ2gOOrTRN1mjB5TCYpbgrmnwxfPqV0a5f3LI4fHMQH07geP5hAHKGxMeis
	MGfo=
X-Gm-Gg: ASbGncs+NT414VUYF3JWJZ3bnmxS/cbDzH5Y1uwM8DhGQwZ9YQ0JFjOqWrqB6k/1JfP
	wIaMDZvF57Bd3fuki91JvfoBwAaJxDxhubUqgN10O/cegB9oNfJomztG/JEz0ZGuvDjpAE/7QjG
	Kwg3rZEFzweDg83ht2OGDxUAEhkM9+kWEE+ErFz4Mz3dg9h/IDK9IAkUjSPMvu+f2PyV4sg7TI9
	uCdb5R/vomw2J+MNoQ+utl1YajmlB5+JKltTT3OxjHvzLuNJ++uGKrgGOyb0rkvIYht2s5Uhcr4
	7QIsde4gpw2gI/5NPkbrKuEvoQQrtU+7FA==
X-Google-Smtp-Source: AGHT+IEekDVoFKRzdCEBX1ap/zei/0aIH/Zy556MgAtLsIVJrpJvSHL/Ac8LxWjacR7hlg4AP+b/1A==
X-Received: by 2002:a05:600c:444e:b0:439:31e0:d9a5 with SMTP id 5b1f17b1804b1-43ab9016a21mr17679685e9.22.1740560589385;
        Wed, 26 Feb 2025 01:03:09 -0800 (PST)
Received: from [192.168.1.247] ([145.224.66.72])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390cd8fc1cbsm4844675f8f.92.2025.02.26.01.03.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Feb 2025 01:03:08 -0800 (PST)
Message-ID: <b22731f7-3750-4bbb-b3ac-5e1cc27239e7@linaro.org>
Date: Wed, 26 Feb 2025 09:03:07 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 00/10] Coresight: Add Coresight TMC Control Unit
 driver
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
References: <20250226041342.53933-1-quic_jiegan@quicinc.com>
 <627fdd72-4383-4172-9a51-c77ea32b7c60@quicinc.com>
Content-Language: en-US
From: James Clark <james.clark@linaro.org>
In-Reply-To: <627fdd72-4383-4172-9a51-c77ea32b7c60@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 26/02/2025 7:05 am, Jie Gan wrote:
> 
> 
> On 2/26/2025 12:13 PM, Jie Gan wrote:
>> The Coresight TMC Control Unit(CTCU) device hosts miscellaneous 
>> configuration
>> registers to control various features related to TMC ETR device.
>>
> 
> [...]
> Hi, James
> 
> Sorry for the mistake, I just found I forget to add the co-developed-by 
> tag to patch(5/10), patch(6/10) after the division.
> 
> Do I need resend the patch series?
> 
> Jie
> 

No, no worries. If you end up sending another version you can fix it 
otherwise it's not worth it.

>>
>> Sincere thanks to James Clark for providing an excellent idea to handle
>> the trace_id of the path.
>>
>> ---
>> Changes in V14:
>> 1. Drop the reviewed-by tag for previous patch: Coresight-Introduce-a- 
>> new-struct-coresight_path
>>     due to a massive modification.
>> 2. Split the patch, Coresight-Introduce-a-new-struct-coresight_path, into
>>     four patches.
>>     - Coresight-Introduce-a-new-struct-coresight_path
>>     - Coresight-Allocate-trace-ID-after-building-the-path
>>     - Coresight-Change-to-read-the-trace-ID-from-coresight_path
>>     - Coresight-Change-functions-to-accept-the-coresight_path
>> 3. Change the type of the coresight_path_assign_trace_id function to 
>> void.
>> 4. Change the type of the path_list from struct list_head * to struct 
>> list_head to avoid
>>     extra memory allocate/free.
>> 5. Rename the file coresight-ctcu.c to coresight-ctcu-core.c to 
>> improve scalibility.
>> 6. Add pm_ops for CTCU driver.
>> 7. Rename the struct ctcu_atid_config to ctcu_etr_config to improve 
>> scalibility.
>> 8. Optimize following functions of the CTCU driver to improve 
>> readability.
>>     - ctcu_program_atid_register
>>     - __ctcu_set_etr_traceid
>> 9. Change the way to get the port number. The new solution is searching
>>     the sink device from CTCU's view.
>> 10. Add desc.access for CTCU driver.
>> Link to V13 - https://lore.kernel.org/linux-arm- 
>> msm/20250221060543.2898845-1-quic_jiegan@quicinc.com/
>> ---
>>
>> ---
>> Changes in V13:
>> 1. Move the trace_id callback to coresight_ops to simplify the code.
>> Link to V12 - https://lore.kernel.org/linux-arm- 
>> msm/20250217093024.1133096-1-quic_jiegan@quicinc.com/
>> ---
>>
>> ---
>> Changes in V12:
>> 1. Update the method for allocating trace_id for perf mode.
>> Link to V11 - https://lore.kernel.org/linux-arm- 
>> msm/20250214024021.249655-1-quic_jiegan@quicinc.com/
>> ---
>>
>> ---
>> Changes in V11:
>> 1. Add reviewed-by tag to patch(2/7), (4/7), (6/7). Patch(3/7) is
>>     contributed by James, so didnot add reviewed-by tag of James.
>> 2. Fix warning reported by kernel bot and verified with build(W=1).
>> 3. Restore to the original logic that responsible for allocate trace_id
>>     of ETM device in perf mode according to James' comment.
>> Link to V10 - https://lore.kernel.org/linux-arm- 
>> msm/20250207064213.2314482-1-quic_jiegan@quicinc.com/
>> ---
>>
>> ---
>> Changes in V10:
>> 1. Introduce a new API to allocate and read trace_id after path is built.
>> 2. Introduce a new API to allocate and read trace_id of ETM device.
>> 3. Add a new patch: [PATCH v10 3/7] Coresight: Use 
>> coresight_etm_get_trace_id() in traceid_show()
>> 4. Remove perf handle from coresight_path.
>> 5. Use u8 instead of atomic_t for traceid_refcnt.
>> 6. Optimize the part of code in CTCU drvier that is responsible for 
>> program atid register.
>> Link to V9 - https://lore.kernel.org/all/20250124072537.1801030-1- 
>> quic_jiegan@quicinc.com/
>>
>> Changes in V9:
>> 1. Rebased on tag next-20250113.
>> 2. Separate the previous trace_id patch (patch 2/5 Coresight: Add 
>> trace_id function to
>>     retrieving the trace ID) into two patches.
>> 3. Introduce a new struct coresight_path instead of cs_sink_data which 
>> was
>>     created in previous version. The coresight_path will be initialized
>>     and constructed in coresight_build_path function and released by
>>     coresight_release_path function.
>>     Detail of the struct coresight_path is shown below:
>> /**
>>   * struct coresight_path - data needed by enable/disable path
>>   * @path:               path from source to sink.
>>   * @trace_id:           trace_id of the whole path.
>>   */
>> struct coresight_path {
>>          struct list_head                *path;
>>          u8                              trace_id;
>> };
>>
>> 4. Introduce an array of atomic in CTCU driver to represent the refcnt 
>> or each
>>     enabled trace_id for each sink. The reason is there is a scenario 
>> that more
>>     than one TPDM device physically connected to the same TPDA device has
>>     been enabled. The CTCU driver must verify the refcnt before 
>> resetting the
>>     bit of the atid register according to the trace_id of the TPDA 
>> device.
>> 5. Remove redundant codes in CTCU driver.
>> 6. Add reviewed-by tag to the commit message for APB clock path(patch
>>     1/5).
>> Link to V8 - https://lore.kernel.org/all/20241226011022.1477160-1- 
>> quic_jiegan@quicinc.com/
>>
>> Changes in V8:
>> 1. Rebased on tag next-20241220.
>> 2. Use raw_spinlock_t instead of spinlock_t.
>> 3. Remove redundant codes in CTCU driver:
>>     - Eliminate unnecessary parameter validations.
>>     - Correct log level when an error occurs.
>>     - Optimize codes.
>> 4. Correct the subject prefix for DT patch.
>> 5. Collected reviewed-by tag from Konrad Dybcib for DT patch.
>> Link to V7 - https://lore.kernel.org/all/20241210031545.3468561-1- 
>> quic_jiegan@quicinc.com/
>>
>> Changes in V7:
>> 1. Rebased on tag next-20241204.
>> 2. Fix format issue for dts patch.
>>     - Padding the address part to 8 digits
>> Link to V6 - https://lore.kernel.org/linux-arm- 
>> msm/20241009112503.1851585-1-quic_jiegan@quicinc.com/
>>
>> Changes in V6:
>> 1. Collected reviewed-by tag from Rob for dt-binding patch.
>> 2. Rebased on tag next-20241008.
>> 3. Dropped all depends-on tags.
>> Link to V5 - https://lore.kernel.org/linux-arm- 
>> msm/20240909033458.3118238-1-quic_jiegan@quicinc.com/
>>
>> Changes in V5:
>> 1. Fix the format issue for description paragrah in dt binding file.
>> 2. Previous discussion for why use "in-ports" property instead of 
>> "ports".
>> Link to V4 - https://lore.kernel.org/linux-arm- 
>> msm/20240828012706.543605-1-quic_jiegan@quicinc.com/
>>
>> Changes in V4:
>> 1. Add TMC description in binding file.
>> 2. Restrict the number of ports for the CTCU device to a range of 0 to 
>> 1 in the binding file,
>>     because the maximum number of CTCU devices is 2 for existing 
>> projects.
>> Link to V3 - https://lore.kernel.org/linux-arm- 
>> kernel/20240812024141.2867655-1-quic_jiegan@quicinc.com/
>>
>> Changes in V3:
>> 1. Rename the device to Coresight TMC Control Unit(CTCU).
>> 2. Introduce a new way to define the platform related configs. The new
>>     structure, qcom_ctcu_config, is used to store configurations specific
>>     to a platform. Each platform should have its own qcom_ctcu_config 
>> structure.
>> 3. In perf mode, the ETM devices allocate their trace IDs using the
>>     perf_sink_id_map. In sysfs mode, the ETM devices allocate their trace
>>     IDs using the id_map_default.
>> 4. Considering the scenario where both ETR devices might be enabled 
>> simultaneously
>>     with multiple sources, retrieving and using trace IDs instead of 
>> id_map is more effective
>>     for the CTCU device in sysfs mode. For example, We can configure 
>> one ETR as sink for high
>>     throughput trace data like ETM and another ETR for low throughput 
>> trace data like STM.
>>     In this case, STM data won’t be flushed out by ETM data quickly. 
>> However, if we use id_map to
>>     manage the trace IDs, we need to create a separate id_map for each 
>> ETR device. Addtionally, We
>>     would need to iterate through the entire id_map for each 
>> configuration.
>> 5. Add support for apb's clock name "apb". If the function fails to 
>> obtain the clock with
>>     the name "apb_pclk", it will attempt to acquire the clock with the 
>> name "apb".
>> Link to V2 - https://lore.kernel.org/linux-arm- 
>> msm/20240705090049.1656986-1-quic_jiegan@quicinc.com/T/#t
>>
>> Changes in V2:
>> 1. Rename the device to Coresight Control Unit.
>> 2. Introduce the trace_id function pointer to address the challeng how to
>>     properly collect the trace ID of the device.
>> 3. Introduce a new way to define the qcom,ccu-atid-offset property in
>> device tree.
>> 4. Disabling the filter function blocked on acquiring the ATID-offset,
>>     which will be addressed in a separate patch once it’s ready.
>> Link to V1 - https://lore.kernel.org/lkml/20240618072726.3767974-1- 
>> quic_jiegan@quicinc.com/T/#t
>> ---
>>
>> James Clark (1):
>>    Coresight: Use coresight_etm_get_trace_id() in traceid_show()
>>
>> Jie Gan (9):
>>    Coresight: Add support for new APB clock name
>>    Coresight: Add trace_id function to retrieving the trace ID
>>    Coresight: Introduce a new struct coresight_path
>>    Coresight: Move trace_id to coresight_path and allocate it after
>>      building the path
>>    Coresight: Change to read the trace ID from coresight_path
>>    Coresight: Change functions to accept the coresight_path
>>    dt-bindings: arm: Add Coresight TMC Control Unit hardware
>>    Coresight: Add Coresight TMC Control Unit driver
>>    arm64: dts: qcom: sa8775p: Add CTCU and ETR nodes
>>
>>   .../bindings/arm/qcom,coresight-ctcu.yaml     |  84 +++++
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 153 ++++++++
>>   drivers/hwtracing/coresight/Kconfig           |  12 +
>>   drivers/hwtracing/coresight/Makefile          |   2 +
>>   drivers/hwtracing/coresight/coresight-core.c  | 122 +++++--
>>   .../hwtracing/coresight/coresight-ctcu-core.c | 326 ++++++++++++++++++
>>   drivers/hwtracing/coresight/coresight-ctcu.h  |  39 +++
>>   drivers/hwtracing/coresight/coresight-dummy.c |  15 +-
>>   .../hwtracing/coresight/coresight-etm-perf.c  |  27 +-
>>   .../hwtracing/coresight/coresight-etm-perf.h  |   2 +-
>>   drivers/hwtracing/coresight/coresight-etm.h   |   1 -
>>   .../coresight/coresight-etm3x-core.c          |  55 +--
>>   .../coresight/coresight-etm3x-sysfs.c         |   3 +-
>>   .../coresight/coresight-etm4x-core.c          |  55 +--
>>   .../coresight/coresight-etm4x-sysfs.c         |   4 +-
>>   drivers/hwtracing/coresight/coresight-etm4x.h |   1 -
>>   drivers/hwtracing/coresight/coresight-priv.h  |  14 +-
>>   drivers/hwtracing/coresight/coresight-stm.c   |  13 +-
>>   drivers/hwtracing/coresight/coresight-sysfs.c |  17 +-
>>   drivers/hwtracing/coresight/coresight-tpda.c  |  11 +
>>   drivers/hwtracing/coresight/coresight-tpdm.c  |   2 +-
>>   include/linux/coresight.h                     |  27 +-
>>   22 files changed, 824 insertions(+), 161 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/arm/ 
>> qcom,coresight-ctcu.yaml
>>   create mode 100644 drivers/hwtracing/coresight/coresight-ctcu-core.c
>>   create mode 100644 drivers/hwtracing/coresight/coresight-ctcu.h
>>
> 


