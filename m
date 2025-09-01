Return-Path: <devicetree+bounces-211278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C999B3E362
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 14:40:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67388188A18A
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 12:40:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F85531B103;
	Mon,  1 Sep 2025 12:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WkV3fYSI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E975430DEDB
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 12:39:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756730348; cv=none; b=i9egsrVNhiybzN8xgKTxHC47D98we7EbUTrlHGPubDGX8Tk5UQV3br8JgOtxvLLPaAfaVSxSnp2QK4QeDDNeQUTqDea7t/+U3GK4ElKdw4fFLHCFG0dS/SLbhBJGXFkl35uIeaTikYrB9+pDg955NBqCSRXJaEOpE0eMgbg3Wgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756730348; c=relaxed/simple;
	bh=66ZL2zRlf98eYrB1UdArAINhd9+RZABLfPnFY9v3/lY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jFgonXIrSiEJC7Ogo+y2NzrfXaII8v9oWQQRFF1NFoG4nrAA0c8GNVEuHFVohUc+Cz3hDg0b6IrGrL2ZIu3SK66DCUosAC/0/zbsIEM4T5Huto/moO/ca34RVaz3slqrO4ZYCPwSmYIYLFRe18afY8WnKuX5bRl5/E/UR1vlSVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WkV3fYSI; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 581B4Eam007213
	for <devicetree@vger.kernel.org>; Mon, 1 Sep 2025 12:39:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ag+uc2sfSISlJdM0Nw82xpwB7MNtUR0GdzbeqIRcIGA=; b=WkV3fYSIlVrcFM2Q
	IZe+oZy7wvsT7uLcQpkSKNJpdIfj5VXYmI5Bf4jwrwSjZHOZLvxx283DBy8YoJ5Z
	o5N0LHt97jEiriRn8qt/G/apE6Bxg5XEHB2DXDp83U/EM6jhzeDSDyB+9+AIww6X
	Db0gDmfkYh7DR1QWBFvD3iOrTmLTzBbYWHKBB9eDNFilJcur074t5jsncIa4Pf8g
	17uq7FUtQ4KvRqMv/9TJUvWwW6DlcVAmFcQl1zWcoCpCVRvlQrzmapq2D7zhD4j+
	e1S5WXiIubJsugnSCXjw7PiipAnBrcEIzuFIW3gTi1+x7NrByEIeRTscDdb5JcPq
	SqPptQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48utk8vpbj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 12:39:06 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-244581a191bso7111035ad.2
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 05:39:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756730345; x=1757335145;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ag+uc2sfSISlJdM0Nw82xpwB7MNtUR0GdzbeqIRcIGA=;
        b=LOSCpFVxHOx1D2d9WbvDgWNF6dajG8KNGvVmV7BfMoqai9M9Q/zlYHBF4oMjDqrN9U
         LUA+FwbrNVXlkO9+1xRf9ngswHxucwsnE9nnEY/cTXVb8Xgt+ik7RXVYi0Dbl9yE0tXm
         VOjGRRHtfYif4jkGW9J2DJNDMrRvMzkga5VWUY2xo5g4wVQzQuuPvdFpO7aBnVTqEJ3W
         Bi9b+sTRj5LhF/oRt9ZSuJlDkwMrYLpVZFm2JFL2SoxkImmEgHrRKNUrFtewK/2YXyGX
         0g9ZQL/85NdBReny9s9ack52cNj6+oakNE5aW8y9dObVWF5qGBrnjbZH1oB0u1+Ov5op
         rvVw==
X-Forwarded-Encrypted: i=1; AJvYcCX7Xu3WE8PY5piIzsIS12otUF5Rt+A10ghBxmTaevGuCsAF831vY0qSs86TKwseNqfBA+kzQ6AsNBo4@vger.kernel.org
X-Gm-Message-State: AOJu0Yy5nyfXZKgLuCCLNSHg2dB0Ol+bTulTRIQMIWHKH3vCnQ5khtO1
	RLFxGEFitwrYdxKwTlLU6kXDhOnin9b24FSZnTC3CDjMM7OOfOClCj6nUeCJat8G/D+LZQE+SWQ
	psDzvtHz8jIR/08dgBi+GM360qI+6/jhDMQ7/nEfdhj9WivQm6NMgEvepJa6z6Wpx
X-Gm-Gg: ASbGncsuX5nRLvSN9DmtFpA3pxeNxvNvLj9nvlen0fq0UFYhpfyB3QW3SLakKf/qmks
	EYgbOlM1iRLFLfzDtgnWzTCdx52GG5PW0NcKqLlOyEmmMHQl1C0h0KLih5ugQ//Dvd9ufwGITgz
	7ekf9WBHqwhXqBIglwhhmCB011bkcRj9nQmF9u2+GsokLzasoUuUOIJl6y1EL3kFRwsfl6Z0xqr
	odZifVghCrZTrXvqmwIBLpySjPK8ZBN1yWTUVmqyO51CnmveJukNgnIzPSX2OyIUE/gnIqxE0on
	CaMSs/SxhdE1DM+M9EG/j1oyIHWSolU85BYipwiDVxPbMrhahr9GySugWaRl1RuwY2uLKiKQ7Al
	H8p4saEzY/V95sqTLlhk0LY/NXToCCA==
X-Received: by 2002:a17:902:d488:b0:248:ff48:8779 with SMTP id d9443c01a7336-2491e1ed5d2mr67831205ad.2.1756730345035;
        Mon, 01 Sep 2025 05:39:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGenErKxO5/yYfNFbGUt4G6q+mh/TfyItFjo8JNUx5mpoIN5ZQtB3b2C6jXNrrW8UUGRc9ZyA==
X-Received: by 2002:a17:902:d488:b0:248:ff48:8779 with SMTP id d9443c01a7336-2491e1ed5d2mr67830675ad.2.1756730344486;
        Mon, 01 Sep 2025 05:39:04 -0700 (PDT)
Received: from [10.133.33.251] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2490658999fsm101472765ad.112.2025.09.01.05.38.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Sep 2025 05:39:04 -0700 (PDT)
Message-ID: <04549ce5-fa14-440d-b5b9-f8ff059f632a@oss.qualcomm.com>
Date: Mon, 1 Sep 2025 20:38:56 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
To: Rob Herring <robh@kernel.org>
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
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
 <20250822142230.GA3591699-robh@kernel.org>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <20250822142230.GA3591699-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: dr4RhP_TLi-MWc7bKdsslVBPnPsDuch1
X-Proofpoint-ORIG-GUID: dr4RhP_TLi-MWc7bKdsslVBPnPsDuch1
X-Authority-Analysis: v=2.4 cv=ccnSrmDM c=1 sm=1 tr=0 ts=68b593ea cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=VwQbUJbxAAAA:8 a=mavVfetI76m9BAqSKQsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDA0MiBTYWx0ZWRfX0K0tmpsQoZvQ
 OqS4OOUfoIhaBylI81ffZ47M3E6aOtZKwJ4qRXsGdSabV2+bOQWJMQq7FEilL5AfnB1I//Sz06Q
 V+5WFLTtqMnVagrgnH+zv7DJb3eLd33bu9sbP0EchcZ4lGBAtsBACYuLpB8tdxzQMYGno31Kavf
 vqs4fNl8wmi+5EDsibawrHFm3+prLpE5HUIwlviqB2cGsnoCVr7939fnNJR/LFIbKenhuwZB6cI
 CBFLEk2U/w5JXSH13qxwZB/UoKDmTIbwkEHRfDSVjA18IC3Gq08pFVM/mYtveCfZy0bpWUee6Pe
 VUqR9rq2cnZsNOgogWdnt6uJml7iwiyQl3ewGmUz6EZLcyMiuWWfZKmtXdBd8ArQqUWg1RKgk+i
 nQqKeU6j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-01_05,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 priorityscore=1501 impostorscore=0 malwarescore=0
 clxscore=1015 suspectscore=0 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300042


On 8/22/2025 10:22 PM, Rob Herring wrote:
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
> No, this should be someone who has the h/w.


I have discussed with Bjorn offline. In the next version, I’ll update myself as
the maintainer for this dt-binding.


>> +
>> +description:
>> +  The QMP PHY controller supports physical layer functionality for both
>> +  USB3 and DisplayPort over USB-C. While it enables mode switching
>> +  between USB3 and DisplayPort, but does not support combo mode.
> Wrap at 80 chars.


Ok, will update next patch.


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
> phy_phy?
>
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

