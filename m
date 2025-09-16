Return-Path: <devicetree+bounces-217642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E2D1B58BE2
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 04:35:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 132563AEA7D
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 02:35:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0774C1E00B4;
	Tue, 16 Sep 2025 02:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U1n1VC/u"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CC1B35979
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:35:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757990117; cv=none; b=DXoMhCG2jEvrbEztFj3kEQdy4QnbtGXgQyrXCZmvvVZDM/wuwCrbxEyBKJ6A17FnpOHJw3AoRo9NsFl2hcHgIRITXnEsayB2ovc5JTrJ+/uIs4hVSuFCxp0QSbH2pnVrsiNVc5O5jIEjzMcJozwI4FMwJOdoDNF77+DZw2DasJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757990117; c=relaxed/simple;
	bh=BuIkzkW9SurkzhD9X+x4Ym4NDCdNu94IfsZgoDxRdV8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=msmwBHqBlVjzMmfi8OjBlCr03wApLVwxu/8XHA0hn5PT4FE8IORmUoNJmOvqLD6wrQrmfURfmr39L4UB2/2oimh+BzpITez07wQNbzc9haxs87pmeoAiVG/kiqqygF2SCMV/Jen9suDgXCxjce839fY/cJZWI9Te4x34MPpdVcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U1n1VC/u; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58G2AHwk008436
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:35:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JASlTDQ+qZuxm/AEyyWjcH2QxjTgQBqcBlxVgn/e+JM=; b=U1n1VC/ugsjMH+FR
	TRa/Zp81NWeoR+8v4fb76LnrDsQy/5gxZFzFcEb3X8yySbtfh4JUGpO3UodDKUYc
	Nsrjrl2upDyLuKONmqHtWzZURcUKU+L0CK+npEflmcnDTnAN8a1OlC78KKbBxR5T
	lWasq+r2dJ0gFuskpky3DF0jdCon0FWQeznM9qs2VJJ6jtZCfROyrheNAU0SPqJ3
	l+YLqv+OM5LwIqO1H7lFoUEh3x1HfbeM6lx7Orre+OcSJsa5xVBLTSmBYxq2of/i
	XLjPKBzV5be20h/eOcy69hAr0cztLeyxsyWBRs16vLgDqU0nu5q/NVyP/XDWUrqk
	2+0miA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495eqpwxnu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 02:35:15 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b54b7cb9d30so4188704a12.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 19:35:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757990115; x=1758594915;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JASlTDQ+qZuxm/AEyyWjcH2QxjTgQBqcBlxVgn/e+JM=;
        b=MwZe7Gm7oa62g1AIPtR6dlbUGof3smacPpbkl8OoaIn39EnuM1RQ+H/zLnURd1iEQ4
         LAA17J9MOjJ5endh9IsQ3CzDlJJy0WqiKO3alu0UX8c2CzmAkmrKm9OC0TDpxOJkjSLL
         yfSHE0Arum5PhQs64q378d2vzUYWBoXlBJgbXAuV66nOwVeDx5sA8P7RNpcdg/H8ci2Q
         3bA5Q9ARov9xJxFdgqQPZgxjUZk2yq/bt/cuk/+Cu+tJwqGXAGqTOJ+L1J06QNGil/qt
         1p3iIs9cxR8fGmGJzSTS4xF5v2jEjAPi703ngkdOoyu4x43oTfqcQCLalogorCUQ22WI
         syKA==
X-Forwarded-Encrypted: i=1; AJvYcCXBbCBM+QxORkbskaS2gRzjuzxGR+DM4Vdam5g0fCV0ZIieo0SklcdCsHw+Z1qA+dYtn1XwWAh2u5ro@vger.kernel.org
X-Gm-Message-State: AOJu0Yzr3XhRB7xa92C46sp0MQDvEp/a/ZdwRbxq7D2PAKrMD8Vsdapo
	bwnLnMGzrmNLcnfZ8KAZ427+bBWTWpo11ay1NSLtC9BWHDV71KTrPu4+oYYZRXAyiHg0e+41u6M
	7cFhiaMsXLGgLodnFHYsEA1uZssKNyxtILe4dRhSFttBVBN5Vs1J/C/TD71DMaYeR
X-Gm-Gg: ASbGnctw+nhusso6IEd64qYre51bG+TEtL+P2qKQ/D9Jfoi1ST2CU/o/qAfgqClN3Mm
	L7qAYYGtTUBhibzMaas/oVe7xorzJPtIRfXJQ9vV8GjR2h6kkqsLINidhOddouYFFySOlLMmv9R
	Pw5a23AsSkgmTYxf9+Yzeabc6aAOBwh0dufu1dwvknVsPr+BsAYByGtEkqoiHcf1LrPUeEIYveY
	I7tgdXmKruDRcsFEZeXXKImeYm+ySwUrXhoLpddBBMLoLiy1gADEHlxareKFSQCK5E2agAnXAKX
	49sOcFu8IjU8PKOe7J39ZkKnNRKcNU4DhEpFvI5jTPfeJv5kZxwrqj2nn+mHiovEa/9LZYbLLgM
	QUOsRVdPLfvHeaCjImClGJ2kHSjcC9lbwJM3etgc=
X-Received: by 2002:a05:6a20:7343:b0:250:429b:9e56 with SMTP id adf61e73a8af0-2602a28e319mr18346437637.8.1757990114777;
        Mon, 15 Sep 2025 19:35:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOLGzO215Y1vQ0GPjMPr4AcmObjX2DF8YFcM9ZtdXs0aLfAHkLZ+r8Bv6nCk8Gdo2y2Iny5Q==
X-Received: by 2002:a05:6a20:7343:b0:250:429b:9e56 with SMTP id adf61e73a8af0-2602a28e319mr18346398637.8.1757990114293;
        Mon, 15 Sep 2025 19:35:14 -0700 (PDT)
Received: from [10.133.33.235] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54b5568a82sm9180276a12.34.2025.09.15.19.35.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Sep 2025 19:35:13 -0700 (PDT)
Message-ID: <f9d3b3ec-dcf1-42ce-b925-70e5543771ed@oss.qualcomm.com>
Date: Tue, 16 Sep 2025 10:35:09 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/3] coresight-tnoc: Add support for Interconnect TNOC
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Leo Yan <leo.yan@arm.com>
References: <20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com>
Content-Language: en-US
From: yuanfang zhang <yuanfang.zhang@oss.qualcomm.com>
In-Reply-To: <20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: oGQ32e6DfgPjN_lDInQVsX-FBBEc4brz
X-Proofpoint-ORIG-GUID: oGQ32e6DfgPjN_lDInQVsX-FBBEc4brz
X-Authority-Analysis: v=2.4 cv=XJIwSRhE c=1 sm=1 tr=0 ts=68c8cce3 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Wn57KMgoQ4YZn1JjiAUA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDE4NiBTYWx0ZWRfX94BFER0cd89c
 E9fgQ8Eo5m7RxvZ9eYHbg84Njw8oywm17wWJvbPHl8YU/Bb9iBVqGTFOIvQVpLPg8lYmS5CQBRD
 IKamDUftKIpctvgZU7tIKpmWVUM5hWFs2Gn8kW+Uh7rFIkWeSPBmHNvjvfw4vN+gOXkT6ne0UFy
 0VhKR5uh18eg0RXNUnOPez7NvP3Yh+/NW0UdR6XWcoHbBBI0CXmdYp8J9+3eaB/tDDgYHGMlIBs
 zkFMTmDIte1vMJAvCw4GVp4uDCCoN1RYlDCHY73oEw5xsyJ5ZPyG+rir23lZTOAiVQ/oItjqGOu
 ma4tIwnIVsCgeVs0x/JiOi5lKUg7CdJTOwG4vBnzaj5h2HRayclC6D9XFYFS2GBuSq8v/7Nz9vM
 8G4Eo1s7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_01,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 priorityscore=1501 phishscore=0 impostorscore=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130186

Hi Suzuki,

Could this patch series be applied? Is there anything I need to update?

thanks,
yuanfang.

On 9/1/2025 2:58 PM, Yuanfang Zhang wrote:
> This patch series adds support for the Qualcomm CoreSight Interconnect TNOC
> (Trace Network On Chip) block, which acts as a CoreSight graph link forwarding
> trace data from subsystems to the Aggregator TNOC. Unlike the Aggregator TNOC,
> this block does not support aggregation or ATID assignment.
> 
> Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
> ---
> Changes in v4:
> - Fix unintended blank line removals in trace_noc_enable_hw.
> - Link to v3: https://lore.kernel.org/r/20250828-itnoc-v3-0-f1b55dea7a27@oss.qualcomm.com
> 
> Changes in v3:
> - Add detail for changes in V2.
> - Remove '#address-cells' and '#size-cells' properties from in-ports field.
> - Fix comment indentation for packet description.
> - Link to v2: https://lore.kernel.org/r/20250819-itnoc-v2-0-2d0e6be44e2f@oss.qualcomm.com
> 
> Changes in v2:
> - Removed the trailing '|' after the description in qcom,coresight-itnoc.yaml.
> - Dropped the 'select' section from the YAML file.
> - Updated node name to use a more generic naming convention.
> - Removed the 'items' property from the compatible field.
> - Deleted the description for the reg property.
> - Dropped clock-names and adjusted the order of clock-names and clocks.
> - Moved additionalProperties to follow the $ref of out-ports.
> - Change "atid" type from u32 to int, set it as "-EOPNOTSUPP" for non-AMBA device.
> - Link to v1: https://lore.kernel.org/r/20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com
> 
> ---
> Yuanfang Zhang (3):
>       dt-bindings: arm: qcom: Add Coresight Interconnect TNOC
>       coresight-tnoc: add platform driver to support Interconnect TNOC
>       coresight-tnoc: Add runtime PM support for Interconnect TNOC
> 
>  .../bindings/arm/qcom,coresight-itnoc.yaml         |  90 ++++++++++++++
>  drivers/hwtracing/coresight/coresight-tnoc.c       | 136 +++++++++++++++++++--
>  2 files changed, 215 insertions(+), 11 deletions(-)
> ---
> base-commit: 2b52cf338d39d684a1c6af298e8204902c026aca
> change-id: 20250815-itnoc-460273d1b80c
> 
> Best regards,


