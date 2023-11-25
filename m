Return-Path: <devicetree+bounces-18863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E9137F8D9B
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 20:06:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB3DC281452
	for <lists+devicetree@lfdr.de>; Sat, 25 Nov 2023 19:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63A592EAF1;
	Sat, 25 Nov 2023 19:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=edgeble-ai.20230601.gappssmtp.com header.i=@edgeble-ai.20230601.gappssmtp.com header.b="cA8Z38Um"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A11DCF1
	for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:56 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-6b1d1099a84so2773237b3a.1
        for <devicetree@vger.kernel.org>; Sat, 25 Nov 2023 11:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1700939156; x=1701543956; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6w7lwrxipdbBXTgXfmHYMOucEsWQFdIlzMEbWicO0MY=;
        b=cA8Z38UmeL/mkC+IsNsHWE8qYW75F/V6pMpmpvbSydrYVjoyzm+AwonK4Ia3BrB35g
         y79PK8HXxghZ/dEsGqXMEbIJgJx8e0v1AUexbRIxTXuAZa0QydNiS5KcjOx+VG4rAMRP
         9fBntPhJq44vDjDBvGIoAghbVbDUwbRcVj1Xpu9TIL2fK2ytkfpBL0ErL/jNmCA0lPft
         v57OLOSUgJfs23TfnTytl21INLFCcxi/jf6DFI301qeHEn4gIEUxBvnZ3pcK6zOgGFTq
         PNyW/Y0odFk3mp6bDWyCTiVdhfS4yf176qXNzuVw5sQTSw9h18vmRuSpiQ53xnFFrbMl
         66rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700939156; x=1701543956;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6w7lwrxipdbBXTgXfmHYMOucEsWQFdIlzMEbWicO0MY=;
        b=KoiAtfHfEwLOkBZwsPtwKEcq7nmXGT/XNKwftvEOBiOQbdSJn2XSh2U5XMIs/8B6mD
         L0GbFLARRyfZFfSfPffB6g7n+3CR+zpnhOvZY/ocwSZtqHoMkSNUZOFC5Zc2KAbpUJFa
         +nKCl5pzbiV5ltykLG8ofU6SNnFJUCzGXBTnT70cKqD0/sfedCgdMFKlvze8oiJUg1cY
         +HShK2UuK/DEPydyNZUGa87JbY8hyB3c+2mgmVN5JDMHn3IvTDhnZh88C+T1+fo55lVi
         gNfmt3NCN6C6goa4XTZbxUwT84dAhWLOOBr9n5GSEU9UdgQDaNIyyKn4YHZ5M1bGKayJ
         lRuQ==
X-Gm-Message-State: AOJu0Yz/qE0YAIr+PfkIuc7DsZmQlJcP6qLZZoBBAEo2CGnmC24p71i/
	G7JOfL85TNACDRZM/GtehFeY6g==
X-Google-Smtp-Source: AGHT+IFXANUwsO0N1TGJHIizoM760Fo7St06cVgpGkSRim2Zr04Cso03M/nLAvq6AD382uBTqELPHA==
X-Received: by 2002:a05:6a00:2e1e:b0:6cb:a93c:dfd1 with SMTP id fc30-20020a056a002e1e00b006cba93cdfd1mr9850107pfb.14.1700939156140;
        Sat, 25 Nov 2023 11:05:56 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a208:d471:6d33:4b36:d85])
        by smtp.gmail.com with ESMTPSA id j26-20020a62b61a000000b006cbb7e27091sm4810529pff.175.2023.11.25.11.05.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Nov 2023 11:05:55 -0800 (PST)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 09/10] arm64: dts: rockchip: Add Edgeble NCM6A-IO USB2
Date: Sun, 26 Nov 2023 00:35:21 +0530
Message-Id: <20231125190522.87607-10-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20231125190522.87607-1-jagan@edgeble.ai>
References: <20231125190522.87607-1-jagan@edgeble.ai>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Edgeble NCM6A-IO board has 2 port USB2.0 Host and USB2.0 on E-Key.

Add support for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- none

 .../dts/rockchip/rk3588-edgeble-neu6a-io.dtsi | 55 +++++++++++++++++++
 1 file changed, 55 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
index 130b240e0da8..9b65df3398c3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-io.dtsi
@@ -48,6 +48,20 @@ vcc3v3_pcie3x4: vcc3v3-pcie3x4-regulator {
 		startup-delay-us = <5000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
+
+	vcc5v0_host: vcc5v0-host-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio3 RK_PC7 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_host_en>;
+		regulator-name = "vcc5v0_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		regulator-boot-on;
+		regulator-always-on;
+		vin-supply = <&vcc5v0_sys>;
+	};
 };
 
 &combphy0_ps {
@@ -135,6 +149,12 @@ hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb {
+		vcc5v0_host_en: vcc5v0-host-en {
+			rockchip,pins = <3 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 /* FAN */
@@ -179,3 +199,38 @@ &uart7 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+&u2phy2 {
+	status = "okay";
+};
+
+&u2phy2_host {
+	/* connected to USB hub, which is powered by vcc5v0_sys */
+	phy-supply = <&vcc5v0_sys>;
+	status = "okay";
+};
+
+&u2phy3 {
+	status = "okay";
+};
+
+&u2phy3_host {
+	phy-supply = <&vcc5v0_host>;
+	status = "okay";
+};
+
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
-- 
2.25.1


