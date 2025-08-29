Return-Path: <devicetree+bounces-210365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB3FB3B5FD
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 10:25:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B5FFF7B816E
	for <lists+devicetree@lfdr.de>; Fri, 29 Aug 2025 08:23:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A223D29B8E2;
	Fri, 29 Aug 2025 08:24:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cZ32Ag5c"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01188298CC4
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 08:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756455895; cv=none; b=Ixj87OaPr9o8PsaqaQ/3kFbI0jKHnQzwL3h9t75fFYXoCJRyt5/0hd7R1FUGO8+SciRF6l3/N0EoYDI4VAYLWT9tBu6iSuDATTMzNEH7ZRqVQRBEpobMYM7L+OLojv4po7CxkcM49hbwlQrR9JOV1DVXH7UTkVoeOIZCh1kbPxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756455895; c=relaxed/simple;
	bh=zJSmfRVOkbtIQDtehxlC4Tzz6O3pXqvUInfxHeMwYz8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Znx44OPeaPlV/H5I4DjRKCeVPvUnbTeUJymfzQj65zisdlsxitpFx9qKaiVIyb9vFH6mMoGlPekOG5+r7zJA6gWQrAOU2dmRjR1C6CNkKpONg9JrBsmwmFYS0eNvYpgq7trMADHnrvlXBEubAeQS+0g9BHXBAHNldC3ERygU03Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cZ32Ag5c; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57T85TSS008060
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 08:24:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZmutOEL4BSdKwbUx9oh5gSZnIUCZlQ2dXVG3r2aUCeQ=; b=cZ32Ag5cV7lQib3P
	Apx9u1mcGxt6bBzqSbyaJU9Gzh8bJvapCUVJT4mxX/ipO2HXWjLmKOqclM3rLBgq
	JzL/KP1PnzaWlE/SXFHQ/hTouO3geinjc5YywXheztw+iIRoL1nX30vRuzu2pqq0
	FboL6whzLKrKO+GQXR4YW2Aai60yGBAuN5D4/VNOb0tcYOmYE0Si4UMIf0XaRAcL
	Of0mTM54xRhryjGxhpw1uf8PpcnPhY68Nvxdkl0Zniouey/Y+R0FC7B6eUv7FZ9n
	Z8L0PlMiZLkhwZY2crPTOxge05Skp8zfewyOga7zB3Gs3GUeSH8s4Mr5Zw7/DTE0
	NSE+aA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48rtpf5kfn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 08:24:52 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2487543a4f9so37547705ad.1
        for <devicetree@vger.kernel.org>; Fri, 29 Aug 2025 01:24:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756455891; x=1757060691;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZmutOEL4BSdKwbUx9oh5gSZnIUCZlQ2dXVG3r2aUCeQ=;
        b=NS6BC9Vo7NWOxAHpVuuKuqTIpdz9eW77iQ1w1EYgZSIEq3U5SR/XaYu1RlYdGUsQI5
         sKTtJ/1Y9PDDx42Y7WhS+CQryVA6tBPLnE+JWg7plXcFOuikNY2ETBQMIpF3z2U/R/f3
         /Kfp3EaWXkqMeIPJIsBET/aIfqXHHeqO8Mo1fcXbXPaA16kx7oFTNHRI09O3xSEgBEFd
         mFNcK+HV99q9YY/GpbARZEGoz511x5JYaJFVWl5wgut8/ealfXySpdFxPoM0iYvRg7pt
         RXzVmLZLHftF9aPbIbtPGbZm0mb0PhdtzynUsyzy/w/49aHGXqdGf5UsTZxrt2jJ4/AK
         Q5kw==
X-Forwarded-Encrypted: i=1; AJvYcCUEqVpDsY0uPDwDbAMxWoQdIs+kfIL5J8lJfBcQPNXJ7BjPUj3d3S1C7+KLbaIgkaH2gHAf/QTzkZIB@vger.kernel.org
X-Gm-Message-State: AOJu0YwRezLv/4CZM+8gSsomNgHlCWBsr0Q59y2C33X4e+IHDjlvVjbr
	EDXA6tfGHMwkXCrV+ffNu4OE1USoA2iVtBs23ZjtqnzYvIO/wDAlDKujyAZd2xHXEIpqZF5Senk
	3mbjmQpzsWzO1fV0Ql3kGxuXi0axJacwcFBb4lUMmkmuMNrtCcvnajNPajH8s7UTB
X-Gm-Gg: ASbGncutVZ4aHbAS6xDRuYT0NGqhOOUO8dFeg5JzB/H2OKGdWWruNzpvH/+5lakG7Y4
	j5NGjc0loAzGDc0JMqJ8NKAxGqAmFmVEJpj/gLT/x5Wrg7el1o0Jwww01MDjV3vf8EXtlxoruTY
	emLOZWhcs/PXnMQ+tNRZg+rYewkJbamvM9ntccqYD5gFDx9E0vQnoOiJ72m8uFYV/bdEAA3a915
	ZqBJkT5gETVP0n41wzCwZ/rjaTknyS3vR48diCBTmIZF85IRpvE2F6NFvmaTGUau7yS4Cud7iEr
	B5eDwufjxjB0bOn5NaYQta77sl2bX9bUWZ99QTy/tHC+6YsOHU+yEqMtbshnjsCScC3C
X-Received: by 2002:a17:903:384f:b0:246:2b29:71c7 with SMTP id d9443c01a7336-2462ee92ef2mr364175255ad.25.1756455891387;
        Fri, 29 Aug 2025 01:24:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBH0NFwkkluNtoyFp/sOGVeW9GAErFZVXGcvAduDHifrpu0UX3YiAiOgtNINcHVTBJqK21Bw==
X-Received: by 2002:a17:903:384f:b0:246:2b29:71c7 with SMTP id d9443c01a7336-2462ee92ef2mr364175035ad.25.1756455890943;
        Fri, 29 Aug 2025 01:24:50 -0700 (PDT)
Received: from [192.168.0.195] ([49.204.25.176])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24905da4d44sm17598275ad.83.2025.08.29.01.24.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Aug 2025 01:24:50 -0700 (PDT)
Message-ID: <558ca51d-e1ca-4267-9166-2b929216c43a@oss.qualcomm.com>
Date: Fri, 29 Aug 2025 13:54:45 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: clock: Add DISPCC and reset controller
 for GLYMUR SoC
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250829-glymur-disp-clock-controllers-v1-0-0ce6fabd837c@oss.qualcomm.com>
 <20250829-glymur-disp-clock-controllers-v1-1-0ce6fabd837c@oss.qualcomm.com>
 <hpfeihpixuauter7ik6om5sv7ocmots5gq3fw7cvn5wkuieipt@jitqslr4pkw4>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <hpfeihpixuauter7ik6om5sv7ocmots5gq3fw7cvn5wkuieipt@jitqslr4pkw4>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 4tUqzpLw9do7ztmMUwtJn0JhBbEuhdPQ
X-Proofpoint-ORIG-GUID: 4tUqzpLw9do7ztmMUwtJn0JhBbEuhdPQ
X-Authority-Analysis: v=2.4 cv=Hd8UTjE8 c=1 sm=1 tr=0 ts=68b163d4 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ubyLEIH+BItvSySilgXupg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=1ut_qpqdL47trf14q9UA:9 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODI1MDE0MiBTYWx0ZWRfX8YgmDoKIGz6Y
 MHsd+Ps0TMfzSvMxTBAgQBtk2JL3+rGWmGKfQMktd5TajGOpLxaNOgugk/uzTfI3wrnph/Sixja
 jiU/34nJZnlTY+PrFR6uBZjlnvKTRPxSCOnHMoRz0yKM6Gc2ZTX+WWQoo43woI4oWJZYL7z4Pbw
 /JpT8mS9Q2qgPaO45Ex57T1iZ7cO+pp75vvPzItaPfIUeCA0c07cfmtT1VlzdxEx52yf4UAEbCT
 36tYui0T6JWQHg2FLU8Gr/XsO8Oj/ls/a8MthMKKIOymHwuxf1F/wfL5ado6hj0U37Vm168YW62
 rKPuLeo33KiD8EfxH26ls/W7jBH0Di1helmWl8QJa6SxGROm/8nQQ/Vei5kpVMpxCuh4wLgdTep
 51jf/yEt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-29_02,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 suspectscore=0 phishscore=0 bulkscore=0
 adultscore=0 clxscore=1015 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508250142



On 8/29/2025 1:42 PM, Dmitry Baryshkov wrote:
> On Fri, Aug 29, 2025 at 01:28:03PM +0530, Taniya Das wrote:
>> Add the device tree bindings for the display clock controller which are
>> required on Qualcomm Glymur SoC.
>>
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> ---
>>  .../bindings/clock/qcom,glymur-dispcc.yaml         |  99 ++++++++++++++++++
>>  include/dt-bindings/clock/qcom,glymur-dispcc.h     | 114 +++++++++++++++++++++
>>  2 files changed, 213 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml b/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..063da2416dbaed764b8579a090bc5fc0531ab60d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/clock/qcom,glymur-dispcc.yaml
>> @@ -0,0 +1,99 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/clock/qcom,glymur-dispcc.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm Display Clock & Reset Controller on GLYMUR
>> +
>> +maintainers:
>> +  - Taniya Das <taniya.das@oss.qualcomm.com>
>> +
>> +description: |
>> +  Qualcomm display clock control module which supports the clocks, resets and
>> +  power domains for the MDSS instances on GLYMUR SoC.
>> +
>> +  See also:
>> +    include/dt-bindings/clock/qcom,dispcc-glymur.h
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,glymur-dispcc
>> +
>> +  clocks:
>> +    items:
>> +      - description: Board CXO clock
>> +      - description: Board sleep clock
>> +      - description: DisplayPort 0 link clock
>> +      - description: DisplayPort 0 VCO div clock
>> +      - description: DisplayPort 1 link clock
>> +      - description: DisplayPort 1 VCO div clock
>> +      - description: DisplayPort 2 link clock
>> +      - description: DisplayPort 2 VCO div clock
>> +      - description: DisplayPort 3 link clock
>> +      - description: DisplayPort 3 VCO div clock
>> +      - description: DSI 0 PLL byte clock
>> +      - description: DSI 0 PLL DSI clock
>> +      - description: DSI 1 PLL byte clock
>> +      - description: DSI 1 PLL DSI clock
>> +      - description: Standalone PHY 0 PLL link clock
>> +      - description: Standalone PHY 0 VCO div clock
>> +      - description: Standalone PHY 1 PLL link clock
>> +      - description: Standalone PHY 1 VCO div clock
>> +
>> +  power-domains:
>> +    description:
>> +      A phandle and PM domain specifier for the MMCX power domain.
>> +    maxItems: 1
>> +
>> +  required-opps:
>> +    description:
>> +      A phandle to an OPP node describing required MMCX performance point.
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - clocks
>> +  - power-domains
>> +  - '#power-domain-cells'
>> +
>> +allOf:
>> +  - $ref: qcom,gcc.yaml#
>> +
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/qcom,glymur-dispcc.h>
> Should not be needed

Sure Dmitry, will remove this in the next patchset.

-- 
Thanks,
Taniya Das


