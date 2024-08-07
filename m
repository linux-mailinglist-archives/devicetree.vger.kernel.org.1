Return-Path: <devicetree+bounces-91781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6F294A91E
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 15:55:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CCC5D1F29459
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 13:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 80602200131;
	Wed,  7 Aug 2024 13:54:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ti8kRVV+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9DF11E7A50
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 13:54:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723038887; cv=none; b=XmbZo1+jfrsIJGkbLzymno1ObLkabihbe19bc884JbL5N7tX7JESXrLkZLxHS6BmhFsKVCt/akeKvwyBJGrMg/0rBhN74rTNKV/MS4fnSn5OtOTGusvha0qGRw8lz7EvpIWuPKBmKNH/KKVfB+wxJ+MQ09zI/wIiCLijp4lkGK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723038887; c=relaxed/simple;
	bh=CGQ7vncQJWkiGyiABlgtGn2V24lwV03xREUk34vTOv4=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=SNJ74UdDxIUn0vBNDI/i18z4BSv996m6cjP5DCiTzh2bTq7HDMxj8zEyuQfCPg6LoXrDc+/1pzQE3tzyHFbJmjV6Hu1hKeDF0mb11iaH1Cc/MTypEo8X0NhD6MW067oP4tNaRnjRXRslqSOgbkGtvgx71RDMnaowyTkZ85p2org=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Ti8kRVV+; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-70cec4aa1e4so1321369b3a.1
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 06:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723038885; x=1723643685; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2+7ZjMlY8No3qSDfq4wKYHrpdYKh1AhNqpfBDU3gqWg=;
        b=Ti8kRVV+CJRwKet6g31GRCMyauZYu8PqpuNuFPOAhSwVqmh16hUZI+UA4NxPM5y1LN
         U25RfmUfMukDXB2fSXI/ph/W/3NuMeQxjzQSlgasZ8t0L0xzdrdVc02vfZ+gQ3lzfBq/
         qOqBkfobLhMRbIgRyzmxWNc/Tg8RUn27JDk7bBarfw06ui1GjfcZIEq94nR7B4mXeyvz
         eaIf2/Wd2p9XXeBsJlFKxG0SXf5M1gqEmncpGRowqJFtmfs4AH35mB2Ghsm/f5NRcn44
         68mYRKhWHduFngIXpwF+G3JLrsVZlN5d2BG46dhS0kPCgCHkOe+QpboDP0E2cpEBekSK
         wUYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723038885; x=1723643685;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2+7ZjMlY8No3qSDfq4wKYHrpdYKh1AhNqpfBDU3gqWg=;
        b=ZfCN03IDr+OZeif1xt+XpMZsnC6lXL2C6YIfSZlOvZ3clln//IV1nwrGq7kN7TMZu1
         5sDbjEMPBecRUb9mDUfdDrgJ/0FDRPkm6jj3CLOVh34unXv/Zs7HKLg++LDh0Rv3yJCD
         z8Z8vxLwfCtJtSGUD/iovUFsd+I9k5Qox/z79L8erLIug2KxjAEHC72k6KV7hb4redMo
         LNnbQL0cnn01yVlJRlAxU7bh9KZR5t7p/+8YeI9t2hgZwNTp6rIqyI9++jXh+0EGJ7+c
         D1I5ZZfb4b9EPtayiieTH8SeliPgN3WGm9ybLDeinzChDlpgRB1yUZKEPVwjDmOmqd+v
         b2BA==
X-Forwarded-Encrypted: i=1; AJvYcCX1buEF9VqEzXHpDlfFFDSTqr6wAIpp+TeQlsKLv83sEUMSsKhWSGVkOimP/nSSidg0BEzpfNGyGmQ9G/egrAQTLm2llgggQyiUPA==
X-Gm-Message-State: AOJu0YwhrTBV0R8QZFnktIMV0MjJ/g3yHDbPQVhhzVzVGR6lMIshLhxN
	vMk5hYauKNYZKTLx2IFQ4jCtZoDpHX4ZfjFk+akTMUt3xHiu3RIy
X-Google-Smtp-Source: AGHT+IEQC3SA5Rtjou8jJDGYcDGSdERECkY0cz/9nJegnkoYsE/gA/jz3C8dGg6iDpJ2Kx2OjiiguA==
X-Received: by 2002:a05:6a21:2785:b0:1c6:a561:d387 with SMTP id adf61e73a8af0-1c6a561d6d5mr16712995637.53.1723038884835;
        Wed, 07 Aug 2024 06:54:44 -0700 (PDT)
Received: from joaog-nb.corp.toradex.com ([67.159.246.222])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7106ec410d1sm8451996b3a.66.2024.08.07.06.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 06:54:44 -0700 (PDT)
From: =?UTF-8?q?Jo=C3=A3o=20Paulo=20Gon=C3=A7alves?= <jpaulo.silvagoncalves@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: =?utf-8?q?Jo=C3=A3o=20Paulo=20Gon=C3=A7alves?= <joao.goncalves@toradex.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] arm64: dts: imx8mp-verdin: add HDMI audio support
Date: Wed,  7 Aug 2024 10:54:20 -0300
Message-Id: <20240807135419.248219-1-jpaulo.silvagoncalves@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

From: João Paulo Gonçalves <joao.goncalves@toradex.com>

Add native HDMI audio to Verdin iMX8MP and all its carriers boards.

Signed-off-by: João Paulo Gonçalves <joao.goncalves@toradex.com>
---
v1:
- Fixed wrong "From:" for the patch

.../arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi | 10 ++++++++++
 arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi   | 10 ++++++++++
 .../arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi | 10 ++++++++++
 arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi | 10 ++++++++++
 arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi       |  8 ++++++++
 5 files changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi
index fbcd93e33aea..da8902c5f7e5 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dahlia.dtsi
@@ -65,6 +65,11 @@ reg_pcie: regulator-pcie {
 	};
 };
 
+/* Verdin HDMI_1 Audio */
+&aud2htx {
+	status = "okay";
+};
+
 &backlight {
 	power-supply = <&reg_3p3v>;
 };
@@ -219,6 +224,11 @@ &sai1 {
 	status = "okay";
 };
 
+/* Verdin HDMI_1 Audio */
+&sound_hdmi {
+	status = "okay";
+};
+
 /* Verdin UART_1 */
 &uart1 {
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi
index 09733fea036d..a38e7c947a42 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-dev.dtsi
@@ -64,6 +64,11 @@ simple-audio-card,cpu {
 	};
 };
 
+/* Verdin HDMI_1 Audio */
+&aud2htx {
+	status = "okay";
+};
+
 &backlight {
 	power-supply = <&reg_3p3v>;
 };
@@ -215,6 +220,11 @@ &sai1 {
 	status = "okay";
 };
 
+/* Verdin HDMI_1 Audio */
+&sound_hdmi {
+	status = "okay";
+};
+
 /* Verdin UART_1, connector X50 through RS485 transceiver */
 &uart1 {
 	linux,rs485-enabled-at-boot-time;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
index 3a40338cf2d8..11cf3bdc95c4 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-mallow.dtsi
@@ -62,6 +62,11 @@ led-3 {
 	};
 };
 
+/* Verdin HDMI_1 Audio */
+&aud2htx {
+	status = "okay";
+};
+
 &backlight {
 	power-supply = <&reg_3p3v>;
 };
@@ -182,6 +187,11 @@ &reg_usdhc2_vmmc {
 	vin-supply = <&reg_3p3v>;
 };
 
+/* Verdin HDMI_1 Audio */
+&sound_hdmi {
+	status = "okay";
+};
+
 /* Verdin UART_1 */
 &uart1 {
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi
index 533b7fe218ce..cc389cda2af2 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin-yavia.dtsi
@@ -85,6 +85,11 @@ led-5 {
 	};
 };
 
+/* Verdin HDMI_1 Audio */
+&aud2htx {
+	status = "okay";
+};
+
 &backlight {
 	power-supply = <&reg_3p3v>;
 };
@@ -192,6 +197,11 @@ &reg_usdhc2_vmmc {
 	vin-supply = <&reg_3p3v>;
 };
 
+/* Verdin HDMI_1 Audio */
+&sound_hdmi {
+	status = "okay";
+};
+
 /* Verdin UART_1 */
 &uart1 {
 	status = "okay";
diff --git a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
index d23a3942174d..a19ad5ee7f79 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp-verdin.dtsi
@@ -77,6 +77,14 @@ key-wakeup {
 		};
 	};
 
+	sound_hdmi: sound-hdmi {
+		compatible = "fsl,imx-audio-hdmi";
+		model = "audio-hdmi";
+		audio-cpu = <&aud2htx>;
+		hdmi-out;
+		status = "disabled";
+	};
+
 	/* Carrier Board Supplies */
 	reg_1p8v: regulator-1p8v {
 		compatible = "regulator-fixed";
-- 
2.34.1


