Return-Path: <devicetree+bounces-39088-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 69D9684B5EA
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 14:04:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E523C1F2696A
	for <lists+devicetree@lfdr.de>; Tue,  6 Feb 2024 13:04:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA42D12FF9F;
	Tue,  6 Feb 2024 13:04:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="asJM8vNU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085C912FF68
	for <devicetree@vger.kernel.org>; Tue,  6 Feb 2024 13:04:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707224654; cv=none; b=H6vXi+wryNvSI/DF/qgXSB5/n+wkNwQ6cIuqmqJdryR+wwkaAE+sQ7wy0qdFqPz9karkh5uM43C19kAtWMuDxCP9fl4M3QEIFcPm34ebmX545u6OZB6CDSS7etJJ6wcDF9k8znMDQbgNfLDX9HkKs0vLFeEqryHWQhr8fB4V4/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707224654; c=relaxed/simple;
	bh=d26F1G3+gK4hU4HwHo79vFomF/ZbXoVmzImcd2QK4Fo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=luZfXM0fJHUQbEH3vokjKYVEgQFwajBgsMHRfS4/Xtmv+hjs4QWRWFAZn17m58KYKtHe2rcHiJvfTy5kmMmrSJYvt2dTOs0Vd1pfU6FRT1Qsy0/VaQJoN8i03BbH2EGG7r+wlTXLge8WL/kdYFzvnqI/mtTxzTMzMOuFvnZ1geA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=asJM8vNU; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-511538be947so2075904e87.3
        for <devicetree@vger.kernel.org>; Tue, 06 Feb 2024 05:04:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707224651; x=1707829451; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ih/azNYN+X+a8wjDjZ5vcKW6st8xlCCJWn8HPKXJ4mE=;
        b=asJM8vNUL2/bLuunlnAvwayOFCXb28LfFE2QyV9CWKDEclQoCxvhvWXtyVd0rIhiXd
         VYcZeHL3ncSe4sGsQHsFFzMSOOCxrXWHtOi8bSxSPPgHx6fv9XtU3OvURbQ1Gq3cizlf
         I/bnFZJtpgLnlPd5X+uj7q0pvshZltnJy1T/jU3DkGNcj3Z7b7AP4yyLBWoE7dU4dqqW
         t4Dwoo4qK778ER0t4SkUZTcokYaKrHUpzLlZgAqIWyPAXqbNeYghdRCPDWVoYc3UXwgu
         lUtlJYj8FE1iCidaY8OneVxH6AMAFMXGX8OXf8x4lYpiS61TqC8UCBLPMxOBth+XBIWZ
         qCmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707224651; x=1707829451;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ih/azNYN+X+a8wjDjZ5vcKW6st8xlCCJWn8HPKXJ4mE=;
        b=t/PdPUpS1p+ZNwzWBrRffkmjHUwgoNIFTkoxnObsNH11HPU/7X3P9mPXwDKLlJWOll
         N2VthXVR419jAlQGYkFQBO8oEChXFD/dDyX/RY+nHzvpTf7EQpgfrsO4MHlNxWws0vde
         goXXjnWMPJUS1Q7o4/Fe7ViOFfhBQJ08g0o5apq/kv9U+pQRDjYonoRsQWYeZUXMXpAW
         CkJ31D9DLPHkuz/ST5Da75OZ0yBTVQguTf2JzoJrnmccVKvEwnNRNO1KYebq0PkL2Jut
         nk2gRujWmOXt0zv9PpCr/mvyxuYSKO4GJIBReblnWRes6a5voWRhLp5yVNTXggUNlpJQ
         4JSA==
X-Gm-Message-State: AOJu0YyEQqP7t5sp3j75Hi7TcJ0i1t8Fu6OCb9QXtLIkAU5LjQcouMdn
	w9Lc02iahS0swaw0SX0tATwREmaqRhSuhQYo4Ro3cD5m8oaWsrWkh9nDJmEYt6I=
X-Google-Smtp-Source: AGHT+IF4u++XJafTG3ufmNo2JxWBxncjo3vXj/9ucYhhg/yty/3xqyAYhWUUKNwLEZn397dfkQ8rdA==
X-Received: by 2002:ac2:5e30:0:b0:511:1a26:daab with SMTP id o16-20020ac25e30000000b005111a26daabmr1608986lfg.2.1707224650797;
        Tue, 06 Feb 2024 05:04:10 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCXjPFYjR5R9FYssW69gDr2OwTZsYRntQqzBXyk0ESnYx4ahKVaHHPU/IKpUkjIckRgiEC04+QhvN2j/IPGL1z+kmerv6+ZGEpfy2xR8sa5GjHCFLl1E/7h0yvu4sT0jKDIaSOvGZC1K4O2W2k0sc9pJ1bT8NhoCPNkherLUxqqHK7Yu+NZLqNPZsRYgEZk9WB/7mrv6C0I8YUb9A6zE0+/7DhzHHClY0u2tbFtyjO8qAvIvKvVcJ6QZpWoQpuK97D3P2Qu23qQrHM4nzbJ27vPGpYqG/NSZWqFignnmniV78Bd+7/CM+A96CoihV7rnCtW9BNtz7v7q
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id b19-20020a056512071300b0051149bfeeddsm237739lfs.84.2024.02.06.05.04.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 05:04:10 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 06 Feb 2024 15:04:10 +0200
Subject: [PATCH] ARM: dts: imx53: add support for the HDMI expander
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240206-imx53-qsb-hdmi-v1-1-e798eb1181c5@linaro.org>
X-B4-Tracking: v=1; b=H4sIAEkuwmUC/x3MMQ6AIAxA0auYzjapoAxexTiAVO0gKiSGxHB3i
 eMb/n8hcRROMDYvRH4kyRkquraBZbdhYxRfDYpUT4oMypEHjXdyuPtD0PbOkFZMpmOo0RV5lfw
 Pp7mUD4Bj70dgAAAA
To: Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>, 
 Pengutronix Kernel Team <kernel@pengutronix.de>, 
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3240;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=d26F1G3+gK4hU4HwHo79vFomF/ZbXoVmzImcd2QK4Fo=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBlwi5KM5Qo3HsucHtX1taRaL0UmlVB/08QvC6ai
 s/DZ0HUAn2JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZcIuSgAKCRCLPIo+Aiko
 1chQB/9Xx5FMBzRNC8dw+5/eghddvK3+zBHC7WpCN3Mutm6UenfrFDZoxfTjMuaP+KbVq+ZC2VK
 HdtS2wlymkrBgn6Wtb04hK8Ph/rk8vwO2zAcEwKIQ3MpjRp4f9himCdwlmmIs0sZgdxT6gmmkEf
 LtLKOyUYjhUkcVlqCfnoe4r4B2EdLXpOoR87yh1qVglWdUkiDHLBSTsnQC+1zAMKaF3jWZzR8Fz
 PyZlMcvsJTehrK8CEItfhmJidneyDmRe/TiDdE9vdO/LKfxTis5JwW7v5RtfYjtC06glCk8svlu
 E9jfPO8zhhMk27L4ZE9HzEpZR+axFp5RDc3WYAtMPEO3Mu5W
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

Add support for the MCIMXHDMICARD epansion card attached to the iMX53
QSB / QSRB platforms. This enables HDMI output on those devices.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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


