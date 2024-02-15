Return-Path: <devicetree+bounces-41859-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8924855903
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 03:55:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A148E28C037
	for <lists+devicetree@lfdr.de>; Thu, 15 Feb 2024 02:55:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 961BE2CA7;
	Thu, 15 Feb 2024 02:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ae70Zxqo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632C110F4;
	Thu, 15 Feb 2024 02:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707965728; cv=none; b=IMKjfIR5/qoRi86GaKwRw0Vvb2MdQLyiG+YTgeQCzpz3T/AGuYNJaDmaDM7ggqyBB9MZksJ8prx6JbOUapKzM0b41OQEcmfhR5cjH/6Q9nkYn2yWapKz8EnDcw9YHQGCr6O9l7Yr4kEelcfvz9CCi/cC2FZadvGi1Pxuw72jd/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707965728; c=relaxed/simple;
	bh=ATGHlAvsAW+y6+mj3ZNmwt5QwE0bbGk9HcB1S/+IKBg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F4dXccUxq5Vt4IMYu6+ta9Zqa1q23b9ZIpmqA+o/NC9N3zGzL9Uw0TmsuQwou2Efq+ePfmYpGmCKGgbmGBDikTDzYl3oCQtplYRegnzdamWGDmXIHWNeznT4AEzY82nQwJ5Gw/+BXFV6KVSVmU5cDUlnjPGDVwXfyp99+Gy2MBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ae70Zxqo; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A1AC8C433F1;
	Thu, 15 Feb 2024 02:55:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707965727;
	bh=ATGHlAvsAW+y6+mj3ZNmwt5QwE0bbGk9HcB1S/+IKBg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ae70ZxqoIRwhsZypwAxCUSpOjEezfcsLJqxjTxAhW50/I7akynItB1ayLtMzCmCE6
	 EhfUEhEaXMshxL59rwFswLI92LTiO/HWLFMG4CVHtSdawVSGrFG53NRfLeasyJICLj
	 CjnxADwPYaxMCJrqeLztVUT/4XWuRZEo6m8OW2VW+TyvPGdbVXUwmBzBj55d6MbvWQ
	 IRoNGzLhmpvynruYNd84Ca/XO0JL0kpYBIUnt8B8om4ljusNjgvvsE6LvqXnzoLxmD
	 B8awoc4ivZiGwTXZBwnCK02D7EgEAdlpMTh6NkaBav3MqoXel1gjWGwlWqYyfi/xiB
	 Tl3Qy4sbISpdQ==
Date: Wed, 14 Feb 2024 20:55:25 -0600
From: Rob Herring <robh@kernel.org>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robdclark@gmail.com>,
	Abhinav Kumar <quic_abhinavk@quicinc.com>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Sean Paul <sean@poorly.run>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
	freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v2 1/4] dt-bindings: display/msm: document MDSS on
 X1E80100
Message-ID: <20240215025525.GA2574098-robh@kernel.org>
References: <20240214-x1e80100-display-v2-0-cf05ba887453@linaro.org>
 <20240214-x1e80100-display-v2-1-cf05ba887453@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240214-x1e80100-display-v2-1-cf05ba887453@linaro.org>

On Wed, Feb 14, 2024 at 11:24:30PM +0200, Abel Vesa wrote:
> Document the MDSS hardware found on the Qualcomm X1E80100 platform.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  .../bindings/display/msm/qcom,x1e80100-mdss.yaml   | 252 +++++++++++++++++++++
>  1 file changed, 252 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml b/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
> new file mode 100644
> index 000000000000..c3e38afab76e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/msm/qcom,x1e80100-mdss.yaml
> @@ -0,0 +1,252 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/msm/qcom,x1e80100-mdss.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Qualcomm X1E80100 Display MDSS
> +
> +maintainers:
> +  - Abel Vesa <abel.vesa@linaro.org>
> +
> +description:
> +  X1E80100 MSM Mobile Display Subsystem(MDSS), which encapsulates sub-blocks like
> +  DPU display controller, DP interfaces, etc.
> +
> +$ref: /schemas/display/msm/mdss-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: qcom,x1e80100-mdss
> +
> +  clocks:
> +    items:
> +      - description: Display AHB
> +      - description: Display hf AXI
> +      - description: Display core
> +
> +  iommus:
> +    maxItems: 1
> +
> +  interconnects:
> +    maxItems: 3
> +
> +  interconnect-names:
> +    maxItems: 3
> +
> +patternProperties:
> +  "^display-controller@[0-9a-f]+$":
> +    type: object

       additionalProperties: true

> +    properties:
> +      compatible:
> +        const: qcom,x1e80100-dpu
> +
> +  "^displayport-controller@[0-9a-f]+$":
> +    type: object

       additionalProperties: true

> +    properties:
> +      compatible:
> +        const: qcom,x1e80100-dp
> +
> +  "^phy@[0-9a-f]+$":
> +    type: object

       additionalProperties: true

> +    properties:
> +      compatible:
> +        const: qcom,x1e80100-dp-phy
> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/qcom,x1e80100-dispcc.h>
> +    #include <dt-bindings/clock/qcom,x1e80100-gcc.h>
> +    #include <dt-bindings/clock/qcom,rpmh.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/interconnect/qcom,x1e80100-rpmh.h>
> +    #include <dt-bindings/phy/phy-qcom-qmp.h>
> +    #include <dt-bindings/power/qcom,rpmhpd.h>
> +
> +    display-subsystem@ae00000 {
> +        compatible = "qcom,x1e80100-mdss";
> +        reg = <0x0ae00000 0x1000>;
> +        reg-names = "mdss";
> +
> +        interconnects = <&mmss_noc MASTER_MDP 0 &gem_noc SLAVE_LLCC 0>,
> +                        <&mc_virt MASTER_LLCC 0 &mc_virt SLAVE_EBI1 0>,
> +                        <&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_DISPLAY_CFG 0>;
> +        interconnect-names = "mdp0-mem", "mdp1-mem", "cpu-cfg";
> +
> +        resets = <&dispcc_core_bcr>;
> +
> +        power-domains = <&dispcc_gdsc>;
> +
> +        clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +                 <&gcc GCC_DISP_HF_AXI_CLK>,
> +                 <&dispcc DISP_CC_MDSS_MDP_CLK>;
> +        clock-names = "bus", "nrt_bus", "core";
> +
> +        interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-controller;
> +        #interrupt-cells = <1>;
> +
> +        iommus = <&apps_smmu 0x1c00 0x2>;
> +
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;
> +
> +        display-controller@ae01000 {
> +            compatible = "qcom,x1e80100-dpu";
> +            reg = <0x0ae01000 0x8f000>,
> +                  <0x0aeb0000 0x2008>;
> +            reg-names = "mdp", "vbif";
> +
> +            clocks = <&gcc_axi_clk>,
> +                     <&dispcc_ahb_clk>,
> +                     <&dispcc_mdp_lut_clk>,
> +                     <&dispcc_mdp_clk>,
> +                     <&dispcc_mdp_vsync_clk>;
> +            clock-names = "nrt_bus",
> +                          "iface",
> +                          "lut",
> +                          "core",
> +                          "vsync";
> +
> +            assigned-clocks = <&dispcc_mdp_vsync_clk>;
> +            assigned-clock-rates = <19200000>;
> +
> +            operating-points-v2 = <&mdp_opp_table>;
> +            power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +            interrupt-parent = <&mdss>;
> +            interrupts = <0>;
> +
> +            ports {
> +                #address-cells = <1>;
> +                #size-cells = <0>;
> +
> +                port@0 {
> +                    reg = <0>;
> +                    dpu_intf1_out: endpoint {
> +                        remote-endpoint = <&dsi0_in>;
> +                    };
> +                };
> +
> +                port@1 {
> +                    reg = <1>;
> +                    dpu_intf2_out: endpoint {
> +                        remote-endpoint = <&dsi1_in>;
> +                    };
> +                };
> +            };
> +
> +            mdp_opp_table: opp-table {
> +                compatible = "operating-points-v2";
> +
> +                opp-200000000 {
> +                    opp-hz = /bits/ 64 <200000000>;
> +                    required-opps = <&rpmhpd_opp_low_svs>;
> +                };
> +
> +                opp-325000000 {
> +                    opp-hz = /bits/ 64 <325000000>;
> +                    required-opps = <&rpmhpd_opp_svs>;
> +                };
> +
> +                opp-375000000 {
> +                    opp-hz = /bits/ 64 <375000000>;
> +                    required-opps = <&rpmhpd_opp_svs_l1>;
> +                };
> +
> +                opp-514000000 {
> +                    opp-hz = /bits/ 64 <514000000>;
> +                    required-opps = <&rpmhpd_opp_nom>;
> +                };
> +            };
> +        };
> +
> +        displayport-controller@ae90000 {
> +            compatible = "qcom,x1e80100-dp";
> +            reg = <0 0xae90000 0 0x200>,
> +                  <0 0xae90200 0 0x200>,
> +                  <0 0xae90400 0 0x600>,
> +                  <0 0xae91000 0 0x400>,
> +                  <0 0xae91400 0 0x400>;
> +
> +            interrupt-parent = <&mdss>;
> +            interrupts = <12>;
> +
> +            clocks = <&dispcc DISP_CC_MDSS_AHB_CLK>,
> +               <&dispcc DISP_CC_MDSS_DPTX0_AUX_CLK>,
> +               <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK>,
> +               <&dispcc DISP_CC_MDSS_DPTX0_LINK_INTF_CLK>,
> +               <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK>;
> +            clock-names = "core_iface", "core_aux",
> +                    "ctrl_link",
> +                    "ctrl_link_iface",
> +                    "stream_pixel";
> +
> +            assigned-clocks = <&dispcc DISP_CC_MDSS_DPTX0_LINK_CLK_SRC>,
> +                  <&dispcc DISP_CC_MDSS_DPTX0_PIXEL0_CLK_SRC>;
> +            assigned-clock-parents = <&usb_1_ss0_qmpphy QMP_USB43DP_DP_LINK_CLK>,
> +                  <&usb_1_ss0_qmpphy QMP_USB43DP_DP_VCO_DIV_CLK>;
> +
> +            operating-points-v2 = <&mdss_dp0_opp_table>;
> +
> +            power-domains = <&rpmhpd RPMHPD_MMCX>;
> +
> +            phys = <&usb_1_ss0_qmpphy QMP_USB43DP_DP_PHY>;
> +            phy-names = "dp";
> +
> +            #sound-dai-cells = <0>;
> +
> +            status = "disabled";

Examples should be enabled.


> +
> +            ports {
> +              #address-cells = <1>;
> +              #size-cells = <0>;
> +
> +              port@0 {
> +                  reg = <0>;
> +
> +                  mdss_dp0_in: endpoint {
> +                    remote-endpoint = <&mdss_intf0_out>;
> +                  };
> +              };
> +
> +              port@1 {
> +                  reg = <1>;
> +
> +                  mdss_dp0_out: endpoint {
> +                  };
> +              };
> +            };
> +
> +            mdss_dp0_opp_table: opp-table {
> +              compatible = "operating-points-v2";
> +
> +              opp-160000000 {
> +                 opp-hz = /bits/ 64 <160000000>;
> +                 required-opps = <&rpmhpd_opp_low_svs>;
> +              };
> +
> +              opp-270000000 {
> +                 opp-hz = /bits/ 64 <270000000>;
> +                 required-opps = <&rpmhpd_opp_svs>;
> +              };
> +
> +              opp-540000000 {
> +                 opp-hz = /bits/ 64 <540000000>;
> +                 required-opps = <&rpmhpd_opp_svs_l1>;
> +              };
> +
> +              opp-810000000 {
> +                 opp-hz = /bits/ 64 <810000000>;
> +                 required-opps = <&rpmhpd_opp_nom>;
> +              };
> +            };
> +        };
> +    };
> +...
> 
> -- 
> 2.34.1
> 

