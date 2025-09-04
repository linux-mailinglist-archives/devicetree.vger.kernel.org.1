Return-Path: <devicetree+bounces-213037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 02686B4473E
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 22:23:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4E15168EF1
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:23:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AEFD27FB06;
	Thu,  4 Sep 2025 20:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gIx24vXp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7AF227F18F
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 20:23:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757017416; cv=none; b=N3BPfMWgQsJRTgShtbfXt46720DHobN5f+u7MCLtOYUcUwXj2YRgNOYiieTkBE8yDouuaJ1j4N3Jnsl33TMw+7tHHhz5nhMNJg03mwoK9sBas2IbOlYDdZvoKDftuYEctaXezDEbnUTnua5UtEKrS+G8PdOXOc4/USrrhQ3YdnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757017416; c=relaxed/simple;
	bh=fsPCQdEgPyW/M1G1rLSRaepVZ9EwJ41Mpa+/hxxZWWo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NX1YH/B/HaFfXEoGDrCH3wLWbr0Vsw2DWuT3sb8fPzXDk8tOHrqj8c+al2xyov9RvJjosxtB3M8tfP8q1SNmasUMRiRgryaMK7gUsudvtqbFmHx8+hhs9dBTDzVRjyx5CUH40j/RU1fBIPkeaKFNGsnhI+1NT0ytVAEn/6lQImU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gIx24vXp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 584Int1n008136
	for <devicetree@vger.kernel.org>; Thu, 4 Sep 2025 20:23:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BhjhLn4p+fVTddeDOV5N535S
	l5j76d//X2bYh+lMLPs=; b=gIx24vXpFsSdYeFUk+FTmMF+B4fWHQdBzPmDn1LF
	SRJUli3nCxV50BpDCX1zqobOq32MoATgytI0qIMpMYtk2fVfWbJt86zys1vlIheb
	cViV+E2xviNdFDXLMdfK5WCGZvLlid0xsRG7K5iXiF5UFcVUm24gEW95xzMjDGRW
	4Dm/0Gh8RYXspRMoJL1mMXKXSc3otG7CWOmIjLz35eYjeNYSprPo1S2ybgR1Glcu
	xXNh275dxJHD5kI8+rxFACAbl1Mu6aV2Vw9A/WEm16IK2D6DI+HehFjC6Ki6etoS
	rPBFtMlReVhhyvGq1l9pAYY3qknNvEyGFz3E4pUS/uTblg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48urmjrs2e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 20:23:33 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-718cb6230afso25646066d6.0
        for <devicetree@vger.kernel.org>; Thu, 04 Sep 2025 13:23:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757017413; x=1757622213;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BhjhLn4p+fVTddeDOV5N535Sl5j76d//X2bYh+lMLPs=;
        b=fHIzfoGbPBi1sgExd4HoyzsPYyL41tdP1+L/z4adFcFEu0++nybEcLmArmaC5BBgTl
         Wm1iqso6kZ1M0E6heDGkGLeZMMUBXM2BfKQ2aYM27X6KlMJQR3yLqHsAfsU8F1pdtmiB
         uTWUgNtNX6flLroloSHIkd/XOcsTjNGsLZpa2FyLB+fqRp7OnflFbp+4tvwKpx8koQSh
         OYkmha9+k5VlJVC3P2Qa9F6mk0AdMdYzwm5ZDTC9sdM9h4m/8Kxriy8CaYMdifSZYbY0
         /fGbvTVG/ej4PCHH+uXhdJNU6qQehzgfAUPlDFAGVVanpJcEDnHfWEweZRBtJ9SJLaT2
         z5OQ==
X-Forwarded-Encrypted: i=1; AJvYcCWg1kImCX07MdRa/+UQMXztp+1jucRra3ggSsnjVFjRoIFcK/gdwvLEA1O8MrI41hBuq8bvPdZ9Q9U7@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6AuHulrXcbgaiAfBjd/V4x1Kmp5UFRDsjMbk7ZGXNHrtybfOh
	D6pP4ruzgfc1eQJReomPPbTM4yvHhRAppS/A3cSBPxmRuTaepMAiLJ4rlGNJK65j9AdJ6kZIKbQ
	dukOABW+eXsE/9USj8OlIqm+6+IVHb2wS5T8y5X+RuXGudfMuYW8GbR8m8duiT80k
X-Gm-Gg: ASbGnctw66nCDmGRc+PhpdeH9mIecWYbH8Koh+bWhOdnwTFiel5OEEWs8kK2wjl1YYO
	4VOdKLfsZ3oCMjc5WFP7qhAB8McwBmRFRMl8PVZ+LxdSJJD/qiatpocbl/zA9J/MFiH3tyYZox7
	MPmelw8ZYpV3xJjXQoJW6+5GRDhWYcCaxWicOHtHRNifuJE+HS+FbCajtNN/LaX1fmVkdLvJpl7
	VHjoVOY4h0cSKfSRMmpChNMIYFSBiNnbPWnQUTxACcxBTphWFZj3roJXZV1/07TBkkUsbsr5mtf
	rl8LORjzYAGkeyPq7OGQ5dYaELUicOt5Gf7mUPjSyjbkg/hKNtkJMhQPnc03yXiVL0pM3RJq8V9
	VJ4SwTNGNCwhSlWPc7XjlrWy73qy9C34GRXcdWYMQ83FqgjATtyCX
X-Received: by 2002:a05:6214:40e:b0:709:6582:86d8 with SMTP id 6a1803df08f44-70fac789c6amr237886046d6.21.1757017412566;
        Thu, 04 Sep 2025 13:23:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7DTtrjAmMG4+SbOuJLgcfs9oxMwNnEiEQAc0Pfy9/m+t6Z1n1hx4a3Nf6n68AGum0eX+41w==
X-Received: by 2002:a05:6214:40e:b0:709:6582:86d8 with SMTP id 6a1803df08f44-70fac789c6amr237885516d6.21.1757017411833;
        Thu, 04 Sep 2025 13:23:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5608ab5c0acsm1437638e87.16.2025.09.04.13.23.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 13:23:30 -0700 (PDT)
Date: Thu, 4 Sep 2025 23:23:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Marek Vasut <marek.vasut+renesas@mailbox.org>
Cc: linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>,
        David Airlie <airlied@gmail.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Simona Vetter <simona@ffwll.ch>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH 4/4] dt-bindings: display: bridge: renesas, dsi-csi2-tx:
 Allow panel@ subnode
Message-ID: <lecx2cs5durkwq4at4w32bgak3s7tsxfmj6fzvyxhfjud4zljm@25aijm4rlhmg>
References: <20250904200431.168363-1-marek.vasut+renesas@mailbox.org>
 <20250904200431.168363-4-marek.vasut+renesas@mailbox.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250904200431.168363-4-marek.vasut+renesas@mailbox.org>
X-Authority-Analysis: v=2.4 cv=OemYDgTY c=1 sm=1 tr=0 ts=68b9f545 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=b3CbU_ItAAAA:8 a=VwQbUJbxAAAA:8 a=pGLkceISAAAA:8
 a=P1BnusSwAAAA:8 a=KKAkSRfTAAAA:8 a=e5mUnYsNAAAA:8 a=HSFmO_Wm-5cOy6Hx3LcA:9
 a=CjuIK1q_8ugA:10 a=pJ04lnu7RYOZP9TFuWaZ:22 a=Rv2g8BkzVjQTVhhssdqe:22
 a=D0XLA9XvdZm18NrgonBM:22 a=cvBusfyB2V15izCimMoJ:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-GUID: tsxXCNjYF_8oi_Hl6Yigbb7wNCGRIPBx
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyNCBTYWx0ZWRfX/Q7t7sUNxpA4
 JtxW7hgssp7FK3qpuBeAlaB5YVaRuYi/N6SD/LsxhTsS8RNg0oKQkx6B1FKHTURwnj5FI7tGBNp
 kVGdtsHiw68ICIOB1ppIC/Exwj3nGUOvKY5ZYEjrSNEjM2Nq0XNxefgJmT1eDBIVmgIni9+MGlP
 vmssiQuzwE1NZJsLWpA0dDEaE8QzDWP1y57j3N0idS4sRxHiV4HAgoa+wWeQTECpox5KUZuj1Ke
 kacLz15lMCph/vvn+39C3uWCJQuVkFrrGRKUMYlQUIUObP6d9Dhr28SWIeTLJbNHipM+eRxUzqW
 In0ow1ByF2e6TDbyIaIT7GYhQxpDjNuO97E3s+aDYHyhJZNpn6VtRc2O0RN26G8iNxhamFpk7zA
 auqqUw61
X-Proofpoint-ORIG-GUID: tsxXCNjYF_8oi_Hl6Yigbb7wNCGRIPBx
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-04_06,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 spamscore=0 bulkscore=0 priorityscore=1501
 adultscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300024

On Thu, Sep 04, 2025 at 10:03:08PM +0200, Marek Vasut wrote:
> This controller can have both bridges and panels connected to it. In
> order to describe panels properly in DT, pull in dsi-controller.yaml
> and disallow only unevaluatedProperties, because the panel node is
> optional. Include example binding with panel.
> 
> Signed-off-by: Marek Vasut <marek.vasut+renesas@mailbox.org>
> ---
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: David Airlie <airlied@gmail.com>
> Cc: Geert Uytterhoeven <geert+renesas@glider.be>
> Cc: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Cc: Neil Armstrong <neil.armstrong@linaro.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Foss <rfoss@kernel.org>
> Cc: Simona Vetter <simona@ffwll.ch>
> Cc: Thomas Zimmermann <tzimmermann@suse.de>
> Cc: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
> Cc: devicetree@vger.kernel.org
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-renesas-soc@vger.kernel.org
> ---
>  .../display/bridge/renesas,dsi-csi2-tx.yaml   | 53 ++++++++++++++++++-
>  1 file changed, 51 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/renesas,dsi-csi2-tx.yaml b/Documentation/devicetree/bindings/display/bridge/renesas,dsi-csi2-tx.yaml
> index c167795c63f64..f663bc6a6f831 100644
> --- a/Documentation/devicetree/bindings/display/bridge/renesas,dsi-csi2-tx.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/renesas,dsi-csi2-tx.yaml
> @@ -14,6 +14,9 @@ description: |
>    R-Car Gen4 SoCs. The encoder can operate in either DSI or CSI-2 mode, with up
>    to four data lanes.
>  
> +allOf:
> +  - $ref: /schemas/display/dsi-controller.yaml#
> +
>  properties:
>    compatible:
>      enum:
> @@ -80,14 +83,14 @@ required:
>    - resets
>    - ports
>  
> -additionalProperties: false
> +unevaluatedProperties: false
>  
>  examples:
>    - |
>      #include <dt-bindings/clock/r8a779a0-cpg-mssr.h>
>      #include <dt-bindings/power/r8a779a0-sysc.h>
>  
> -    dsi0: dsi-encoder@fed80000 {
> +    dsi0: dsi@fed80000 {

As you are touching this, you can drop the label too.

>          compatible = "renesas,r8a779a0-dsi-csi2-tx";
>          reg = <0xfed80000 0x10000>;
>          power-domains = <&sysc R8A779A0_PD_ALWAYS_ON>;
> @@ -117,4 +120,50 @@ examples:
>              };
>          };
>      };
> +
> +  - |
> +    #include <dt-bindings/clock/r8a779g0-cpg-mssr.h>
> +    #include <dt-bindings/power/r8a779g0-sysc.h>
> +
> +    dsi1: dsi@fed80000 {

No need for the label (dsi1:)

> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        compatible = "renesas,r8a779g0-dsi-csi2-tx";
> +        reg = <0xfed80000 0x10000>;
> +        clocks = <&cpg CPG_MOD 415>,
> +                 <&cpg CPG_CORE R8A779G0_CLK_DSIEXT>,
> +                 <&cpg CPG_CORE R8A779G0_CLK_DSIREF>;
> +        clock-names = "fck", "dsi", "pll";
> +        power-domains = <&sysc R8A779G0_PD_ALWAYS_ON>;
> +        resets = <&cpg 415>;
> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +
> +                dsi0port1_out: endpoint {
> +                    remote-endpoint = <&panel_in>;
> +                    data-lanes = <1 2>;
> +                };
> +            };
> +        };
> +
> +        panel@0 {
> +            reg = <0>;
> +            compatible = "raspberrypi,dsi-7inch";
> +
> +            port {
> +                panel_in: endpoint {
> +                    remote-endpoint = <&dsi0port1_out>;
> +                };
> +            };
> +        };
> +    };
>  ...
> -- 
> 2.50.1
> 

-- 
With best wishes
Dmitry

