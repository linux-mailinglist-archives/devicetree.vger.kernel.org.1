Return-Path: <devicetree+bounces-176757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C87AB56EE
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 16:23:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7D758169188
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 14:23:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3169F28E5E9;
	Tue, 13 May 2025 14:23:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="FsF7JP6L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96F5E1917C2
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 14:23:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747146218; cv=none; b=SO3xnnZ0LthG1+RsCZ6mJ8baIYHgwgSOEEbobghSqk9NkD9Icm7DwIEI9Hvvo2Zq/F/WYry+EDKD1THmxLGWrawdAE8STJEQy5rf/I5FPlItRX0cuOgPgSO9IJTjbd4Pm9/kR5r+b33fXsU+jHPOruCFUPJu7s4TwPG66jnW0Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747146218; c=relaxed/simple;
	bh=niVeO1JI48jUXIhYsjOcP+FrTTwOsvAnEGcnPCsRgqE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=roLteJFfweLi8TcWgjeIEc3CPpGg1QVG9xvHmmhxCp5dblnIFk7SfatnLu6uS9tjHP1mnTG6OLAdwC5OdbLy5wgKL6vahjvHYBLAwOrO+uSv5ZOuvMnykIVrP6pTSISFza2xwYyJFCy1Emx5iRTla4qs4lLgH39fBSvknmuw8c0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=FsF7JP6L; arc=none smtp.client-ip=209.85.222.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-878627ac2ddso1375751241.0
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 07:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747146215; x=1747751015; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GezTh7CEZSGNy/hj5QCxQQLoFC/kezBwPCYdh6zNgK8=;
        b=FsF7JP6LiomP76XMRXs6er6PbL9keWI9Ja2d3mVE3yjYnoeKFe9xgKIEtLznDHDrD9
         sWCTVLZrHO032ulNWuuOFCSJNgjVRhXyKZOvabDu1ny1kwNJ5mvndvDq3Y4y+O40GhRh
         f73elXsi3y5AJLxUHQOt0pUytCofKbdPU1o6Oj4jZkQ3N8DNItx8fYZVlyoaZ+rJuzxw
         GYNf5pcwjLMlwDta+F7hI5imvI7Cd2KVUalf8oPYsBJ7Ek8fqmOE3V2xjUUZBhl4UJfq
         yjh/DwtT4RnC+QZTMacJmBhCKxx0mPpAib/pgTkbgHokpEiwqwsgVYfCKRYTp2E2uUr4
         X2VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747146215; x=1747751015;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GezTh7CEZSGNy/hj5QCxQQLoFC/kezBwPCYdh6zNgK8=;
        b=pyGauzsilSUDd/ziL5G63EfilmehQkQu4cRyk/VKDfqzTikSNDQwTwx38FzU4bTm8Q
         bXQQKWKkQqGmAUWkHS74WRyJP9dzrcAlpibBUBqobThZRGWBTWjYPLw28PEH30m3W1jb
         okUsIKAMHIgIyv0xuGXupNmQWbATWvnvkL8W/Rl8U+jtx9Iv7k2BeQSQV2ygT/nwHJYg
         6RH+AFEDBKP2PXxvGl4MOP3WxP9meb2w+VE7/T8RNcjgPPbqRGS9FuNHhpbZhv2zzjbs
         AykGR8HPoAt932816p1tA0zZyID7MfbwlPcqH8QL5G9S5eLX2Whi++75WKO5DIEG6C0f
         34EQ==
X-Forwarded-Encrypted: i=1; AJvYcCW5dhphYkINUeGW8366gVYTWh2keN93uA2DvL6eQuPOobFSv3h2Tst5+hdHdE9jofCGC3Xc6hGm1SsH@vger.kernel.org
X-Gm-Message-State: AOJu0YwcLL6UNr3F1zsPuTdv0RNO7hF2dyyXa4MPRYlWfAh6gnD8+mXX
	hQg6TX7yuiNONWVtkUkvUfenXH7MaJjEnt+Vj6CirfR9SRr9fH3H
X-Gm-Gg: ASbGncsvqOFZPi3UhLoA9diffxd2UOIhzH6QPKepcXpzaTGcFrHJA9UjlbL23tKBY2q
	Tg33p4wuLGqrxbu/BBkBXvRrRbz7WPyshTzhEEcyNsg0vIRymNg1eF8JodqiU2pzgJWdfxHF8v3
	38FtyirhG0yN5KPuNIGgIp68GdUd/MbAV7P4niZIvRk33ANdHi4AZZH6G7mFjX7tmAYTGpPQcvk
	a7v/USs4z4Wa3eFWJXQOJMkktU4Fn23NFrcLrv8Bn1BlGsn5TpdcaKplqyabcliuo6/iU6/k8XS
	xBeQL2bChwCa7oILkIqqVoBYoWSIbSs97qg9loDlyGNyFVve+w6sg3QfuATHDqHCZQ==
X-Google-Smtp-Source: AGHT+IHGcQgMwPPAEGBJfJrJEY9x7HjJUxv3RHs7/BaUYX3k0+VoevK10R8gdqCI56LzymOxCbK2Hg==
X-Received: by 2002:a05:6102:1586:b0:4c1:924e:1a1d with SMTP id ada2fe7eead31-4deed3cba69mr12923184137.18.1747146215203;
        Tue, 13 May 2025 07:23:35 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:5c18:acd6:b894:dc8f])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-4deb203c26bsm6630965137.27.2025.05.13.07.23.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 May 2025 07:23:34 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH 1/3] ARM: dts: imx7s-warp: Improve the Bluetooth description
Date: Tue, 13 May 2025 11:23:18 -0300
Message-Id: <20250513142320.4036324-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

GPIO5_17 is connected to the BCM43455 BT_REG_ON pin.

Improve the Bluetooth devicetree description by using a more accurate
description of the hardware as per brcm,bluetooth.yaml.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/nxp/imx/imx7s-warp.dts | 20 ++++++++------------
 1 file changed, 8 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx7s-warp.dts b/arch/arm/boot/dts/nxp/imx/imx7s-warp.dts
index af4acc311572..b66e612d3329 100644
--- a/arch/arm/boot/dts/nxp/imx/imx7s-warp.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx7s-warp.dts
@@ -43,18 +43,6 @@ reg_brcm: regulator-brcm {
 		startup-delay-us = <200000>;
 	};
 
-	reg_bt: regulator-bt {
-		compatible = "regulator-fixed";
-		pinctrl-names = "default";
-		pinctrl-0 = <&pinctrl_bt_reg>;
-		enable-active-high;
-		gpio = <&gpio5 17 GPIO_ACTIVE_HIGH>;
-		regulator-name = "bt_reg";
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		regulator-always-on;
-	};
-
 	reg_peri_3p15v: regulator-peri-3p15v {
 		compatible = "regulator-fixed";
 		regulator-name = "peri_3p15v_reg";
@@ -288,6 +276,14 @@ &uart3  {
 	assigned-clock-parents = <&clks IMX7D_PLL_SYS_MAIN_240M_CLK>;
 	uart-has-rtscts;
 	status = "okay";
+
+	bluetooth {
+		compatible = "brcm,bcm4345c5";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_bt_reg>;
+		shutdown-gpios = <&gpio5 17 GPIO_ACTIVE_HIGH>;
+		max-speed = <3000000>;
+	};
 };
 
 &uart6 {
-- 
2.34.1


