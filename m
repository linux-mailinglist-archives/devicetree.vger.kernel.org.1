Return-Path: <devicetree+bounces-62531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 746958B176C
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 01:50:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DA5F31F23934
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 23:50:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD05A16F265;
	Wed, 24 Apr 2024 23:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p1pwovRm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9DD16F0DD
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 23:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714002623; cv=none; b=CTFfssX/On5kvzJzPbxXyIsCzaXr5JfFtP8LExLi4kgr+zug5ogsRZhbs+RK5BtWBDHwbZXsrckrfRbujaWMwVkSjbL1tl6BlZvNHAygST0cfmfXz6NNJAlRPVnzDLvOHeY5Y5Ih9KBlfTWwufCV4I/DeT0q596Vb6/g+ZKg5Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714002623; c=relaxed/simple;
	bh=a+78WLXzL5brPFIIHLVMK6SobctLn60Y0rFRT1lqYoA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nPoUA0sXKwvf5+i3NP9SysTn1g0OLBMi9xcJI6Aez70ZV8+8lEF/m8/G2j91NqPgIk9p6VKHKayFLniKBod1R3WvSv1m3MQXH82NgpYYYYVaf/bvy12MrqfkxQUpyh28EtX4BDpAYsP/BG2mfievb5bA5gUB97tM10sQw1eRhEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p1pwovRm; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-de469a634fbso538577276.2
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 16:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714002621; x=1714607421; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=TKixhZx64p8gqjHZGvKvvDIbH18aQ6pIL/VlQRUhdko=;
        b=p1pwovRmdqZrM3ljKE9m1/HCbYIH9W0ZW89p87+t0OrYStq+gHpXJthtaKxr6WRlKX
         oBSVvC0HBBWdX8GoMkUd5GCykbI/Ufy1E6d5R0at25aRpk0P714Yz1De0Af2Oa4JTQ/K
         wBF85429grJVHvLAZfWozZf18xri/Zrhhj1rT5pXcTFbjmfm/IFhdiuW8nyB5QQ9EY4I
         HneDjN5JGUFg3A+k5SnUG/rkYRhlm92X145yrqgSf56qLyRCWtW/Le78tl1HFs5gGrWO
         2DKo5y45mU6qS8moykI7NS0ZCf/hPagmpKp62SilSsuwIBRzFh+1t/3WuUqZ6BERbE2I
         G2vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714002621; x=1714607421;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TKixhZx64p8gqjHZGvKvvDIbH18aQ6pIL/VlQRUhdko=;
        b=kSgLukYvT8cE9AYY1MqcHQihJUAcZjTGkugWB9hikKG/9a2CtEe+oDUEYBMqNe60rv
         LW0GQZhZRpX7ja3EPJMOpx3MQc/L4RbrlbGW7uNnhftTWqWJmIy8eB7b4D7EYUzWqphT
         Ve6hAnBI/6Z+rOyvo174c0j7fAsbX3JfMQsjUiFiD2NwXQK4+1VtHe+N9aW7SjZQBRNh
         P06ZYDlVFX63JJowG0n8TuVL/oP/A079SaLCFpTsmukGJUm9yWCd9Vh+oEiNgJzEdzoz
         e9qeeUtFWqjXlCNB2fBkYC7NaAcQ8ypz7GUOtWvA8QILf4P7No8VJ3wcL1mCJlmIpsJM
         djfw==
X-Forwarded-Encrypted: i=1; AJvYcCU8rTI5xQd1CNtl/1+36YwVfq3Qag5fzaPMxR2T2HSChsFtt55fqkM5SAXmVs4kH94u2XlG1/Ik977aaXGRbPIOOl/iw5/Id1aaBw==
X-Gm-Message-State: AOJu0YwC38yPrXL7vXr6ykoCGazfMEkjXNaMaTjO1ykvBBpWEoLM+IOx
	kj+LieUo9UkooWBO3ENYLJ4UfhFW2+/eXflYzeqXvI+nYSN5tjTpdrKhvP/IT9cFKU2kwZzpjd+
	SqaRTZenR+nmHpHXEMhkl5vT5FTX8S2496bZ5GQ==
X-Google-Smtp-Source: AGHT+IHePKYcMj0QvGccyjtLAEuaCQAIHGfhXWx7wv6Qwqj+4hazwa2K6I3o4VEE9TS56PCBzdL78NLgRpHZXkjdZbk=
X-Received: by 2002:a25:d846:0:b0:dcc:9e88:b15 with SMTP id
 p67-20020a25d846000000b00dcc9e880b15mr4041268ybg.41.1714002621096; Wed, 24
 Apr 2024 16:50:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240424024508.3857602-1-quic_tengfan@quicinc.com> <20240424024508.3857602-5-quic_tengfan@quicinc.com>
In-Reply-To: <20240424024508.3857602-5-quic_tengfan@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Thu, 25 Apr 2024 02:50:10 +0300
Message-ID: <CAA8EJpqAkxy9aXw=nr-H0iguD8zRdkviWvMn-h==v1qzeRXc1Q@mail.gmail.com>
Subject: Re: [PATCH v7 4/4] arm64: dts: qcom: aim300: add AIM300 AIoT
To: Tengfei Fan <quic_tengfan@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, keescook@chromium.org, 
	tony.luck@intel.com, gpiccoli@igalia.com, linux-arm-msm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, kernel@quicinc.com, 
	Qiang Yu <quic_qianyu@quicinc.com>, Ziyue Zhang <quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Apr 2024 at 05:46, Tengfei Fan <quic_tengfan@quicinc.com> wrote:
>
> Add AIM300 AIoT Carrier board DTS support, including usb, UART, PCIe,
> I2C functions support.
> Here is a diagram of AIM300 AIoT Carrie Board and SoM
>  +--------------------------------------------------+
>  |             AIM300 AIOT Carrier Board            |
>  |                                                  |
>  |           +-----------------+                    |
>  |power----->| Fixed regulator |---------+          |
>  |           +-----------------+         |          |
>  |                                       |          |
>  |                                       v VPH_PWR  |
>  | +----------------------------------------------+ |
>  | |                          AIM300 SOM |        | |
>  | |                                     |VPH_PWR | |
>  | |                                     v        | |
>  | |   +-------+       +--------+     +------+    | |
>  | |   | UFS   |       | QCS8550|     |PMIC  |    | |
>  | |   +-------+       +--------+     +------+    | |
>  | |                                              | |
>  | +----------------------------------------------+ |
>  |                                                  |
>  |                    +----+          +------+      |
>  |                    |USB |          | UART |      |
>  |                    +----+          +------+      |
>  +--------------------------------------------------+
>
> Co-developed-by: Qiang Yu <quic_qianyu@quicinc.com>
> Signed-off-by: Qiang Yu <quic_qianyu@quicinc.com>
> Co-developed-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../boot/dts/qcom/qcs8550-aim300-aiot.dts     | 343 ++++++++++++++++++
>  2 files changed, 344 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs8550-aim300-aiot.dts
>
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index f63abb43e9fe..c46c10d85697 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -96,6 +96,7 @@ dtb-$(CONFIG_ARCH_QCOM)       += qcm6490-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs404-evb-4000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs6490-rb3gen2.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += qcs8550-aim300-aiot.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qdu1000-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qrb2210-rb1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qrb4210-rb2.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qcs8550-aim300-aiot.dts b/arch/arm64/boot/dts/qcom/qcs8550-aim300-aiot.dts
> new file mode 100644
> index 000000000000..146bf6ea9e6a
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs8550-aim300-aiot.dts
> @@ -0,0 +1,343 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/leds/common.h>
> +#include "qcs8550-aim300.dtsi"
> +#include "pm8010.dtsi"
> +#include "pmr735d_a.dtsi"
> +#include "pmr735d_b.dtsi"
> +
> +/ {
> +       model = "Qualcomm Technologies, Inc. QCS8550 AIM300 AIOT";
> +       compatible = "qcom,qcs8550-aim300-aiot", "qcom,qcs8550-aim300", "qcom,qcs8550",
> +                    "qcom,sm8550";
> +
> +       aliases {
> +               serial0 = &uart7;
> +       };
> +
> +       chosen {
> +               stdout-path = "serial0:115200n8";
> +       };
> +
> +       gpio-keys {
> +               compatible = "gpio-keys";
> +
> +               pinctrl-0 = <&volume_up_n>;
> +               pinctrl-names = "default";
> +
> +               key-volume-up {
> +                       label = "Volume Up";
> +                       debounce-interval = <15>;
> +                       gpios = <&pm8550_gpios 6 GPIO_ACTIVE_LOW>;
> +                       linux,code = <KEY_VOLUMEUP>;
> +                       linux,can-disable;
> +                       wakeup-source;
> +               };
> +       };
> +
> +       pmic-glink {
> +               compatible = "qcom,sm8550-pmic-glink", "qcom,pmic-glink";
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +               orientation-gpios = <&tlmm 11 GPIO_ACTIVE_HIGH>;
> +
> +               connector@0 {
> +                       compatible = "usb-c-connector";
> +                       reg = <0>;
> +                       power-role = "dual";
> +                       data-role = "dual";
> +
> +                       ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@0 {
> +                                       reg = <0>;
> +
> +                                       pmic_glink_hs_in: endpoint {
> +                                               remote-endpoint = <&usb_1_dwc3_hs>;
> +                                       };
> +                               };
> +
> +                               port@1 {
> +                                       reg = <1>;
> +
> +                                       pmic_glink_ss_in: endpoint {
> +                                               remote-endpoint = <&redriver_ss_out>;
> +                                       };
> +                               };
> +
> +                               port@2 {
> +                                       reg = <2>;
> +
> +                                       pmic_glink_sbu: endpoint {
> +                                               remote-endpoint = <&fsa4480_sbu_mux>;
> +                                       };
> +                               };
> +                       };
> +               };
> +       };
> +
> +       vph_pwr: regulator-vph-pwr {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vph_pwr";
> +               regulator-min-microvolt = <3700000>;
> +               regulator-max-microvolt = <3700000>;
> +
> +               regulator-always-on;
> +               regulator-boot-on;
> +       };
> +};
> +
> +&apps_rsc {
> +       regulators-0 {
> +               vdd-bob1-supply = <&vph_pwr>;
> +               vdd-bob2-supply = <&vph_pwr>;
> +       };
> +
> +       regulators-3 {
> +               vdd-s4-supply = <&vph_pwr>;
> +               vdd-s5-supply = <&vph_pwr>;
> +       };
> +
> +       regulators-4 {
> +               vdd-s4-supply = <&vph_pwr>;
> +       };
> +
> +       regulators-5 {
> +               vdd-s1-supply = <&vph_pwr>;
> +               vdd-s2-supply = <&vph_pwr>;
> +               vdd-s3-supply = <&vph_pwr>;
> +               vdd-s4-supply = <&vph_pwr>;
> +               vdd-s5-supply = <&vph_pwr>;
> +               vdd-s6-supply = <&vph_pwr>;
> +       };
> +};
> +
> +&i2c_hub_2 {
> +       status = "okay";
> +
> +       typec-mux@42 {
> +               compatible = "fcs,fsa4480";
> +               reg = <0x42>;
> +
> +               vcc-supply = <&vreg_bob1>;
> +
> +               mode-switch;
> +               orientation-switch;
> +
> +               port {
> +                       fsa4480_sbu_mux: endpoint {
> +                               remote-endpoint = <&pmic_glink_sbu>;
> +                       };
> +               };
> +       };
> +
> +       typec-retimer@1c {
> +               compatible = "onnn,nb7vpq904m";
> +               reg = <0x1c>;
> +
> +               vcc-supply = <&vreg_l15b_1p8>;
> +
> +               orientation-switch;
> +               retimer-switch;
> +
> +               ports {
> +                       #address-cells = <1>;
> +                       #size-cells = <0>;
> +
> +                       port@0 {
> +                               reg = <0>;
> +
> +                               redriver_ss_out: endpoint {
> +                                       remote-endpoint = <&pmic_glink_ss_in>;
> +                               };
> +                       };
> +
> +                       port@1 {
> +                               reg = <1>;
> +
> +                               redriver_ss_in: endpoint {
> +                                       data-lanes = <3 2 1 0>;
> +                                       remote-endpoint = <&usb_dp_qmpphy_out>;
> +                               };
> +                       };
> +               };
> +       };
> +};
> +
> +&mdss_dsi0 {
> +       status = "okay";
> +
> +       panel@0 {
> +               compatible = "visionox,vtdr6130";
> +               reg = <0>;
> +
> +               pinctrl-0 = <&dsi_active>, <&te_active>;
> +               pinctrl-1 = <&dsi_suspend>, <&te_suspend>;
> +               pinctrl-names = "default", "sleep";
> +
> +               reset-gpios = <&tlmm 133 GPIO_ACTIVE_LOW>;
> +
> +               vci-supply = <&vreg_l13b_3p0>;
> +               vdd-supply = <&vreg_l11b_1p2>;
> +               vddio-supply = <&vreg_l12b_1p8>;
> +
> +               port {
> +                       panel0_in: endpoint {
> +                               remote-endpoint = <&mdss_dsi0_out>;
> +                       };
> +               };
> +       };
> +};
> +
> +&mdss_dsi0_out {
> +       remote-endpoint = <&panel0_in>;
> +       data-lanes = <0 1 2 3>;
> +};
> +
> +&mdss_dsi0_phy {
> +       status = "okay";
> +};
> +
> +&pcie0 {
> +       pinctrl-0 = <&pcie0_default_state>;
> +       pinctrl-names = "default";
> +
> +       status = "okay";
> +};
> +
> +&pcie0_phy {
> +       status = "okay";
> +};
> +
> +&pcie1 {
> +       pinctrl-0 = <&pcie1_default_state>;
> +       pinctrl-names = "default";
> +
> +       status = "okay";
> +};
> +
> +&pcie1_phy {
> +       status = "okay";
> +};
> +
> +&pm8550_gpios {
> +       volume_up_n: volume-up-n-state {
> +               pins = "gpio6";
> +               function = "normal";
> +               power-source = <1>;
> +               bias-pull-up;
> +               input-enable;
> +       };
> +};
> +
> +&pon_pwrkey {
> +       status = "okay";
> +};
> +
> +&pon_resin {
> +       linux,code = <KEY_VOLUMEDOWN>;
> +
> +       status = "okay";
> +};
> +
> +&qupv3_id_0 {
> +       status = "okay";
> +};
> +
> +&remoteproc_adsp {
> +       firmware-name = "qcom/qcs8550/adsp.mbn",
> +                       "qcom/qcs8550/adsp_dtbs.elf";
> +       status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +       firmware-name = "qcom/qcs8550/cdsp.mbn",
> +                       "qcom/qcs8550/cdsp_dtbs.elf";
> +       status = "okay";
> +};
> +
> +&swr1 {
> +       status = "okay";
> +};
> +
> +&swr2 {
> +       status = "okay";
> +};
> +
> +&tlmm {
> +       gpio-reserved-ranges = <32 8>;
> +
> +       dsi_active: dsi-active-state {
> +               pins = "gpio133";
> +               function = "gpio";
> +               drive-strength = <8>;
> +               bias-disable;
> +       };
> +
> +       dsi_suspend: dsi-suspend-state {
> +               pins = "gpio133";
> +               function = "gpio";
> +               drive-strength = <2>;
> +               bias-pull-down;
> +       };
> +
> +       te_active: te-active-state {
> +               pins = "gpio86";
> +               function = "mdp_vsync";
> +               drive-strength = <2>;
> +               bias-pull-down;
> +       };
> +
> +       te_suspend: te-suspend-state {
> +               pins = "gpio86";
> +               function = "mdp_vsync";
> +               drive-strength = <2>;
> +               bias-pull-down;
> +       };
> +};
> +
> +&uart7 {
> +       status = "okay";
> +};
> +
> +&usb_1 {
> +       status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +       dr_mode = "otg";

OTG is default and can be dropped.

> +       usb-role-switch;

Please move to SoC dtsi and drop from board files.

> +};
> +
> +&usb_1_dwc3_hs {
> +       remote-endpoint = <&pmic_glink_hs_in>;
> +};
> +
> +&usb_1_dwc3_ss {
> +       remote-endpoint = <&usb_dp_qmpphy_usb_ss_in>;

This too.

> +};
> +
> +&usb_1_hsphy {
> +       status = "okay";
> +};
> +
> +&usb_dp_qmpphy {
> +       orientation-switch;

This too

> +
> +       status = "okay";
> +};
> +
> +&usb_dp_qmpphy_out {
> +       remote-endpoint = <&redriver_ss_in>;
> +};
> +
> +&usb_dp_qmpphy_usb_ss_in {
> +       remote-endpoint = <&usb_1_dwc3_ss>;

And this.

> +};
> --
> 2.25.1
>


-- 
With best wishes
Dmitry

