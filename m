Return-Path: <devicetree+bounces-231239-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B03C0B93A
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 02:13:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CDC343B434D
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 01:12:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A43F1236435;
	Mon, 27 Oct 2025 01:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Xpl8wnw6"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3669189B84
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:12:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761527543; cv=none; b=dx+KN0bQ5Mizr336tuMsoPRhe81mFOEZ+WfOQuAuIltwed/HUrkuNtjNMIe6Mavh1vC5JhJmuCDBsOSkg68Wm2Mb3n9zpUyoBvTE0GZDVXsv5kOa4fKvMq/FbqOVtFQ8BB4Xy/oUakVc/XCMaYDYnyhBtxX43U2tAuR+WFWQ9Vg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761527543; c=relaxed/simple;
	bh=3faN5772HvLxahdQ95Ox0jW2vXjmK6vCPZg3+MkXQcs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=r6QRoOh9AdXuq2FZZNiC1WKnSl7W6B7zlLwYPgPoopWAEgbCRXiqEY77xkSHmapzfW1xXR3xurSpTCa21DFPLCMQQJDV6juQJntJDOl0wXTLoAWog/g1v7aPB0qK6T/ubmwWBhB0vepoV0eSYRu5Ldl+YpF8F5A+SjDwHCqwQis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Xpl8wnw6; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59QLt2b3890287
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:12:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UTL9y5hoxBaPgBxu/x6NYcj/Eee8Myu8VJAMg7qDJgo=; b=Xpl8wnw6QZhQF6MJ
	WmRSG9ZOY86FBON/H9krw4KOWDNiumS1K9g/05uu1IpzxgpkAB5J88CFCrZpJovC
	gF3V5ST5uVg1YG63b5E+mvXIYgNnDTlu527UELeKtRsGY+3mROt/UeuAVnQsQQ8f
	c+nq1vJUjs/ArJyrGkKV/D+jkiF5vP4tZik0lbvYtli45gvX94i6AoYLPpqSEdbR
	KhjjZIeaVaxJWtsj+eVmHukVORLS8n2un+tgOzV00EKeQ98c/2a6tJ1VlfNuoxoQ
	7jDM80Uk2HEf/bmrmQJWMn/pQRb3b6j0lGriq84H8wRktq/sZTnWwghfV2r8QI7o
	txdnlg==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0p4g2tbe-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 01:12:20 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-27ee41e062cso44208175ad.1
        for <devicetree@vger.kernel.org>; Sun, 26 Oct 2025 18:12:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761527540; x=1762132340;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UTL9y5hoxBaPgBxu/x6NYcj/Eee8Myu8VJAMg7qDJgo=;
        b=BAkSdIJYXZ9tbgv1Y9ERRNTeajHHPNE8QTS0x538sip9HBBuhyAbM/y2qTmT50uIbv
         Mw2eEWa0zp649i69RThsiJhkCnS1VKr0J1GKiTfdAYBLQsZArLTuKZMmVEPEP2mMrd2I
         DqHbGHnGkFedSBQBb2rSqmW48eanWnMGTMGITw5WMOLmyZWuTf1iKKLGxEAg7+QRH2uc
         iVN9RcMEdFfJsCtxkIQcyfk8WxCmOdHRyG0AlvWHTA0jwa7xcIHHWhwSuAvyEZCEpCEA
         /TbvqZ/YNnVGGqgj84aAbv4rWNzvmKF26HOgNwPJxqHiBoAT0VoeL9s7/qnF1P3abMI+
         +VpA==
X-Forwarded-Encrypted: i=1; AJvYcCXzBZS9Ym25CQuT8YOVv/5fHTONWSHILkB7eHOEntvdME3S7hZ1UQm8a3LDhbLQURQ0SN/GUe3dtkdC@vger.kernel.org
X-Gm-Message-State: AOJu0YzeqbGe48apTtva8/dWtWT89AGvwhEMoJsU1FPIEC27SiJILmYc
	PAZUu/aKCroGjieYunON19tE4zNWWCYun3CWKjOMF0W9rvKIbAJ2nZRZ7LZ4rhw3T2ecoLkTtDw
	5kwp4zzDKtoEEiMFrSre3qDsnop/CT4qpDAVFHn5ysmrtXDRyRaaJUzGn4n/ouSor
X-Gm-Gg: ASbGncueepE2vLLjNLE24Fp2RlWK7Cv7JNncWK23gQ2U0O57BDhOh2re91QFdEClFkQ
	+GsbU1bf59e7chDRtRCPLZGqohsI66uD9HiGHoXN262bDokkQOF+Qvgu6RZAkusQ0IbBQuVswbI
	aySqESN2SSsRRzuDFoLM7StsCBSoLYX/eQ5y74ZzdI4ff5fXNO411Q0zOBJRjlqPazlwa2kgCPu
	ZlWnqg1sWGq9J4NUWmNlFUR2w9mnj26mQPEaFxLAYSw0kjRX4MHxLtWg04RRPmGqnGobx6uYe09
	KMpYlyZjZV6aaZtaiOCcW4nz+7BQTTb/kn9v0egacM74drmvdlgRDupF/5hg+6KPsNkSOU5CnMQ
	e/3h1Fe1p58Uf2OMUqgAcIvZz6diVUjSHcoQUQEMuF1icOMepm++HAXzjW/U24/Mz
X-Received: by 2002:a17:903:138a:b0:28e:c9f6:867b with SMTP id d9443c01a7336-290c9cd4adbmr405070225ad.23.1761527539617;
        Sun, 26 Oct 2025 18:12:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElV346vt6mTLqveixte6Rt17xgJSsxWZg+bp/Vx3HjPF1vQG+l9xsJz6G3G/KOm9+o+if/zQ==
X-Received: by 2002:a17:903:138a:b0:28e:c9f6:867b with SMTP id d9443c01a7336-290c9cd4adbmr405069795ad.23.1761527539112;
        Sun, 26 Oct 2025 18:12:19 -0700 (PDT)
Received: from [10.133.33.212] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29498d27541sm61527645ad.61.2025.10.26.18.12.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Oct 2025 18:12:18 -0700 (PDT)
Message-ID: <06d76546-badc-4035-8954-4c3e13d2fb22@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 09:12:10 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 0/9] coresight: ctcu: Enable byte-cntr function for TMC
 ETR
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Jie Gan
 <quic_jiegan@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: alJdKTkkXW0RNFin-8feu_5UzXsG2tGa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDAwOSBTYWx0ZWRfXxSCpjfvpTwB6
 f241lFcPyUTsn+Q+k+SJ9hBGiPamWJrqwK4B0RDxC2rcoozK/jGjvDLxmfWXeopplbaZvPlPDYG
 AkzOc5V9Ja6+ucRbvUmiOYjOQhrnpbArnZhNRhE9opzf3VHp4vjtKPY1KfIfrJx+Q8ji6ciPgpH
 G03nbYd21gFdl3sS7Uu5DIaNL2IdA26HRSERwMS64wUi5ly+a0Zl8DLhcVrvFScZCd7Mg0j3TOz
 2ktYcTVsiQHg1IYWV6MlVy3kr6RWLy8K6RKOwCEK5m6xAbsJHtkxA46eztofDuudBXXHTx7h6Fw
 JaujA0g+7Vg4iKoGqwAOHg6Jbln3+o6O8Li08bwXf7H3ihP+ev7754yYdGgoFVtVE22btb45SG8
 tJ9mPWbdwE2GyauOxfmdsPng/+ymVg==
X-Authority-Analysis: v=2.4 cv=L9YQguT8 c=1 sm=1 tr=0 ts=68fec6f4 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=BaEammc9KrtT-KL9giMA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: alJdKTkkXW0RNFin-8feu_5UzXsG2tGa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_01,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 lowpriorityscore=0 clxscore=1015 phishscore=0 impostorscore=0
 adultscore=0 priorityscore=1501 spamscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270009



On 10/13/2025 1:49 PM, Jie Gan wrote:
> The byte-cntr function provided by the CTCU device is used to count the
> trace data entering the ETR. An interrupt is triggered if the data size
> exceeds the threshold set in the BYTECNTRVAL register. The interrupt
> handler counts the number of triggered interruptions.
> 
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

Gentle reminder.

Thanks,
Jie


> Changes in V7:
> 1. rebased on tag next-20251010
> 2. updated info for sysfs node document
> Link to V6 - https://lore.kernel.org/all/20250908-enable-byte-cntr-for-tmc-v6-0-1db9e621441a@oss.qualcomm.com/
> 
> Changes in V6:
> 1. rebased on next-20250905.
> 2. fixed the issue that the dtsi file has re-named from sa8775p.dtsi to
>     lemans.dtsi.
> 3. fixed some minor issues about comments.
> Link to V5 - https://lore.kernel.org/all/20250812083731.549-1-jie.gan@oss.qualcomm.com/
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
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---
> Jie Gan (9):
>        coresight: core: Refactoring ctcu_get_active_port and make it generic
>        coresight: core: add a new API to retrieve the helper device
>        coresight: tmc: add etr_buf_list to store allocated etr_buf
>        coresight: tmc: add create/clean functions for etr_buf_list
>        coresight: tmc: Introduce sysfs_read_ops to wrap sysfs read operations
>        dt-bindings: arm: add an interrupt property for Coresight CTCU
>        coresight: ctcu: enable byte-cntr for TMC ETR devices
>        coresight: tmc: integrate byte-cntr's read_ops with sysfs file_ops
>        arm64: dts: qcom: lemans: Add interrupts to CTCU device
> 
>   .../ABI/testing/sysfs-bus-coresight-devices-ctcu   |   6 +
>   .../bindings/arm/qcom,coresight-ctcu.yaml          |  17 +
>   arch/arm64/boot/dts/qcom/lemans.dtsi               |   5 +
>   drivers/hwtracing/coresight/Makefile               |   2 +-
>   drivers/hwtracing/coresight/coresight-core.c       |  59 ++++
>   .../hwtracing/coresight/coresight-ctcu-byte-cntr.c | 368 +++++++++++++++++++++
>   drivers/hwtracing/coresight/coresight-ctcu-core.c  | 108 ++++--
>   drivers/hwtracing/coresight/coresight-ctcu.h       |  62 +++-
>   drivers/hwtracing/coresight/coresight-priv.h       |   4 +
>   drivers/hwtracing/coresight/coresight-tmc-core.c   | 104 ++++--
>   drivers/hwtracing/coresight/coresight-tmc-etr.c    | 112 +++++++
>   drivers/hwtracing/coresight/coresight-tmc.h        |  37 +++
>   12 files changed, 825 insertions(+), 59 deletions(-)
> ---
> base-commit: 2b763d4652393c90eaa771a5164502ec9dd965ae
> change-id: 20251013-enable-byte-cntr-for-ctcu-6199b791b77a
> 
> Best regards,


