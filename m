Return-Path: <devicetree+bounces-39162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 804A584B98E
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 16:29:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0B6081F23CBC
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 15:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E10213473A;
	Tue,  6 Feb 2024 15:26:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TRpeqUeg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9E81339A0
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 15:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707233198; cv=none; b=J0hKdaaNy9AWD/C0jHbg8+qV91Zhg/jiWZVYWS5Uod0S9xwxZzyPNL8Zh5yqjyaY8Qw1Grem1dtkXdx5KwquQamlHOEKCaCgqOw5IZWfo3pmNY/tVFPFZGDIEkzZBoBKcJNLCgonZQszmOu9isplSehla9/fkcqK8HSirt1D/oU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707233198; c=relaxed/simple;
	bh=xfh8O6xBdWKXAe3z6qoy+MkMOujFrVTFLYRtNtIB9jY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=M1P+Rk38SPeoG2Xvf8+B0N/LZGaYKPQ56c3bf9+GireVSkcSNsqn4Yf1Ro5AbYFokhCRlkCmIr9sBDcxIJxg7x6c3flnfIMTDuSikqN8B0/fN6w7HzBLyb+gLoFWAGzgPpu7ZPprJ1LnS66aWq9meH1C18qlhP6pf1X/D/OcvfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TRpeqUeg; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2d0b4ea773eso21910561fa.0
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 07:26:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707233195; x=1707837995; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2ZHheh7A/9s/Hf7PftrHIicPjlWlYwjVhGxny2MqOng=;
        b=TRpeqUegDLqLCM1ndXGYnsg20j8d+puPy40aRc7kaecM6exX4k8TIVLVBS+qo3mtVo
         ZDFYwc9GFaKAaWBKwLECd7sm1Y4NMqP8lvAnHTJhNNKvQzTl2++c7v1Zz7Zl3gUyF/t7
         sffiovHMwH9qNIb7x4Afg0mb5tEyolj5TLWcrGTiOgL2CPUgODW/OFHEEne1YL4bFKxv
         7q7eUx8FVN0u4rMAhw0ehkySbavJnp6wqLori99YEXtYVfySrVJ4BywUFe2zMfTCxbQl
         c6IJEfo44ZBq0bKIAh7vL0BMVCXa1h4eXuI8HSmxHk+ssPmehNJK7AQtQTiLcM/ygZ0m
         d3Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707233195; x=1707837995;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2ZHheh7A/9s/Hf7PftrHIicPjlWlYwjVhGxny2MqOng=;
        b=jj97lW8+AEqESwwMf2bdbR57IECGpjLFp9S/6mJKwE9G+jfsNMMXYPBnkPJaZZYhRN
         +fhI4vQTCwNBl961I6WHEYH7aYyxIQiYhdl0efmcmRbmCYAGz/a/RqrXw89Gk5NA9MHa
         ZMaZJ5czw2gXRXyg8BJRd6TN5VSRUxNpvCTyy0xvYBVXiXBJ/sq/7eb1vMvLhJIJhqyz
         UbxcTZUeTWlMaLhgEIyoSyZywFN7g3xmxveGDMIRvTVEdTUgIa22SKbT89pVQFWqSiga
         U4TdOhLSsIjIxJvG1NutYUakAFJNnLe8ZkKi54E24BLk/+hhqN0YlhDwN1VfFLkcUPRV
         6c+w==
X-Gm-Message-State: AOJu0YzMMzRvZW1C4BeZyoOn1A4RUC5URjLHmXmme057j3LtZfa5aTS3
	81/KVZ6giioFY0fltPSKCrvex0ihZtB28O2u4lLwkEHzWLXvz/UmfuGUcazx3BU=
X-Google-Smtp-Source: AGHT+IGwMflndyn2Ft0LjZVPr/Le1TpaQ18rSgqbCIbRvqef+QHvBhpfbtDTeBVOw7p6/wsgGKs3Bw==
X-Received: by 2002:a05:651c:488:b0:2d0:a71f:5eb2 with SMTP id s8-20020a05651c048800b002d0a71f5eb2mr1561785ljc.23.1707233194623;
        Tue, 06 Feb 2024 07:26:34 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCX2/GLdfIW8VSh4paoHqir5PTgY/xvJZnA+xdbeoywVdHen2sEbjgJDM/ZcAEBLa6dZ+ZG/IW0dpTEQUWg91DsuanBZzjFHsY/mld0zJDSVuHz8NmTVMonAAG/jfT7Gs16/yhOnQlWIV80PyavaFHm8lkg9uwpB0x+vW8Ja+1pOGJK6eDPGKa0WoTT4hnz58ByRUva9SdahSDM2xecZIX4NUzl5txR/MlrRiKx7kVGO8Z0a+UxPV7LcgMY5lZ+A0zwMYnkH0g9Hk8YIccRzL2sQ6ZWzLU2texVa8gcrh53T2H7ey4buewiSmKbfRfPH4a2U/F+cxJJpywNNBpuVCCouB+MY7Dqrb4oUgYWQlL6fUSmsVBM=
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id f9-20020a2e6a09000000b002d0c19bae99sm112319ljc.110.2024.02.06.07.26.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 07:26:34 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 06 Feb 2024 17:26:29 +0200
Subject: [PATCH v2] ARM: dts: imx53-qsb: add support for the HDMI expander
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240206-imx53-qsb-hdmi-v2-1-a025fe0c4362@linaro.org>
X-B4-Tracking: v=1; b=H4sIAKRPwmUC/3XMyw6CMBCF4Vchs3ZMp0BFV76HYcFlpJNIq61pM
 IR3t7J3+Z/kfCtEDsIRLsUKgZNE8S6HPhQw2M5NjDLmBq10pbQyKPNSl/iKPdpxFuyq3qhSszL
 EkE/PwHdZdvDW5rYS3z58dj/Rb/1LJUJCPp0b7okaGurrQ1wX/NGHCdpt276ifODLrQAAAA==
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3502;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=xfh8O6xBdWKXAe3z6qoy+MkMOujFrVTFLYRtNtIB9jY=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlwk+pt89+HHwYFXM7NzIvcwUB51MrqinjuPsEl
 4Mjir4v8lOJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZcJPqQAKCRCLPIo+Aiko
 1eNpB/0X74G5IprOKYCjxN5vCI9uVaPPrGUSjJW+xjcnBH3BtJNzBuGU5nhJ45uLGCGv8mu08rf
 2/btvrhvGQWFsIFCaJ8MOUXKo9nVYkZcEXPx9XyPShd4dOoSwfqIfmuTD4V6N3O7UjTf86GUrs3
 74FmcuyXm7Ta0No8kjyNxvYewKhQKyHUsxTJmfRY4V0dNfdSvjOIbHRvI25alHO+BER2vQyhKqT
 DqR82ti8Xv2puJtigUf+mZaUSv55EEgHiKwcG32w/Pm7NrGvdkYSuH6frcZkdQHwdgcDdtiZzgh
 hKjPCVDSclNPvdVCbMe67pUhufViJ81fMQLpp5pka1xwu3m/
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add support for the MCIMXHDMICARD expansion card attached to the iMX53
QSB / QSRB platforms. This enables HDMI output on those devices.

Reviewed-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Fixed commit subject to mention imx53-qsb (Fabio)
- Fixed epansion -> expansion typo (Fabio)
- Link to v1: https://lore.kernel.org/r/20240206-imx53-qsb-hdmi-v1-1-e798eb1181c5@linaro.org
---
 arch/arm/boot/dts/nxp/imx/Makefile            |  4 ++
 arch/arm/boot/dts/nxp/imx/imx53-qsb-hdmi.dtso | 87 +++++++++++++++++++++++++++
 2 files changed, 91 insertions(+)

diff --git a/arch/arm/boot/dts/nxp/imx/Makefile b/arch/arm/boot/dts/nxp/imx/Makefile
index a724d1a7a9a0..24654deba303 100644
--- a/arch/arm/boot/dts/nxp/imx/Makefile
+++ b/arch/arm/boot/dts/nxp/imx/Makefile
@@ -45,7 +45,9 @@ dtb-$(CONFIG_SOC_IMX53) += \
 	imx53-mba53.dtb \
 	imx53-ppd.dtb \
 	imx53-qsb.dtb \
+	imx53-qsb-hdmi.dtb \
 	imx53-qsrb.dtb \
+	imx53-qsrb-hdmi.dtb \
 	imx53-sk-imx53.dtb \
 	imx53-sk-imx53-atm0700d4-lvds.dtb \
 	imx53-sk-imx53-atm0700d4-rgb.dtb \
@@ -54,6 +56,8 @@ dtb-$(CONFIG_SOC_IMX53) += \
 	imx53-tx53-x13x.dtb \
 	imx53-usbarmory.dtb \
 	imx53-voipac-bsb.dtb
+imx53-qsb-hdmi-dtbs := imx53-qsb.dtb imx53-qsb-hdmi.dtbo
+imx53-qsrb-hdmi-dtbs := imx53-qsrb.dtb imx53-qsb-hdmi.dtbo
 dtb-$(CONFIG_SOC_IMX6Q) += \
 	imx6dl-alti6p.dtb \
 	imx6dl-apf6dev.dtb \
diff --git a/arch/arm/boot/dts/nxp/imx/imx53-qsb-hdmi.dtso b/arch/arm/boot/dts/nxp/imx/imx53-qsb-hdmi.dtso
new file mode 100644
index 000000000000..c84e9b052527
--- /dev/null
+++ b/arch/arm/boot/dts/nxp/imx/imx53-qsb-hdmi.dtso
@@ -0,0 +1,87 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * DT overlay for MCIMXHDMICARD as used with the iMX53 QSB or QSRB boards
+ */
+
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/gpio/gpio.h>
+
+/dts-v1/;
+/plugin/;
+
+&{/} {
+	/delete-node/ panel;
+
+	hdmi: connector-hdmi {
+		compatible = "hdmi-connector";
+		label = "hdmi";
+		type = "a";
+
+		port {
+			hdmi_connector_in: endpoint {
+				remote-endpoint = <&sii9022_out>;
+			};
+		};
+	};
+
+	reg_1p2v: regulator-1p2v {
+		compatible = "regulator-fixed";
+		regulator-name = "1P2V";
+		regulator-min-microvolt = <1200000>;
+		regulator-max-microvolt = <1200000>;
+		regulator-always-on;
+		vin-supply = <&reg_3p2v>;
+	};
+};
+
+&display0 {
+	status = "okay";
+};
+
+&display0 {
+	port@1 {
+		display0_out: endpoint {
+			remote-endpoint = <&sii9022_in>;
+		};
+	};
+};
+
+&i2c2 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	sii9022: bridge-hdmi@39 {
+		compatible = "sil,sii9022";
+		reg = <0x39>;
+		reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
+		interrupts-extended = <&gpio3 31 IRQ_TYPE_LEVEL_LOW>;
+		iovcc-supply = <&reg_3p2v>;
+		#sound-dai-cells = <0>;
+		sil,i2s-data-lanes = <0>;
+
+		ports {
+			#address-cells = <1>;
+			#size-cells = <0>;
+
+			port@0 {
+				reg = <0>;
+
+				sii9022_in: endpoint {
+					remote-endpoint = <&display0_out>;
+				};
+			};
+
+			port@1 {
+				reg = <1>;
+
+				sii9022_out: endpoint {
+					remote-endpoint = <&hdmi_connector_in>;
+				};
+			};
+		};
+	};
+};
+
+&tve {
+	status = "disabled";
+};

---
base-commit: 0dd3ee31125508cd67f7e7172247f05b7fd1753a
change-id: 20240206-imx53-qsb-hdmi-a4b6032e061e

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


