Return-Path: <devicetree+bounces-3188-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AE1A37AD999
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 15:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id C4F791C203A8
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 13:53:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BAF751BDE1;
	Mon, 25 Sep 2023 13:53:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B8614A8A
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 13:53:40 +0000 (UTC)
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7F60FF
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:53:38 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-405524e6769so25360225e9.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 06:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695650017; x=1696254817; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fEyyBOiumqlPrTY/pNDi/jSPRVb77LUtZxDS6rWVxtM=;
        b=BGHWQT479/wlqRvKLsfru+Y7+2PNr8s21m9ZNfj5L97tYmde91lFmdKAwk0yvcGur8
         6QTIR+t6tyopPy4pvh/iBjsSGMeSILuIzd1arfiLgArXQGz3OVqDZUQe86Hy/YggZp6p
         3Yz8m3RhyPwIEmelp4e/a/dI+Nkwug5dRaLYxkPuhk40+inR8sTqbKjnCMJrtY8g2frn
         6OhHumU9548wRxUR8Jowj1kQv7GEZ4aLtuM8rgRhr1yFO+hR19FHRfQGqMYNLDfZnJls
         zZ4z+Mj3OGZMe68o7RVPYa+EwUtd+o7bHdC/XYFrFNQWRMwo7Vjhiko1e4ZTTlvusSVj
         OGUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695650017; x=1696254817;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fEyyBOiumqlPrTY/pNDi/jSPRVb77LUtZxDS6rWVxtM=;
        b=PhEHQRxpZRWq/tdxFUDjvnheqBG6oMYQ0fnQ9sc79ieEE9i2S1/YsDzKTcKya/DqFb
         6urMK2NRznkPiAFjykgQKHgTjtJGfkMWMo10aUA3+/JgasSxHqoVo5qgCnsjxM56jFxd
         N6XVxZFQCoh63ZEtHxA3/L1ZUWZsZ1F3neoJdfE0GXIb/gkyWm8PdL5g1v2UoFKsgoPt
         qKxRR3ung/glIZoNKtuGkZehryPZiYuTEn0b0/3lt401rjcJe/Eg0gxYZRy5MvQdr0KX
         IdZuRT2C2UidhZAz31qzUS0U5HKWIrf379xECtWWgPI7scUMVlCcA1JVT3tAlr8AHIvh
         Ed+Q==
X-Gm-Message-State: AOJu0YwYmc5s7pddYU2dOa1XV1RB31R0lxeTrp4+aQ6AGNurCIZsXBDn
	9vO6sEGiNFULthxsnEitfttxog==
X-Google-Smtp-Source: AGHT+IGFzUj08pHjRNoUk/5V7szaTjs5BgBSaCQCfPcY3wT4ugjofFmWzBmIPF/q1gq35Asy4Wf/6w==
X-Received: by 2002:a7b:c8cb:0:b0:405:251f:8455 with SMTP id f11-20020a7bc8cb000000b00405251f8455mr7644308wml.7.1695650017304;
        Mon, 25 Sep 2023 06:53:37 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:38f4:d5ca:ab87:c1bc])
        by smtp.googlemail.com with ESMTPSA id v11-20020a5d610b000000b0031435731dfasm11889903wrt.35.2023.09.25.06.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Sep 2023 06:53:36 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Jerome Brunet <jbrunet@baylibre.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-amlogic@lists.infradead.org
Subject: [PATCH] arm64: dts: meson: g12: name spdifout consistently
Date: Mon, 25 Sep 2023 15:53:26 +0200
Message-Id: <20230925135326.1689396-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

g12 and sm1 are fairly similar when it comes to audio.
Both have 2 spdif outputs. While the 2nd output is named "spdifout_b" for
both, the 1st one is named 'spdifout' for g12 and 'spdifout_a' for sm1.

Use 'spdifout_a' for both instead.

This change does not fix any particular problem. The intent is just to make
it easier to have a common card definitions for platform designs using both
SoC families, when spdifout is used.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12.dtsi           |  4 ++--
 arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts      | 10 +++++-----
 arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts   | 10 +++++-----
 arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts    | 10 +++++-----
 arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts | 10 +++++-----
 5 files changed, 22 insertions(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
index eb442aaf57e4..e732df3f3114 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12.dtsi
@@ -268,12 +268,12 @@ spdifin: audio-controller@400 {
 			status = "disabled";
 		};
 
-		spdifout: audio-controller@480 {
+		spdifout_a: audio-controller@480 {
 			compatible = "amlogic,g12a-spdifout",
 				     "amlogic,axg-spdifout";
 			reg = <0x0 0x480 0x0 0x50>;
 			#sound-dai-cells = <0>;
-			sound-name-prefix = "SPDIFOUT";
+			sound-name-prefix = "SPDIFOUT_A";
 			clocks = <&clkc_audio AUD_CLKID_SPDIFOUT>,
 				 <&clkc_audio AUD_CLKID_SPDIFOUT_CLK>;
 			clock-names = "pclk", "mclk";
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
index 7310e192efe7..8355ddd7e9ae 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-u200.dts
@@ -189,9 +189,9 @@ sound {
 				"TDMOUT_C IN 1", "FRDDR_B OUT 2",
 				"TDMOUT_C IN 2", "FRDDR_C OUT 2",
 				"TDM_C Playback", "TDMOUT_C OUT",
-				"SPDIFOUT IN 0", "FRDDR_A OUT 3",
-				"SPDIFOUT IN 1", "FRDDR_B OUT 3",
-				"SPDIFOUT IN 2", "FRDDR_C OUT 3",
+				"SPDIFOUT_A IN 0", "FRDDR_A OUT 3",
+				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
+				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3",
 				"SPDIFOUT_B IN 0", "FRDDR_A OUT 4",
 				"SPDIFOUT_B IN 1", "FRDDR_B OUT 4",
 				"SPDIFOUT_B IN 2", "FRDDR_C OUT 4",
@@ -324,7 +324,7 @@ codec-1 {
 
 		/* spdif hdmi and coax output */
 		dai-link-9 {
-			sound-dai = <&spdifout>;
+			sound-dai = <&spdifout_a>;
 
 			codec-0 {
 				sound-dai = <&spdif_dit>;
@@ -546,7 +546,7 @@ &spdifin {
 	status = "okay";
 };
 
-&spdifout {
+&spdifout_a {
 	pinctrl-0 = <&spdif_ao_out_pins>;
 	pinctrl-names = "default";
 	status = "okay";
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
index 7ca904f5acbb..4969a76460fa 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
@@ -155,9 +155,9 @@ sound {
 				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT",
-				"SPDIFOUT IN 0", "FRDDR_A OUT 3",
-				"SPDIFOUT IN 1", "FRDDR_B OUT 3",
-				"SPDIFOUT IN 2", "FRDDR_C OUT 3";
+				"SPDIFOUT_A IN 0", "FRDDR_A OUT 3",
+				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
+				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3";
 
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
@@ -196,7 +196,7 @@ codec {
 
 		/* spdif hdmi or toslink interface */
 		dai-link-4 {
-			sound-dai = <&spdifout>;
+			sound-dai = <&spdifout_a>;
 
 			codec-0 {
 				sound-dai = <&spdif_dit>;
@@ -456,7 +456,7 @@ &sd_emmc_c {
 	vqmmc-supply = <&flash_1v8>;
 };
 
-&spdifout {
+&spdifout_a {
 	pinctrl-0 = <&spdif_out_h_pins>;
 	pinctrl-names = "default";
 	status = "okay";
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
index 3e826095e792..8fc2e143cb54 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-gtking.dts
@@ -34,9 +34,9 @@ sound {
 				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT",
-				"SPDIFOUT IN 0", "FRDDR_A OUT 3",
-				"SPDIFOUT IN 1", "FRDDR_B OUT 3",
-				"SPDIFOUT IN 2", "FRDDR_C OUT 3";
+				"SPDIFOUT_A IN 0", "FRDDR_A OUT 3",
+				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
+				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3";
 
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
@@ -75,7 +75,7 @@ codec {
 
 		/* spdif hdmi or toslink interface */
 		dai-link-4 {
-			sound-dai = <&spdifout>;
+			sound-dai = <&spdifout_a>;
 
 			codec-0 {
 				sound-dai = <&spdif_dit>;
@@ -139,7 +139,7 @@ rtc: rtc@51 {
 	};
 };
 
-&spdifout {
+&spdifout_a {
 	pinctrl-0 = <&spdif_out_h_pins>;
 	pinctrl-names = "default";
 	status = "okay";
diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
index 098a3af6d381..ce548b373296 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-ugoos-am6.dts
@@ -29,9 +29,9 @@ sound {
 				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
 				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
 				"TDM_B Playback", "TDMOUT_B OUT",
-				"SPDIFOUT IN 0", "FRDDR_A OUT 3",
-				"SPDIFOUT IN 1", "FRDDR_B OUT 3",
-				"SPDIFOUT IN 2", "FRDDR_C OUT 3";
+				"SPDIFOUT_A IN 0", "FRDDR_A OUT 3",
+				"SPDIFOUT_A IN 1", "FRDDR_B OUT 3",
+				"SPDIFOUT_A IN 2", "FRDDR_C OUT 3";
 
 		assigned-clocks = <&clkc CLKID_MPLL2>,
 				  <&clkc CLKID_MPLL0>,
@@ -70,7 +70,7 @@ codec {
 
 		/* spdif hdmi or toslink interface */
 		dai-link-4 {
-			sound-dai = <&spdifout>;
+			sound-dai = <&spdifout_a>;
 
 			codec-0 {
 				sound-dai = <&spdif_dit>;
@@ -125,7 +125,7 @@ &ir {
 	linux,rc-map-name = "rc-khadas";
 };
 
-&spdifout {
+&spdifout_a {
 	pinctrl-0 = <&spdif_out_h_pins>;
 	pinctrl-names = "default";
 	status = "okay";
-- 
2.40.1


