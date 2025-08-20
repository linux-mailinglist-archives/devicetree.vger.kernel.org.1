Return-Path: <devicetree+bounces-206675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D132B2D3EF
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 08:17:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8658B1C2267C
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 06:17:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E369C2206B8;
	Wed, 20 Aug 2025 06:16:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GG5buEa9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A7C11494A8
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 06:16:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755670618; cv=none; b=iuSpl5LYQ3erhiQUIGJSgM/L/8msHMgK6uD+++ZQQZxPkv7PQqXrXKbK5i2ub/P8ZFoTHRqN+BMMfqDTF6zEcM77VzlKnqx5cjbpZwPLqO+jcpxqa1ZnUdGdom+CWUE7M0M9iFSQ5i3PSNBLhpEs9o6rndiB+DIo/uVGW3DeDbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755670618; c=relaxed/simple;
	bh=BkNEtWfHC0W481jdirYIhyOmkfVe/vp4DlWZgEyrPcY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uhB3I1hX9hpb9x1vwH6oBG9AzchE081iOTZl3K1byXX7Q9/QXxm0tjoJ/9G4F6yJ48NExrD32YbFHgq2E5TDr9hajUFHoCQ+ljqhKtVPwWLhzHd5fXdagd/HXHt+qKe8Xjsi3jscybTEEsEs76p8BBGEhGLgmDojMFWc6wJOR8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GG5buEa9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K1ojYp005725
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 06:16:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	zo+qBFSuOCOdT4196vaFitQ277UyoAlgWb0yHJHAlaY=; b=GG5buEa9LEnTmScR
	pHefOJkgG5kNp36UZ+Bu4OR5AavLXm2tVsKFDlurPDgcHmpNNoJEgBiRu5T0exaE
	TK8tc+EDTmo1O62xXCyeZ5cwzsrUVO8GI0RJ+GS1MIZgOYuv0WfvnfG+F42ctT7N
	5OCNa9Vs/tkI588n7pD8jpAR+C9UaLhs9N6y4Aup5R9DidI7OuI3+t4GMFdUFay6
	Ru1APe1uTqzv71Qj9G9lJgk00kvYA8gFRP8kOiGxeriwnkW/EQvESROxmf0Q58ke
	AfhqOV+GY4aibLmLu3J3L1RwRZDEoJT6uEvdHo+EV8d+OHEnEbfx5UKaMPEU4UVh
	Knqlgg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52cgkmj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 06:16:56 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b47174c667aso5476584a12.2
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 23:16:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755670616; x=1756275416;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zo+qBFSuOCOdT4196vaFitQ277UyoAlgWb0yHJHAlaY=;
        b=VJbz/j9q0pfEH49i0U6TVTanBNaciyX6On8kyOvl2StJLXTjetiJsa4vadsvWG34W7
         QW3/Mhs2RXZawNX5wG6MKr3oakplFO7YjZlAAK8DiVDv20D/Qk7psS+nZx8lvJRK76Zs
         Lh/t3noGRY+psrxmDAtZrHxWXZaLETvWDICcYgrWfmO9+tsVo02/kh4fTBS8pN+KZy0f
         yFB48o9EWC4vY5muICrur3tf0cF/Bua9fVMwP9SWBnUFNvPMOWGfKdMkG08uey9p/k//
         6qb4ulAID5oqD0EskyTFvJp0OdqlFvonZHNAyy68Td/px9vcVa7Ak9zIYOVSYkRK3YjP
         Eacg==
X-Forwarded-Encrypted: i=1; AJvYcCXLi/VDydqUpzl+NwkpNGml7BtM8uBSxXe/58VtE/DRit+eH45vX+/GtwluS23XOF8yE14lj3nhQuOU@vger.kernel.org
X-Gm-Message-State: AOJu0YyEb9syTNeQ56M3X3qdlB3HaqR3a5EGu4Y72odOyuIYtwbtoNZg
	HIn/344UUtd9cojoQ1agtrurlD6NLH8Gk5O59oKfVBQCSrlQj76j17Lpdfm2sC+Swbp7SfboOF8
	OlcWD2EvLoxy8J8CoumPDMc/81o4eUvWNr1Y7gYfaVq0BPKHpAewpFytxrbeSfhF6
X-Gm-Gg: ASbGnctUC/SCV0ZZXj1oTROJNIezW4+uB223A2/Pw2lwLvl0qojyhlC04fXe5k4dPdU
	klwkP2kj4HIEnF5Egq5ydyi141XLpzoDzlwBGOlw9TRvwQihOcTRUsrgU4ngGDTuK33thKpbTEh
	RUXLs/Q9dXkSoaKB2b3BPyzDjL6/1MZ9/bJMC1pcQSrfKrKrQ6/gxr9eYKOffK6AydQ/SXThEf8
	lDKZth8rmYxw86yN58N8bv4rpbpp8InKOSScM0kSidNO4R8yfDaYujPkgTkkip2CBMVBtmHpJWV
	B8P9TC4/TVdRS+SyGsG71becs5n7ta3bF6BYi9mmvoOtRYc/hj9qGiXdEu76bIaQOU+nqpI0Z2I
	FZor9XJgwoXh30H6bqCWeA6eChGbLSgyH
X-Received: by 2002:a05:6300:210d:b0:23f:f659:a0ef with SMTP id adf61e73a8af0-2431b884c06mr2689103637.25.1755670615719;
        Tue, 19 Aug 2025 23:16:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGkuHrM5J+SA+TshY0ZVvPXqmiE0Q5IAuZ5MDZKibUhiwTCZup0o87PAGsuKT1kaJi+7h4VLw==
X-Received: by 2002:a05:6300:210d:b0:23f:f659:a0ef with SMTP id adf61e73a8af0-2431b884c06mr2689069637.25.1755670615271;
        Tue, 19 Aug 2025 23:16:55 -0700 (PDT)
Received: from [10.133.33.73] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b4763fbe626sm1356125a12.6.2025.08.19.23.16.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Aug 2025 23:16:54 -0700 (PDT)
Message-ID: <45bad7a0-119a-4375-887d-28aed2b0ee20@oss.qualcomm.com>
Date: Wed, 20 Aug 2025 14:16:49 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: qcom: Add Coresight Interconnect
 TNOC
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: James Clark <james.clark@linaro.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Mike Leach <mike.leach@linaro.org>, coresight@lists.linaro.org,
        kernel@oss.qualcomm.com
References: <20250819-itnoc-v2-0-2d0e6be44e2f@oss.qualcomm.com>
 <20250819-itnoc-v2-1-2d0e6be44e2f@oss.qualcomm.com>
 <175560674472.26193.14154235220441518996.robh@kernel.org>
Content-Language: en-US
From: yuanfang zhang <yuanfang.zhang@oss.qualcomm.com>
In-Reply-To: <175560674472.26193.14154235220441518996.robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 7NHL2--r3nZBYynxwtwvxOZdGeLxZq29
X-Proofpoint-ORIG-GUID: 7NHL2--r3nZBYynxwtwvxOZdGeLxZq29
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a56858 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=voM4FWlXAAAA:8 a=EUspDBNiAAAA:8
 a=SdGosrV6Qt3YffhYJa8A:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
 a=IC2XNlieTeVoXbcui8wp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfXye42cEOakGSH
 Aruri2tKpstZTqvSMGElCgsf5UJQ9gmAYSx8W9l27+EpvpcltGOamjPPK5OGhaPtyuu/9wM1mLr
 oaActSe/PdTPhCCEEsuJP1cqaqKgJZa6+DsHyQuvbVBg/wPTB8ZNNalCBFimcteFF6qKhEHAlL3
 WmrZUBRIpjQ455Sx+64OAwwO8nZBLz+XL3YtzGdlsgmJmx2dV0U5ps7yA69M2D0hdfN02GIrxB8
 gVULHlXav4qibJNg4k4yfaeAOtZhEbZiFAZN1FVw/YC2ATaM77P2LqE1TdXjRTqrnvKjWsFjGmb
 1zyLEQITace35VFELYyotIGsEPKodOEt6GaY3cAxVA+Pe0T4EguOQ6sCkt0WkPQmu3UaRpuSJb8
 tL3cAiMRe4q/rzEcjYPxriDGADxIiw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_02,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013



On 8/19/2025 8:32 PM, Rob Herring (Arm) wrote:
> 
> On Tue, 19 Aug 2025 03:27:43 -0700, Yuanfang Zhang wrote:
>> Add device tree binding for Qualcomm Coresight Interconnect Trace
>> Network On Chip (ITNOC). This TNOC acts as a CoreSight
>> graph link that forwards trace data from a subsystem to the
>> Aggregator TNOC, without aggregation or ATID functionality.
>>
>> Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
>> ---
>>  .../bindings/arm/qcom,coresight-itnoc.yaml         | 96 ++++++++++++++++++++++
>>  1 file changed, 96 insertions(+)
>>
> 
> My bot found errors running 'make dt_binding_check' on your patch:
> 
> yamllint warnings/errors:
> 
> dtschema/dtc warnings/errors:
> 
> 
> doc reference errors (make refcheckdocs):
> 
> See https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20250819-itnoc-v2-1-2d0e6be44e2f@oss.qualcomm.com
> 
> The base for the series is generally the latest rc1. A different dependency
> should be noted in *this* patch.
> 
> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
> 
> pip3 install dtschema --upgrade
> 
> Please check and re-submit after running the above command yourself. Note
> that DT_SCHEMA_FILES can be set to your schema file to speed up checking
> your schema. However, it must be unset to test all examples with your schema.
> 


Below is my dtschema and yamllint version, They should already be the latest version.
Name: dtschema
Version: 2025.8

Name: yamllint
Version: 1.37.1

I ran below 'make dt_binding_check', don't get any error/warnings.
make dt_binding_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/arm/qcom,coresight-tnoc.yaml



