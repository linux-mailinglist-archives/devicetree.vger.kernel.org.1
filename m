Return-Path: <devicetree+bounces-206832-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 84772B2DB5D
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 13:42:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 373821C80D60
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF14725742C;
	Wed, 20 Aug 2025 11:37:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I/khlice"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27FD2233D7B
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:37:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755689828; cv=none; b=ROdbIMuRe/4JHONEI6UthBp5BrJkb0NoSGgK6goIjQGWykkAzYt73x1gG1kr50YXQVcx9nGZIgvSLeMVBte7zIDaPC4PPE2cOpm4W9bRWnTevMID5jU9aBy1bFusLCpdDClb0hJQkz8nCFNxaMde/9LrjrwjkvgaxEN7x7TWd6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755689828; c=relaxed/simple;
	bh=McQx1552YMg8zQBWoN19odePlUMnW+PahZRcsctyceg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DsdD7fhPE41SzECLEYgMdRnvUrvePsgAywS6mGoIOCaLQ1uhjzkk+WzHq6SWVwtJZjlZVbiw5T2NixenE8NNhub7FoL/f1p5HPaZKnX+BOZkVPC/3c2VxbMnkYSbDgQDP69FpHbf2eSO20UPkKvtAWEdq64RP1dUbTHTtZ1v3Wk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I/khlice; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57KAVVsS031108
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:37:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kG5EvtRUaQfCBV/YBpEi6527
	Mm9dhLGyA7HIWyFmk/A=; b=I/khliceukaDzXQ4a8TO8U8d64C7c9DcfnKPgEeI
	MMsXt7NdF862BBfRS+lSt2wt+/vskLgWr1umAzOsSxswVBPai8z0YCfJYyvnOCT9
	Ypygujq0WaGH8GRWYcmBe9HZeySZTPrQ/DjBhYRdAHf7alncQvu3s3OXFDmRIPhS
	0sfrPgtsH7V4ng8jaxFIqTUfdoY3lvQjdZjMHkvB5kNhUmnbov2elZvLSBaWY0sH
	dSudDwJQwoL99/4IT9IVXYTcisHes0jI2f7FtdbS7JZf0lPoqWCvl0X9bCVS5yP2
	OnxWbSZ8bXMKzmhFnEFdp8LsbChMmrv1TptxzocLl9jQAA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52dhgt9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:37:05 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e870315c98so2877163485a.0
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 04:37:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755689825; x=1756294625;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kG5EvtRUaQfCBV/YBpEi6527Mm9dhLGyA7HIWyFmk/A=;
        b=IO/SAJJzQAJk88sFgk1yo4uKOhcLq6Cj85VzuT+DzKh45wwfvTRZNjROOyDPNXgmqc
         AwG3sh4dXn3Wn7KC4ZB9mnN8PFU4tOgBeibk7z8COnITNen8eZkQHECKxxSfXo2SfxXj
         GcOhngS+RBHLIw8s1VLilFW4Iocc3iEBsUCtf4kvZ+PRWOC0YfcQOoHg2KNDUdWmClGR
         yUnh1fUZVF9H3hqvo3wunK9hPDa2tHbmcWATJhjxQZFL+qZSYTug5YQ8wX6qmMQ3A6Xh
         W3ujRnEuT/rXMRpmmECnk5UQtXgCBtFPF68QNqmt2oj7HIa7jM/4JkRUVjnkM2eSOqXo
         k/4A==
X-Forwarded-Encrypted: i=1; AJvYcCUC2Czn295pGS2L2Jtpm7helidBc56cvLUtYcX3M8tkczn222Nh+ndHYi0KCBuPb7Xbt/332siL/8Oj@vger.kernel.org
X-Gm-Message-State: AOJu0YylTqQiDD69MqlRAg9pSmWPNfuKwmOZKQaG+jBTQn5pyw8l/8WV
	RG84J/hLAht244dblGqV5/e1r+0GrT7Xyut1kkvs7KLt534IYSJm00hoVaXXpbe0Ua0GLYx1yTh
	f/BSlAoL3vyLnpp7ow5p6MklnhEugjykkNE3X4ezawoxycVOdKnekWX0r0xqhjjUt
X-Gm-Gg: ASbGnct3Nk4wR8iaAvxxWBglV82eZhOPw48t3Rke3j7gB3LWXBvYB9BzG0kwkHVwyrj
	RPwncRwFPgjXr9Hb9ATih/gOWCD4W9fnJnVgmvvOAMyCwNRRWLq+8YJo9lL1k6M2wAwQ9rwUYBb
	IYxcuwyJbDiOI3VERAg98yVmtNlSczHzHVi6XugTLlOQyELws/5vzKJ5Rpi5Fq3al4iqQIJj9x3
	Ll+XYKhkdnVPH9OSfjLDHaJISlT/8JVEuBnk/QCIaT3aXCYTL2tKczXfCMCwHcXEwNSF4eeWEPl
	kir8Q+mbGS1gZLmJrQ7H8I00r4wuHZ6IMycUaJ91aa0wZpqAaHjbQljO9me/3B/79uJtLHAbxpM
	zGf12yxFdPURbDAsMMgqrztuSM19P5exyj8aA1W7STG9ysE+ech7+
X-Received: by 2002:a05:6214:c28:b0:70b:af39:8596 with SMTP id 6a1803df08f44-70d76fae59cmr27614486d6.28.1755689824683;
        Wed, 20 Aug 2025 04:37:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHF8uDY/KF39ETwmmHdeKUKsc98VcWiJ/Iu9zjHm6WFS5DWcH3CpZlDmrVqK45d2lN37i/9GQ==
X-Received: by 2002:a05:6214:c28:b0:70b:af39:8596 with SMTP id 6a1803df08f44-70d76fae59cmr27613786d6.28.1755689823518;
        Wed, 20 Aug 2025 04:37:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a41e3cfsm27543291fa.6.2025.08.20.04.37.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:37:02 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:37:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
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
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 02/14] dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
Message-ID: <tlilctwavwqw6oy46l5fote2pa6f4hdy2im6meo56cjaawba3a@a42bwbbfnsuw>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-2-a43bd25ec39c@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX0OTG1FgnS4KX
 o/aWltlbNt3gu+ZkurEjON3mzZMvZ9dju1dBe9Wr9QWYoQUxiqFR6maII+JSOOD/xDyp1N75q26
 2SbcvKCo2685mHPS9WKvsBLGwwcoFQHLgyCu5Gw7kJKkx+OZjgbcOBjr55yYz1iFFqnBFPki3KQ
 ayKewOcHfbGB3gPZpTNqiDQQg7k5D0DEJPqcdeR/XEpDi536tCmiB2MJszRJz7o9h9h4nPw1m1i
 gNHP4ZtaMqU1MVdBmlS7NvMqQBq6l1BvQ+qQYkIAIlgOLVHChjfW4Ww3jF7g33M7v0TSdNEEXkV
 mYrvyZmBIoWH8LfPvX0wMOPLjZ8sAOhVeX89ikWQL5w7L+MhHzZXi1Acnk+rL0EkU1oNzup+xh0
 +3Sdc+GCrxhZ2f7sSxKm3DfnWx1DZg==
X-Proofpoint-ORIG-GUID: EmNKO5fB7JBh5E1XpqdBW6ccJhHuhzb-
X-Proofpoint-GUID: EmNKO5fB7JBh5E1XpqdBW6ccJhHuhzb-
X-Authority-Analysis: v=2.4 cv=SoXJKPO0 c=1 sm=1 tr=0 ts=68a5b361 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=7souUVsdAZ2KeZQVA08A:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 bulkscore=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Wed, Aug 20, 2025 at 05:34:44PM +0800, Xiangxu Yin wrote:
> Add device tree binding documentation for the Qualcomm QMP USB3+DP PHY
> on QCS615 Platform. This PHY supports both USB3 and DP functionality
> over USB-C, with PHY mode switching capability. It does not support
> combo mode.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   | 108 +++++++++++++++++++++
>  1 file changed, 108 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..c2b1fbab2930f0653f4ddb95f7b54d8fe994f92d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml
> @@ -0,0 +1,108 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/qcom,qcs615-qmp-usb3dp-phy.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm QMP USB3-DP PHY controller (DP, QCS615)
> +
> +maintainers:
> +  - Vinod Koul <vkoul@kernel.org>
> +
> +description:
> +  The QMP PHY controller supports physical layer functionality for both
> +  USB3 and DisplayPort over USB-C. While it enables mode switching
> +  between USB3 and DisplayPort, but does not support combo mode.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - qcom,qcs615-qmp-usb3-dp-phy
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 2

Missing GCC_USB2_SEC_PHY_AUX_CLK and GCC_USB2_SEC_PHY_PIPE_CLK

> +
> +  clock-names:
> +    items:
> +      - const: cfg_ahb
> +      - const: ref
> +
> +  resets:
> +    maxItems: 2
> +
> +  reset-names:
> +    items:
> +      - const: phy_phy
> +      - const: dp_phy
> +
> +  vdda-phy-supply: true
> +
> +  vdda-pll-supply: true
> +
> +  "#clock-cells":
> +    const: 1
> +    description:
> +      See include/dt-bindings/phy/phy-qcom-qmp.h
> +
> +  "#phy-cells":
> +    const: 1
> +    description:
> +      See include/dt-bindings/phy/phy-qcom-qmp.h
> +
> +  qcom,tcsr-reg:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to TCSR hardware block
> +          - description: offset of the VLS CLAMP register
> +      - items:
> +          - description: phandle to TCSR hardware block
> +          - description: offset of the DP PHY mode register
> +    description: Clamp and PHY mode register present in the TCSR
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - resets
> +  - reset-names
> +  - vdda-phy-supply
> +  - vdda-pll-supply
> +  - "#clock-cells"
> +  - "#phy-cells"
> +  - qcom,tcsr-reg
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,qcs615-gcc.h>
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +
> +    phy@88e8000 {
> +      compatible = "qcom,qcs615-qmp-usb3-dp-phy";
> +      reg = <0x88e8000 0x2000>;
> +
> +      clocks = <&gcc GCC_AHB2PHY_WEST_CLK>,
> +               <&gcc GCC_USB3_SEC_CLKREF_CLK>;
> +      clock-names = "cfg_ahb",
> +                    "ref";
> +
> +      resets = <&gcc GCC_USB3PHY_PHY_SEC_BCR >,
> +               <&gcc GCC_USB3_DP_PHY_SEC_BCR>;
> +      reset-names = "phy_phy",
> +                    "dp_phy";
> +
> +      vdda-phy-supply = <&vreg_l11a>;
> +      vdda-pll-supply = <&vreg_l5a>;
> +
> +      #clock-cells = <1>;
> +      #phy-cells = <1>;
> +
> +      qcom,tcsr-reg = <&tcsr 0xbff0>,
> +                      <&tcsr 0xb24c>;
> +    };
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

