Return-Path: <devicetree+bounces-2741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC7B7AC4C2
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 21:19:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 7CDC8281390
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 19:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5DDB21342;
	Sat, 23 Sep 2023 19:19:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6462033CE
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 19:19:24 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D1217FA
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:19:22 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-4053cf48670so27007225e9.0
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 12:19:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695496761; x=1696101561; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z8xXffWx5kVe/4j/cS4SgS21MBCU87jO1sBks4myRec=;
        b=QOVudxrP8jBGrVyaoqCycWtWegWAMqpQn4Jx4ZYahxAYPMLKhUw604xDfscmTLxDUW
         GgoeYozsR3c8IXq3M9qCqo8Jn9ZioDVcadq7mWKccfdgnSPqEqyF9VdZj5VlU8FKu2Wg
         psVYG4tsxp5NRwyDQjEtc7ZPHAiOC73DvyISyotNzJQvM3nTpjkD+xzZLohqjchRPCd1
         QikPjlUKnznQ8hFFkj6OFFRNKAZbHo5VijO+tjZFEtXpLRE6HQsmIYViUu4puPHUNY4b
         EQL8+zIttb/tcY5IM3iQGZjoVdlEy/jlEknyvug5TAcVMd2pymO0qEPHZWRS2MALMbh8
         161A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695496761; x=1696101561;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Z8xXffWx5kVe/4j/cS4SgS21MBCU87jO1sBks4myRec=;
        b=eQxn8wzAsHQ0PQXYBt3N9aJoVO20PfmY5uuXl+2fjt/2bIekwCVEPRThqzk1zh0wc8
         f5QnsTLU3zPIAsroLp9BClVoP1SStM6bPC5yBNzVDMms3yk0Glb4OV01p1s/6gQmioFV
         IyvmuFhTaIU1ckj6lr+ItrY+GQMyXFKXvkSFeULlxnLfiRdx7MxdFrMIoBXdOAOv8L7m
         dPp3VMnuiESsTaTM8TuJrch42gTHg11X3wbgFV1LS5L16R/xq07zictEoug3pk/Gwq/c
         jBthfkgm49YhaivruFRuD1iT1zIzvtpRehXqcpH9uHfEfCkKlgRUDM5p/2R1wBhMV3ac
         yarg==
X-Gm-Message-State: AOJu0YwsxeIUs1FZReoOYsPRxmWlsgCu/c7hs5vF8QCVpELqg45Jtltp
	Of+W/byaQIMxrU4iEvdhuQcptg==
X-Google-Smtp-Source: AGHT+IFh4AYqzmkpbkxYp2xkj0c0iNGkqPrGZTygHfEDvoelBIFMh/S2eXgEqZe3+Mv/8+lWyX8ycg==
X-Received: by 2002:a1c:720c:0:b0:401:38dc:891c with SMTP id n12-20020a1c720c000000b0040138dc891cmr2333405wmc.5.1695496761269;
        Sat, 23 Sep 2023 12:19:21 -0700 (PDT)
Received: from [10.73.151.44] ([188.111.42.10])
        by smtp.gmail.com with ESMTPSA id k12-20020a7bc40c000000b003fc04d13242sm10858665wmi.0.2023.09.23.12.19.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 12:19:20 -0700 (PDT)
Message-ID: <29b774d4-3759-4b49-926e-551c92d3f8c7@linaro.org>
Date: Sat, 23 Sep 2023 22:19:18 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: Add USB3 and PHY support
To: Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <1695383434-24705-1-git-send-email-quic_rohiagar@quicinc.com>
 <1695383434-24705-3-git-send-email-quic_rohiagar@quicinc.com>
Content-Language: en-GB
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <1695383434-24705-3-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 22/09/2023 14:50, Rohit Agarwal wrote:
> Add devicetree nodes for enabling USB3 controller, Qcom QMP PHY and
> HS PHY on SDX75.

Please fix the subject to mention the platform.

Other than that, LGTM.

> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>   arch/arm64/boot/dts/qcom/sdx75.dtsi | 116 ++++++++++++++++++++++++++++++++++++
>   1 file changed, 116 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi b/arch/arm64/boot/dts/qcom/sdx75.dtsi
> index dd3a525..c44cdd1 100644
> --- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
> @@ -473,6 +473,47 @@
>   			};
>   		};
>   
> +		usb_hsphy: phy@ff4000 {
> +			compatible = "qcom,sdx75-snps-eusb2-phy", "qcom,sm8550-snps-eusb2-phy";
> +			reg = <0x0 0x00ff4000 0x0 0x154>;
> +			#phy-cells = <0>;
> +
> +			clocks = <&rpmhcc RPMH_CXO_CLK>;
> +			clock-names = "ref";
> +
> +			resets = <&gcc GCC_QUSB2PHY_BCR>;
> +
> +			status = "disabled";
> +		};
> +
> +		usb_qmpphy: phy@ff6000 {
> +			compatible = "qcom,sdx75-qmp-usb3-uni-phy";
> +			reg = <0x0 0x00ff6000 0x0 0x2000>;
> +
> +			clocks = <&gcc GCC_USB3_PHY_AUX_CLK>,
> +				 <&gcc GCC_USB2_CLKREF_EN>,
> +				 <&gcc GCC_USB_PHY_CFG_AHB2PHY_CLK>,
> +				 <&gcc GCC_USB3_PHY_PIPE_CLK>;
> +			clock-names = "aux",
> +				      "ref",
> +				      "cfg_ahb",
> +				      "pipe";
> +
> +			power-domains = <&gcc GCC_USB3_PHY_GDSC>;
> +
> +			resets = <&gcc GCC_USB3_PHY_BCR>,
> +				 <&gcc GCC_USB3PHY_PHY_BCR>;
> +			reset-names = "phy",
> +				      "phy_phy";
> +
> +			#clock-cells = <0>;
> +			clock-output-names = "usb3_uni_phy_pipe_clk_src";
> +
> +			#phy-cells = <0>;
> +
> +			status = "disabled";
> +		};
> +
>   		system_noc: interconnect@1640000 {
>   			compatible = "qcom,sdx75-system-noc";
>   			reg = <0x0 0x01640000 0x0 0x4b400>;
> @@ -493,6 +534,81 @@
>   			#hwlock-cells = <1>;
>   		};
>   
> +		usb: usb@a6f8800 {
> +			compatible = "qcom,sdx75-dwc3", "qcom,dwc3";
> +			reg = <0x0 0x0a6f8800 0x0 0x400>;
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			clocks = <&gcc GCC_USB30_SLV_AHB_CLK>,
> +				 <&gcc GCC_USB30_MASTER_CLK>,
> +				 <&gcc GCC_USB30_MSTR_AXI_CLK>,
> +				 <&gcc GCC_USB30_SLEEP_CLK>,
> +				 <&gcc GCC_USB30_MOCK_UTMI_CLK>;
> +			clock-names = "cfg_noc",
> +				      "core",
> +				      "iface",
> +				      "sleep",
> +				      "mock_utmi";
> +
> +			assigned-clocks = <&gcc GCC_USB30_MOCK_UTMI_CLK>,
> +					  <&gcc GCC_USB30_MASTER_CLK>;
> +			assigned-clock-rates = <19200000>, <200000000>;
> +
> +			interrupts-extended = <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 17 IRQ_TYPE_LEVEL_HIGH>,
> +					      <&pdc 9 IRQ_TYPE_EDGE_RISING>,
> +					      <&pdc 10 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "hs_phy_irq",
> +					  "ss_phy_irq",
> +					  "dm_hs_phy_irq",
> +					  "dp_hs_phy_irq";
> +
> +			power-domains = <&gcc GCC_USB30_GDSC>;
> +
> +			resets = <&gcc GCC_USB30_BCR>;
> +
> +			interconnects = <&system_noc MASTER_USB3_0 0 &mc_virt SLAVE_EBI1 0>,
> +					<&gem_noc MASTER_APPSS_PROC 0 &system_noc SLAVE_USB3 0>;
> +			interconnect-names = "usb-ddr",
> +					     "apps-usb";
> +
> +			status = "disabled";
> +
> +			usb_dwc3: usb@a600000 {
> +				compatible = "snps,dwc3";
> +				reg = <0x0 0x0a600000 0x0 0xcd00>;
> +				interrupts = <GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>;
> +				iommus = <&apps_smmu 0x80 0x0>;
> +				snps,dis_u2_susphy_quirk;
> +				snps,dis_enblslpm_quirk;
> +				phys = <&usb_hsphy>,
> +				       <&usb_qmpphy>;
> +				phy-names = "usb2-phy",
> +					    "usb3-phy";
> +
> +				ports {
> +					#address-cells = <1>;
> +					#size-cells = <0>;
> +
> +					port@0 {
> +						reg = <0>;
> +
> +						usb_1_dwc3_hs: endpoint {
> +						};
> +					};
> +
> +					port@1 {
> +						reg = <1>;
> +
> +						usb_1_dwc3_ss: endpoint {
> +						};
> +					};
> +				};
> +			};
> +		};
> +
>   		pdc: interrupt-controller@b220000 {
>   			compatible = "qcom,sdx75-pdc", "qcom,pdc";
>   			reg = <0x0 0xb220000 0x0 0x30000>,

-- 
With best wishes
Dmitry


