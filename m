Return-Path: <devicetree+bounces-37642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A8149845C36
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 16:56:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5DC272844E8
	for <lists+devicetree@lfdr.de>; Thu,  1 Feb 2024 15:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD5C8779F4;
	Thu,  1 Feb 2024 15:55:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="WEHm7RkL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5D23626C1
	for <devicetree@vger.kernel.org>; Thu,  1 Feb 2024 15:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706802946; cv=none; b=uo4H7EQI21bTXejJk3Dv/7KSxSIfqRJdaLH3cT0WunXfMDGMo/g/iTriz7UiPdI8zmjg3xIQLRt/BmoISqmBcNda2Rt3Z1PaUyvcjkZ54rL7jTykOmf/oBLo2uadUzbCrxPE6UyzKYDB2qaPtSQVMfDWv4qYXc77BBaCRhbZhwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706802946; c=relaxed/simple;
	bh=Ro8nI4ZmUAzUJhKghzcODaHoy8Q1RxeHSiWbHdIN/6Y=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=dUkESomByjZYDqSl3dmQ8XiFp/8hqNG5Ijx/fh4ktjWdsUggWfwfwKzMhf/vVrHBVIxshQvpOkKVM4JA8/QxOkMhy5Z9Axp27EHlPn6dVcatbhw2chy6a9vvxfSJ+wUMYKxNHrurBxWun8MtU/oUCMwe3bRVPBoBOi76lrCTLKk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=WEHm7RkL; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-33ae3cc8a6aso756713f8f.2
        for <devicetree@vger.kernel.org>; Thu, 01 Feb 2024 07:55:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1706802943; x=1707407743; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aUw+GenqDOh2jBB/QxFszgqTVYvr4Vcb6WAFihxVJg4=;
        b=WEHm7RkLZCO/GkDPpN2A6iRDyHsLV6rGXQCVxM8ajIQtmtg/cABxPndQxnxzvPRpUo
         G1upUUpsJWzEH+gdU3In4vNW6QapQlCLzliaiX/zDRA2sjswC+JRsDxPSs8wMWSL65Jn
         ha7Zpuk6Z/gUQWCTSnHTS0+tQlZhRPA5zh3i3eaTbBM9YChjUNsPMUqLyPAeXWrNVbOr
         Ttt+5cRLyEU/l93se0yLYzQ3Jgrs+/jHcvKgsKjiyK8Qz0yZbgGfQFkZGTiGiS+PtDB9
         anK7JYf/2YeZRgbJ3D9CblsK+Cah6S6PO8mmAgWGgI+CBLL/ae/E5ihHw0XJilACS+32
         FArg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706802943; x=1707407743;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aUw+GenqDOh2jBB/QxFszgqTVYvr4Vcb6WAFihxVJg4=;
        b=oSQWVf1vO6TD0m+v7gh++iWjg+xlrc3K1Sn5Vq5zr+vOuh5c2dKxezDWNK/vUwx7gW
         ymtdorXJY4anwEaCtbYqGQKklPlX4eoGdMsX9eCTKCBl8rJ/vJOPiBnnKgWk7mA1EltI
         I8sAF2A3FMx8DIUdZcyaaCyOmEibbCLyMiNXpGCy9LH1UEB4pHFR7wseSevXyk6uv/f9
         sAibZi7NmXbNIA9tRC4ReCK2DgkIUBv9kfQ5gIeXtTWqqbVhLwxSE8O0l3AxvRnAIfnO
         R+Bh9fS3ZvPCxVcgpbZqo4f/gu4s901uFaZM0sNKl+lBp2ToHRNyqbl+k8Gy4bkjcVdg
         NPxA==
X-Gm-Message-State: AOJu0YxD3iY9Izvz5c2flGO5bDaesMitlJ0vfigV/HpDJpWYTpUN/ykI
	raLoSXSQ9ycI5jyhh/3Neo2vX9oQt6SJQ/btjyp1k/YDJLYPfLqEn2XqTEN2ERk=
X-Google-Smtp-Source: AGHT+IHa3JI7Kn1fppWjgn4s8PYx2pbtlf6QNfVlDlyrofYCrM0i7Ve6CWU5dXs0Rup7/QjT4QbhPA==
X-Received: by 2002:adf:a4d7:0:b0:33b:1577:a2d1 with SMTP id h23-20020adfa4d7000000b0033b1577a2d1mr1213302wrb.1.1706802942929;
        Thu, 01 Feb 2024 07:55:42 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCUVWLdfxrdnBMQ89PfJKFlJl9TVw0/HCWHo1BKjwttV4CBGdrx8a0dlvxkSKLZ6CvnLryF9fHb2Sqt/4xqObzBjtmb5el7vkgXqwTv86FcETWZrmn7rnHUECfgm8ibZgOT0tI86Pp0GHgrvVSs72hA4oHQ7LOEB/tle66B6jBDov4d/sxVMFiyMQEm0t9C7Zlnp5pdGrSzIfdYSNKInTYT9PR2E257BzgLCbf/N1jthwMKeZpNRGWLSxEcyq6Y2CUNh5XRCl18eggopm4ROoxzP1bNGPDyl9huo4ww8vW+lgkZwcEEo92uvePI43rS6w9gy0w3gfsD+NA+ctUtUiIwNsvW6jauhGUK7dveiz7xP7PVgqsd2WhiWT/2YIiiQ6/504gkvZ1gRjPqBtKAXYWdsRg3IMauTbhh8lITEL/nKsw+8e9BnRtxnnsQaBVfB2whUGu9+GvliY7+1kzE1l3CxMGkoIj566QAKl8oJ9cti1eSbXjcQuZGRomNzG6xJhnUVl1j+UfeYdXeybIT+znX/Uf+SmM6Yd5FE+dj2gtcnjCTqLtbcmP6WvtfryZ8uZSjA89yC74+UKgdJ6dB4jCOFqfXiIcuDueq8oBvRXQ5JdZyZD3i52fhlb/Y/hhv5LgC4Vho0DIhGJFcmadTZhTfnMHgQQDGAppH8//4QdQd+ma3+HjCdmP05IznFDSj6alagzIbDJXx4
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:dd01:5dec:43e3:b607])
        by smtp.gmail.com with ESMTPSA id ce2-20020a5d5e02000000b0033af4848124sm9650318wrb.109.2024.02.01.07.55.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Feb 2024 07:55:42 -0800 (PST)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marcel Holtmann <marcel@holtmann.org>,
	Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Alex Elder <elder@linaro.org>,
	Srini Kandagatla <srinivas.kandagatla@linaro.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Abel Vesa <abel.vesa@linaro.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Lukas Wunner <lukas@wunner.de>
Cc: linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-bluetooth@vger.kernel.org,
	linux-pci@vger.kernel.org,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [RFC 2/9] arm64: dts: qcom: qrb5165-rb5: model the PMU of the QCA6391
Date: Thu,  1 Feb 2024 16:55:25 +0100
Message-Id: <20240201155532.49707-3-brgl@bgdev.pl>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20240201155532.49707-1-brgl@bgdev.pl>
References: <20240201155532.49707-1-brgl@bgdev.pl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

Add a node for the PMU module of the QCA6391 present on the RB5 board.
Assign its LDO power outputs to the existing Bluetooth module. Add a
node for the PCIe port to sm8250.dtsi and define the WLAN node on it in
the board's .dts and also make it consume the power outputs of the PMU.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 128 +++++++++++++++++++++--
 arch/arm64/boot/dts/qcom/sm8250.dtsi     |  10 ++
 2 files changed, 127 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index cd0db4f31d4a..fab5bebafbad 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -108,6 +108,87 @@ lt9611_3v3: lt9611-3v3 {
 		regulator-always-on;
 	};
 
+	qca6390_pmu: pmu@0 {
+		compatible = "qcom,qca6390-pmu";
+
+		pinctrl-names = "default";
+		pinctrl-0 = <&bt_en_state>, <&wlan_en_state>;
+
+		vddaon-supply = <&vreg_s6a_0p95>;
+		vddpmu-supply = <&vreg_s2f_0p95>;
+		vddrfa1-supply = <&vreg_s2f_0p95>;
+		vddrfa2-supply = <&vreg_s8c_1p3>;
+		vddrfa3-supply = <&vreg_s5a_1p9>;
+		vddpcie1-supply = <&vreg_s8c_1p3>;
+		vddpcie2-supply = <&vreg_s5a_1p9>;
+		vddio-supply = <&vreg_s4a_1p8>;
+
+		wlan-enable-gpios = <&tlmm 20 GPIO_ACTIVE_HIGH>;
+		bt-enable-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
+
+		regulators {
+			vreg_pmu_rfa_cmn: ldo0 {
+				regulator-name = "vreg_pmu_rfa_cmn";
+				regulator-min-microvolt = <760000>;
+				regulator-max-microvolt = <840000>;
+			};
+
+			vreg_pmu_aon_0p59: ldo1 {
+				regulator-name = "vreg_pmu_aon_0p59";
+				regulator-min-microvolt = <540000>;
+				regulator-max-microvolt = <840000>;
+			};
+
+			vreg_pmu_wlcx_0p8: ldo2 {
+				regulator_name = "vreg_pmu_wlcx_0p8";
+				regulator-min-microvolt = <760000>;
+				regulator-max-microvolt = <840000>;
+			};
+
+			vreg_pmu_wlmx_0p85: ldo3 {
+				regulator-name = "vreg_pmu_wlmx_0p85";
+				regulator-min-microvolt = <810000>;
+				regulator-max-microvolt = <890000>;
+			};
+
+			vreg_pmu_btcmx_0p85: ldo4 {
+				regulator-name = "vreg_pmu_btcmx_0p85";
+				regulator-min-microvolt = <810000>;
+				regulator-max-microvolt = <890000>;
+			};
+
+			vreg_pmu_rfa_0p8: ldo5 {
+				regulator-name = "vreg_pmu_rfa_0p8";
+				regulator-min-microvolt = <760000>;
+				regulator-max-microvolt = <840000>;
+			};
+
+			vreg_pmu_rfa_1p2: ldo6 {
+				regulator-name = "vreg_pmu_rfa_1p2";
+				regulator-min-microvolt = <1187000>;
+				regulator-max-microvolt = <1313000>;
+			};
+
+			vreg_pmu_rfa_1p7: ldo7 {
+				regulator_name = "vreg_pmu_rfa_1p7";
+				regulator-min-microvolt = <1710000>;
+				regulator-max-microvolt = <1890000>;
+			};
+
+			vreg_pmu_pcie_0p9: ldo8 {
+				regulator_name = "vreg_pmu_pcie_0p9";
+				regulator-min-microvolt = <870000>;
+				regulator-max-microvolt = <970000>;
+			};
+
+			vreg_pmu_pcie_1p8: ldo9 {
+				regulator_name = "vreg_pmu_pcie_1p8";
+				regulator-min-microvolt = <1710000>;
+				regulator-max-microvolt = <1890000>;
+			};
+		};
+	};
+
 	thermal-zones {
 		conn-thermal {
 			polling-delay-passive = <0>;
@@ -734,6 +815,24 @@ &pcie0_phy {
 	vdda-pll-supply = <&vreg_l9a_1p2>;
 };
 
+&pcieport0 {
+	wifi@0 {
+		compatible = "pci17cb,1101";
+		reg = <0x10000 0x0 0x0 0x0 0x0>;
+
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
+		vddrfa0-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa2-supply = <&vreg_pmu_rfa_1p7>;
+		vddpcie0-supply = <&vreg_pmu_pcie_0p9>;
+		vddpcie1-supply = <&vreg_pmu_pcie_1p8>;
+	};
+};
+
 &pcie1 {
 	status = "okay";
 };
@@ -1303,6 +1402,14 @@ sdc2_card_det_n: sd-card-det-n-state {
 		function = "gpio";
 		bias-pull-up;
 	};
+
+	wlan_en_state: wlan-default-state {
+		pins = "gpio20";
+		function = "gpio";
+		drive-strength = <16>;
+		output-low;
+		bias-pull-up;
+	};
 };
 
 &uart6 {
@@ -1311,17 +1418,16 @@ &uart6 {
 	bluetooth {
 		compatible = "qcom,qca6390-bt";
 
-		pinctrl-names = "default";
-		pinctrl-0 = <&bt_en_state>;
-
-		enable-gpios = <&tlmm 21 GPIO_ACTIVE_HIGH>;
-
-		vddio-supply = <&vreg_s4a_1p8>;
-		vddpmu-supply = <&vreg_s2f_0p95>;
-		vddaon-supply = <&vreg_s6a_0p95>;
-		vddrfa0p9-supply = <&vreg_s2f_0p95>;
-		vddrfa1p3-supply = <&vreg_s8c_1p3>;
-		vddrfa1p9-supply = <&vreg_s5a_1p9>;
+		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
+		vddaon-supply = <&vreg_pmu_aon_0p59>;
+		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
+		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
+		vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
+		vddrfa0-supply = <&vreg_pmu_rfa_0p8>;
+		vddrfa1-supply = <&vreg_pmu_rfa_1p2>;
+		vddrfa2-supply = <&vreg_pmu_rfa_1p7>;
+		vddpcie0-supply = <&vreg_pmu_pcie_0p9>;
+		vddpcie1-supply = <&vreg_pmu_pcie_1p8>;
 	};
 };
 
diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
index 4d849e98bf9b..7cd21d4e7278 100644
--- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
@@ -2203,6 +2203,16 @@ pcie0: pcie@1c00000 {
 			dma-coherent;
 
 			status = "disabled";
+
+			pcieport0: pcie@0 {
+				device_type = "pci";
+				reg = <0x0 0x0 0x0 0x0 0x0>;
+				#address-cells = <3>;
+				#size-cells = <2>;
+				ranges;
+
+				bus-range = <0x01 0xff>;
+			};
 		};
 
 		pcie0_phy: phy@1c06000 {
-- 
2.40.1


