Return-Path: <devicetree+bounces-18607-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C69D37F74B2
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 14:19:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3C705B21234
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 13:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5075B286B1;
	Fri, 24 Nov 2023 13:19:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TP2MVE50"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 453D010F3
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 05:19:04 -0800 (PST)
Received: by mail-ot1-x329.google.com with SMTP id 46e09a7af769-6d30d9f4549so1093955a34.0
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 05:19:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700831943; x=1701436743; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+IsPEocFWFNU7wGQIEAisF29Xg3VSlyKRLTccscNO9E=;
        b=TP2MVE50JDH+nqLaqlO/HwSRgZDVxrDbuBDjGVSJCP2BadfVLGjZ5H02BYrh77iFel
         FuIym3OmESxFoAfz9ehLq1uSwOnrOs/+1Z69H37aPT7/oKEoekUDlmSOTpUPw2NoSdaK
         MbKsFeuZ8SkyuReQ6Ro/wg5K4CT19GveRIqNK9iYoKWcPbi4ufZK7AVVzuRDqx8kga7Q
         NTjgDEJyGCfFt5OUIsnVZoCxkMYKKlgPH3aFbvAfjR2CJBwzIjv278DzaQqXqA2YgjPt
         XAOqPQHrWNOlPwuOWw3/TuBfQCsU5J7GH+jds6qJYQf2i9Kf0C6bWGcsE8AELGcXf5vC
         LLOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700831943; x=1701436743;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+IsPEocFWFNU7wGQIEAisF29Xg3VSlyKRLTccscNO9E=;
        b=txC6uHMXiTL46QAt9w+tL3GBYcWr3JUgBSSxAIYlSNCZhH9haAAxk8wAdIQe55rqoF
         gHG3ssON8BmaRdJvMsXEiRHM+A+tNOAZ2FW5q23HW0EDCoitNvHo1W5e/FqDlGYyQKUa
         JI7cG+9nFiXUGRNEYBshjH9RigYBnTMt2ZC2pZDBqQo/NrVVtmfxEbprtr+rW3fIqwSP
         DuTh8OK5N1yJyaIpPI+xLeKbIy4xlAIgh/3PaZ9BqaErXL+qB15UV/nEmQI7DdzXxSSy
         4eIrPB9QWmXE+F9rKziqUwIURQMyePW1ePIUZq8kQLTSvP5OysMOKeHWV6yYbVJcuY21
         WxlA==
X-Gm-Message-State: AOJu0Yyk3mUSkc2WT2S1Og/FxeWIKchOibcMgfyYkYBXYPvkg5qTvAs8
	mbsQcbmrF1LFpUdkGEyOtk5D0sndxmaA8dD/hXh51g==
X-Google-Smtp-Source: AGHT+IEYrU7CH1xoumT3h3m1mwxKQ1WLXLGoQzXY1Lp09JwV4vK5+bb4txzVMcP+t7Yg4FrQS0fDHMRv3X+QnpSrQJM=
X-Received: by 2002:a05:6830:719f:b0:6bf:1f5f:ed18 with SMTP id
 el31-20020a056830719f00b006bf1f5fed18mr3843687otb.1.1700831943509; Fri, 24
 Nov 2023 05:19:03 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231124121305.1954-1-quic_kbajaj@quicinc.com> <20231124121305.1954-3-quic_kbajaj@quicinc.com>
In-Reply-To: <20231124121305.1954-3-quic_kbajaj@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Fri, 24 Nov 2023 15:18:52 +0200
Message-ID: <CAA8EJpqPw4A8vbA=OL-SSUeZEW1gvkEjQkjqSW6L0zksQQnUww@mail.gmail.com>
Subject: Re: [PATCH v6 2/3] arm64: dts: qcom: Add base qcm6490 idp board dts
To: Komal Bajaj <quic_kbajaj@quicinc.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Fri, 24 Nov 2023 at 14:13, Komal Bajaj <quic_kbajaj@quicinc.com> wrote:
>
> Add DTS for Qualcomm IDP platform using QCM6490 SoC.
> This adds debug uart, eMMC and usb support along with
> regulators found on this board.
>
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile        |   1 +
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 464 +++++++++++++++++++++++
>  2 files changed, 465 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcm6490-idp.dts
>
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index d6cb840b7050..77babebe4904 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -87,6 +87,7 @@ dtb-$(CONFIG_ARCH_QCOM)       += msm8998-sony-xperia-yoshino-maple.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += msm8998-sony-xperia-yoshino-poplar.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += msm8998-xiaomi-sagit.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcm6490-fairphone-fp5.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += qcm6490-idp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qcs404-evb-4000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += qdu1000-idp.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> new file mode 100644
> index 000000000000..78ace02e42c0
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -0,0 +1,464 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include "sc7280.dtsi"
> +#include "pm7325.dtsi"
> +#include "pm8350c.dtsi"
> +#include "pmk8350.dtsi"
> +
> +/delete-node/ &ipa_fw_mem;
> +/delete-node/ &rmtfs_mem;
> +/delete-node/ &video_mem;
> +/delete-node/ &wlan_ce_mem;
> +/delete-node/ &xbl_mem;
> +
> +/ {
> +       model = "Qualcomm Technologies, Inc. QCM6490 IDP";
> +       compatible = "qcom,qcm6490-idp", "qcom,qcm6490";
> +
> +       aliases {
> +               serial0 = &uart5;
> +       };
> +
> +       chosen {
> +               stdout-path = "serial0:115200n8";
> +       };
> +
> +       reserved-memory {
> +               xbl_mem: xbl@80700000 {
> +                       reg = <0x0 0x80700000 0x0 0x100000>;
> +                       no-map;
> +               };
> +
> +               cdsp_secure_heap_mem: cdsp-secure-heap@81800000 {
> +                       reg = <0x0 0x81800000 0x0 0x1e00000>;
> +                       no-map;
> +               };
> +
> +               camera_mem: camera@84300000 {
> +                       reg = <0x0 0x84300000 0x0 0x500000>;
> +                       no-map;
> +               };
> +
> +               wpss_mem: wpss@84800000 {
> +                       reg = <0x0 0x84800000 0x0 0x1900000>;
> +                       no-map;
> +               };
> +
> +               adsp_mem: adsp@86100000 {
> +                       reg = <0x0 0x86100000 0x0 0x2800000>;
> +                       no-map;
> +               };
> +
> +               cdsp_mem: cdsp@88900000 {
> +                       reg = <0x0 0x88900000 0x0 0x1e00000>;
> +                       no-map;
> +               };
> +
> +               video_mem: video@8a700000 {
> +                       reg = <0x0 0x8a700000 0x0 0x700000>;
> +                       no-map;
> +               };
> +
> +               cvp_mem: cvp@8ae00000 {
> +                       reg = <0x0 0x8ae00000 0x0 0x500000>;
> +                       no-map;
> +               };
> +
> +               ipa_fw_mem: ipa-fw@8b300000 {
> +                       reg = <0x0 0x8b300000 0x0 0x10000>;
> +                       no-map;
> +               };
> +
> +               ipa_gsi_mem: ipa-gsi@8b310000 {
> +                       reg = <0x0 0x8b310000 0x0 0xa000>;
> +                       no-map;
> +               };
> +
> +               gpu_microcode_mem: gpu-microcode@8b31a000 {
> +                       reg = <0x0 0x8b31a000 0x0 0x2000>;
> +                       no-map;
> +               };
> +
> +               mpss_mem: mpss@8b800000 {
> +                       reg = <0x0 0x8b800000 0x0 0xf600000>;
> +                       no-map;
> +               };
> +
> +               tz_stat_mem: tz-stat@c0000000 {
> +                       reg = <0x0 0xc0000000 0x0 0x100000>;
> +                       no-map;
> +               };
> +
> +               tags_mem: tags@c0100000 {
> +                       reg = <0x0 0xc0100000 0x0 0x1200000>;
> +                       no-map;
> +               };
> +
> +               qtee_mem: qtee@c1300000 {
> +                       reg = <0x0 0xc1300000 0x0 0x500000>;
> +                       no-map;
> +               };
> +
> +               trusted_apps_mem: trusted_apps@c1800000 {
> +                       reg = <0x0 0xc1800000 0x0 0x1c00000>;
> +                       no-map;
> +               };
> +
> +               debug_vm_mem: debug-vm@d0600000 {
> +                       reg = <0x0 0xd0600000 0x0 0x100000>;
> +                       no-map;
> +               };
> +       };
> +
> +       vph_pwr: vph-pwr-regulator {
> +               compatible = "regulator-fixed";
> +               regulator-name = "vph_pwr";
> +               regulator-min-microvolt = <2500000>;
> +               regulator-max-microvolt = <4350000>;
> +       };
> +};
> +
> +&apps_rsc {
> +       regulators-0 {
> +               compatible = "qcom,pm7325-rpmh-regulators";
> +               qcom,pmic-id = "b";
> +
> +               vdd-s1-supply = <&vph_pwr>;
> +               vdd-s2-supply = <&vph_pwr>;
> +               vdd-s3-supply = <&vph_pwr>;
> +               vdd-s4-supply = <&vph_pwr>;
> +               vdd-s5-supply = <&vph_pwr>;
> +               vdd-s6-supply = <&vph_pwr>;
> +               vdd-s7-supply = <&vph_pwr>;
> +               vdd-s8-supply = <&vph_pwr>;
> +               vdd-l1-l4-l12-l15-supply = <&vreg_s7b_0p972>;
> +               vdd-l2-l7-supply = <&vreg_bob_3p296>;
> +               vdd-l3-supply = <&vreg_s2b_0p876>;
> +               vdd-l5-supply = <&vreg_s2b_0p876>;
> +               vdd-l6-l9-l10-supply = <&vreg_s8b_1p272>;
> +               vdd-l8-supply = <&vreg_s7b_0p972>;
> +               vdd-l11-l17-l18-l19-supply = <&vreg_s1b_1p872>;
> +               vdd-l13-supply = <&vreg_s7b_0p972>;
> +               vdd-l14-l16-supply = <&vreg_s8b_1p272>;
> +
> +               vreg_s1b_1p872: smps1 {
> +                       regulator-min-microvolt = <1840000>;
> +                       regulator-max-microvolt = <2040000>;
> +               };
> +
> +               vreg_s2b_0p876: smps2 {
> +                       regulator-min-microvolt = <570070>;
> +                       regulator-max-microvolt = <1050000>;
> +               };
> +
> +               vreg_s7b_0p972: smps7 {
> +                       regulator-min-microvolt = <535000>;
> +                       regulator-max-microvolt = <1120000>;
> +               };
> +
> +               vreg_s8b_1p272: smps8 {
> +                       regulator-min-microvolt = <1200000>;
> +                       regulator-max-microvolt = <1500000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_RET>;
> +               };
> +
> +               vreg_l1b_0p912: ldo1 {
> +                       regulator-min-microvolt = <825000>;
> +                       regulator-max-microvolt = <925000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l2b_3p072: ldo2 {
> +                       regulator-min-microvolt = <2700000>;
> +                       regulator-max-microvolt = <3544000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l3b_0p504: ldo3 {
> +                       regulator-min-microvolt = <312000>;
> +                       regulator-max-microvolt = <910000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l4b_0p752: ldo4 {
> +                       regulator-min-microvolt = <752000>;
> +                       regulator-max-microvolt = <820000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               reg_l5b_0p752: ldo5 {
> +                       regulator-min-microvolt = <552000>;
> +                       regulator-max-microvolt = <832000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l6b_1p2: ldo6 {
> +                       regulator-min-microvolt = <1140000>;
> +                       regulator-max-microvolt = <1260000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l7b_2p952: ldo7 {
> +                       regulator-min-microvolt = <2400000>;
> +                       regulator-max-microvolt = <3544000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l8b_0p904: ldo8 {
> +                       regulator-min-microvolt = <870000>;
> +                       regulator-max-microvolt = <970000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l9b_1p2: ldo9 {
> +                       regulator-min-microvolt = <1200000>;
> +                       regulator-max-microvolt = <1304000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l11b_1p504: ldo11 {
> +                       regulator-min-microvolt = <1504000>;
> +                       regulator-max-microvolt = <2000000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l12b_0p751: ldo12 {
> +                       regulator-min-microvolt = <751000>;
> +                       regulator-max-microvolt = <824000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l13b_0p53: ldo13 {
> +                       regulator-min-microvolt = <530000>;
> +                       regulator-max-microvolt = <824000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l14b_1p08: ldo14 {
> +                       regulator-min-microvolt = <1080000>;
> +                       regulator-max-microvolt = <1304000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l15b_0p765: ldo15 {
> +                       regulator-min-microvolt = <765000>;
> +                       regulator-max-microvolt = <1020000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l16b_1p1: ldo16 {
> +                       regulator-min-microvolt = <1100000>;
> +                       regulator-max-microvolt = <1300000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l17b_1p7: ldo17 {
> +                       regulator-min-microvolt = <1700000>;
> +                       regulator-max-microvolt = <1900000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l18b_1p8: ldo18 {
> +                       regulator-min-microvolt = <1800000>;
> +                       regulator-max-microvolt = <2000000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l19b_1p8: ldo19 {
> +                       regulator-min-microvolt = <1800000>;
> +                       regulator-max-microvolt = <2000000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +                       regulator-allow-set-load;
> +                       regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +                                                  RPMH_REGULATOR_MODE_HPM>;
> +               };
> +       };
> +
> +       regulators-1 {
> +               compatible = "qcom,pm8350c-rpmh-regulators";
> +               qcom,pmic-id = "c";
> +
> +               vdd-s1-supply = <&vph_pwr>;
> +               vdd-s2-supply = <&vph_pwr>;
> +               vdd-s3-supply = <&vph_pwr>;
> +               vdd-s4-supply = <&vph_pwr>;
> +               vdd-s5-supply = <&vph_pwr>;
> +               vdd-s6-supply = <&vph_pwr>;
> +               vdd-s7-supply = <&vph_pwr>;
> +               vdd-s8-supply = <&vph_pwr>;
> +               vdd-s9-supply = <&vph_pwr>;
> +               vdd-s10-supply = <&vph_pwr>;
> +               vdd-l1-l12-supply = <&vreg_s1b_1p872>;
> +               vdd-l2-l8-supply = <&vreg_s1b_1p872>;
> +               vdd-l3-l4-l5-l7-l13-supply = <&vreg_bob_3p296>;
> +               vdd-l6-l9-l11-supply = <&vreg_bob_3p296>;
> +               vdd-l10-supply = <&vreg_s7b_0p972>;
> +               vdd-bob-supply = <&vph_pwr>;
> +
> +               vreg_s1c_2p19: smps1 {
> +                       regulator-min-microvolt = <2190000>;
> +                       regulator-max-microvolt = <2210000>;
> +               };
> +
> +               vreg_s2c_0p752: smps2 {
> +                       regulator-min-microvolt = <750000>;
> +                       regulator-max-microvolt = <800000>;
> +               };
> +
> +               vreg_s5c_0p752: smps5 {
> +                       regulator-min-microvolt = <465000>;
> +                       regulator-max-microvolt = <1050000>;
> +               };
> +
> +               vreg_s7c_0p752: smps7 {
> +                       regulator-min-microvolt = <465000>;
> +                       regulator-max-microvolt = <800000>;
> +               };
> +
> +               vreg_s9c_1p084: smps9 {
> +                       regulator-min-microvolt = <1010000>;
> +                       regulator-max-microvolt = <1170000>;
> +               };
> +
> +               vreg_l1c_1p8: ldo1 {
> +                       regulator-min-microvolt = <1800000>;
> +                       regulator-max-microvolt = <1980000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l2c_1p62: ldo2 {
> +                       regulator-min-microvolt = <1620000>;
> +                       regulator-max-microvolt = <1980000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l3c_2p8: ldo3 {
> +                       regulator-min-microvolt = <2800000>;
> +                       regulator-max-microvolt = <3540000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l4c_1p62: ldo4 {
> +                       regulator-min-microvolt = <1620000>;
> +                       regulator-max-microvolt = <3300000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l5c_1p62: ldo5 {
> +                       regulator-min-microvolt = <1620000>;
> +                       regulator-max-microvolt = <3300000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l6c_2p96: ldo6 {
> +                       regulator-min-microvolt = <1650000>;
> +                       regulator-max-microvolt = <3544000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l7c_3p0: ldo7 {
> +                       regulator-min-microvolt = <3000000>;
> +                       regulator-max-microvolt = <3544000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l8c_1p62: ldo8 {
> +                       regulator-min-microvolt = <1620000>;
> +                       regulator-max-microvolt = <2000000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l9c_2p96: ldo9 {
> +                       regulator-min-microvolt = <2700000>;
> +                       regulator-max-microvolt = <35440000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l10c_0p88: ldo10 {
> +                       regulator-min-microvolt = <720000>;
> +                       regulator-max-microvolt = <1050000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l11c_2p8: ldo11 {
> +                       regulator-min-microvolt = <2800000>;
> +                       regulator-max-microvolt = <3544000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l12c_1p65: ldo12 {
> +                       regulator-min-microvolt = <1650000>;
> +                       regulator-max-microvolt = <2000000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_l13c_2p7: ldo13 {
> +                       regulator-min-microvolt = <2700000>;
> +                       regulator-max-microvolt = <3544000>;
> +                       regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +               };
> +
> +               vreg_bob_3p296: bob {
> +                       regulator-min-microvolt = <3008000>;
> +                       regulator-max-microvolt = <3960000>;
> +               };
> +       };
> +};
> +
> +&qupv3_id_0 {
> +       status = "okay";
> +};
> +
> +&sdhc_1 {
> +       non-removable;
> +       no-sd;
> +       no-sdio;
> +
> +       vmmc-supply = <&vreg_l7b_2p952>;
> +       vqmmc-supply = <&vreg_l19b_1p8>;
> +
> +       status = "okay";
> +};
> +
> +&tlmm {
> +       gpio-reserved-ranges = <32 2>, /* ADSP */
> +                              <48 4>; /* NFC */
> +};
> +
> +&uart5 {
> +       compatible = "qcom,geni-debug-uart";
> +       status = "okay";
> +};
> +
> +&usb_1 {
> +       status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +       dr_mode = "peripheral";
> +};
> +
> +&usb_1_hsphy {
> +       vdda-pll-supply = <&vreg_l10c_0p88>;
> +       vdda33-supply = <&vreg_l2b_3p072>;
> +       vdda18-supply = <&vreg_l1c_1p8>;
> +
> +       status = "okay";
> +};
> +
> +&usb_1_qmpphy {
> +       vdda-phy-supply = <&vreg_l6b_1p2>;
> +       vdda-pll-supply = <&vreg_l1b_0p912>;
> +
> +       status = "okay";
> +};
> +
> +&wifi {
> +       memory-region = <&wlan_fw_mem>;

qcom,ath11k-calibration-variant = "qualcomm-qca6490-idp";

Also please cc ath11k maliling list on the next submission

> +};

> --
> 2.42.0
>
>


--
With best wishes

Dmitry

