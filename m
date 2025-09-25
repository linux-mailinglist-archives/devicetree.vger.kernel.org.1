Return-Path: <devicetree+bounces-221669-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 95835BA1B70
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:59:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A92321C847C2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 22:00:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 842CE27B34C;
	Thu, 25 Sep 2025 21:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dmXVCM11"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8BF927145C
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:59:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758837591; cv=none; b=PWo4qp9eF5UMxXKBrCoAKOvj/8htA/vY4XYSsDD3Z1mzaaqVz17y07Hj8myM6jd1Mizesvc/q7UxA0FaBlTcJKutoI7O3jVJYqZZb1Yi5mfUrwGNhhLCQldwddrjH591ojsD3L7fRudjbNp/lxXij2YIDwKG+NB7fjgQ78pIoVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758837591; c=relaxed/simple;
	bh=zQb+dGtMb2u6KWUTABuTq2+gnHyg2j9x5k8jyapv30M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=da88iNEBEPbQ6/a9nacJEyi+DUAc3BbOopQkGPosA6msCtmUVIhJjpBVcH+pxfB8XUsWpw/E1CJCqxyCHEVYM5wgFW9sxDNn4pZAPQzWZ66pPEkzjS74IVyVLOrK7avjWPno0V46S0/PD5QpXDJG3rxhJPBuZaIHpEgYprcYy0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dmXVCM11; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIQMJN015909
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:59:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BR5HUPeCfft1NCbbIet3qxND
	5IfQR5IsgBoObFi2Je0=; b=dmXVCM11cDQ/e7iP/aeOEcPaRINrPzjAhfS2OeIL
	Zv8rCZjqsL/dC2KHqPEY4C/OREtV7GtdvP5RKd3Wy3qDPVVf1Wl8+XxJlbvl0o0b
	cd4e4PA1y05OrXAk6+NWW0R44IiPaluKPmNUuxNIXWNHxEwZR/XDNabMBsFhZNLO
	ZDHDaDCkUmjjQDFz+7W1hlk4ahxeoVaW8KVGE27VbvKox82+mY9I1TZGPD3iP9Ij
	6cJxPGdzy8FzkREB2oGpXimWlXwdQzdCk5A2lUQTPea38qi5wTpfFn6SchdLWE9f
	iQWRal0RDRoP4msoWLPjpWeQA/f4KIBUK2D97k6EteWklg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0t8hds-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:59:48 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4cdcff1c0b1so48589931cf.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:59:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758837588; x=1759442388;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BR5HUPeCfft1NCbbIet3qxND5IfQR5IsgBoObFi2Je0=;
        b=WCmuHvEO/F89bOSIJO3llanh17xpBI0HUEXsJ3SXhZszEWF8vtIa20X4U1kkzQrLSu
         a7nnqxyzHlUI7CTpQjd3zlNMGkFFJPghi9n1zyjeeHEZGqDaBbXF8d6FupW6yFyurF3R
         T3lMYCPOY5LK5lnjQtd3wcXGL1WIkAb4XXD6gte2MXssjM7aIt3QjJ3zy0IfnlDFcGBu
         SmuaMZwoWbK6qdKpQ5+87GqteyxnOcEDE1rQ2o8WaU/lem4n9RwyNKpK+GEa7YZfkS4C
         rTKgEgWDgKlxttuOVBxdy5FMA+MFFd9E8j5UT2gcK0GX3teeJcS5qah/Y/oT8YYQboMt
         X6og==
X-Forwarded-Encrypted: i=1; AJvYcCUqoLCUpUV9hVLkc8tVMl/upKP9WWOliic0Ge0FZQiV+ChSUcTRbSaMPsJXBWPzVIaWgaM01SNNFxEr@vger.kernel.org
X-Gm-Message-State: AOJu0YxZF4zRWe/gSgYtcxTGvY4LMJ7W/TnqExSGuVComuelJO4+ZO1k
	uXmwL9ALos9XxFUKCCO0VWdR8VR0KAl+BVjhRLD3PEml3OpxUTDvwa4AFl99EadeloDcBvSIXmL
	jrypMRuYYRHp0KziiKD/UQhU4sGPbt9E08t/wdR8AszFBCy6FoMyo7LT5yBsWRkDF
X-Gm-Gg: ASbGncvJQergWrwFU9Rh/BdX540grKW+QkDxOPfwj+VbTu/lyDF+JSz07yedStgcf84
	snBTrTcUqJftCK9+9Cib9UvXh19Eu+tXnB0MybFPxn/7wSNCBmhFYfkeZHRC8E0H4e4LE+4BnwE
	y1jkVDBaV87op3FgRz22qGBPUClbaFSDhFd4N9gRbIFYINqDqvsT3nm8UjDR6ir1aaISlQgJrir
	WB88khVpvQKMNZSWsAmQ6OQc1KfCTKr6lDYx+S/Cx2lYosNfy/qFJljGggP87FRpAj01om4/bFG
	EqL7g676/27NViyusaV1C2rSk1M7JEr5mX7zJxm1thcB4SA+njlh5d54rM2tJDZcOTRIOc1Jk4W
	woD2jOa0eTysK60cNNBuj5clUaE725MSk4/2OzzJNHoeSKOF+Q7f0
X-Received: by 2002:a05:622a:1cc9:b0:4b6:3451:a159 with SMTP id d75a77b69052e-4da4b80882cmr93562451cf.49.1758837587746;
        Thu, 25 Sep 2025 14:59:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEPiYBr7KbUyHOeG6VWHRGxMxNAqbYyBxg/ol3QRzwFxfVNAh47tngb7nHx6SI96PgsExBvVg==
X-Received: by 2002:a05:622a:1cc9:b0:4b6:3451:a159 with SMTP id d75a77b69052e-4da4b80882cmr93561991cf.49.1758837587291;
        Thu, 25 Sep 2025 14:59:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313431070sm1170275e87.12.2025.09.25.14.59.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:59:46 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:59:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com, quic_jesszhan@quicinc.com
Subject: Re: [PATCH 1/3] dt-bindings: display: msm: document DSI controller
 and phy on QCS8300
Message-ID: <zjjnizyz4gj5z242dhgwgvxk2pkxoyhchcicwbbzod2m6z6mx6@xjapoj6goo47>
References: <20250925053602.4105329-1-quic_amakhija@quicinc.com>
 <20250925053602.4105329-2-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925053602.4105329-2-quic_amakhija@quicinc.com>
X-Proofpoint-ORIG-GUID: 9I_X-9wwkt-qrfDU_JMI2joIt2AfhSd4
X-Proofpoint-GUID: 9I_X-9wwkt-qrfDU_JMI2joIt2AfhSd4
X-Authority-Analysis: v=2.4 cv=Jvz8bc4C c=1 sm=1 tr=0 ts=68d5bb54 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=9Lg_u9sHXrgwa_hBAsgA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX+Ls3yCAUX9Up
 b7EYnqBLSoRpWztflaxjD1mxpyahDBu5Mkdp9UTTTR6BVURFLyKPnoWDhJx3WwP9jJeYXXpo/fO
 rO5H0mj0UlZq5mZP223EoeHwK+9Xv9uIEEJBKyd5iercETe+fnGl2Wla//UryU+iKfhMnackm46
 cpB/qJ1qFQWetcWvF1sglBTz3Ynju7fMKKoX9jQjyzf0MS41odqrFd9PNPPVrj6dLXCGbHzKbWc
 y/Hn3oHMKSYrWtY0wG1IX+GL7B9P8rhoP3RzE9UAG5Upb9N8rk/8ug8GuZF9ZlPyLtxQt5FaoId
 Q6Rl9QAPsojbbivQ3csulCIFohpictY0jz/GBR5hCeR5ITb9L8+qSVH7Fjb8OKaHfrl7jKfH4wW
 ngZ4D5pOq3XxzDl/zVozOEWx+7DGpw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 bulkscore=0 impostorscore=0 lowpriorityscore=0
 suspectscore=0 spamscore=0 priorityscore=1501 adultscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 11:06:00AM +0530, Ayushi Makhija wrote:
> Document DSI controller and phy on QCS8300 platform.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  .../display/msm/qcom,qcs8300-mdss.yaml        | 100 +++++++++++++++++-
>  1 file changed, 99 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml
> index e96baaae9ba9..f34823ed4433 100644
> --- a/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,qcs8300-mdss.yaml
> @@ -53,13 +53,23 @@ patternProperties:
>          contains:
>            const: qcom,qcs8300-dp
>  
> +  "^dsi@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +    properties:
> +      compatible:
> +        contains:
> +          const: qcom,sa8775p-dsi-ctrl

Why? It should be qcs8300-dsi-ctrl

> +
>    "^phy@[0-9a-f]+$":
>      type: object
>      additionalProperties: true
>      properties:
>        compatible:
>          contains:
> -          const: qcom,qcs8300-edp-phy
> +          enum:
> +            - qcom,qcs8300-edp-phy
> +            - qcom,sa8775p-dsi-phy-5nm
>  
>  required:
>    - compatible
> @@ -71,6 +81,7 @@ examples:
>      #include <dt-bindings/interconnect/qcom,icc.h>
>      #include <dt-bindings/interrupt-controller/arm-gic.h>
>      #include <dt-bindings/clock/qcom,qcs8300-gcc.h>
> +    #include <dt-bindings/clock/qcom,rpmh.h>
>      #include <dt-bindings/clock/qcom,sa8775p-dispcc.h>
>      #include <dt-bindings/interconnect/qcom,qcs8300-rpmh.h>
>      #include <dt-bindings/power/qcom,rpmhpd.h>
> @@ -142,6 +153,14 @@ examples:
>                           remote-endpoint = <&mdss_dp0_in>;
>                      };
>                  };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    dpu_intf1_out: endpoint {
> +                        remote-endpoint = <&mdss_dsi0_in>;
> +                    };
> +                };
> +

Drop extra empty line

>              };
>  
>              mdp_opp_table: opp-table {
> @@ -169,6 +188,85 @@ examples:
>              };
>          };
>  
> +        dsi@ae94000 {
> +            compatible = "qcom,sa8775p-dsi-ctrl", "qcom,mdss-dsi-ctrl";
> +            reg = <0x0ae94000 0x400>;
> +            reg-names = "dsi_ctrl";
> +
> +            interrupt-parent = <&mdss>;
> +            interrupts = <4>;
> +
> +            clocks = <&dispcc MDSS_DISP_CC_MDSS_BYTE0_CLK>,
> +                     <&dispcc MDSS_DISP_CC_MDSS_BYTE0_INTF_CLK>,
> +                     <&dispcc MDSS_DISP_CC_MDSS_PCLK0_CLK>,
> +                     <&dispcc MDSS_DISP_CC_MDSS_ESC0_CLK>,
> +                     <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>,
> +                     <&gcc GCC_DISP_HF_AXI_CLK>;
> +            clock-names = "byte",
> +                          "byte_intf",
> +                          "pixel",
> +                          "core",
> +                          "iface",
> +                          "bus";
> +            assigned-clocks = <&dispcc MDSS_DISP_CC_MDSS_BYTE0_CLK_SRC>,
> +                              <&dispcc MDSS_DISP_CC_MDSS_PCLK0_CLK_SRC>;
> +            assigned-clock-parents = <&mdss_dsi0_phy 0>, <&mdss_dsi0_phy 1>;
> +            phys = <&mdss_dsi0_phy>;
> +
> +            operating-points-v2 = <&dsi0_opp_table>;
> +            power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +            vdda-supply = <&vreg_l5a>;
> +
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    mdss0_dsi0_in: endpoint {
> +                        remote-endpoint = <&dpu_intf1_out>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    mdss0_dsi0_out: endpoint { };
> +                };
> +            };
> +
> +            dsi0_opp_table: opp-table {
> +                compatible = "operating-points-v2";
> +
> +                opp-358000000 {
> +                    opp-hz = /bits/ 64 <358000000>;
> +                    required-opps = <&rpmhpd_opp_svs_l1>;
> +                };
> +            };
> +        };
> +
> +        mdss_dsi0_phy: phy@ae94400 {
> +            compatible = "qcom,sa8775p-dsi-phy-5nm";
> +            reg = <0x0ae94400 0x200>,
> +                  <0x0ae94600 0x280>,
> +                  <0x0ae94900 0x27c>;
> +            reg-names = "dsi_phy",
> +                        "dsi_phy_lane",
> +                        "dsi_pll";
> +
> +            #clock-cells = <1>;
> +            #phy-cells = <0>;
> +
> +            clocks = <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>,
> +                     <&rpmhcc RPMH_CXO_CLK>;
> +            clock-names = "iface", "ref";
> +
> +            vdds-supply = <&vreg_l4a>;
> +          };

Wrong indentation

> +
>          mdss_dp0_phy: phy@aec2a00 {
>              compatible = "qcom,qcs8300-edp-phy", "qcom,sa8775p-edp-phy";
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

