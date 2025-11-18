Return-Path: <devicetree+bounces-239999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 09588C6BE00
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 23:34:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 190C14E9ABA
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 22:33:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA3D726A1AB;
	Tue, 18 Nov 2025 22:33:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="My544wg8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f48.google.com (mail-ot1-f48.google.com [209.85.210.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CF3262FC0
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 22:33:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763505200; cv=none; b=qtwsk+dmnbUJzW78IR2+uC2BGPJZUifLn4boOr7fY+daBJofOHzQVHN+ppdqsU1kdMSbGXAxqtKkQ+P2r5DueSQCmx50ivpKOrLdnENoLllunht6zX5QzJTTdezRIKmeK/xbF4/ZCXc4aNKd9Dlo35ih4uSI76pYhO1vCJHkmOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763505200; c=relaxed/simple;
	bh=fSomaekrZPkexk6Kn8i1AwJbWveMfqcpW102eVObRy8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Qaj7cRLpJc+zcjWIuDvaN3+nRFrQIrHCzp1AjTthKU7gjWxJbSycNyJGlL80tvGxJlMfbyJ2RGO2zVTMIZH9wKqvsz6G1oOC/RLjE4YFSPC17N2coEfvo1KfBEH4xGl8ej2llZ6vy1KfgJR30xOzrx/p6vvV2LJsT2k6kilemyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=My544wg8; arc=none smtp.client-ip=209.85.210.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f48.google.com with SMTP id 46e09a7af769-7c75fd8067fso1667420a34.2
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:33:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763505198; x=1764109998; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+mDRvRAZ914Ruy74VnImJGj9WAIWsIdFLFqnLvhLdMU=;
        b=My544wg81ByKOAQMPyTfKlPlUnuR09juLhfx9aY35uvp56U2UBLAeFvgVGgh1hD1Po
         mLGWD1UxRbvQDSkRy5q19H1c229bPadjyoUsmC4h9Dioufu/O0f7BMhrisWb2dMpMkE+
         pJ13b3V5z4WUwS1XfAdVg+E4cEKW7cGVZfSxpmZCIyZ/Fj4iQPIwWTWv6SseKrZtJvQ4
         bFmbOW9EDW8G4pIpI56tNesTIvDsfFGzL6Wq1UA+8b6sxxIBzeSkR6cGmhSosn4sXTTO
         YThljFukSzuYShuJqOccG4d3BOE648O/vXt/sQ4rNQeYN20GgsUIKZrfiTbXxRwmF0SU
         V5ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763505198; x=1764109998;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+mDRvRAZ914Ruy74VnImJGj9WAIWsIdFLFqnLvhLdMU=;
        b=DCzG2HwG9ubZMyuUttUWaLl00GvfvlGFHKJts5b/SdbH24CR1XKwMpPNk9i03qWHJ1
         htR17BBGY66bHSkXrNXrZV1HvPuPcwnJPEpSUDiC6qoxjR7E+87G9TGwuRZvyXo0tCOk
         gfteuGvbbJbR679o5IWOeF6HA61TTKuDeVVUWJ7v0AR52xXqkPKxCpEG6y5m9W4sCKhk
         ZJjd/8WI+ndb9dNbf9e9BvKitjzaMTn49gu+cBIHIXnbi0BUdq7AWlkTrV7DPwx7OTCj
         /a4TD7hWzaEMYhs65f5f7F3/g6avEFaqs/+j2d4Ng6wQ5ZxAxYQGr8KQG/2+eWcMQ/gN
         C18g==
X-Gm-Message-State: AOJu0YxaLmH6uFo2yrkeqIePc439K9snDYSnLgbIl/9GnEP4NKdIKX0A
	x/0Ky7O6IuTliLtBrQNU95W0wWbZpctE5uG/PTeRfPv8tgZgb1I/nBCA
X-Gm-Gg: ASbGncvWItfGBToAcuJa3pvl1SHZXwXl52y6UDwWHjL7N4tQAPXKxm3p7pPlAAObF60
	jHRD0me6tz6CEn2acr7u2At4KgkaOVb4B52vMhWBcH7YrJ2IlVZmWyX1jVmKJ1QRYuCExtna1Ks
	gyOwA3sixTJ5L84+gI02Fo5oU1dpgpiX0hrPAnMVeySt6tJmsjtkV9F3GHmyVNCZG0rAWFilLUn
	i5kvx68R/u1pmq0Fe6RDnKWLE13IuLmqBYsCFhIuPjaF2W8wJtGCTH24/3L+Kcrl/eQZmyCWn9v
	rDhjOUNKPkZF7882geQkEVQ8Nng/5ygkidOgy6XR18L1BoC/DrtLb1+2O+7lASpKGQmglcNvuCG
	ZLFsRp9YRek6zuEjhx1MdbM7NgKTVZjRPw/legIk31YFjtz7cje2C6Du1vWgU7b7sUSeiVz1omR
	/RlRrzoa70
X-Google-Smtp-Source: AGHT+IE1kZ7VlWSJ7cAjxcfm1Utg0/toDq2y2/Ys8lMMnu7WXgG20PEyqdkaXDcxyN01DfwnSMdq+Q==
X-Received: by 2002:a05:6830:3881:b0:7c7:61e1:444 with SMTP id 46e09a7af769-7c761e10626mr5268313a34.19.1763505197947;
        Tue, 18 Nov 2025 14:33:17 -0800 (PST)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a283b3asm7136960a34.4.2025.11.18.14.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 14:33:16 -0800 (PST)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 4/4] arm64: dts: rockchip: Add host wake pin for wifi on Indiedroid Nova
Date: Tue, 18 Nov 2025 16:30:48 -0600
Message-ID: <20251118223048.4531-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20251118223048.4531-1-macroalpha82@gmail.com>
References: <20251118223048.4531-1-macroalpha82@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Chris Morgan <macromorgan@hotmail.com>

Add the pin definition for the host wake interrupt on the Indiedroid
Nova. This necessitates adding a node for the wifi controller to
properly define the interrupt. Additionally, we can consolidate both
pinctrl definitions under a wifi node to note their common functionality.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../dts/rockchip/rk3588s-indiedroid-nova.dts  | 30 ++++++++++++++-----
 1 file changed, 23 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
index 7233e290d0cf..174d299cc6bb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts
@@ -525,13 +525,6 @@ hym8563_int: hym8563-int {
 		};
 	};
 
-	sdio-pwrseq {
-		wifi_enable_h: wifi-enable-h {
-			rockchip,pins =
-				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-
 	usb-typec {
 		usbc0_int: usbc0-int {
 			rockchip,pins =
@@ -543,6 +536,18 @@ typec5v_pwren: typec5v-pwren {
 				<4 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	wifi {
+		wifi_enable_h: wifi-enable-h {
+			rockchip,pins =
+				<0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		wifi_host_wake_irq: wifi-host-wake-irq {
+			rockchip,pins =
+				<0 RK_PA0 RK_FUNC_GPIO &pcfg_pull_down>;
+		};
+	};
 };
 
 &rknn_core_0 {
@@ -593,6 +598,7 @@ &sdhci {
 };
 
 &sdio {
+	#address-cells = <1>;
 	bus-width = <4>;
 	cap-sd-highspeed;
 	cap-sdio-irq;
@@ -604,9 +610,19 @@ &sdio {
 	no-sd;
 	non-removable;
 	sd-uhs-sdr104;
+	#size-cells = <0>;
 	vmmc-supply = <&vcc_3v3_s3>;
 	vqmmc-supply = <&vcc_1v8_s3>;
 	status = "okay";
+
+	sdio_wifi: wifi@1 {
+		reg = <1>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA0 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-names = "host-wake";
+		pinctrl-0 = <&wifi_host_wake_irq>;
+		pinctrl-names = "default";
+	};
 };
 
 &sdmmc {
-- 
2.43.0


