Return-Path: <devicetree+bounces-168746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A2513A943C2
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 16:34:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7B3F17533D
	for <lists+devicetree@lfdr.de>; Sat, 19 Apr 2025 14:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1893A1D63C7;
	Sat, 19 Apr 2025 14:34:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="W7tDhLCr"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A390B644;
	Sat, 19 Apr 2025 14:34:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745073265; cv=none; b=s+X/+ZgUepZA+280KJIJRr4TrgZI3oTXNMm0mxa5lsYVLW1pyZYQONGDxqZprnd/FQ7sK2bGo6Ie7ME0Jry72QNM0wkT9wbd/GcO0PZSS4HgVXmC5mt2BvHvdH3YbANMBZ1AaiYuLddv9oHve3eombjwnMHodMnRCO+z9m0IvEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745073265; c=relaxed/simple;
	bh=s1pzc2U7eXV7fI5OuMWq65EGiMatEiC/jfmGWR15fbc=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=GUtP8mLLrjRzgCo/pNbmmf5/cdrOE1IV8VFSbuoZN4zAwyRV3zY9X6qIR4o5DjJTDO5XW6jDRoVlHbBrFiufiRCwwuGQ8hyQkRm4OM8CNGl3laRPfCIIJhXHgtnMxk6o+AVOyLk2npnRkquia9DPw162K9P/nJHu84ndoU/7bNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com; spf=pass smtp.mailfrom=quicinc.com; dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b=W7tDhLCr; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=quicinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=quicinc.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53JAMm61004420;
	Sat, 19 Apr 2025 14:34:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tq+xo0jmaVq0813/+U7iMFutk6jBM/hJCGNbvQnaqpg=; b=W7tDhLCr5pTXGvt1
	ROTKGsb0iMOkNBC7HRCnLo0nPiR+RvqqOQu3/22g/DmIehKwsjFfCqFYedEzEZt9
	CZYEMsFbPitLMKFKkXYeDOu5sEZDCAu8RhjRbSLgreiBO+cEFz4eD96H+BrFQXQf
	0++PSQ6sm+Na8oCXD9siENkykzqDNLCxPRA1GvDhcm4YjYMiSc4Rfhc/OcqqdiRy
	QSAtvRXSyOohd/BaT/cySqbMdz0pRZqaD3GL+PhZJ0eWmguAWWiqz0zu7MG+XbH3
	Gjj90H0SvbrQbSjef/AAXQCduMVHAkZIQl1xrvCI5yFRLnV9lX8hNkCOK+lUGwdk
	AIkHRQ==
Received: from nalasppmta02.qualcomm.com (Global_NAT1.qualcomm.com [129.46.96.20])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46416qrtnf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 19 Apr 2025 14:34:06 +0000 (GMT)
Received: from nalasex01a.na.qualcomm.com (nalasex01a.na.qualcomm.com [10.47.209.196])
	by NALASPPMTA02.qualcomm.com (8.18.1.2/8.18.1.2) with ESMTPS id 53JEY5Gt005346
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Sat, 19 Apr 2025 14:34:05 GMT
Received: from [10.216.62.143] (10.80.80.8) by nalasex01a.na.qualcomm.com
 (10.47.209.196) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1544.9; Sat, 19 Apr
 2025 07:33:59 -0700
Message-ID: <0cd538c0-7d1f-44a4-b89d-f285535c0fcb@quicinc.com>
Date: Sat, 19 Apr 2025 20:03:35 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/7] dt-bindings: opp: Add v2-qcom-adreno vendor
 bindings
To: Krzysztof Kozlowski <krzk+dt@kernel.org>
CC: <linux-arm-msm@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
        <freedreno@lists.freedesktop.org>, <linux-kernel@vger.kernel.org>,
        <linux-pm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        Rob Clark
	<robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio
	<konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        "Dmitry
 Baryshkov" <dmitry.baryshkov@linaro.org>,
        Marijn Suijten
	<marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, "Simona
 Vetter" <simona@ffwll.ch>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon
	<nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>
References: <20250109-gpu-acd-v4-0-08a5efaf4a23@quicinc.com>
 <20250109-gpu-acd-v4-5-08a5efaf4a23@quicinc.com>
From: Akhil P Oommen <quic_akhilpo@quicinc.com>
Content-Language: en-US
In-Reply-To: <20250109-gpu-acd-v4-5-08a5efaf4a23@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: nasanex01a.na.qualcomm.com (10.52.223.231) To
 nalasex01a.na.qualcomm.com (10.47.209.196)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Authority-Analysis: v=2.4 cv=N7UpF39B c=1 sm=1 tr=0 ts=6803b45e cx=c_pps a=ouPCqIW2jiPt+lZRy3xVPw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17 a=GEpy-HfZoHoA:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=e5mUnYsNAAAA:8
 a=pGLkceISAAAA:8 a=COk6AnOGAAAA:8 a=au9r1ZwfxwjuOwkqCsUA:9 a=QEXdDO2ut3YA:10 a=sptkURWiP4Gy88Gu7hUp:22 a=Vxmtnl_E_bksehYqCbjh:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: kGF76mqJEhxl_ZmAWa5RWnpkDmNLc7Zb
X-Proofpoint-ORIG-GUID: kGF76mqJEhxl_ZmAWa5RWnpkDmNLc7Zb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-19_06,2025-04-17_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 phishscore=0
 mlxscore=0 clxscore=1011 lowpriorityscore=0 priorityscore=1501
 mlxlogscore=999 impostorscore=0 bulkscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504190120

On 1/9/2025 2:10 AM, Akhil P Oommen wrote:
> Add a new schema which extends opp-v2 to support a new vendor specific
> property required for Adreno GPUs found in Qualcomm's SoCs. The new
> property called "qcom,opp-acd-level" carries a u32 value recommended
> for each opp needs to be shared to GMU during runtime.
> 
> Also, update MAINTAINERS file include the new opp-v2-qcom-adreno.yaml.
> 
> Cc: Rob Clark <robdclark@gmail.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---
>  .../bindings/opp/opp-v2-qcom-adreno.yaml           | 97 ++++++++++++++++++++++
>  MAINTAINERS                                        |  1 +
>  2 files changed, 98 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
> new file mode 100644
> index 000000000000..de1f7c6c4f0e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
> @@ -0,0 +1,97 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/opp/opp-v2-qcom-adreno.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm Adreno compatible OPP supply
> +
> +description:
> +  Adreno GPUs present in Qualcomm's Snapdragon chipsets uses an OPP specific
> +  ACD related information tailored for the specific chipset. This binding
> +  provides the information needed to describe such a hardware value.
> +
> +maintainers:
> +  - Rob Clark <robdclark@gmail.com>
> +
> +allOf:
> +  - $ref: opp-v2-base.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: operating-points-v2-adreno
> +      - const: operating-points-v2

https://lore.kernel.org/all/173637143564.1057127.5997544431977689674.robh@kernel.org/

Krzysztof, sorry for the late response. I was checking further about the
above bot error. AFAIU, we should not include "const:
operating-points-v2" here, otherwise all opp tables compatible with
"operating-points-v2" get matched with opp-v2-qcom-adreno.yaml during
validation. So I am sending the v5 revision with the below fix:

+++ b/Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
@@ -19,9 +19,8 @@ allOf:

 properties:
   compatible:
-    items:
-      - const: operating-points-v2-adreno
-      - const: operating-points-v2
+    contains:
+      const: operating-points-v2-adreno

-Akhil.

> +
> +patternProperties:
> +  '^opp-[0-9]+$':
> +    type: object
> +    additionalProperties: false
> +
> +    properties:
> +      opp-hz: true
> +
> +      opp-level: true
> +
> +      opp-peak-kBps: true
> +
> +      opp-supported-hw: true
> +
> +      qcom,opp-acd-level:
> +        description: |
> +          A positive value representing the ACD (Adaptive Clock Distribution,
> +          a fancy name for clk throttling during voltage droop) level associated
> +          with this OPP node. This value is shared to a co-processor inside GPU
> +          (called Graphics Management Unit a.k.a GMU) during wake up. It may not
> +          be present for some OPPs and GMU will disable ACD while transitioning
> +          to that OPP. This value encodes a voltage threshold, delay cycles &
> +          calibration margins which are identified by characterization of the
> +          SoC. So, it doesn't have any unit. This data is passed to GMU firmware
> +          via 'HFI_H2F_MSG_ACD' packet.
> +        $ref: /schemas/types.yaml#/definitions/uint32
> +
> +    required:
> +      - opp-hz
> +      - opp-level
> +
> +required:
> +  - compatible
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/power/qcom-rpmpd.h>
> +
> +    gpu_opp_table: opp-table {
> +        compatible = "operating-points-v2-adreno", "operating-points-v2";
> +
> +        opp-687000000 {
> +            opp-hz = /bits/ 64 <687000000>;
> +            opp-level = <RPMH_REGULATOR_LEVEL_SVS_L1>;
> +            opp-peak-kBps = <8171875>;
> +            qcom,opp-acd-level = <0x882e5ffd>;
> +        };
> +
> +        opp-550000000 {
> +            opp-hz = /bits/ 64 <550000000>;
> +            opp-level = <RPMH_REGULATOR_LEVEL_SVS>;
> +            opp-peak-kBps = <6074219>;
> +            qcom,opp-acd-level = <0xc0285ffd>;
> +        };
> +
> +        opp-390000000 {
> +            opp-hz = /bits/ 64 <390000000>;
> +            opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS>;
> +            opp-peak-kBps = <3000000>;
> +            qcom,opp-acd-level = <0xc0285ffd>;
> +        };
> +
> +        opp-300000000 {
> +            opp-hz = /bits/ 64 <300000000>;
> +            opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
> +            opp-peak-kBps = <2136719>;
> +            /* Intentionally left out qcom,opp-acd-level property here */
> +        };
> +
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 910305c11e8a..f7119623e1f3 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7292,6 +7292,7 @@ S:	Maintained
>  B:	https://gitlab.freedesktop.org/drm/msm/-/issues
>  T:	git https://gitlab.freedesktop.org/drm/msm.git
>  F:	Documentation/devicetree/bindings/display/msm/gpu.yaml
> +F:	Documentation/devicetree/bindings/opp/opp-v2-qcom-adreno.yaml
>  F:	drivers/gpu/drm/msm/adreno/
>  F:	drivers/gpu/drm/msm/msm_gpu.*
>  F:	drivers/gpu/drm/msm/msm_gpu_devfreq.*
> 


