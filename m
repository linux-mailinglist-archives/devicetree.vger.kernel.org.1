Return-Path: <devicetree+bounces-250894-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id A7D01CECDE8
	for <lists+devicetree@lfdr.de>; Thu, 01 Jan 2026 09:34:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2C81B300250A
	for <lists+devicetree@lfdr.de>; Thu,  1 Jan 2026 08:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0DFE1D5151;
	Thu,  1 Jan 2026 08:34:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E2A1552FD
	for <devicetree@vger.kernel.org>; Thu,  1 Jan 2026 08:34:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767256471; cv=none; b=K1QoxTjsnSjXtRnepIMlr4gOivC+jnA7uudZ+ALjYx8w6BM0HmIx34c7lqjUs9c6/iAMuFNRvjcR1bodzNbjYBrd5xbaV8VC/Q9Hstk94fTlgWHNvB8UO33islt5QIjV9tcj7rVLucHzeHESLH00c/clsY0Ihx1F21QmwECAP2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767256471; c=relaxed/simple;
	bh=xqHZPCQOZ7o5xzOWB5NUhALgAj4dMlIBdZGdTKrAkVc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=Svd0kVAro0K8iWCs6mHISDEINBnC5maptgvSzO36ZwaqLhlHqbtqAJCa/xKPASbs9GIC44y+iZD3yW6j9ipATD/hR0i7ielHTpxdpzBkHEgoUjLKI+kahW5eypBe4t2X05pvt0Yo3dcmOFY5t6XprYW8iE56i9O2EY/a/8r/UJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kylinos.cn; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=kylinos.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-2a0c09bb78cso81190625ad.0
        for <devicetree@vger.kernel.org>; Thu, 01 Jan 2026 00:34:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767256470; x=1767861270;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SfTOA/uhjIWDRFqoiON2tAx3e2cujwx/eei4rDUEnkk=;
        b=otKfI4GPG14QIatU2iQrh77RYlxvllcAON/tF738YD9p0LqyV+0C+hUaPcb6YGA8U1
         mQJJuJRjvRIUfmOkVRwhE2W1Bhxq86tlO9uBCnPfqwQPclrAJnfjDlK1feRfsOpTbo2+
         1OC/rGr1VoZXPpYAtwYJ5qFguI7KwaHiB/kFaA+CGBZqAJfujSzcoB12q48AL2xKr8Y1
         DHW/4so7Zxz7vmjIpRJcEOmlOBfhMMDf70ZQb+B+15V86BNrsIdxRjzulI8RFZFvlIyd
         ESoTA+5fYy8oUy2u54/3clJjKQFMbtbkeGnZ9asm9yDlegc9irXqk22obiQbp0LSZMl4
         C09A==
X-Forwarded-Encrypted: i=1; AJvYcCUqtlAeIPV/oMcbYUJavOzeO8Jxjd99CgWhh1Wo8ixWijMj/loBva4uCUA6ZrtH4zo0GADNCnKNRDFU@vger.kernel.org
X-Gm-Message-State: AOJu0Yx/UR0LZSqBlENv3nkEwV0BaNPEwSAZvUezABVr5hiyObUY/lE9
	c3IPvo3on4pSEt0hHR7yvGT6K6frQrTwfxsUAH/gk+EpeRT5jzdihkbA
X-Gm-Gg: AY/fxX6b2yQGCAYDBs8Hig1EmYxvcxVHgWm3bXxVw1TzCxkrX/5BEjAbiOybXcUWE9J
	+a6TDVa6o16uSBQIqVQAmAGX6J4uvCz48ODq6Xs0W+n71CzlAjISUw6YECKaD0/qmUb724f5PR8
	dKZjmmk9IEYPlEnPS1z+Xkz3u2x7VOFtEwkH9cwgvIKkXBtX7XPW2RZ1ImPli4d+SKtYru93DVq
	BOlB1KCbDWZrjeBNc9wMVnXwqLcGNIRYmhtleDIXu4QE7Cv7VgLjbvQs/+aY2PWjMsmh3kpioQH
	n/HUsXPS6ELWRIuxxavArBOlbrvPtC7PHzU6GwKDC/depNyF5Atg4y4KN0/qFDD1aa2AstcRQ7z
	SA8G6qEgIoK1IQQM2moX3XeiyvwLvfg5bieF9t5kM+/nJ3WVt5LdyWKruzPNQMRuaRUiPvxNnXc
	muV8MJgDfKplCED9wZCAAh
X-Google-Smtp-Source: AGHT+IEchdp5OT0VlEVis0i716ONVjQcLibPiNquq6bswalRb8A3Uv01Yc504XF0MP2wYvwY1MVYHQ==
X-Received: by 2002:a17:902:f688:b0:295:55f:8ebb with SMTP id d9443c01a7336-2a2f0d40403mr265291645ad.21.1767256469592;
        Thu, 01 Jan 2026 00:34:29 -0800 (PST)
Received: from localhost.localdomain ([195.245.219.241])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d6ec6bsm339904295ad.87.2026.01.01.00.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jan 2026 00:34:28 -0800 (PST)
From: Ke Sun <sunke@kylinos.cn>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Alvin Sun <sk.alvin.x@gmail.com>,
	Ke Sun <sunke@kylinos.cn>
Subject: [PATCH v1] arm64: dts: rockchip: Add USB Type-C support for Radxa ZERO 3W
Date: Thu,  1 Jan 2026 16:34:15 +0800
Message-ID: <20260101083415.1327341-1-sunke@kylinos.cn>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add vbus_typec regulator and fusb302 Type-C controller configuration
for Radxa ZERO 3W board.

Link: https://dl.radxa.com/zero3/docs/hw/3w/radxa_zero_3w_v1110_schematic.pdf
Signed-off-by: Ke Sun <sunke@kylinos.cn>
---
 .../dts/rockchip/rk3566-radxa-zero-3.dtsi     | 10 +++++++++
 .../dts/rockchip/rk3566-radxa-zero-3w.dts     | 22 +++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
index 1ee5d96a46a1b..79448016ab490 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3.dtsi
@@ -35,6 +35,16 @@ led-green {
 		};
 	};
 
+	vbus_typec: vbus-typec-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "vbus_typec";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc_sys>;
+	};
+
 	vcc_1v8: regulator-1v8-vcc {
 		compatible = "regulator-fixed";
 		regulator-name = "vcc_1v8";
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
index f92475c59deb4..54f20856bcfc6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-zero-3w.dts
@@ -50,6 +50,12 @@ wifi_wake_host_h: wifi-wake-host-h {
 			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
 		};
 	};
+
+	usb-typec {
+		usbc0_int: usbc0-int {
+			rockchip,pins = <3 RK_PC7 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
 };
 
 &sdhci {
@@ -90,3 +96,19 @@ &uart1 {
 	uart-has-rtscts;
 	status = "okay";
 };
+
+&i2c3 {
+	status = "okay";
+	pinctrl-0 = <&i2c3m1_xfer>;
+
+	usbc0: fusb302@22 {
+		compatible = "fcs,fusb302";
+		reg = <0x22>;
+		interrupt-parent = <&gpio3>;
+		interrupts = <RK_PC7 IRQ_TYPE_LEVEL_LOW>;
+		sel-gpios= <&gpio0 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usbc0_int>;
+		vbus-supply = <&vbus_typec>;
+	};
+};
-- 
2.43.0


