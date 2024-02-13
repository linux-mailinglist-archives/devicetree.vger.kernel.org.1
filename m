Return-Path: <devicetree+bounces-41241-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E6CEC852E65
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 11:54:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 56D121F25B76
	for <lists+devicetree@lfdr.de>; Tue, 13 Feb 2024 10:54:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 461AA249F5;
	Tue, 13 Feb 2024 10:54:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wwVM7OX1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF9292BCF7
	for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 10:54:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707821650; cv=none; b=gSW0DYO2zSD7W/gRCRYeOY76tliJJ2Q6qWyVpo6iT3LbESR6o9gUKFw1qim36DewzMjbMnr5Pra0KPSujJnqw+bGuyZTmw4MUeFDkLEav7nvD0L1Jssg2kn+sOrF/b/Rldxtv5QqDhzh5gjUm5r7RO9BVVLnjEEKJTPWvdvnzjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707821650; c=relaxed/simple;
	bh=zIILUVITRYsRVIoakXIdWqn4esADPrLTftPfvi8YhQY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a47EqMdwvPNERw5689UKirkxcFKvAyeSD0pqttpI+qT5vjudPukKEF90i2rO7qOC8aWBdW3eD6qw0mY0azR/M5k32TC50ta+vG3us7bVHmawlSvEyw8me8Uh0sEPQUoHwrASdTKrPMERyOYyRwBHSaOEA53KWaSlXJa0LBSOnT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wwVM7OX1; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-dc6dcd9124bso3793052276.1
        for <devicetree@vger.kernel.org>; Tue, 13 Feb 2024 02:54:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707821647; x=1708426447; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=62wygMyBdeSVpMuQ3wI8n4MfTzhln2PY4S7FohPAHFs=;
        b=wwVM7OX1662vOFflvsrw3L4B+DkQNAK5H9GBP75piM9/sXk1mNG2AGKjikG6KWlWyR
         daFXPXVPJrsb0MjCiFSfGBQ+TM+0LhctMxzjbjCPuBt2yCoSMDFfB7lFXHgmJOJWQEMZ
         0MQq4quYJIVjc3MPdmx0tjufLfXQtSRtOtTclgyMpXaqAwVXpo5k9/zDgfG2yg4Y9mE7
         RIL0WrrIh/PleJEmRRWKXWvCtBN0JmSHmeGnMud5mrinTGHJ8FSNWBEkUBl1BJbvQTj7
         5ILypmOecVL7bByks26QOIaJ3uWWVDX6RiG8fCGCChsycutOAZDkUXKLPyuYviQO+u7k
         GvZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707821647; x=1708426447;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=62wygMyBdeSVpMuQ3wI8n4MfTzhln2PY4S7FohPAHFs=;
        b=VcokTaw335TtErENiIIWhPncD2ewzYzSnOdUcaVa/FQ8wTdNzrmUDVPmqH3VPz705C
         U5K9ZAqiyMwbzvZ+CBxr23PC8sxd3LJAXregs+bkKMw8ZRCMJlfvqtF0RotmbOhIZMSJ
         scSuCfkgvPDepxhWlY1TqycEQpj/M3nWJss0L3LE15amfCyCKhfvZSy2zm6FS12eZad1
         6zkgy+2Uq1pCr58SOPKbBTKEyZTbSo/hCz5ZEsdCgZl0MB3lQ+aYUvfJwcJdRt4sifFm
         QIE5NiMbmog3HWN845/w+vehJAfV+wanIn0h6mnM57B6wfrFkpjeqp27uztdvpNqG8TY
         JYFA==
X-Forwarded-Encrypted: i=1; AJvYcCWGGq/cZBrCtCsv/HXFG7OIMUM8o8S9RiycfPGpm8tQsv7Mf6va6/c9bEgWFpZKd2NUY58jVeIQvIYTdXEU2lDx+cmkAjfTRBMx4w==
X-Gm-Message-State: AOJu0YxTf/xz26k07nn49Gxa56WOZOWpPVQwda8C3JtGJgdL1ml3s4jW
	U9hc2qVc/mqYsHr71blnSROPy8yxOKGBwiS2ajtoTCWVId3W4hEl+QraSfps+AWW/NN+/VYRBVt
	7CjP37zZ4+GRDULUW9KPOi3RpbnbX3RjMQ6E3Cw==
X-Google-Smtp-Source: AGHT+IGLUVGIHY81Tcp0bv2vTSWijZVfrPPjlMaVyZ75RYgEoRCw78YWDpdzbiB2KYKdDN525kZxCQzSFmKzTrLQJyw=
X-Received: by 2002:a05:6902:542:b0:dc6:6307:d188 with SMTP id
 z2-20020a056902054200b00dc66307d188mr7487929ybs.25.1707821646726; Tue, 13 Feb
 2024 02:54:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240213104754.8195-1-quic_riteshk@quicinc.com> <20240213104754.8195-3-quic_riteshk@quicinc.com>
In-Reply-To: <20240213104754.8195-3-quic_riteshk@quicinc.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 13 Feb 2024 12:53:55 +0200
Message-ID: <CAA8EJprztE0Cwc=+vxxXk=wKmyMU_TCtLPcY29RHO4-+nWFQEw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcm6490-idp: add display and panel
To: Ritesh Kumar <quic_riteshk@quicinc.com>
Cc: andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	catalin.marinas@arm.com, will@kernel.org, quic_bjorande@quicinc.com, 
	geert+renesas@glider.be, arnd@arndb.de, neil.armstrong@linaro.org, 
	nfraprado@collabora.com, m.szyprowski@samsung.com, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	quic_abhinavk@quicinc.com, quic_rajeevny@quicinc.com, 
	quic_vproddut@quicinc.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 13 Feb 2024 at 12:48, Ritesh Kumar <quic_riteshk@quicinc.com> wrote:
>
> Enable Display Subsystem with Novatek NT36672E Panel
> on qcm6490 idp platform.
>
> Signed-off-by: Ritesh Kumar <quic_riteshk@quicinc.com>
>
> ---
> v2: Fixed review comments from Dmitry and Konrad
>       - moved pinctrl-names after pinctrl-0 property.
>       - removed gpu disablement change after validating gpu.
>     Rebased the patch
>       - rebased the patch to resolve conflicts.
> ---
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 92 ++++++++++++++++++++++++
>  1 file changed, 92 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> index 502a5a383bde..0054b2a8d6c7 100644
> --- a/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qcm6490-idp.dts
> @@ -10,6 +10,7 @@
>  #define PM7250B_SID1 9
>
>  #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
>  #include "sc7280.dtsi"
>  #include "pm7250b.dtsi"
> @@ -39,6 +40,25 @@
>                 stdout-path = "serial0:115200n8";
>         };
>
> +       lcd_disp_bias: lcd-disp-bias-regulator {

regualtor-lcd-disp-bias, please. This will allow grouping regulators together.

> +               compatible = "regulator-fixed";
> +               regulator-name = "lcd_disp_bias";
> +               regulator-min-microvolt = <5500000>;
> +               regulator-max-microvolt = <5500000>;
> +               gpio = <&pm7250b_gpios 2 GPIO_ACTIVE_HIGH>;
> +               enable-active-high;
> +               pinctrl-0 = <&lcd_disp_bias_en>;
> +               pinctrl-names = "default";
> +       };
> +
> +       pm8350c_pwm_backlight: backlight {

This node isn't in the sort order.

> +               compatible = "pwm-backlight";
> +               pwms = <&pm8350c_pwm 3 65535>;
> +               enable-gpios = <&pm8350c_gpios 7 GPIO_ACTIVE_HIGH>;
> +               pinctrl-0 = <&pmic_lcd_bl_en>;
> +               pinctrl-names = "default";
> +       };
> +
>         reserved-memory {
>                 xbl_mem: xbl@80700000 {
>                         reg = <0x0 0x80700000 0x0 0x100000>;
> @@ -421,7 +441,79 @@
>         };
>  };
>
> +&mdss {
> +       status = "okay";
> +};
> +
> +&mdss_dsi {
> +       vdda-supply = <&vreg_l6b_1p2>;
> +       status = "okay";
> +
> +       panel@0 {
> +               compatible = "novatek,nt36672e";
> +               reg = <0>;
> +
> +               reset-gpios = <&tlmm 44 GPIO_ACTIVE_HIGH>;
> +
> +               vddi-supply = <&vreg_l8c_1p62>;
> +               avdd-supply = <&lcd_disp_bias>;
> +               avee-supply = <&lcd_disp_bias>;
> +
> +               backlight = <&pm8350c_pwm_backlight>;
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
> +&mdss_dsi_phy {
> +       vdds-supply = <&vreg_l10c_0p88>;
> +       status = "okay";
> +};
> +
> +&pm7250b_gpios {
> +       lcd_disp_bias_en: lcd-disp-bias-en-state {
> +               pins = "gpio2";
> +               function = "func1";
> +               bias-disable;
> +               qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
> +               input-disable;
> +               output-enable;
> +               power-source = <0>;
> +       };
> +};
> +
> +&pm8350c_gpios {
> +       pmic_lcd_bl_en: pmic-lcd-bl-en-state {
> +               pins = "gpio7";
> +               function = "normal";
> +               bias-disable;
> +               qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
> +               output-low;
> +               power-source = <0>;
> +       };
> +
> +       pmic_lcd_bl_pwm: pmic-lcd-bl-pwm-state {
> +               pins = "gpio8";
> +               function = "func1";
> +               bias-disable;
> +               qcom,drive-strength = <PMIC_GPIO_STRENGTH_LOW>;
> +               output-low;
> +               power-source = <0>;
> +       };
> +};
> +
>  &pm8350c_pwm {
> +       pinctrl-0 = <&pmic_lcd_bl_pwm>;
> +       pinctrl-names = "default";
>         status = "okay";
>
>         multi-led {
> --
> 2.17.1
>


-- 
With best wishes
Dmitry

