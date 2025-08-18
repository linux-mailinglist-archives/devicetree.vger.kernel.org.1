Return-Path: <devicetree+bounces-205727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C0F32B29DFF
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 11:35:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 939991897CBD
	for <lists+devicetree@lfdr.de>; Mon, 18 Aug 2025 09:30:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A756D30EF64;
	Mon, 18 Aug 2025 09:29:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CbdLXIEl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AACBB30E0D7
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:29:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755509396; cv=none; b=JGKx2kEhDwXqrbXmqSYe7hoaKAtPOcMQsK9lqMIvVefaBXM3knY5YK55MKiB8ggfrPU2pWoyeoYjC14sotUrkHGAFWbrzkaTM31J0/Y03+pNUEQCpdYCRucPaP1yaAd0jI/6cn/fjGVpCU3EDv/ypaOskD4ppxlLD5HEQYJZkQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755509396; c=relaxed/simple;
	bh=D/2r8fC7ff+pn5PrN0aya7skDH+ku9d60BqVMX2wSx0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZNGq0nt+GkozL41uTcsHxS9qSYtSvWTQfR0eVUvpIZebH/bQSrXF9XPPGrHxJPIucjwt/gkdwJOXZmmnD+kV+Rtsz51EwpyqIlBjFcMQ0gv9+4inxT1tNHOB6eYYwCXTvZt3U8a00ZtfOd5XQKmum2N6MMuMkEnE+YZJw/cDSyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CbdLXIEl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57I80LRO030728
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:29:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	DW0VxXLSXGTdFzZpRwKPAVDn88uevWk8bVT728uIol4=; b=CbdLXIElTrpNP7ZY
	rlcKdSqJOnt3J1ZI9BT13rOp14wOvLJgu97zW9A/kZSz0Ahae8arvwVERDPfUqyL
	hW/yyfbOIjCSUyBjv7S1huMk+lOlYIUWi0nuU+ArHs3vkPs/jpcSCaUduiGbRBMc
	eC/h9/A0oW7H7sV4FsCBsRpHue7flZYk4YSQYgb8PCG5HNmkAQv693TekmazwMJy
	C66sRgvG2sDb7j0PQBCK1BN/aXSzWCnC+DYZaoAwkImb9cH6Ba5+bJPl+o8x1cbc
	xzP2oWNHMGfyV/TJnaBJyEIUaK/im7Anl3oSTmFh36rbs8eU7m8jOdbbm9TY74IB
	vK/Q1g==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jj2uc4gh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 09:29:53 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-24457f44a29so46456805ad.0
        for <devicetree@vger.kernel.org>; Mon, 18 Aug 2025 02:29:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755509392; x=1756114192;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DW0VxXLSXGTdFzZpRwKPAVDn88uevWk8bVT728uIol4=;
        b=BjU7ap8QMlZpW3ZEesJCxVMrJGVG0pOkd3T9MwlHzjrndV6JMwMqwRwJGwPI0UmzfS
         BXl+yC+2SzXA7qIVcnV6BdsYgMFH8a86ur4Ck+q26Wqd302QwNJFmvahao3YI07yU79X
         UsEPHPY+nuKSnazagZ4PrgFTwdngt/hQje2EQmvTj2Fb8wICNB40sgC/S6Kmp35z7v7U
         k7/QuK7O/bNHKQrQIFjDzBADI416h29JBxnE8r8KuHLVurlmqib7F6+t3jVwj9Rj93Ik
         Ybl1uPjSQhEAl9yU6HyYe9KaLJ9YaU1k2LN8v8RbrCFMY4FTOsf6oGwIfCysBgkB3beQ
         A0qw==
X-Forwarded-Encrypted: i=1; AJvYcCW7Fsoc0/7CTA+TJdApKiTPdgTseEMF86WDmmiyCoKudIu4LCMufbcoOXGyWRwUqfNvTBaveWZOJobj@vger.kernel.org
X-Gm-Message-State: AOJu0Yyfv0A01YX1BevDFu+/+SRNxntQsc3vu2E8U84fzr/eMIQM9JMA
	SeIJjKpbtwWJIhbduNXk0komW3qSNUXvdqWRmo3bXTkac//fFBrU2KLbkKWyxmgR4ddrT/j/FDW
	JLnnLOCObfPFNCcm4f8lCJusnwh8JCg42OO2LXAujQZTX0FSqU4xwd1L1CewmtCbh
X-Gm-Gg: ASbGncv+JPAVDPCz5qosktvSDpRE0o4vly7S5/3q4/Mm16zmzIIecT3BDRrBXsO+Dae
	m4ggWlUKFTVTvoUBdecuu4lJb/n1kUBjsFtrVHHB7C0NeW/sDM1EsVEYKexBSwOIDMYUR5v/tCr
	ryaandTuIJ91Wa8V+EUCxt4Rs9muqfjJGJv4AMRS2iDgrpeH2pDMY47iq5jQDYRDP1435F4s/RO
	vCuglZg/B8bqbHZSeerm5/HJKPsTvkGtNRAyr7qTofpSlEtvkK29onVNbRT9r3PT97E41E9au5q
	UY72LBKz1xBGR3lge/Ll/OHhNRo7eJc7BfcKiBWiXhsdAdyzcw5sEuawBo2CLiCjtbAmmbJEaOI
	ggVwnTOVY4J4SNWVDMEv2dpU/1RIe9YyK
X-Received: by 2002:a17:903:41c5:b0:240:72bb:db0b with SMTP id d9443c01a7336-24478f539b4mr99029165ad.21.1755509392195;
        Mon, 18 Aug 2025 02:29:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHdvgHuSgGPApqix8dgwheTWJ6eX5H3fi4YFMhUp3VuMy+VubG2cky38Pb7ZLmRxY6ZQMfL3g==
X-Received: by 2002:a17:903:41c5:b0:240:72bb:db0b with SMTP id d9443c01a7336-24478f539b4mr99028775ad.21.1755509391723;
        Mon, 18 Aug 2025 02:29:51 -0700 (PDT)
Received: from [10.133.33.73] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2446d50f71bsm74496835ad.80.2025.08.18.02.29.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Aug 2025 02:29:51 -0700 (PDT)
Message-ID: <932326f8-8650-44c6-b747-a12664e9e953@oss.qualcomm.com>
Date: Mon, 18 Aug 2025 17:29:46 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/3] dt-bindings: arm: qcom: Add Coresight Interconnect
 TNOC
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com>
 <20250815-itnoc-v1-1-62c8e4f7ad32@oss.qualcomm.com>
 <e82ca132-f312-45b5-bec0-9d83cd3771d4@kernel.org>
Content-Language: en-US
From: yuanfang zhang <yuanfang.zhang@oss.qualcomm.com>
In-Reply-To: <e82ca132-f312-45b5-bec0-9d83cd3771d4@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=MJ9gmNZl c=1 sm=1 tr=0 ts=68a2f291 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=agCq8VLWhxUVNrkTfPUA:9 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: q_DNiF2S4rhTZnwLr-5AvcnFsy8cxBdL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAzMSBTYWx0ZWRfX8nvakhz3AdmD
 TpVL9ee0iFyQjIGQNjg70f7+5kGTMz+lOHcGctgANnPpLcKlUlKKjAOV5bYDZ+8QxyZLyBatnie
 NgH3pZ8CW1pHFm2yX72kzt1D9Yzg+SXeB4vLHRyHwvHABTdlTDlzuZpZsI7gksMvTkfKtvgi8nf
 0GeEw4KZntwaQF/41AumBxWFt86f7q18vhLLunJblsnpuJYe/NM7ufnSznTcEJyEiRjponwlkgI
 p+RPCNnE+H72dil99J00q7sOc8WPsGwJrcULI1ASv3yek037PL9kqAEWF5bTZlnhvBNjYk1Mk6j
 E8mgOUDsWeAAXZQcufDZJFp4zzq+8FfXbXg/7GYPrxLBFLJG7pCSUs58VXYOrOV467htzhDu6Dk
 /42fpzVc
X-Proofpoint-GUID: q_DNiF2S4rhTZnwLr-5AvcnFsy8cxBdL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-18_04,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 phishscore=0 bulkscore=0 malwarescore=0
 spamscore=0 clxscore=1015 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508160031


On 8/16/2025 4:33 PM, Krzysztof Kozlowski wrote:
> On 15/08/2025 15:18, Yuanfang Zhang wrote:
>> Add device tree binding for Qualcomm Coresight Interconnect Trace
>> Netwrok On Chip (ITNOC). This TNOC acts as a CoreSight
>> graph link that forwards trace data from a subsystem to the
>> Aggregator TNOC, without aggregation or ATID functionality.
>>
>> Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
>> ---
>>  .../bindings/arm/qcom,coresight-itnoc.yaml         | 108 +++++++++++++++++++++
>>  1 file changed, 108 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-itnoc.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-itnoc.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..fd224e07ce68918b453210763aacda585d5a5ca2
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/arm/qcom,coresight-itnoc.yaml
>> @@ -0,0 +1,108 @@
>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/arm/qcom,coresight-itnoc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Interconnect Trace Network On Chip - ITNOC
>> +
>> +maintainers:
>> +  - Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
>> +
>> +description: |
> Do not need '|' unless you need to preserve formatting.
sure, will remove it.
>> +  The Interconnect TNOC is a CoreSight graph link that forwards trace data
>> +  from a subsystem to the Aggregator TNOC. Compared to Aggregator TNOC, it
>> +  does not have aggregation and ATID functionality.
>> +
>> +select:
>> +  properties:
>> +    compatible:
>> +      contains:
>> +        enum:
>> +          - qcom,coresight-itnoc
>> +  required:
>> +    - compatible
> Why all this? Drop
sure.
>> +
>> +properties:
>> +  $nodename:
>> +    pattern: "^tnoc(@[0-9a-f]+)?$"
> Why are you requiring a non-generic name?
will update the name.
>> +
>> +  compatible:
>> +    items:
> No need for items
sure, will remove it.
>> +      - const: qcom,coresight-itnoc
>> +
>> +  reg:
>> +    maxItems: 1
>> +    description: Base address and size of the ITNOC registers.
> Drop, redundant
sure, will remove it.
>> +
>> +  clock-names:
>> +    items:
>> +      - const: apb
> Drop clock-names, obvious. Also, odd order - names are never before
> actual property.
sure, will update the order.
>> +
>> +  clocks:
>> +    maxItems: 1
>> +
>> +  in-ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      '#address-cells':
>> +        const: 1
>> +      '#size-cells':
>> +        const: 0
>> +
>> +    patternProperties:
>> +      '^port(@[0-9a-f]{1,2})?$':
> Why do you have here 255 ports?
It supports a maximum of 256 input ports, so it is limited to 0-255.
>> +        description: Input connections from CoreSight Trace Bus
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +    additionalProperties: false
> This goes after $ref
sure, will update.
>> +
>> +  out-ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port:
>> +        description: out connections to aggregator TNOC
>> +        $ref: /schemas/graph.yaml#/properties/port
>> +    additionalProperties: false
> This goes after ref
sure, will update.
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
> And here different order... Be consistent. See also DTS coding style.
sure, will update the order.
>> +  - in-ports
>> +  - out-ports
>> +
>> +additionalProperties: false
>> +
>
>
> Best regards,
> Krzysztof

