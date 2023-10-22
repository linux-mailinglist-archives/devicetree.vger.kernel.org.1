Return-Path: <devicetree+bounces-10645-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0AD07D252D
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 20:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 586F9B20D2B
	for <lists+devicetree@lfdr.de>; Sun, 22 Oct 2023 18:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D1C11CA4;
	Sun, 22 Oct 2023 18:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ragnatech-se.20230601.gappssmtp.com header.i=@ragnatech-se.20230601.gappssmtp.com header.b="P80bdufw"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F57A11C95
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 18:19:31 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51C1F112
	for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 11:19:29 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-98377c5d53eso360462666b.0
        for <devicetree@vger.kernel.org>; Sun, 22 Oct 2023 11:19:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ragnatech-se.20230601.gappssmtp.com; s=20230601; t=1697998768; x=1698603568; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IapM57vvXfzQjqENXtjuM9JSp2fROAyan36M7VaIVMY=;
        b=P80bdufwEODPnniq0TMeKbnBm/KBDYuv2Wk2XQjdcD6uWLs8xJKxjWMba1JNBGsYFg
         JkWvYa9/KlDDdKmXbKh7zwZfh8MJgC8QVXbuNL/4uWa5GTB+HbxkzbTyzhs7VQABydyd
         WKfIbFjdd9x+2CNqYaP/HzafngZqEaBiMkf0TKmnqEo/OO0NnBqxVm80vFtr2TRIyGBB
         Dz+cQrZZvIF0BFvWRB6L2UGidJo9TK22SR2+bQdpWh7OQEy1ukMg/aAmlnuIRDGrA4Nu
         HTu2bil0QTDDE0GXXvm90xagIOCZU2MQft0wZnUxKBmvjdQ/xyhgbYDfclbwu6NjTAmR
         mRkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697998768; x=1698603568;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IapM57vvXfzQjqENXtjuM9JSp2fROAyan36M7VaIVMY=;
        b=eBb3LJKP+ej2M9WmnbzxDzLrJAiH5Ab/Kp6JJ6ySNRERyIsCLgbhkohnltL7r2Vcgd
         CXDrUr/Y3D7nCd5nnGkkHSL9zr03RwEvYrlAZIAqlWU3bFldQggjt4r+7vxNz1cwyUDs
         Y/gDxQhfFzN3PTttsA+VsiC8juQ9Q0RdYsHrrp0beElsDLYH+pz+Bam7c+f3UzFmHgWE
         1iXZP03qi3H4KWHTQVu7pR8wCeNrZsUOvHboUCEGpWeem9WOWfYNVfJ8jmwOJxkWauow
         eMgL+XNMehqH7xGoOkh4e1sAM4LgC2rFlhQdL+ptyoJ0a3SX+QQXZwLJrrHlS1ZYiti4
         EwIw==
X-Gm-Message-State: AOJu0Yxwb3+o527MqqfkHtYEMhQd2Iji30ehbAMmbi/Xw8eNOG6laS4Q
	fAdQWyFAg6PseY3w4Tml+r3lQQ==
X-Google-Smtp-Source: AGHT+IFlj5GdhLU2TQwUvjeXwg2wlAakytjgIq95OhK7i9kgBaYhTzVFDrJqC/9ZNKxNpE21GxtN1w==
X-Received: by 2002:a50:8d11:0:b0:53e:8c4c:ab3e with SMTP id s17-20020a508d11000000b0053e8c4cab3emr5248673eds.19.1697998767640;
        Sun, 22 Oct 2023 11:19:27 -0700 (PDT)
Received: from sleipner.berto.se (p4fca2773.dip0.t-ipconnect.de. [79.202.39.115])
        by smtp.googlemail.com with ESMTPSA id h12-20020aa7de0c000000b0053e43492ef1sm5035159edv.65.2023.10.22.11.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Oct 2023 11:19:27 -0700 (PDT)
From: =?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
	devicetree@vger.kernel.org
Cc: linux-renesas-soc@vger.kernel.org,
	=?UTF-8?q?Niklas=20S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>
Subject: [PATCH v2 1/2] arm64: dts: renesas: draak: Make HDMI the default video input
Date: Sun, 22 Oct 2023 20:19:09 +0200
Message-ID: <20231022181910.898040-2-niklas.soderlund+renesas@ragnatech.se>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231022181910.898040-1-niklas.soderlund+renesas@ragnatech.se>
References: <20231022181910.898040-1-niklas.soderlund+renesas@ragnatech.se>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Most Gen3 R-Car devices have HDMI as the default video input source,
align Draak with them and make HDMI the default.

Signed-off-by: Niklas Söderlund <niklas.soderlund+renesas@ragnatech.se>
---
* Changes since v1
- Split moving the incorrect bus properties to separate patch.
---
 arch/arm64/boot/dts/renesas/draak.dtsi | 20 +++++++++-----------
 1 file changed, 9 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/draak.dtsi b/arch/arm64/boot/dts/renesas/draak.dtsi
index ef3bb835d5c0..08b3458a5025 100644
--- a/arch/arm64/boot/dts/renesas/draak.dtsi
+++ b/arch/arm64/boot/dts/renesas/draak.dtsi
@@ -356,12 +356,9 @@ port@3 {
 				 * CVBS and HDMI inputs through SW[49-53]
 				 * switches.
 				 *
-				 * CVBS is the default selection, link it to
-				 * VIN4 here.
+				 * HDMI is the default selection, leave CVBS
+				 * not connected here.
 				 */
-				adv7180_out: endpoint {
-					remote-endpoint = <&vin4_in>;
-				};
 			};
 		};
 
@@ -423,13 +420,14 @@ port@2 {
 				 * CVBS and HDMI inputs through SW[49-53]
 				 * switches.
 				 *
-				 * CVBS is the default selection, leave HDMI
-				 * not connected here.
+				 * HDMI is the default selection, link it to
+				 * VIN4 here.
 				 */
 				adv7612_out: endpoint {
 					pclk-sample = <0>;
 					hsync-active = <0>;
 					vsync-active = <0>;
+					remote-endpoint = <&vin4_in>;
 				};
 			};
 		};
@@ -580,8 +578,8 @@ usb0_pins: usb0 {
 		function = "usb0";
 	};
 
-	vin4_pins_cvbs: vin4 {
-		groups = "vin4_data8", "vin4_sync", "vin4_clk";
+	vin4_pins: vin4 {
+		groups = "vin4_data24", "vin4_sync", "vin4_clk";
 		function = "vin4";
 	};
 };
@@ -729,7 +727,7 @@ &usb2_phy0 {
 };
 
 &vin4 {
-	pinctrl-0 = <&vin4_pins_cvbs>;
+	pinctrl-0 = <&vin4_pins>;
 	pinctrl-names = "default";
 
 	status = "okay";
@@ -737,7 +735,7 @@ &vin4 {
 	ports {
 		port {
 			vin4_in: endpoint {
-				remote-endpoint = <&adv7180_out>;
+				remote-endpoint = <&adv7612_out>;
 			};
 		};
 	};
-- 
2.42.0


