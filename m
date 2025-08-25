Return-Path: <devicetree+bounces-208779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B3D6B333A2
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 03:42:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 067491B2392F
	for <lists+devicetree@lfdr.de>; Mon, 25 Aug 2025 01:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5894B225390;
	Mon, 25 Aug 2025 01:42:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="orpO7qzt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94D671684B0
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 01:42:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756086128; cv=none; b=U/aWNIMILGLWpKl6KsOy/GXJNyyZ9u+L71/jV7Lkms7f7wXUgutHQvId9M2d+XrRka4pD01d8kS1WDrdAqSx/D/Wxc8wi+i15pZSMEpwbPiCfTCvxp8TKK7KszjYMCXSLzn6ivETAWfPOfpfvroDtdM+xVgTuTcCQozH5MWXtNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756086128; c=relaxed/simple;
	bh=zpy3CPCsKKXJnvGmLLgrbV3uwvG1fwnWbtBi902V9h0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jSx0wmcWH6HTY/T0D6aS7qXGZQ/3W5ehSLi4fOAC8uM24nCfpi4UzKfhN6CHZ7nVVYDqNYKBrDfSZnZM9lOc+SVTBDk2ohC5rWMJtXBwM6bBkTYfk6BGYPMOXrHOOlg11XobCWFpCvL6ZaWRqTgM1hdjY0QCV9Lp9eoNOk6NxVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=orpO7qzt; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57OLNh8x028616
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 01:42:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wx9Mvwqd/Fupzjh9dwn+ke7htuP2OVC1r6OZYVm27Po=; b=orpO7qzt+8k89oHt
	VNTCILEaVRu5r08lraPhC40re5n2QnX8zJ86dYv3IspbUQW+rR1PINtO4JmLYZcq
	i0GtxtJqs7LUKDXCFUFp3s14NOID8TZHXbFZEzc8/7HPsMVN3qckba24aU7BAmZ8
	bgQjnWzJ8fODxB91PvQwzNEFKe952WbjwPb7N8cO1UHJ/6eAJ2dsKp5YWqRgCjxQ
	ci19J+G5QYKJR0RryHO7VnH3Xu48FtBMqmPyKpHCXAWHIu69VB1sXwrX9DLN9Se+
	uAIlyezllKptof/88CixLWBBQllWTBwIiOvjleHvtACUbR7K7MNGyTo7bK7N9Umw
	R5kCFg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q5wdu8x7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 25 Aug 2025 01:42:05 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2461907278dso34405055ad.3
        for <devicetree@vger.kernel.org>; Sun, 24 Aug 2025 18:42:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756086124; x=1756690924;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wx9Mvwqd/Fupzjh9dwn+ke7htuP2OVC1r6OZYVm27Po=;
        b=w55N0eAGa1WyNEXKGvh0I/y1uNvZH/cQqyW88qXh2R7+/KE3h0WhoijOtjjPF6IHhl
         lGFV59oDpSIl+Kc18djFkLqIwwk+D7QZBcUq9A/aMfo+cQ5RuvlUAZ+iW/gxa/tcoFre
         bWpGeynHpJSO0IyKR+K+pux9xdq4uyqlKyH147LcVE90SrlIvVgkLaFHD1kdp6mSM4IA
         v7zmbHimc/w8BkSS7Bmmyi/CTqyL+GWU/e9UyuB8hEThiwIArwCSuxzlDrq1SYwkZB4s
         +pc++cEWkT+WwDKIBC9//drZ6hiEsPK7tZL/uwSOSi63pesEfhWOc7C96F89iFKuyDue
         gxrA==
X-Forwarded-Encrypted: i=1; AJvYcCW2zvJoiE+WtFgrzX02TjI47eAgJtBvj6UECIiVEmOGTRUvqqGGkZDi7Ru9FQlh66tDn5D7ZWfXGL6m@vger.kernel.org
X-Gm-Message-State: AOJu0YwaA8O9A/rSQzDrzL2FAvCEHEjgm+DPhAZdU6N9QjdDkIhASZ/J
	/+hqba5PSFDIqP/CA7xTsoaPx0T/sczKSockpTVO28nq55NYB2SxxkuWpbQ38Z6ZSk/zp+W4uRZ
	lT9OKCNsayuccSNhii5jhuHcMptS8gqRe3JGzd8W0/XHo2VrcVlPGf+imdpozMV7M
X-Gm-Gg: ASbGnctLlfEwlPGVAr+ulwaPSt3lixLP3Fb5E/p1L3lzTmyVqjaJM+8E3XtBhE1IhSg
	YLxpJRq5b7Rkd2zvsN+X6cRXbPJdUcvBRT+LRQ6+iMqARQOHHwXO36ORmqkaRtWssSr98J8wuzk
	yWwDcPV5Hs7hwAUDIUjlrd4hCaN7rPq6OuTHbqlIDLkT7CLKChGjV6tnAi4lqt99dPaIRWQvufa
	YRHYHTBznwI842JJOYJyU76TIK6icpTKIZiKdpn2c9SS9dVmaQ5nCFOolF25ikDakws33ZgqIs0
	myx7TrcOBJfPYz9D0Xd+YVqHoz8PcfwUE09tOjkgzN6mvs64XIDd/5v2MFyWwftRbD/JlLxb5Kr
	oo6P/7Ydnae0maVQeURG/rMA6fNHyow==
X-Received: by 2002:a17:903:1b06:b0:240:a559:be6a with SMTP id d9443c01a7336-2462ef4446amr141635195ad.34.1756086123851;
        Sun, 24 Aug 2025 18:42:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFFpg+bpZ7QwpIA5qa7RwCY04pGTISVYnR1wJpz4Jt6bzorPDManuuY4IJYjNnbtQCMDCdC8g==
X-Received: by 2002:a17:903:1b06:b0:240:a559:be6a with SMTP id d9443c01a7336-2462ef4446amr141634875ad.34.1756086123386;
        Sun, 24 Aug 2025 18:42:03 -0700 (PDT)
Received: from [10.133.33.155] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-246687af234sm53290055ad.48.2025.08.24.18.41.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Aug 2025 18:42:03 -0700 (PDT)
Message-ID: <c4f7eb1d-79a9-4fa3-8cfa-0c499b394da2@oss.qualcomm.com>
Date: Mon, 25 Aug 2025 09:41:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/9] coresight: ctcu: Enable byte-cntr function for TMC
 ETR
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250812083731.549-1-jie.gan@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20250812083731.549-1-jie.gan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: zrQfVdY6xgdL-ezN5h69P_qrc-dGC38_
X-Proofpoint-ORIG-GUID: zrQfVdY6xgdL-ezN5h69P_qrc-dGC38_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzMyBTYWx0ZWRfX+1RRXc9uYEOv
 mM9JlcQ4MH7FeZutfYZ8HUABVz8XnHCaJUZFTMeEdiM6+Ifx4GpJrEF7Y+AjaBHpC4ns+IU6Ewj
 e6jA9lPLkt3EkHNXj5dPlvQL27ujrFtDR29RrLPCg28g27SXKhXBC5wp3FC+i7daChR5FEC8Icr
 RMHE4jepz2vxOR5TnlaKLBLYqzM1NferXNI/x+gGeWQKa6jt7rUx7vWrer+RP1sKPAcUs4n+tC/
 M6wZLozH5BBuarn9lnBovcvKSHiGWaORZtHcvvyUt/RJgTsRQBTrC7kKMq3P8OqZyL7MocVV6U9
 zjuK5BRk4yEYBbeVaTms0z5TGILvx4qNsjdPPpS45fvqnUWQLVxmR4p+vy3E+o6nT6rMS6tqsKH
 h3ye9kdX
X-Authority-Analysis: v=2.4 cv=BJazrEQG c=1 sm=1 tr=0 ts=68abbf6d cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=BaEammc9KrtT-KL9giMA:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-24_08,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 bulkscore=0 phishscore=0 suspectscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508230033



On 8/12/2025 4:37 PM, Jie Gan wrote:
> The byte-cntr function provided by the CTCU device is used to count the
> trace data entering the ETR. An interrupt is triggered if the data size
> exceeds the threshold set in the BYTECNTRVAL register. The interrupt
> handler counts the number of triggered interruptions.
> 


Just a gentle reminder to ensure the patch series hasn't been overlooked 
due to the high volume of message.

Thanks,
Jie


> Based on this concept, the irq_cnt can be used to determine whether
> the etr_buf is full. The ETR device will be disabled when the active
> etr_buf is nearly full or a timeout occurs. The nearly full buffer will
> be switched to background after synced. A new buffer will be picked from
> the etr_buf_list, then restart the ETR device.
> 
> The byte-cntr reading functions can access data from the synced and
> deactivated buffer, transferring trace data from the etr_buf to userspace
> without stopping the ETR device.
> 
> The byte-cntr read operation has integrated with the file node tmc_etr,
> for example:
> /dev/tmc_etr0
> /dev/tmc_etr1
> 
> There are two scenarios for the tmc_etr file node with byte-cntr function:
> 1. BYTECNTRVAL register is configured and byte-cntr is enabled -> byte-cntr read
> 2. BYTECNTRVAL register is reset or byte-cntr is disabled -> original behavior
> 
> Shell commands to enable byte-cntr reading for etr0:
> echo 0x10000 > /sys/bus/coresight/devices/ctcu0/irq_threshold
> echo 1 > /sys/bus/coresight/devices/tmc_etr0/enable_sink
> echo 1 > /sys/bus/coresight/devices/etm0/enable_source
> cat /dev/tmc_etr0
> 
> Enable both ETR0 and ETR1:
> echo 0x10000 0x10000 > /sys/bus/coresight/devices/ctcu0/irq_threshold
> 
> Reset the BYTECNTR register for etr0:
> echo 0 > /sys/bus/coresight/devices/ctcu0/irq_threshold
> 
> Changes in V5:
> 1. Add Mike's reviewed-by tag for patchset 1,2,5.
> 2. Remove the function pointer added to helper_ops according to Mike's
>     comment, it also results the patchset has been removed.
> 3. Optimizing the paired create/clean functions for etr_buf_list.
> 4. Remove the unneeded parameter "reading" from the etr_buf_node.
> Link to V4 - https://lore.kernel.org/all/20250725100806.1157-1-jie.gan@oss.qualcomm.com/
> 
> Changes in V4:
> 1. Rename the function to coresight_get_in_port_dest regarding to Mike's
> comment (patch 1/10).
> 2. Add lock to protect the connections regarding to Mike's comment
> (patch 2/10).
> 3. Move all byte-cntr functions to coresight-ctcu-byte-cntr file.
> 4. Add tmc_read_ops to wrap all read operations for TMC device.
> 5. Add a function in helper_ops to check whether the byte-cntr is
> enabkled.
> 6. Call byte-cntr's read_ops if byte-cntr is enabled when reading data
> from the sysfs node.
> Link to V3 resend - https://lore.kernel.org/all/20250714063109.591-1-jie.gan@oss.qualcomm.com/
> 
> Changes in V3 resend:
> 1. rebased on next-20250711.
> Link to V3 - https://lore.kernel.org/all/20250624060438.7469-1-jie.gan@oss.qualcomm.com/
> 
> Changes in V3:
> 1. The previous solution has been deprecated.
> 2. Add a etr_buf_list to manage allcated etr buffers.
> 3. Add a logic to switch buffer for ETR.
> 4. Add read functions to read trace data from synced etr buffer.
> Link to V2 - https://lore.kernel.org/all/20250410013330.3609482-1-jie.gan@oss.qualcomm.com/
> 
> Changes in V2:
> 1. Removed the independent file node /dev/byte_cntr.
> 2. Integrated the byte-cntr's file operations with current ETR file
>     node.
> 3. Optimized the driver code of the CTCU that associated with byte-cntr.
> 4. Add kernel document for the export API tmc_etr_get_rwp_offset.
> 5. Optimized the way to read the rwp_offset according to Mike's
>     suggestion.
> 6. Removed the dependency of the dts patch.
> Link to V1 - https://lore.kernel.org/all/20250310090407.2069489-1-quic_jiegan@quicinc.com/
> 
> Jie Gan (9):
>    coresight: core: Refactoring ctcu_get_active_port and make it generic
>    coresight: core: add a new API to retrieve the helper device
>    coresight: tmc: add etr_buf_list to store allocated etr_buf
>    coresight: tmc: add create/clean functions for etr_buf_list
>    coresight: tmc: Introduce sysfs_read_ops to wrap sysfs read operations
>    dt-bindings: arm: add an interrupt property for Coresight CTCU
>    coresight: ctcu: enable byte-cntr for TMC ETR devices
>    coresight: tmc: integrate byte-cntr's read_ops with sysfs file_ops
>    arm64: dts: qcom: sa8775p: Add interrupts to CTCU device
> 
>   .../testing/sysfs-bus-coresight-devices-ctcu  |   5 +
>   .../bindings/arm/qcom,coresight-ctcu.yaml     |  17 +
>   arch/arm64/boot/dts/qcom/sa8775p.dtsi         |   5 +
>   drivers/hwtracing/coresight/Makefile          |   2 +-
>   drivers/hwtracing/coresight/coresight-core.c  |  59 +++
>   .../coresight/coresight-ctcu-byte-cntr.c      | 368 ++++++++++++++++++
>   .../hwtracing/coresight/coresight-ctcu-core.c | 108 +++--
>   drivers/hwtracing/coresight/coresight-ctcu.h  |  62 ++-
>   drivers/hwtracing/coresight/coresight-priv.h  |   4 +
>   .../hwtracing/coresight/coresight-tmc-core.c  | 104 +++--
>   .../hwtracing/coresight/coresight-tmc-etr.c   | 110 ++++++
>   drivers/hwtracing/coresight/coresight-tmc.h   |  39 ++
>   12 files changed, 824 insertions(+), 59 deletions(-)
>   create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-ctcu
>   create mode 100644 drivers/hwtracing/coresight/coresight-ctcu-byte-cntr.c
> 


