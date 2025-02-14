Return-Path: <devicetree+bounces-146505-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC910A353C5
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 02:37:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DEADA3A2876
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 01:37:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE2C5537FF;
	Fri, 14 Feb 2025 01:37:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="OKB8blyr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A70F5173;
	Fri, 14 Feb 2025 01:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739497029; cv=none; b=EaP0eRwsM3rhw9sfPNhVlTIHUHj2eLveqGQx+G6F0sciM3EjNCJ351FEQ9rI3i/t/eDyis8OZNbC7eKTK7e3IxPYdHLFbjH0gRhPW8C609C5rdl0CcjLZswIu7Yyl+l8SE2cRoeH9ssLMZsYVxnTO3nQRLI7q2g9VlMb1PdxoDI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739497029; c=relaxed/simple;
	bh=tYcz970sDak0sXuSSuqWhzhDHNwd0vbrpTLr9OA1rgQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=ci0+SqE41UprGPMy8bUWpKGKxdqg8eaJSiBHiK72a4fF1Hj0FsmtX1UEz9R+iBn5HqSRWDu65fAyEU695zwBowv9g9kLrod1stz5jg5J6dhBRZs3G4P9NEjuthxRYjPxAADapUzqEZEmOcdot2/la9WT/N6IF4ZsFrwDcRSaIdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=OKB8blyr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51DHCZBm032656;
	Fri, 14 Feb 2025 01:36:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5HIpdhrvdswaKXCX1IXiYa6ndYLl8/4vsl0bcp6VfoI=; b=OKB8blyr1r9Q9WKd
	nzYZp4T2ynZRbVMckLD/LEybPoVKnYxHb4GUBRXaU2ft9OYfILtT46eR8BjFVvdc
	61/tE1N0FyzS9KoT4ZCtqkPXr/O9cY/nj5LWlJlELEfJCUFA0vl6+MRPanqh8r0g
	FNpoGpzjV4jqbgI0pAzNzWQRige/Iz+51Z//SEqZXIr/Zge13F9OEhdIlkP6cWj6
	DYAf0S0c7U5yIU4nY1C5hwYVPTcMBUXl29iHaaAdqLlcfCIMUKlW0uZ2JQmYUMxn
	95fvlWWgCMya+tUBqdpKje15yspzSUWejYBjNmRRT54J1zxXXU3hB9yJzkLnahRM
	3V1xog==
Received: from nalasppmta01.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44sc7bajkq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Feb 2025 01:36:42 +0000 (GMT)
Received: from nalasex01c.na.qualcomm.com (nalasex01c.na.qualcomm.com [10.47.97.35])
	by NALASPPMTA01.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 51E1afK4008203
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 14 Feb 2025 01:36:41 GMT
Received: from [10.133.33.20] (10.80.80.8) by nalasex01c.na.qualcomm.com
 (10.47.97.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Thu, 13 Feb
 2025 17:36:36 -0800
Message-ID: <f3142a46-3db8-49e5-99f1-6839c6be3e45@quicinc.com>
Date: Fri, 14 Feb 2025 09:36:34 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 0/7] Coresight: Add Coresight TMC Control Unit driver
To: James Clark <james.clark@linaro.org>
CC: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao
	<quic_jinlmao@quicinc.com>, <coresight@lists.linaro.org>,
        <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-arm-msm@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        Suzuki K Poulose
	<suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        "Alexander
 Shishkin" <alexander.shishkin@linux.intel.com>,
        Maxime Coquelin
	<mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250207064213.2314482-1-quic_jiegan@quicinc.com>
 <b921e582-fa82-4b97-a5fd-29f52f4c7a85@linaro.org>
Content-Language: en-US
From: Jie Gan <quic_jiegan@quicinc.com>
In-Reply-To: <b921e582-fa82-4b97-a5fd-29f52f4c7a85@linaro.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: nasanex01b.na.qualcomm.com (10.46.141.250) To
 nalasex01c.na.qualcomm.com (10.47.97.35)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: 2OwO-iFyHp5iQNvPIbnlfY-qYe0P9aWW
X-Proofpoint-GUID: 2OwO-iFyHp5iQNvPIbnlfY-qYe0P9aWW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-13_09,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 mlxlogscore=999
 phishscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 bulkscore=0 mlxscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502140009



On 2/14/2025 12:01 AM, James Clark wrote:
> 
> 
> On 07/02/2025 6:42 am, Jie Gan wrote:
>> The Coresight TMC Control Unit(CTCU) device hosts miscellaneous 
>> configuration
>> registers to control various features related to TMC ETR device.
>>
>> The CTCU device works as a helper device physically connected to the 
>> TMC ETR device.
>> ---------------------------------------------------------
>>               |ETR0|             |ETR1|
>>                . \                 / .
>>                .  \               /  .
>>                .   \             /   .
>>                .    \           /    .
>> ---------------------------------------------------
>> ETR0ATID0-ETR0ATID3     CTCU    ETR1ATID0-ETR1ATID3
>> ---------------------------------------------------
>> Each ETR has four ATID registers with 128 bits long in total.
>> e.g. ETR0ATID0-ETR0ATID3 registers are used by ETR0 device.
>>
>> Based on the trace id which is programed in CTCU ATID register of
>> specific ETR, trace data with that trace id can get into ETR's buffer
>> while other trace data gets ignored. The number of CTCU ATID registers
>> depends on the number of defined TMC ETR devices. For example, two TMC
>> ETR devices need eight ATID registers. ETR0 with ETR0ATID0-ETR0ATID3
>> and ETR1 with ETR1ATID0-ETRATID3.
>>
>> The significant challenge in enabling the data filter function is how
>> to collect the trace ID of the source device. The introduction of
>> trace_id callback function addresses this challenge. The callback 
>> function
>> collects trace ID of the device and return it back. The trace ID will be
>> stored in the structure called coresight_path and transmitted to helper
>> and sink devices.
>>
>> The coresight_path structure is created to address how to transmit
>> parameters needs by coresight_enable_path/coresight_disbale_path
>> functions.
>>
>> Here is the definition of the struct coresight_path:
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
>> The atid_offset mentioned before is the offset to ATID register in CTCU
>> device.
>>
>> Enabling the source device will configure one bit in the ATID register 
>> based
>> on its trace ID.
>> Disabling the source devices will reset the bit in the AITD register
>> based on its trace ID.
>>
>> Useage:
>> Enable:
>> STM device with trace ID 5 and ETR0 is activated.
>> Bitmap before the enablement:
>> ETR0ATID0:
>> 31..................543210
>> ==========================
>> 0000000000000000000000...0
>> ==========================
>>
>> Bitmap after the enablement:
>> 31..................543210
>> ==========================
>> 0000000000000...0000100000
>> ==========================
>>
>> The bit 5 of the ETR0ATID0 register is configured to 1 when enabling the
>> STM device.
>>
>> Disable:
>> STM device with trace ID 5 and ETR0 is activated.
>> Bitmap before the disablement:
>> ETR0ATID0:
>> 31................6543210
>> =========================
>> 000000000010111...0100000
>> =========================
>>
>> Bitmap after the disablement
>> ETR0ATID0:
>> 31................6543210
>> =========================
>> 000000000010111...0000000
>> =========================
>>
>> The bit 5 of the ETR0ATID0 register is reset to 0 when disabling the STM
>> device.
>>
>> Sincere thanks to James Clark for providing an excellent idea to handle
>> the trace_id of the path.
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
>> Changes in V4:
>> 1. Add TMC description in binding file.
>> 2. Restrict the number of ports for the CTCU device to a range of 0 to 
>> 1 in the binding file,
>>     because the maximum number of CTCU devices is 2 for existing 
>> projects.
>> Link to V3 - https://lore.kernel.org/linux-arm- 
>> kernel/20240812024141.2867655-1-quic_jiegan@quicinc.com/
>>
>> Changes in V5:
>> 1. Fix the format issue for description paragrah in dt binding file.
>> 2. Previous discussion for why use "in-ports" property instead of 
>> "ports".
>> Link to V4 - https://lore.kernel.org/linux-arm- 
>> msm/20240828012706.543605-1-quic_jiegan@quicinc.com/
>>
>> Changes in V6:
>> 1. Collected reviewed-by tag from Rob for dt-binding patch.
>> 2. Rebased on tag next-20241008.
>> 3. Dropped all depends-on tags.
>> Link to V5 - https://lore.kernel.org/linux-arm- 
>> msm/20240909033458.3118238-1-quic_jiegan@quicinc.com/
>>
>> Changes in V7:
>> 1. Rebased on tag next-20241204.
>> 2. Fix format issue for dts patch.
>>     - Padding the address part to 8 digits
>> Link to V6 - https://lore.kernel.org/linux-arm- 
>> msm/20241009112503.1851585-1-quic_jiegan@quicinc.com/
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
>> Jie Gan (7):
>>    Coresight: Add support for new APB clock name
>>    Coresight: Add trace_id function to retrieving the trace ID
>>    Coresight: Use coresight_etm_get_trace_id() in traceid_show()
>>    Coresight: Introduce a new struct coresight_path
>>    dt-bindings: arm: Add Coresight TMC Control Unit hardware
>>    Coresight: Add Coresight TMC Control Unit driver
>>    arm64: dts: qcom: sa8775p: Add CTCU and ETR nodes
>>
>>   .../bindings/arm/qcom,coresight-ctcu.yaml     |  84 ++++++
>>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         | 153 ++++++++++
>>   drivers/hwtracing/coresight/Kconfig           |  12 +
>>   drivers/hwtracing/coresight/Makefile          |   1 +
>>   drivers/hwtracing/coresight/coresight-core.c  | 133 +++++++--
>>   drivers/hwtracing/coresight/coresight-ctcu.c  | 268 ++++++++++++++++++
>>   drivers/hwtracing/coresight/coresight-ctcu.h  |  24 ++
>>   drivers/hwtracing/coresight/coresight-dummy.c |  16 +-
>>   .../hwtracing/coresight/coresight-etm-perf.c  |  30 +-
>>   .../hwtracing/coresight/coresight-etm-perf.h  |   2 +-
>>   drivers/hwtracing/coresight/coresight-etm.h   |   1 -
>>   .../coresight/coresight-etm3x-core.c          |  55 +---
>>   .../coresight/coresight-etm3x-sysfs.c         |   3 +-
>>   .../coresight/coresight-etm4x-core.c          |  55 +---
>>   .../coresight/coresight-etm4x-sysfs.c         |   4 +-
>>   drivers/hwtracing/coresight/coresight-etm4x.h |   1 -
>>   drivers/hwtracing/coresight/coresight-priv.h  |  12 +-
>>   drivers/hwtracing/coresight/coresight-stm.c   |  14 +-
>>   drivers/hwtracing/coresight/coresight-sysfs.c |  17 +-
>>   drivers/hwtracing/coresight/coresight-tpda.c  |  11 +
>>   drivers/hwtracing/coresight/coresight-tpdm.c  |   3 +-
>>   include/linux/coresight.h                     |  30 +-
>>   22 files changed, 765 insertions(+), 164 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/arm/ 
>> qcom,coresight-ctcu.yaml
>>   create mode 100644 drivers/hwtracing/coresight/coresight-ctcu.c
>>   create mode 100644 drivers/hwtracing/coresight/coresight-ctcu.h
>>
> 
> Just one small comment, and the kernel test bot report to fix. Otherwise 
> looks good to me.
> 
> Reviewed-by: James Clark <james.clark@linaro.org>
> 
Hi James,

Thanks for the comments and contributions. Will send V11 to address the 
comments.

Jie


