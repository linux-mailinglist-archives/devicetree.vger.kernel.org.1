Return-Path: <devicetree+bounces-206808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 39683B2D9B6
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 12:09:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E608D16421C
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 10:09:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2825B2DECC5;
	Wed, 20 Aug 2025 10:09:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YmwPi891"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6AE02D4816
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:09:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755684583; cv=none; b=KH2hvG6AvxQ6C1K/Py8oLgBxd/r8UTZobv6saD7TJxAqukoC54/7IMf7EFJjvGznc/5o7sCISd5UVoP4zgx2YUIhn1jWkhQ6yAKnDc2eOFLnqKBrl1atQD8AxFomFkGuAhOelbPJPq6KDJKRZl28LH8kdsNZeNsgL6s0DI+8tHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755684583; c=relaxed/simple;
	bh=JCNu/rGcBHem5JcqQGsIgW489gVUPr53wxhLvfpPOuY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QfV47QpWpiUwOI8XXj8SwNWqGguS6i8wv7+R6JwBJXGE1bVooMjH/js1TTNYKFGjOLnk6Z5z+OgUFZR2797/a2oMMm+CjDNcH4G3HeY1IErQNyqa2eBH5Xm3iznhj+vj28RUpQMPIcAW5FVCi5Vruac1h+PTex3+UbzSstHQD1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YmwPi891; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9tEPF025147
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:09:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=ZzyoXjeixwKONwz/qTB0oBJK
	sSvE0kt0Ll8kNycredI=; b=YmwPi891MF9yI/eE9XHNxDGzZXiEBlcE8USI/+mj
	sJuh4fyQf9+6VxY40cJQnz7OCMH/t2x+K7wS4rBP6rcOzkxzzt9BSskD5T6g9EHC
	HuuDdUJBnAlYeTsNlJr6NdwT1gnRYaum6Pf/RRs/JsNNR3ruQe/pP4s3quHbescH
	2uijlbvytgVZ/ExVCW3neaiKd9Uz+mvfH06/Otw1bUck/7TvlPbHH7JEjIrg7a2D
	97OweyxTjdKHhqOdbWkpAD/g+PMI6HxqozGdt9pFJ9FID06rTlGbMGeoe3MSwPfE
	xhfjtdomv2rcZNr+u8jgyixSQuRrNGXiYi4LKlp/pZPcbw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a9bkg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 10:09:40 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b109c4d944so165154931cf.3
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 03:09:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755684579; x=1756289379;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZzyoXjeixwKONwz/qTB0oBJKsSvE0kt0Ll8kNycredI=;
        b=MfM2N5kudVStgURzo7wDAt7lb0euWkIoM3iqlP3R8boqQMCCxpbT2wKuBRwRKJIqTm
         lBI1+8m/JYbUh9NP6RXqzWnIQa2+CkF8VOEWZ3OySNPi0qJnd+nXa/KN4gfQ7OZJF1b/
         rzS9miLJpae60LCpFbw9zj68GhiWpLJC+7oL3Qy+xOqnkhjrxEW36zbz3ivKyS+1P3nk
         YcqmXInKn3wEjA+6uoQ28bDqUsFfrWMm5sslk2dbGprLReViO9xSHgHZDctEIpjOSo3D
         e4636/Ush+IQNJcRzxwD2IeHIPFu8MwS22Wg2yjyTD/757ECd4U/ePTN+/HTG9BofDhR
         9xuA==
X-Forwarded-Encrypted: i=1; AJvYcCVYkqotHE6Tx/HJPGZcS2QjCJvu+5uzKlGQMYe+LpWQV9bItYopxPjdL4CzMmvf3qwkOBK+t/akaCkP@vger.kernel.org
X-Gm-Message-State: AOJu0Yx1LGosYFHpMr2FwIutvtA9xkYiFohjE7PZqTU5DP+G3vNedQMf
	+6YPvlLVvb6Eyyc/CGQzU0oOR/xWsja7SNxdTQPeDSVUCp5rC3jWN0+G1ymglSWpy7N8Ms2qRGZ
	dy9xQ3mlu+LiPVyX5N8W4w4uRdg2m5WL4U6kFHF6Z84/ns0F4YJzAF5AEXNUWNSm4
X-Gm-Gg: ASbGncsk6yeYNfQL+yS6BtUFd8Aps/xEEswes0gLdfB6Qkxz1DmCHAOiAJTOt9vvvBj
	Rk7Nh7kNPyuEGBPJhZJtvzs/3JXjzoH0hV9oi8GZ0U6LtRvSwIBXSXh0iQ2utXt2BV2SUoR1SEd
	vmdQ5LZPCjtYume1mV2yGwK0kfwauBO4Upjytd+E0cNhP5u3orJAKZGxp2QB96tZWR959Cq6N4r
	727Fcku/cea4bzqSe4q5y4GkXXLe6UDtNIt+tUTkZ4a7v6gfVMbnP4z7ISILCJyAU4JzDP+pnaa
	pP5K0tfEeh71ZUaUvBVNsW3Uk8FZlpOsIdZykzg181DDCfUJEHyENyYQpGNuikS0a4y/13xWMuH
	1a1oFN0dL9QAmVZ4a5QbEgiLBFe711MFqwdmCJfXTvL44iP9VlWtm
X-Received: by 2002:a05:622a:4c8a:b0:4a4:2c4c:ccb3 with SMTP id d75a77b69052e-4b291baeb33mr28831511cf.38.1755684579172;
        Wed, 20 Aug 2025 03:09:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFO+07cDalcclEJz4U7wwfw/PcTiuXWte6zf1fXyIS6NX7XUcddZp81APEIdTIESPROsNMifg==
X-Received: by 2002:a05:622a:4c8a:b0:4a4:2c4c:ccb3 with SMTP id d75a77b69052e-4b291baeb33mr28831181cf.38.1755684578661;
        Wed, 20 Aug 2025 03:09:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef35f11csm2524249e87.51.2025.08.20.03.09.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 03:09:37 -0700 (PDT)
Date: Wed, 20 Aug 2025 13:09:35 +0300
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
Message-ID: <3lodaz4t72vsxnstfe2msooo3dnwbqy6hxzdshcmyrgb3fbjnv@2afo5atezt24>
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
X-Proofpoint-ORIG-GUID: Ns8yJwyxtbIwDpt3NQZtgel5utZyB_MB
X-Authority-Analysis: v=2.4 cv=B83gEOtM c=1 sm=1 tr=0 ts=68a59ee4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=x0hJR-vgZ_cmirHItZUA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: Ns8yJwyxtbIwDpt3NQZtgel5utZyB_MB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX5D1rgR2FBMyy
 YX1a8gDvhv/Ro6gojI/k4fdhEH9j6ge72EN63jxrbmRXl29L0Pue83hpChJR6ZF//OHDcOmM4FW
 I2jZLiYsmDx0gToe1vlbjJLlODTzUoZ2fEDu8hO6YLTkNDmsywd1DUtHYQ7Dt7wNa+9EfQNoWcT
 rJLqH942Gr6yUE3EYB5IeOEVVx9HoATRImoDGm1TU0bW9n6svBGDcvB+HC4MqOO33LCzvYXCYzA
 LwuM50jpWScUyC/rftj/0Rw11J8neeSlyTB8vybcWLPmhQpbsao3Y1lP4b+XkJXWXdL2RG50MeU
 XNUXHkkDl3G5RM6Yu3+L71RAb2J6MBLwP+/9DMfAMgvA2q65ejZamOGlJ3vLF8bhYuU+C9yy3qp
 YDAPR35Hg7M8we7i7WYjuamiWTEmuQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 priorityscore=1501 suspectscore=0 malwarescore=0
 lowpriorityscore=0 adultscore=0 impostorscore=0 clxscore=1015 spamscore=0
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

Why do we need two phandles?

> +          - description: offset of the DP PHY mode register

s/DP PHY/PHY/

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

