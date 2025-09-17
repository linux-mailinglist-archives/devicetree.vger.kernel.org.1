Return-Path: <devicetree+bounces-218160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 07CB0B7E1C0
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 14:42:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D2F117EA09
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 03:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55CBE2F3C05;
	Wed, 17 Sep 2025 03:12:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oGwtjH0E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E5572D7809
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 03:12:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758078734; cv=none; b=fU04yF2u3Ha8IzV2KeB96HK/XCIB8m2u+i3CN67HKScG0S2p6gdgRlgMMjN+L1kffxPVyYZDbRXh8mNf8qSNHXiWZnNY6YWF1kepWQzYP0gsb5ybf3xVDKb1oj4R5HwPsJ/VeKzAkKq6gATi0tfa/P3LkLhMayykxShl3VaGfos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758078734; c=relaxed/simple;
	bh=HGk0zHkNVuTcetYNXMVhF4YwwhvGPgQMOA5eFKT2YJ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:Cc:From:
	 In-Reply-To:Content-Type; b=lbx/+2x1ZsE2CHyNTOLEyVMnGN/QHBcmi2H2CMeygj2NQ88p2PvGAFoxmD5ODX6apviMbMDDpk7Hv3E1BqRz+IHjG+Z52lOflNsZAYoJo7tWIe1knGSeB1xJB2ePc7VP7pbigpvSltez8BOjw3JvVmfOaJ9AGMc6RTu1vMD5uyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oGwtjH0E; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GLZlMa017840
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 03:12:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	bIG1bOtImKnLmFSkvvJht6cuFZCgJS/l0Y73y0ey89k=; b=oGwtjH0Exgc4HJZ6
	4LNgPy8k8wroe0yLplggfurthr8oAqn+Q5FKJ4OOs3YhWK5oqUa2JBku4nkVvU0i
	cJMyidg0zNEdY520cjzriTQbt0TqdqNqr2WAP8bZUEDvUBlYXfjL3DcpsPpd40c4
	/+W8LN8RH+Xzek48UJ3TraPDYOYWtbLh4GgwV/2uXEB9PeAZs/jFr6C3FhkehRXy
	2mN2Qh+ObGJCWPmJJqTBCL43ZV2On770JPd+twZYZ3JTWixuyCgojwRbFPx3IQ2N
	plMVPYcgdC2iGVnDL3c7BA2nmSolMByIediv0ySurzfJZ3DgERht8OkFvJheT90e
	pepmUQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxt0ptm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 03:12:11 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2445806b18aso60298795ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 20:12:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758078731; x=1758683531;
        h=content-transfer-encoding:in-reply-to:from:cc:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bIG1bOtImKnLmFSkvvJht6cuFZCgJS/l0Y73y0ey89k=;
        b=OnP+60nfr20iwZ2hbE2dQoToSsRY0HQPTPBGSY5VV2P118/d4zexN9jK59RWXJKCfG
         LbzCutujESRBUmLNb3ogZjWQ0DdyIY4VyRSl9pSxJZp/Gc0XS9u69Vv8yrzsGu0mrWWq
         KsDUAHJPI8V7SW5dAkOeRQAYhDQ9lfk1YTsMb+mdGYFWMSJOQv6mF9Mysi5TfxwVLXZi
         CZzDXB+F05D8jNsLs8IgO5Qv89jGf/IoR4P0/mVT52qVj1kPGJAKO+m/R5+U49Tg4Zw5
         Wdc3LOg3IbMFTo6J5NpgSrQwij2ihMOPjH1aiEZjwD/zrDCjDo3Sc4Xfxb4iqqZ2QFob
         o2kQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOO5tkJOdp0fGOo0h2t+lI0wPVCKYZ781dhJKtqix+HhaKPQMP3P/d71LgtxtOklgaajgyeOOGiwwt@vger.kernel.org
X-Gm-Message-State: AOJu0YyFQBPYR4AZkWNPKw+dDtn8venadHKfWdrLCO7ZGzdeoOUKgHoa
	LuZAKKKb901xR2Dn2fspCJDBjezla+eDIBVxzWGce42Kg9x/yweoIFSB+eWGxLV6KoSlea7QcCk
	CkWKcXBL7Zz9ASiJwx0iUWha/sWFbKFPb29PtvZDZyK1MVAxoS3P0RNDKX7UvodBn
X-Gm-Gg: ASbGncvkbKf7Wf/uPDOQ8SsI0wEkpC1IMP7B3qd+7ZixlHhYsHhkR/Nkmrh8XEosJkS
	LstvYkpd0psEGdevbCoxr0NZz+BVNyTBRnUXvOREJvD53qgj2CsSwu8QHywetHFSAgScoqwScnk
	ctCCt2TKiEwnNuC0SPPnRamljptjZanoV66tTl2CzPqfNUADFDNCzkMTcu9vStZ0/Y6q+sT5Sp2
	gKgQqmPKqmrnl+mW0k4p5i9akjZjPFzVMFveRzEg6YUSmvtkuugRJiuCJH4AkPrTM317bQAINs2
	I1mM/HsnpvH46mznWd5gQKLmVIVCyr7L3yRTr++oNzi/P7XkbpL90h2Xoi92mkQAyaCqhJFXxHp
	qrHpiLoyVVwvCVuiaM+2PU5sqj9FfbB0YXEw2B0I=
X-Received: by 2002:a17:903:b0b:b0:264:a34c:c6d with SMTP id d9443c01a7336-268137f2232mr5877095ad.37.1758078730932;
        Tue, 16 Sep 2025 20:12:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBCLcKRApHcGH30xII8GXUVK5/XOxilDiSXJooBQ2zL0Io8pE34P9hJiDzte0TVak6qxwcsA==
X-Received: by 2002:a17:903:b0b:b0:264:a34c:c6d with SMTP id d9443c01a7336-268137f2232mr5876785ad.37.1758078730453;
        Tue, 16 Sep 2025 20:12:10 -0700 (PDT)
Received: from [10.133.33.235] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c36cc6abcsm176125835ad.16.2025.09.16.20.12.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 20:12:10 -0700 (PDT)
Message-ID: <634a38d3-0a20-471d-bc39-44a822df00dd@oss.qualcomm.com>
Date: Wed, 17 Sep 2025 11:12:04 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/3] coresight-tnoc: Add support for Interconnect TNOC
To: Mike Leach <mike.leach@linaro.org>
References: <20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com>
 <f9d3b3ec-dcf1-42ce-b925-70e5543771ed@oss.qualcomm.com>
 <CAJ9a7Vivhrx2zss_8Ti+QS1dzakp+4CrAsDj00RKojUaL_t7Sg@mail.gmail.com>
Content-Language: en-US
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, coresight@lists.linaro.org,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Leo Yan <leo.yan@arm.com>
From: yuanfang zhang <yuanfang.zhang@oss.qualcomm.com>
In-Reply-To: <CAJ9a7Vivhrx2zss_8Ti+QS1dzakp+4CrAsDj00RKojUaL_t7Sg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: BuZpRWuefbBeoDoaGAJ9wV1edIP5CRYb
X-Authority-Analysis: v=2.4 cv=bIMWIO+Z c=1 sm=1 tr=0 ts=68ca270b cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=WTqQPv3OPy9EuyCnVQMA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX4E306CcKR/IU
 BVrjaXaSu5NUMe5n/aqMN69jFRe8kybE/mvH2I8qEmbbEicFuo9ymfS8JjiWoUWGha6wz3+yvTj
 bBMWMRYzQ0yAQkvAHYyCwHh98yn/ON+q0NgwYzb0t8s2b9szsvdQEmuHH+kkqXq+8l83Nca4O80
 SzqHKpdiMC2fpTYjjmvdUjQRn9n9z+0vILTc6l2v0NItQJACDtAAMUMkQuslm1SBALK8oDcTsvQ
 MQloMTdxPR/HATDRz7igzgXfCeUiqWkjWGa2UtvrbYa58Sp2PRRW+ikBTYs0lVpLsTuHl+By6RJ
 c4Ol+M0V7rcKtxbizfBMqLUMjtKuvcZlebNswt7/CI2xTzgaEN6Wv5X7ENX/W81BxaKKguK5iWT
 jk6UA4eJ
X-Proofpoint-ORIG-GUID: BuZpRWuefbBeoDoaGAJ9wV1edIP5CRYb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-16_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 suspectscore=0 spamscore=0 bulkscore=0 phishscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202



On 9/16/2025 9:00 PM, Mike Leach wrote:
> Hi,
> 
> I'm a little confused as to precisely what this component is.
> 
> From the description in the DT - it appears to be very much like a
> static trace funnel - multiple inputs, and a single output.
> The DT describes the inputs as "Coresight Trace". What is meant here?
> - if this is ATB trace then this component is identical to the
> coresight trace funnel in functionality so should probably use the
> normal CS static funnel driver.
> 
> However - if it does not appear on the AMBA bus - how are the
> coresight management registers read - these are a mandatory
> requirement in the CoreSight specification for any coresight
> compatible component?
> 
> Thanks
> 
> Mike
> 

Hi Mike,

"Coresight Trace" means ATB trace, the Video TNOC in the following example is an interconnect TNOC.
It is used to replace TPDA and Funnel. Compared to Funnel, it is easier to configure and only
requires enabling once, without the need to enable each inport separately.

it has "reg" parameter on DT, can use memory-map to read management registers.

  +------------------------+                +-------------------------+
  | Video Subsystem        |                |Video Subsystem          |
  |       +-------------+  |                |       +------------+    |
  |       | Video TPDM  |  |                |       | Video TPDM |    |
  |       +-------------+  |                |       +------------+    |
  |            |           |                |              |          |
  |            v           |                |              v          |
  |   +---------------+    |                |        +-----------+    |
  |   | Video funnel  |    |                |        |Video TNOC |    |
  |   +---------------+    |                |        +-----------+    |
  +------------|-----------+                +------------|------------+
               |                                         |
               v-----+                                   |
+--------------------|---------+                         |
|  Multimedia        v         |                         |
|  Subsystem   +--------+      |                         |
|              |  TPDA  |      |                         v
|              +----|---+      |              +---------------------+
|                   |          |              |   Aggregator  TNOC  |
|                   |          |              +----------|----------+
|                   +--        |                         |
|                     |        |                         |
|                     |        |                         |
|              +------v-----+  |                         |
|              |  Funnel    |  |                         |
|              +------------+  |                         |
+----------------|-------------+                         |
                 |                                       |
                 v                                       v
      +--------------------+                    +------------------+
      |   Coresight Sink   |                    |  Coresight Sink  |
      +--------------------+                    +------------------+

       Current Configuration                            TNOC

This example is from the trace noce patch below:
https://lore.kernel.org/all/20250710-trace-noc-v11-0-f849075c40b8@quicinc.com/

> On Tue, 16 Sept 2025 at 03:35, yuanfang zhang
> <yuanfang.zhang@oss.qualcomm.com> wrote:
>>
>> Hi Suzuki,
>>
>> Could this patch series be applied? Is there anything I need to update?
>>
>> thanks,
>> yuanfang.
>>
>> On 9/1/2025 2:58 PM, Yuanfang Zhang wrote:
>>> This patch series adds support for the Qualcomm CoreSight Interconnect TNOC
>>> (Trace Network On Chip) block, which acts as a CoreSight graph link forwarding
>>> trace data from subsystems to the Aggregator TNOC. Unlike the Aggregator TNOC,
>>> this block does not support aggregation or ATID assignment.
>>>
>>> Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
>>> ---
>>> Changes in v4:
>>> - Fix unintended blank line removals in trace_noc_enable_hw.
>>> - Link to v3: https://lore.kernel.org/r/20250828-itnoc-v3-0-f1b55dea7a27@oss.qualcomm.com
>>>
>>> Changes in v3:
>>> - Add detail for changes in V2.
>>> - Remove '#address-cells' and '#size-cells' properties from in-ports field.
>>> - Fix comment indentation for packet description.
>>> - Link to v2: https://lore.kernel.org/r/20250819-itnoc-v2-0-2d0e6be44e2f@oss.qualcomm.com
>>>
>>> Changes in v2:
>>> - Removed the trailing '|' after the description in qcom,coresight-itnoc.yaml.
>>> - Dropped the 'select' section from the YAML file.
>>> - Updated node name to use a more generic naming convention.
>>> - Removed the 'items' property from the compatible field.
>>> - Deleted the description for the reg property.
>>> - Dropped clock-names and adjusted the order of clock-names and clocks.
>>> - Moved additionalProperties to follow the $ref of out-ports.
>>> - Change "atid" type from u32 to int, set it as "-EOPNOTSUPP" for non-AMBA device.
>>> - Link to v1: https://lore.kernel.org/r/20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com
>>>
>>> ---
>>> Yuanfang Zhang (3):
>>>       dt-bindings: arm: qcom: Add Coresight Interconnect TNOC
>>>       coresight-tnoc: add platform driver to support Interconnect TNOC
>>>       coresight-tnoc: Add runtime PM support for Interconnect TNOC
>>>
>>>  .../bindings/arm/qcom,coresight-itnoc.yaml         |  90 ++++++++++++++
>>>  drivers/hwtracing/coresight/coresight-tnoc.c       | 136 +++++++++++++++++++--
>>>  2 files changed, 215 insertions(+), 11 deletions(-)
>>> ---
>>> base-commit: 2b52cf338d39d684a1c6af298e8204902c026aca
>>> change-id: 20250815-itnoc-460273d1b80c
>>>
>>> Best regards,
>>
> 
> 




