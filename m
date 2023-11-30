Return-Path: <devicetree+bounces-20516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5807FFB0F
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 20:19:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 61B882818BE
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 19:19:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C0C65FF1B;
	Thu, 30 Nov 2023 19:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f172.google.com (mail-oi1-f172.google.com [209.85.167.172])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78816D48;
	Thu, 30 Nov 2023 11:19:45 -0800 (PST)
Received: by mail-oi1-f172.google.com with SMTP id 5614622812f47-3b845ba9ba9so817070b6e.3;
        Thu, 30 Nov 2023 11:19:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701371985; x=1701976785;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QLPu8OP7Gtghj9r8oEl3tmBH6570M0xe/cb33bW7tew=;
        b=EDS8OnsIiVq428xHZsYAJwPqcun9XqIqgUrwmFS8sUaCJ4Rx1SK/Gwek1g6sA+AHfl
         DlOlI8G4GptOvKWNXvusoDEIrrPQAGAo5RP40UVzV2nKg3F8k331bMHiSkrMm53sPgik
         ykbEb2qEanQeLsAL3cCD3p6Kqcf/SV6KnpnDmrOEHdYHw5Gg92OGifJozfod0M0UJxM0
         bJo+tsEfX2O8kfW6gzbwGnw1KSvn99ID6/g3dqI8Tc7wZkk1DeqTrio2OHnLBLNuogCI
         CjxOGCEzQJgOAZpTeNOR1jVqwtEbhnsLztX+owMVKgSOgocAk2B/Tvh1KgTICdLhocWI
         /kBA==
X-Gm-Message-State: AOJu0Yz7RqG5a1vUqePUlJtNQpjmHk45gr7OXTkZTu0nwqPtJ9Z3A3DW
	kB/3ok2KX4Vvk3sWokgjlw==
X-Google-Smtp-Source: AGHT+IEFWohfzI3yeZknlX72nM9i+BGcCcB5vlsaw2vWJJdFsrighCpFKuV9DN0V1TVWaXWkf4QqKA==
X-Received: by 2002:a05:6808:1507:b0:3b8:3f9f:4c73 with SMTP id u7-20020a056808150700b003b83f9f4c73mr636290oiw.26.1701371984728;
        Thu, 30 Nov 2023 11:19:44 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x19-20020a056808145300b003b6caf2accfsm274659oiv.22.2023.11.30.11.19.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 11:19:43 -0800 (PST)
Received: (nullmailer pid 2435276 invoked by uid 1000);
	Thu, 30 Nov 2023 19:19:42 -0000
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3399-gru: Fix PCI node addresses
Date: Thu, 30 Nov 2023 13:18:29 -0600
Message-ID: <20231130191830.2424361-1-robh@kernel.org>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The rk3399-gru PCI node addresses are wrong.

In rk3399-gru-scarlet, the bus number in the address should be 0. This is
because bus number assignment is dynamic and not known up front. For FDT,
the bus number is simply ignored.

In rk3399-gru-chromebook, the addresses are simply invalid. The first
"reg" entry must be the configuration space for the device. The entry
should be all 0s except for device/slot and function numbers. The existing
64-bit memory space (0x83000000) entries are not valid because they must
have the BAR address in the lower byte of the first cell.

Warnings for these are enabled by adding the missing 'device_type = "pci"'
for the root port node.

Signed-off-by: Rob Herring <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi  | 3 +--
 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi             | 1 +
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 5c1929d41cc0..cacbad35cfc8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -509,8 +509,7 @@ wacky_spi_audio: spi2@0 {
 &pci_rootport {
 	mvl_wifi: wifi@0,0 {
 		compatible = "pci1b4b,2b42";
-		reg = <0x83010000 0x0 0x00000000 0x0 0x00100000
-		       0x83010000 0x0 0x00100000 0x0 0x00100000>;
+		reg = <0x0000 0x0 0x0 0x0 0x0>;
 		interrupt-parent = <&gpio0>;
 		interrupts = <8 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
index 853e88455e75..9e4b12ed62cb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet-dumo.dts
@@ -34,8 +34,8 @@ &mipi_panel {
 &pci_rootport {
 	wifi@0,0 {
 		compatible = "qcom,ath10k";
-		reg = <0x00010000 0x0 0x00000000 0x0 0x00000000>,
-		      <0x03010010 0x0 0x00000000 0x0 0x00200000>;
+		reg = <0x00000000 0x0 0x00000000 0x0 0x00000000>,
+		      <0x03000010 0x0 0x00000000 0x0 0x00200000>;
 		qcom,ath10k-calibration-variant = "GO_DUMO";
 	};
 };
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
index c9bf1d5c3a42..789fd0dcc88b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru.dtsi
@@ -489,6 +489,7 @@ pci_rootport: pcie@0,0 {
 		#address-cells = <3>;
 		#size-cells = <2>;
 		ranges;
+		device_type = "pci";
 	};
 };
 
-- 
2.42.0


