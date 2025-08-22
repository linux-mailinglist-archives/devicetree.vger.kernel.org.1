Return-Path: <devicetree+bounces-207839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C7ABAB30F81
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 08:48:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C98D5174E3F
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 06:48:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B9A62E5428;
	Fri, 22 Aug 2025 06:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mKgQV9n1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BEB3230272
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:48:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755845320; cv=none; b=OPNBpDSfITG/rBzAE3yhR0R/2f7va3kVUz9cwttdZ56H9nZhLP1V5Dv7HTMZQDwLTMWcxkzs0LUj9I4ApZ5/RKB7XOtSptmX9gG2VrqxEI3kArexiwpkdq0xpmI7ah1Mzdh52E8A+Ch2tWMGd2nqTQMmxf0gPMpNzHiQ0LntLUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755845320; c=relaxed/simple;
	bh=EtDO50NiQ2FngCb6HjMX2xjHCi6gNyKrhyCrOT7cMFw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=U9UQMh9uiBIt6hkASlE6lQU1iAb6Obgvi1gKVedxfVW6S0yWGsJCm9JMGhx7mfkTrqCFCqTHLPenZTyydoAU80q86ESvGgVNz8RIQGQnGSJElonbTGfZgDbX+SZ+g8ygB3G9Zi+/cwOuGPJPab0F26jpp5Cc4XiXeOSB30/mzjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mKgQV9n1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M6GxdR024129
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:48:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wt7rxN5hrf2QPuy6mxcJXvWkksap7MeXMIyW8r0g2eE=; b=mKgQV9n1vTRZQ6/l
	ZmTEHvaDDWuplAmg+x+xQzrZWj7Q23cyJFazU3pCcvmYGX3IWW6xyIVNx2OKHBGb
	jWBWFhvfckHXnOrvurHn4GQ7DbqrMgwYADmJKhhAo+dvBvhD5tN6S5Dcme12cG1y
	QADsZ0sb66OXBbG923zTVl10ni7Jx7Fb+S4J8ezHu0hPd9FY3gOGcOmWJDhAprrq
	9WAY9zYCrTC8DPW2Pv7lLhDwEqVA7Mqj9nCcP/NmTZ1w9nr+rvyYO2r9dx4NeHzf
	CLum0i0zw+iX+nSY99LC2lg/gYa+TSC+OrgR2xy0pqXn6Hd/cNP2UA0gGT1uNzn5
	7w0iYQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52904k7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:48:38 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2461c50114bso2409855ad.2
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 23:48:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755845317; x=1756450117;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wt7rxN5hrf2QPuy6mxcJXvWkksap7MeXMIyW8r0g2eE=;
        b=vmBqStT9+qB0STQYgnz17KfrjLy40N0R6PoUdjiqd3vLgABGzqCU5q2IdomsFyC3NT
         zocoS5zn3fZaYq2Kt4XPOIktTBaQmyc8WweVXuEu/+QPIUnJKTwYjYpzbfq4Sn+RQXAL
         HB8F4HXV1mWPEZ+LOjOou2q2CZpyS68GaFyh+KDEVMK50QpITqVAa6YIjmUJXYSeP4d3
         lF8vH3iW7HfMZNKgeKfSb+UIMPyIPIMHm4MfBI3pBxsbLgoOrwdUtPeAtvhz+ZKFYZMc
         tB1Z4c5U8Dei+3/qSfhsLzg0msGfzPwVbxZfJbauYUfnBWYxAujNdvvczz6j3swcev4k
         Pqhw==
X-Forwarded-Encrypted: i=1; AJvYcCWRZ0TKnmbO5HdJ44mLyayck3lZizzuNI+UGnMRR9jLaFYhAao/tj5qolfojCom2USMl094n0qxa3ve@vger.kernel.org
X-Gm-Message-State: AOJu0Yx90aVEg8SF/GcJZrOXkJwBKTXTrUwSJgY+kwns65B2JAGQTcn2
	AAaRCzW2KT4YRyH1ZG9UgowBwsRMMNFihPgeqC9aNcu89hJ7S92wEs8tJxdVgKsOfHakUENFKYf
	DRv7HB1OiKm6RVi5shSXWktI1VT4oEJ2CpbaZgTTSVs/iX8mIYT0j1yAWDpw5AMS4
X-Gm-Gg: ASbGncvOesbc4kt/ALs8QafnRLEJZkTvZVbmIZrMPAMDQ8VBZd2qw2obrG/Eu4ibppn
	vgWH07aenY0WzyhDe61Kg9iHMhfHQ2HE+TgRmGzpKwaEicj6lbcOD4/kcNK7QmU+GoqNAIdbzLu
	xjNsYl2EQxJA7bI0pZa5P6ksOWUO3DFjcnF35mFFjynYz+6x7CItj24kLj8BMdtp0Gf6kZ5J7i4
	i72LbPScdxAdP4jLcxq8Uteewm4bfZYt1xK9nGGnP+kxL2NBjJL80xgQYepgT/Lw1Onx1OfhoGf
	wRuRobn4G8ZnM4/Wbd7sEFOmqWRFzpnibBh1E8egy6HPc0fQZb9drZHp2Zxxz1O9EtnsYRHv8J6
	P3VKPVisNhnFvE4M7/JiUuWDwZsr2HA==
X-Received: by 2002:a17:903:189:b0:242:d237:e20b with SMTP id d9443c01a7336-2462ee3033amr16553665ad.4.1755845317130;
        Thu, 21 Aug 2025 23:48:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH61Dg+R7H0dG6DmZ19hrTFC03VFv8xBO0r6XYbjTLMp1iwo0A+Wvhyyylwysjt+0wtsntd1w==
X-Received: by 2002:a17:903:189:b0:242:d237:e20b with SMTP id d9443c01a7336-2462ee3033amr16553585ad.4.1755845316681;
        Thu, 21 Aug 2025 23:48:36 -0700 (PDT)
Received: from [10.133.33.119] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-245ed51c027sm74231315ad.148.2025.08.21.23.48.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Aug 2025 23:48:36 -0700 (PDT)
Message-ID: <dd3c9cc4-3b4a-4321-88ab-933909b6da87@oss.qualcomm.com>
Date: Fri, 22 Aug 2025 14:48:28 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
 <tlilctwavwqw6oy46l5fote2pa6f4hdy2im6meo56cjaawba3a@a42bwbbfnsuw>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <tlilctwavwqw6oy46l5fote2pa6f4hdy2im6meo56cjaawba3a@a42bwbbfnsuw>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=I4c8hNgg c=1 sm=1 tr=0 ts=68a812c6 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=bGlgfQEnYdfhEoguRucA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: B3RMlrStxU1gf47K0Y6gKJtaTkBSdeBa
X-Proofpoint-ORIG-GUID: B3RMlrStxU1gf47K0Y6gKJtaTkBSdeBa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0uWA7ISJhiLQ
 n7T2n+HLcrLp0eZKW8p47GSBK03m9TsZwFXkNpAC/KH6ykUejltX11Jaf1KC501eJpDmnvk+CT9
 fmrXKUZcgt6Uw0RgKY2habPhF8WSEIWpEm73rN7y5gXVXM7AYxZau2pA0dWVdHAb0NUhsXG1ZXt
 XVEyue0wzZIE0PEWRqxyAmEdujgvRIIx3hE0eVzvFMnxjSdp4R9ijDSTs0VDi5EvcP0n4vhIENg
 oZLweUUYUPX3BEkTotSWIqSXqGfkoeVU5lGnTJDWjACohNYmEKn7pm9UWYlmxhisdihp457XZ8o
 qXEY9w+pAtm7DuRiPoUlOmdDPXcUBh2FA5a50AtG+BrT8qLUM0vVQPwyfFkg5kVquWC5moXfRq/
 bOLQrgbqu2QghFjlnA0KmLz7DvojMA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_02,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 spamscore=0 priorityscore=1501
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013


On 8/20/2025 7:37 PM, Dmitry Baryshkov wrote:
> On Wed, Aug 20, 2025 at 05:34:44PM +0800, Xiangxu Yin wrote:
>> Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
>> on QCS615 Platform. This PHY supports both USB3 and DP functionality
>> over USB-C, with PHY mode switching capability. It does not support
>> combo mode.
>>
>> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
>> ---
>>  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 108 +++++++++++++++++++++
>>  1 file changed, 108 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..c2b1fbab2930f0653f4ddb95f7b54d8fe994f92d
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
>> @@ -0,0 +1,108 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/phy/qcom,qcs615-qmp-usb3dp-phy.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm QMP USB3-DP PHY controller (DP, QCS615)
>> +
>> +maintainers:
>> +  - Vinod Koul <vkoul@kernel.org>
>> +
>> +description:
>> +  The QMP PHY controller supports physical layer functionality for both
>> +  USB3 and DisplayPort over USB-C. While it enables mode switching
>> +  between USB3 and DisplayPort, but does not support combo mode.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - qcom,qcs615-qmp-usb3-dp-phy
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +  clocks:
>> +    maxItems: 2
> Missing GCC_USB2_SEC_PHY_AUX_CLK and GCC_USB2_SEC_PHY_PIPE_CLK


Ok, will fix in next patch.


>> +
>> +  clock-names:
>> +    items:
>> +      - const: cfg_ahb
>> +      - const: ref
>> +
>> +  resets:
>> +    maxItems: 2
>> +
>> +  reset-names:
>> +    items:
>> +      - const: phy_phy
>> +      - const: dp_phy
>> +
>> +  vdda-phy-supply: true
>> +
>> +  vdda-pll-supply: true
>> +
>> +  "#clock-cells":
>> +    const: 1
>> +    description:
>> +      See include/dt-bindings/phy/phy-qcom-qmp.h
>> +
>> +  "#phy-cells":
>> +    const: 1
>> +    description:
>> +      See include/dt-bindings/phy/phy-qcom-qmp.h
>> +
>> +  qcom,tcsr-reg:
>> +    $ref: /schemas/types.yaml#/definitions/phandle-array
>> +    items:
>> +      - items:
>> +          - description: phandle to TCSR hardware block
>> +          - description: offset of the VLS CLAMP register
>> +      - items:
>> +          - description: phandle to TCSR hardware block
>> +          - description: offset of the DP PHY mode register
>> +    description: Clamp and PHY mode register present in the TCSR
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - clocks
>> +  - clock-names
>> +  - resets
>> +  - reset-names
>> +  - vdda-phy-supply
>> +  - vdda-pll-supply
>> +  - "#clock-cells"
>> +  - "#phy-cells"
>> +  - qcom,tcsr-reg
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
>> +    #include <dt-bindings/clock/qcom,rpmh.h>
>> +
>> +    phy@88e8000 {
>> +      compatible = "qcom,qcs615-qmp-usb3-dp-phy";
>> +      reg = <0x88e8000 0x2000>;
>> +
>> +      clocks = <&gcc GCC_AHB2PHY_WEST_CLK>,
>> +               <&gcc GCC_USB3_SEC_CLKREF_CLK>;
>> +      clock-names = "cfg_ahb",
>> +                    "ref";
>> +
>> +      resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR >,
>> +               <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
>> +      reset-names = "phy_phy",
>> +                    "dp_phy";
>> +
>> +      vdda-phy-supply = <&vreg_l11a>;
>> +      vdda-pll-supply = <&vreg_l5a>;
>> +
>> +      #clock-cells = <1>;
>> +      #phy-cells = <1>;
>> +
>> +      qcom,tcsr-reg = <&tcsr 0xbff0>,
>> +                      <&tcsr 0xb24c>;
>> +    };
>>
>> -- 
>> 2.34.1
>>

