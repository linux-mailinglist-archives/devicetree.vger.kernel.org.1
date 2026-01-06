Return-Path: <devicetree+bounces-251787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DC984CF701D
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 08:15:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D96BC301720B
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 07:15:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2CAEB309F08;
	Tue,  6 Jan 2026 07:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A/exXuR9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Tu4YHQFE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CD191E5B9E
	for <devicetree@vger.kernel.org>; Tue,  6 Jan 2026 07:15:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767683746; cv=none; b=YSuFo+X4Y9t7RKkxxihyE9V6mad/p0YviQi88zHx6zw8vMxDqBMtV3+eJ19gvR9VvUQCawUeKgXwmD5e0O70laHCB4Nsd8jjWO+elKcDFLHoSDIVQaTOzglik6+NlMQBD1KpyG+9+GNBFXg3F+BWi0pjsEhyeBBd1jjUZ9VOFz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767683746; c=relaxed/simple;
	bh=LhzZr6d5gdTfwWsSCX+9pdrVjJ+ifYQqt2dCU6U79Ts=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YLuUsuyCWo88dI5x/9Z6ErT8yTTPnN2nGkHXmCgHY1zpTrRxDmF9qGJkci6I0CF4GKwiYfeJaEkJLaKsj9LgZHfhztC65R5zqIu88kJT+A/6zFi/HMVCF8ySrmARLRucJOJz9FBzRGmI75R4XPyjXpo7DA2k5wYg2Bcu2sRjkI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A/exXuR9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Tu4YHQFE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6066t4RC3295007
	for <devicetree@vger.kernel.org>; Tue, 6 Jan 2026 07:15:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HNAp68+71SOrhc4XkrCjpRdxRU8+RksdS+2nj1HGzYA=; b=A/exXuR9w5k/orIa
	JsSYfC712GVoCj/bNRtmJVs2urbVhzYRXqgpLz9/soP4/bgXdeDybZAR5dMzt3mu
	cFvUzxv87aVs0g/re3MzDjkqNyFHOU+PE1VU4XAYQaPqscsCzdXZVhUnlDcf7nPg
	zhFyIr0jqmRSbmpkDOmQUzz6iUiKF3E2gaMrRkdR/bKrgr63xGc/y6qhQuemG5nE
	IZGDIeaFfQ1Ukp+xlism7+cfzqRubjLAdQ5IoiQRvoes4i5FrwZ9mnNUTOZUp6IU
	TvIT5gK63oOY9K+jaQ11etfnd4B5YVUxRnTjP0VaZ810MRLOk3+FM86dz52NZSau
	9bOuTw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bgwj001xx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 Jan 2026 07:15:43 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-34e5a9de94bso1705990a91.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jan 2026 23:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767683743; x=1768288543; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HNAp68+71SOrhc4XkrCjpRdxRU8+RksdS+2nj1HGzYA=;
        b=Tu4YHQFEsBcVOu9yBvhDVAVd0QRoxoABN3e2DmYndTEYHwUQPSrCyOm2eZkT2USBR4
         bVpHoC6cD14ALc5TZTvqweh2svOIR2s4ZL4qpKReiTGA7ggna9/Rok5gi6Awp2XCS6Lo
         A8liQHHC44DBs7CN/rEMlzmtan8TjqUChu22QpF3da4aTiQ8eFF/bby5vUgp7m0RMhp9
         Vhrc9Jc73BNFOUnDwwLHuql+6szy9C0tocStHoqXBaKlDAwlj+fYCc4oIx6KpRolrEDZ
         zayDBRghHeSw/qwF8IVc8mQl80o34QMNnvxnob2aGd3TUbUGXE9IYEPKSD7o/PvuQkuS
         Aecg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767683743; x=1768288543;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HNAp68+71SOrhc4XkrCjpRdxRU8+RksdS+2nj1HGzYA=;
        b=BXmwY7nkWD6q2yegwxMe6abN6FoAxmQMWlvYK/hGIjNnh7OH9A4Ul4HRS/m7R3Pmxc
         EUAdjY/sAQmip2GW+0+qr/RJMhrtR6yQ4ewmEzGAQ/a5phjO9yELa68rjtABjtMXOnI4
         mTqADn8prGro4/UF0aEvm/KcuuE34AmtCi4i729iy0wsNfQv6OeofSQD48Z93ZPDbPKs
         7EkVpOeu8He8hSgttrp49NvaRHeaKN2hlNEqbrU3uRWpdFpa8QXBjqjPP3qzTk2eJdb6
         tJwTmgMP6f8wuTGceHHFCF1IlXXymMIkUpJswIdv/0FHYPqLGriwBHEjtfmc3vN//X4m
         kG0Q==
X-Forwarded-Encrypted: i=1; AJvYcCV20trnCujIpp1sU3G2ZP3JrlnKqx7dCsAWbOEJzQ2pMdzdf5c9vt3BQYXAOSV19cxozjrqCFHl4wVi@vger.kernel.org
X-Gm-Message-State: AOJu0YzmmYKu7hd8wlgiwbJxOPnhx2LbAsAiMPLfRpfHm5paNRW9nPRe
	vOaqNvo1cIzZgSXeRXAEhfha8vFlklryEUo3M90h49Ljs38/h0WOa8Fgsv8Tr598al3UoliRjjF
	hhdeRTiY4eOVlCqIjZQiaMk6kEpjU4gCG5EfE8h4cZe2B6hwSUjKxt990N5k+1KSE
X-Gm-Gg: AY/fxX6yzip5XE1hJjFphS4lpGwbqutqTl63lMjQsJMd+oLf6FuyopmCBT0PYcvCx/5
	L2cXI9xucwCU27KiTpaQYBzjxZWJYAvql6DIjRKzZ2vFJBtUakvpaIZRnBdzXpZWm24VDYcRQXM
	XHn4DUUjW0IarRvuMrHfmQy4jAlER8welVGPeRZLAcm4Nl+9mF1AYwtZjwyf1pq30D6n0SlOlBv
	57QbYMKWynhyoY2y1d/C+gs8uNpeJFk7RjuUwMPOTCmURPbDOgNFv5ScKTn8h25gLwDHnvCLrZj
	Z2+3jvfv7XapQ9YSTVoz2mOgoZ2WKWnbuu0O9MudDjWHVStYsJwGu/Nvi/bgXg4yB8X0JirLSzo
	diraUeMxxn6C3dbHjooihzPsmVpzm2iDp9/FtyPgGuvNZUOyowLCZmq0j5mkowuw68JeNQrFWBg
	==
X-Received: by 2002:a17:90b:3d45:b0:345:badf:f1b7 with SMTP id 98e67ed59e1d1-34f5f2fb2a8mr1570056a91.28.1767683742935;
        Mon, 05 Jan 2026 23:15:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHsY4a1SQtAYcnGDTYCjULHoa0MO6FMR3sJMo1brUZBDzVHDTbS9hjPkeveMU8haIG15gnKpQ==
X-Received: by 2002:a17:90b:3d45:b0:345:badf:f1b7 with SMTP id 98e67ed59e1d1-34f5f2fb2a8mr1570032a91.28.1767683742389;
        Mon, 05 Jan 2026 23:15:42 -0800 (PST)
Received: from [10.133.33.93] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34f5fb64b3esm1298770a91.10.2026.01.05.23.15.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jan 2026 23:15:41 -0800 (PST)
Message-ID: <9464872c-fd87-42fe-bcc6-1b87a0b21843@oss.qualcomm.com>
Date: Tue, 6 Jan 2026 15:15:35 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 0/8] coresight: ctcu: Enable byte-cntr function for TMC
 ETR
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
References: <20251224-enable-byte-cntr-for-ctcu-v9-0-886c4496fed4@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20251224-enable-byte-cntr-for-ctcu-v9-0-886c4496fed4@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA2MDA2MCBTYWx0ZWRfXwKhdQWPzk1D6
 CjY2WfLgODvaxAiQ8OWUMB02xY5ebagTyvIdJLR9HDpMoecj1HIxJtcyJLz3wa4BuchXH8IedpS
 XnB7bq16gg3Yb0As34nymqxD9UTkw7huIb70eSfJI++SHQw9XOCWGHYRGBpbVpFt1SsB+YfA2m7
 Q7YYRxJO07BoJO2hoJQCv4T971sc0IYgTWu7r8AdZkCAZpl2TOyQKRbK4Wmn0vxDN4MNPzh+ZNU
 dRI1Gk/qRsIfanDdJ6HhY2Wkwcu3X9rlz9Y5d397n56s8H3FYjoQz4N1G6S1XVDtFCf/1+kx0aF
 IkCOcXmIzex32yNJD2Zfmyfca6jX5lPgWKxmAu9HPnb1cLsUATOhg7Q5IUDTQCtB6MxmR8grnmV
 tMO7knXadBRnXA0pI+8FApfdo/vC60s0FVDRiwLI8R3VqE+wjOCH/FlZCLSwk0eQaUsJiQ4mRCt
 rQMxjOKMx39jMtAKqUQ==
X-Authority-Analysis: v=2.4 cv=bdBmkePB c=1 sm=1 tr=0 ts=695cb69f cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=hyi39RYjpJE5wifr7rwA:9 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: DIo7Vy-U2DzgbjYDiiHTB4c1rsW159oF
X-Proofpoint-GUID: DIo7Vy-U2DzgbjYDiiHTB4c1rsW159oF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-05_02,2026-01-05_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 impostorscore=0 clxscore=1015 phishscore=0
 spamscore=0 suspectscore=0 priorityscore=1501 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601060060



On 12/24/2025 5:06 PM, Jie Gan wrote:
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
> echo 0x10000 > /sys/bus/coresight/devices/ctcu0/irq_threshold0
> echo 1 > /sys/bus/coresight/devices/tmc_etr0/enable_sink
> echo 1 > /sys/bus/coresight/devices/etm0/enable_source
> cat /dev/tmc_etr0
> 
> Reset the BYTECNTR register for etr0:
> echo 0 > /sys/bus/coresight/devices/ctcu0/irq_threshold0
> 
> Changes in v9:
> 1. Drop the patch: add a new API to retrieve the helper device
> 2. Add a new patch to refactor the tmc_etr_get_catu_device function,
>     making it generic to support all types of helper devices associated with ETR.
> 3. Optimizing the code for creating irq_threshold sysfs node.
> Link to v8: https://lore.kernel.org/r/20251211-enable-byte-cntr-for-ctcu-v8-0-3e12ff313191@oss.qualcomm.com
> 

Gentle reminder.

> Changes in V8:
> 1. Optimizing the patch 1 and patch 2 according to Suzuki's comments.
> 2. Combine the patch 3 and patch 4 together.
> 3. Rename the interrupt-name to prevent confusion, for example:etr0->etrirq0.
> Link to V7 - https://lore.kernel.org/all/20251013-enable-byte-cntr-for-ctcu-v7-0-e1e8f41e15dd@oss.qualcomm.com/
> 
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
> Jie Gan (8):
>        coresight: core: Refactoring ctcu_get_active_port and make it generic
>        coresight: tmc: add create/clean functions for etr_buf_list
>        coresight: tmc: Introduce sysfs_read_ops to wrap sysfs read operations
>        coresight: etr: refactor the tmc_etr_get_catu_device function
>        dt-bindings: arm: add an interrupt property for Coresight CTCU
>        coresight: ctcu: enable byte-cntr for TMC ETR devices
>        coresight: tmc: integrate byte-cntr's read_ops with sysfs file_ops
>        arm64: dts: qcom: lemans: add interrupts to CTCU device
> 
>   .../ABI/testing/sysfs-bus-coresight-devices-ctcu   |   8 +
>   .../bindings/arm/qcom,coresight-ctcu.yaml          |  10 +
>   arch/arm64/boot/dts/qcom/lemans.dtsi               |   3 +
>   drivers/hwtracing/coresight/Makefile               |   2 +-
>   drivers/hwtracing/coresight/coresight-catu.c       |   3 +-
>   drivers/hwtracing/coresight/coresight-core.c       |  24 ++
>   .../hwtracing/coresight/coresight-ctcu-byte-cntr.c | 366 +++++++++++++++++++++
>   drivers/hwtracing/coresight/coresight-ctcu-core.c  | 122 +++++--
>   drivers/hwtracing/coresight/coresight-ctcu.h       |  77 ++++-
>   drivers/hwtracing/coresight/coresight-priv.h       |   2 +
>   drivers/hwtracing/coresight/coresight-tmc-core.c   | 104 ++++--
>   drivers/hwtracing/coresight/coresight-tmc-etr.c    | 144 +++++++-
>   drivers/hwtracing/coresight/coresight-tmc.h        |  40 ++-
>   13 files changed, 833 insertions(+), 72 deletions(-)
> ---
> base-commit: 47b7b5e32bb7264b51b89186043e1ada4090b558
> change-id: 20251203-enable-byte-cntr-for-ctcu-5a4b88f2feb9
> 
> Best regards,


